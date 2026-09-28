# Scope Mod Documentation

> This document describes the **Scope** mod for Venice Unleashed (VU), a Battlefield 3 private server modding framework. It covers the directory structure, core mechanisms, file functions, configuration parameters, and development notes.
>
> The mod primarily modifies weapon scope field of view (FOV), ADS simulation, night vision / thermal imaging effects, and supports real-time style switching via hotkeys.

---

## 1. Introduction

**Scope** is a comprehensive scope and visual environment modification mod. Its main features include:

- Modifying weapon FOV for various scopes
- Adjusting ADS sensitivity, movement speed, sway, transition times, etc.
- Overriding visual components for night vision, FLIR, co-op thermal, and singleplayer thermal
- Switching thermal styles via hotkey (Original, Iron Red, White Phosphor)
- Toggling ADS effect (`allowFieldOfViewScaling`) via hotkey
- Adjusting visual effects for MAV, EOD bot, TV missile, etc.

The mod uses a **Client + Shared** code-splitting approach. All game data modifications are performed by overriding instances during data load using `ResourceManager:RegisterInstanceLoadHandler`.

---

## 2. Directory Structure

```
ext/
├── Client/
│   ├── __init__.lua          # Client entry, loads ADS.lua, registers F4 key for thermal style switching
│   └── ADS.lua               # Listens for B key, toggles allowFieldOfViewScaling for multiple scopes
│
└── Shared/
    ├── __init__.lua          # Shared entry, loads Base, Advance, Renderfov, IRNV, etc.
    ├── Base.lua              # Base scope FOV data (ZoomLevelData)
    ├── Advance.lua           # Advanced scope simulation data (SoldierAimingSimulationData)
    │
    ├── Renderfov/            # Per-class render FOV application scripts
    │   ├── Assaultfov.lua
    │   ├── Commonfov.lua
    │   ├── Engineerfov.lua
    │   ├── Generalfov.lua
    │   ├── Reconfov.lua
    │   └── Supportfov.lua
    │
    ├── RenderfovConfig/      # Per-class FOV value configurations
    │   ├── AssaultRenderfovConfig.lua
    │   ├── CommonRenderfovConfig.lua
    │   ├── EngineerRenderfovConfig.lua
    │   ├── GeneralRenderfovConfig.lua
    │   ├── ReconRenderfovConfig.lua
    │   └── SupportRenderfovConfig.lua
    │
    └── IRNV/                 # Night vision / thermal imaging scripts
        ├── NightVision.lua   # Night vision scope data, defines thermal styles and switch function
        ├── FLIR.lua          # Black-and-white thermal imaging component overrides
        ├── COOPFLIR.lua      # Co-op mode thermal imaging component overrides
        ├── SPFLIR.lua        # Singleplayer thermal imaging component overrides
        ├── IRNVSwitch.lua    # Visual environment switching, replaces entity VEs
        └── Bot1pFX.lua       # MAV, EOD bot, and other visual effect adjustments
```

---

## 3. Loading Flow and Entry Points

### 3.1 Shared Entry `ext/Shared/__init__.lua`

```lua
--Weapon scope basic adjustments
require('__shared/Base')
require('__shared/Advance')

--Scope internal field of view
require('__shared/Renderfov/Assaultfov')
require('__shared/Renderfov/Engineerfov')
require('__shared/Renderfov/Supportfov')
require('__shared/Renderfov/Reconfov')
require('__shared/Renderfov/Generalfov')
require('__shared/Renderfov/Commonfov')

--Thermal imaging adjustments
require('__shared/IRNV/NightVision')  --Vanilla night vision scope adjustments
require('__shared/IRNV/FLIR')         --Vanilla black-and-white thermal imaging adjustments
require('__shared/IRNV/SPFLIR')       --Singleplayer imaging adjustments
require('__shared/IRNV/COOPFLIR')     --Co-op mode imaging adjustments
require('__shared/IRNV/IRNVSwitch')   --Thermal imaging switch
require('__shared/IRNV/Bot1pFX')      --MAV, EOD partial visual function adjustments
```

The shared entry loads all shared modules in order, ensuring that base data, render FOV, night vision / thermal scripts are registered before game data loads.

### 3.2 Client Entry `ext/Client/__init__.lua`

```lua
require("ADS")

Events:Subscribe('Client:UpdateInput', function()
    -- F1: Original
    --[[if InputManager:WentKeyDown(InputDeviceKeys.IDK_F1) then
        currentThermalStyle = "ORIGINAL"
        ApplyThermalStyle(currentThermalStyle)
    end

    -- F2: Iron Red
    if InputManager:WentKeyDown(InputDeviceKeys.IDK_F2) then
        currentThermalStyle = "IRON_RED"
        ApplyThermalStyle(currentThermalStyle)
    end

    -- F3: White Phosphor
    if InputManager:WentKeyDown(InputDeviceKeys.IDK_F3) then
        currentThermalStyle = "WHITE_PHOSPHOR"
        ApplyThermalStyle(currentThermalStyle)
    end]]

    --Cycle through with F4 key
    if InputManager:WentKeyDown(InputDeviceKeys.IDK_F4) then
        local styles = {"ORIGINAL", "IRON_RED", "WHITE_PHOSPHOR"}
        local idx = 1
        for i, v in ipairs(styles) do
            if v == currentStyle then
                idx = i % #styles + 1
                break
            end
        end
        currentStyle = styles[idx]
        ApplyThermalStyle(currentStyle)
    end
end)
```

The client entry loads `ADS.lua` and subscribes to `Client:UpdateInput`.  
Pressing **F4** cycles through thermal styles (`ORIGINAL` → `IRON_RED` → `WHITE_PHOSPHOR`) and calls `ApplyThermalStyle`.

---

## 4. Base Scope Data System

### 4.1 `Base.lua`: `ZoomLevelData` Overrides

`Base.lua` registers callbacks for multiple `ZoomLevelData` instances via `ResourceManager:RegisterInstanceLoadHandler`, overriding the following properties:

| Property | Description |
|----------|-------------|
| `fieldOfView` | FOV after ADS |
| `allowFieldOfViewScaling` | ADS effect toggle |
| `lookSpeedMultiplier` | Scope sensitivity during ADS |
| `sprintLookSpeedMultiplier` | Scope sensitivity during sprint |
| `moveSpeedMultiplier` | Movement speed during ADS |
| `swayPitchMultiplier` | Pitch (up/down) sway multiplier during ADS |
| `supportedSwayPitchMultiplier` | Pitch sway multiplier when using bipod |
| `swayYawMultiplier` | Yaw (left/right) sway multiplier during ADS |
| `supportedSwayYawMultiplier` | Yaw sway multiplier when using bipod |
| `timePitchMultiplier` | Pitch sway frequency (times per second) |
| `timeYawMultiplier` | Yaw sway frequency (times per second) |
| `recoilFovMultiplier` | Recoil FOV multiplier |
| `fadeToBlackInZoomTransition` | Whether to fade to black during ADS |
| `startFadeToBlackAtTime` | Time to enter black view |
| `fadeToBlackDuration` | Duration of fading to black |
| `startFadeFromBlackAtTime` | Duration of black screen after ADS |
| `fadeFromBlackDuration` | Time for black to fade back to normal |

Overridden instances include:

- Default hip-fire weapon FOV
- Default primary iron sights, red dot, reflex, M320 family (except buckshot), SMAW, RPG, SA18 IGLA
- Default general pistols and M26 family (including M320 buckshot)
- Default Javelin, Stinger (FIM-92) launcher
- Default 1x thermal imaging
- Default HOLO and PKA-S sights
- Default HOLO and PKA-S sights (shotguns, some SMGs, rifles)
- Default 3.4x, 4x, 6x, 7x, 8x, 10x, 12x, 20x scopes
- Default singleplayer 6x infrared scope

### 4.2 `Advance.lua`: `SoldierAimingSimulationData` Overrides

`Advance.lua` registers `SoldierAimingSimulationData` callbacks for different scope types, overriding standing, crouching, and prone poses:

- `minimumPitch` / `maximumPitch`: view angle down / up
- `aimSteadiness`: scope steadiness (higher = more stable)
- `speedMultiplier`: sensitivity
- `recoilMultiplier`: recoil multiplier
- `fovDelayTime`: ADS delay time
- `zoomTransitionTimeArray[1].zoomTransitionTime`: crosshair recenter time after ADS
- `zoomTransitionTimeArray[1].fovTransitionTime`: hip-fire FOV to scope FOV transition time
- `zoomTransitionTimeArray[2].zoomTransitionTime`: crosshair recenter time after leaving ADS
- `zoomTransitionTimeArray[2].fovTransitionTime`: scope FOV to hip-fire FOV transition time

Covered scope types include:

`Aim_Default_NoZoom`, `Aim_Default_IronSight`, `Aim_FastMove_IronSight`, `Aim_Slow_IronSight`, `Aim_FastMove_IronSight_UGL`, `Aim_NoAssist_IronSight_UGL`, `Aim_NoAssist_AT`, `Aim_NoAssist_IronSight`, `Aim_Default_EOTech`, `Aim_FastMove_EOTech`, `Aim_Slow_EOTech`, `Aim_Default_ENVG`, `Aim_Slow_ENVG`, `Aim_Slow_ENVG_6x`, `Aim_Slow_ENVG_10x`, `Aim_Default_3.4x`, `Aim_Slow_3.4x`, `Aim_Default_4x`, `Aim_Slow_4x`, `Aim_Slow_6x`, `Aim_Slow_7x`, `Aim_Slow_8x`, `Aim_Slow_10x`, `Aim_Slow_12x`, `Aim_Slow_20x`.

---

## 5. Weapon FOV Configuration System

### 5.1 Configuration File Overview

`RenderfovConfig/` contains per-class FOV values for each weapon:

| File | Class | Weapons |
|------|-------|---------|
| `AssaultRenderfovConfig.lua` | Assault | AEK-971, M16A3/A4, M416, AN94, AK74M, AUG, SCAR-L, F2000, KH2002, G3A3, FAMAS, L85A2 |
| `CommonRenderfovConfig.lua` | Common | Pistols, knives, gadgets (RPG, SMAW, AT4, Javelin, Stinger, SA-18, XBOW, grenades, medkit, ammo box, M320, M26, C4, claymore, defib, M15, repair tool, beacon, SOFLAM, T-UGS, mortar, MAV, EOD bot) |
| `EngineerRenderfovConfig.lua` | Engineer | M4/M4A1, AKS-74U, SCAR-H, A-91, G36C, SG553, G53, QBZ-95B, ACW-R, MTAR-21 |
| `GeneralRenderfovConfig.lua` | General | Shotguns (870MCS, M1014, SAIGA12K, DAO-12, USAS-12, MK3A1, SPAS-12) and PDWs (AS VAL, PP-2000, UMP-45, PDW-R, P90, MP7, PP-19, M5K) |
| `ReconRenderfovConfig.lua` | Recon | MK11, SVD, SKS, M39EMR, QBU-88, M417, SV98, M40A5, M98B, L96, JNG-90 |
| `SupportRenderfovConfig.lua` | Support | M27IAR, RPK-47, M249, PKP, M240, M60E4, Type88, QBB-95, MG36, L86A2, LSAT |

### 5.2 Parameter Description

Each weapon defines a set of variables using the pattern `<weaponPrefix><scopeType>`, for example:

```lua
aekRenderFov = 55,        -- Hip-fire FOV
aekZoomRenderFov = 20,    -- Iron sight FOV
aekReflex = 17,           -- Reflex sight
aekKobra = 18,            -- Red dot sight
aekENVG = 18,             -- 1x IRNV scope
aekEotech = 20,           -- EOTECH holographic sight
aekPKAS = 15,             -- PKA-S holographic sight
aekPKA = 15,              -- PK-A (3.4x) scope
aekM145 = 15,             -- M145 (3.4x) scope
aekPSO = 15,              -- PSO-1 (4x) scope
aekACOG = 15,             -- ACOG (4x) scope
aekRifle = 15,            -- 6x scope
aekPKS07 = 15,            -- 7x scope
aekBallistic = 15,        -- 12x scope
aekHE = 35,               -- Underbarrel M320
aekSMK = 35,              -- Underbarrel M320 smoke
aekSHG = 35,              -- Underbarrel M320 buckshot
aekLVG = 35,              -- Underbarrel M320 LVG
```

### 5.3 Weapon Lists per Class (from txt notes)

#### Assault Rifles (`AssaultRenderfovConfig.lua`)
- AEK-971
- M16A3 / M16A4
- M416
- AN94
- AK74M
- AUG
- SCAR-L
- F2000
- KH2002
- G3A3
- FAMAS
- L85A2

#### Engineer (`EngineerRenderfovConfig.lua`)
- M4 / M4A1
- AKS-74U
- SCAR-H
- A-91
- G36C
- SG553
- G53
- QBZ-95B
- ACW-R
- MTAR-21

#### Support (`SupportRenderfovConfig.lua`)
- M27IAR
- RPK-47
- M249
- PKP
- M240
- M60E4
- Type88
- QBB-95
- MG36
- L86A2
- LSAT

#### Recon (`ReconRenderfovConfig.lua`)
- MK11
- SVD
- SKS
- M39EMR
- QBU-88
- M417
- SV98
- M40A5
- M98B
- L96
- JNG-90

#### Common (`CommonRenderfovConfig.lua`)
- Pistols: M9, MP443, G17C/G18, .44 Magnum, MP412Rex, M93R, M1911
- Knives: M9 Bayonet, ACB-90, Dima's knife
- Gadgets: RPG, SMAW, AT4, FGM-148 Javelin, FIM-92A Stinger, SA-18 IGLA, XBOW, M67 grenade, medkit, ammo box, M320, M26, C4, claymore, defibrillator, M15, repair tool, spawn beacon, SOFLAM, T-UGS, M224 mortar, MAV, EOD bot

#### Shotguns & PDWs (`GeneralRenderfovConfig.lua`)
- Shotguns: 870MCS, M1014, SAIGA12K, DAO-12, USAS-12, MK3A1, SPAS-12
- PDWs: AS VAL, PP-2000, UMP-45, PDW-R, P90, MP7, PP-19, M5K

---

## 6. Render FOV Application Module `Renderfov/`

The scripts under `Renderfov/` are organized by class:

- `Assaultfov.lua`
- `Commonfov.lua`
- `Engineerfov.lua`
- `Generalfov.lua`
- `Reconfov.lua`
- `Supportfov.lua`

These scripts read configurations from `RenderfovConfig/` and apply the FOV values to the corresponding `ZoomLevelData` instances in the game. The exact implementation is not detailed here, but they are the key link between configuration and game data.

---

## 7. Night Vision & Thermal Imaging System

### 7.1 `NightVision.lua`

- Defines GUID variables for night vision scopes.
- Defines three thermal styles in the `THERMAL_STYLES` table:
  - `ORIGINAL`: original modified (brightness 1.3, contrast 1.3, saturation 1.5)
  - `IRON_RED`: iron red thermal
  - `WHITE_PHOSPHOR`: white phosphor night vision
- Provides `ApplyThermalStyle(styleKey)` to switch styles.
- Overrides color correction, film grain, fog, outdoor light, vignette, character lighting, AO, camera params, shader params, tonemap, etc.
- Greatly optimizes fog: delayed start, removes green, reduces transparent object fog.
- Increases ambient lighting for clearer night vision.
- Disables vignette and AO for a cleaner image.
- Adjusts tonemap: raises middle gray, enhances bloom.

### 7.2 `FLIR.lua`

- Based on `VE_FLIR_White_MP`, overrides all components for black-and-white thermal imaging.
- Includes CameraParams, ColorCorrection, DynamicAO, FilmGrain, Fog, OutdoorLight, ShaderParams (FLIRData and MP007_BD_Emissive), Sky, Tonemap, Vignette.
- Greatly reduces ambient brightness to highlight thermal signatures.
- Disables AO, film grain, vignette.
- Adjusts fog, sky, tonemap, etc.

### 7.3 `COOPFLIR.lua`

- Based on `VE_HeatVision_CoOp`, overrides co-op thermal components.
- Includes CameraParams, Fog, Vignette, ColorCorrection, FilmGrain, OutdoorLight, ShaderParams, Tonemap, Sky.
- Color correction set to fully black-and-white (saturation 0), brightness 1.7, contrast 1.6.
- Disables film grain and vignette.

### 7.4 `SPFLIR.lua`

- Based on `VE_FLIR_WhiteHot_Orange`, overrides singleplayer thermal components.
- Includes HeatScale, SPTank_BD_Opacity, CameraParams, Dof, Sky, DynamicAO, Fog, LensScope, Vignette, ColorCorrection, FilmGrain, OutdoorLight, FLIRData, Tonemap.
- Adjusts color correction, disables DOF, AO, film grain, vignette.
- Sets fog, sky, tonemap, etc.

### 7.5 `IRNVSwitch.lua`

- Subscribes to `Level:RegisterEntityResources` to replace entity visual environments with specified night vision / thermal VEs.
- Replaces:
  - Singleplayer night vision scope (`flirVeName`)
  - MAV, EOD bot (`envgVeName`)
  - TV missile (AH1Z, Mi28, TV missile)
- Some code is commented out (tank thermal, bundle loading, etc.).

### 7.6 `Bot1pFX.lua`

- Adjusts first-person visual effects for MAV, EOD bot, etc.
- Includes color correction, film grain, vignette.
- Adjusts TV missile launch and explosion screen effects.
- Handles laser designator zoom without UI.

---

## 8. Client Interaction Features

### 8.1 `ADS.lua`: B Key to Toggle ADS Effect

Listens to `Client:UpdateInput`. When **B** is pressed, toggles `allowFieldOfViewScaling` for multiple scopes. Involved GUIDs:

- `5C006FDF-FA1D-4E29-8E21-2ECAB83AC01C`: Default primary iron sights, red dot, reflex, M320 family (except buckshot), SMAW, RPG, SA18 IGLA
- `50887762-21DF-42F5-9740-ECDBCEECC3B4`: Default general pistols and M26 family (including M320 buckshot)
- `A83312DC-829D-4B36-9A9B-F0140876E14A`: Default Javelin and Stinger (FIM-92)
- `242DAE61-CC3D-428A-8AC5-324FA95EBE7B`: Default 1x thermal imaging
- `B06E9839-DA28-42E6-86C4-42D1F8E3AADB`: Default HOLO and PKA-S sights
- `83D88E7E-D266-430A-8664-CA15AFFA0D66`: Default HOLO and PKA-S sights (shotguns, some SMGs, rifles)
- `E7AA2666-EE70-4B9F-A918-7686E7932DAF`: Default 3.4x scope
- `BF74D9F8-E11C-4075-BDDB-AAC3F27C608D`: Default 4x scope

### 8.2 `Client/__init__.lua`: F4 Key to Cycle Thermal Styles

Pressing **F4** cycles through `ORIGINAL`, `IRON_RED`, `WHITE_PHOSPHOR` and calls `ApplyThermalStyle`.

---

## 9. Supplementary Notes (txt)

### 9.1 Weapons with Unmodifiable ADS Sights

```
M36 Holographic
DAO-12 Red Dot, 10x Scope
M1014 10x Scope
USAS 10x Scope
MK3A1 10x Scope
```

These weapons' specific scope data cannot be modified, likely due to game data limitations or GUID conflicts.

### 9.2 Sight Type Descriptions

Detailed lists for `Aim_Default_IronSight`, `Aim_FastMove_IronSight`, `Aim_Slow_IronSight`, `Aim_FastMove_IronSight_UGL`, `Aim_NoAssist_IronSight_UGL`, `Aim_NoAssist_AT`, `Aim_NoAssist_IronSight`, `Aim_Default_EOTech`, `Aim_FastMove_EOTech`, `Aim_Slow_EOTech`, `Aim_Default_ENVG`, `Aim_Slow_ENVG`, `Aim_Slow_ENVG_6x`, `Aim_Slow_ENVG_10x`, `Aim_Default_3.4x`, `Aim_Slow_3.4x`, `Aim_Default_4x`, `Aim_Slow_4x`, `Aim_Slow_6x`, `Aim_Slow_7x`, `Aim_Slow_8x`, `Aim_Slow_10x`, `Aim_Slow_12x`, `Aim_Slow_20x`, `Aim_COOP_ENVG_20x`, `Aim_Default_NoZoom`.

### 9.3 Notes.txt

```
1. The ADS feature has been merged into the Base file.
2. Pitch/yaw and other features have been merged into the Advanced features.
3. If you want to remove any feature, delete it in the __init__.lua file.
```

That is:
1. ADS functionality is in `Base.lua`.
2. Pitch/yaw and other features are in `Advance.lua`.
3. To remove a feature, delete the corresponding `require` in `__init__.lua`.

## Acknowledgements

We would like to express our special thanks to [@J4nssent](https://github.com/J4nssent) for their contributions to this project.