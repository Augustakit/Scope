# Scope 模组详细文档

> 本文档基于 VU（Venice Unleashed）模组框架，详细说明 **Scope** 模组的目录结构、核心机制、各文件功能、配置参数以及开发注意事项。  
> 适用于战地3私服 VU 环境，主要用于修改武器瞄准镜视野（FOV）、开镜模拟、夜视/热成像效果，并支持按键实时切换。

---

## 1. 模组简介

**Scope** 是一个功能全面的瞄准镜与视觉环境修改模组，主要包含以下功能：

- 修改各武器在不同瞄准镜下的视野范围（FOV）
- 调整开镜时的灵敏度、移动速度、晃动系数、开镜时间等
- 覆写夜视仪、热成像（FLIR）、合作模式热成像、单人剧情热成像的视觉组件
- 支持通过按键切换热成像风格（原始、铁红、白磷管）
- 支持通过按键开关 ADS 效果（`allowFieldOfViewScaling`）
- 调整 MAV、EOD 机器人、TV 弹等特殊视觉特效

模组采用 **客户端 + 共享** 的代码分割方式，所有游戏数据修改均通过 `ResourceManager:RegisterInstanceLoadHandler` 在数据加载时进行覆写。

---

## 2. 目录结构

```
ext/
├── Client/
│   ├── __init__.lua          # 客户端入口，加载 ADS.lua，注册 F4 键切换热成像风格
│   └── ADS.lua               # 监听 B 键，切换多种瞄准镜的 allowFieldOfViewScaling
│
└── Shared/
    ├── __init__.lua          # 共享入口，加载 Base、Advance、Renderfov、IRNV 等模块
    ├── Base.lua              # 基础瞄准镜视野数据（ZoomLevelData）
    ├── Advance.lua           # 高级瞄准镜模拟数据（SoldierAimingSimulationData）
    │
    ├── Renderfov/            # 按兵种分类的渲染 FOV 应用脚本
    │   ├── Assaultfov.lua
    │   ├── Commonfov.lua
    │   ├── Engineerfov.lua
    │   ├── Generalfov.lua
    │   ├── Reconfov.lua
    │   └── Supportfov.lua
    │
    ├── RenderfovConfig/      # 按兵种分类的具体 FOV 数值配置
    │   ├── AssaultRenderfovConfig.lua
    │   ├── CommonRenderfovConfig.lua
    │   ├── EngineerRenderfovConfig.lua
    │   ├── GeneralRenderfovConfig.lua
    │   ├── ReconRenderfovConfig.lua
    │   └── SupportRenderfovConfig.lua
    │
    └── IRNV/                 # 夜视/热成像相关脚本
        ├── NightVision.lua   # 夜视瞄准镜数据调整，定义热成像风格及切换函数
        ├── FLIR.lua          # 黑白热成像组件数据覆写
        ├── COOPFLIR.lua      # 合作模式热成像组件覆写
        ├── SPFLIR.lua        # 单人剧情热成像组件覆写
        ├── IRNVSwitch.lua    # 视觉环境转换，替换实体的视觉环境为指定 VE
        └── Bot1pFX.lua       # MAV、EOD 机器人等视觉特效调整
```

---

## 3. 加载流程与入口

### 3.1 共享入口 `ext/Shared/__init__.lua`

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

共享入口按顺序加载所有共享模块，确保基础数据、渲染 FOV、夜视热成像等脚本在游戏数据加载前完成注册。

### 3.2 客户端入口 `ext/Client/__init__.lua`

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

客户端入口加载 `ADS.lua`，并注册 `Client:UpdateInput` 事件。按下 **F4** 键时循环切换热成像风格（`ORIGINAL` → `IRON_RED` → `WHITE_PHOSPHOR`），调用 `ApplyThermalStyle` 应用样式。

---

## 4. 基础瞄准镜数据系统

### 4.1 `Base.lua`：`ZoomLevelData` 覆写

`Base.lua` 通过 `ResourceManager:RegisterInstanceLoadHandler` 注册多个 `ZoomLevelData` 实例的加载回调，覆写以下属性：

| 属性 | 说明 |
|------|------|
| `fieldOfView` | 开镜后视野范围 |
| `allowFieldOfViewScaling` | ADS 效果开关 |
| `lookSpeedMultiplier` | 开镜时瞄准镜灵敏度 |
| `sprintLookSpeedMultiplier` | 冲刺时瞄准镜灵敏度 |
| `moveSpeedMultiplier` | 开镜时移动速度 |
| `swayPitchMultiplier` | 开镜时俯仰（上下）晃动系数 |
| `supportedSwayPitchMultiplier` | 使用脚架时俯仰晃动系数 |
| `swayYawMultiplier` | 开镜时偏航（左右）晃动系数 |
| `supportedSwayYawMultiplier` | 使用脚架时偏航晃动系数 |
| `timePitchMultiplier` | 俯仰晃动频率（次/秒） |
| `timeYawMultiplier` | 偏航晃动频率（次/秒） |
| `recoilFovMultiplier` | 后坐力 FOV 系数 |
| `fadeToBlackInZoomTransition` | 开镜时是否渐变黑 |
| `startFadeToBlackAtTime` | 进入黑屏的时长 |
| `fadeToBlackDuration` | 渐变黑的持续时间 |
| `startFadeFromBlackAtTime` | 黑屏持续时间 |
| `fadeFromBlackDuration` | 黑屏渐变回正常颜色的时间 |

覆写的实例包括：

- 默认腰射持枪视野
- 默认主武器机瞄、内红点、反射式、M320 家族（除鹿弹）、SMAW、RPG、SA18 IGLA
- 默认一般手枪和 M26 家族（包括 M320 鹿弹）
- 默认标枪、毒刺（FIM-92）筒子
- 默认 1 倍热成像
- 默认 HOLO 和 PKA-S 瞄准镜
- 默认 HOLO 和 PKA-S 瞄准镜（霰弹枪、部分冲锋枪、步枪）
- 默认 3.4x、4x、6x、7x、8x、10x、12x、20x 瞄准镜
- 默认单人剧情 6x 红外线瞄准镜

### 4.2 `Advance.lua`：`SoldierAimingSimulationData` 覆写

`Advance.lua` 针对不同瞄准镜类型注册 `SoldierAimingSimulationData` 回调，覆写站姿、蹲姿、趴姿下的：

- `minimumPitch` / `maximumPitch`：视角向下/向上角度
- `aimSteadiness`：镜子稳定程度（数值越大越稳定）
- `speedMultiplier`：灵敏度
- `recoilMultiplier`：后坐力系数
- `fovDelayTime`：开镜延长时间
- `zoomTransitionTimeArray[1].zoomTransitionTime`：开镜后准心归位时长
- `zoomTransitionTimeArray[1].fovTransitionTime`：腰射视野到镜子视野的转化时长
- `zoomTransitionTimeArray[2].zoomTransitionTime`：关镜后准心归位时长
- `zoomTransitionTimeArray[2].fovTransitionTime`：镜子视野到腰射视野的转化时长

覆盖的瞄准镜类型包括：

`Aim_Default_NoZoom`、`Aim_Default_IronSight`、`Aim_FastMove_IronSight`、`Aim_Slow_IronSight`、`Aim_FastMove_IronSight_UGL`、`Aim_NoAssist_IronSight_UGL`、`Aim_NoAssist_AT`、`Aim_NoAssist_IronSight`、`Aim_Default_EOTech`、`Aim_FastMove_EOTech`、`Aim_Slow_EOTech`、`Aim_Default_ENVG`、`Aim_Slow_ENVG`、`Aim_Slow_ENVG_6x`、`Aim_Slow_ENVG_10x`、`Aim_Default_3.4x`、`Aim_Slow_3.4x`、`Aim_Default_4x`、`Aim_Slow_4x`、`Aim_Slow_6x`、`Aim_Slow_7x`、`Aim_Slow_8x`、`Aim_Slow_10x`、`Aim_Slow_12x`、`Aim_Slow_20x`。

---

## 5. 武器 FOV 配置系统

### 5.1 配置文件总览

`RenderfovConfig/` 下按兵种分类，为每种武器定义各瞄准镜的 FOV 值：

| 文件 | 兵种 | 包含武器 |
|------|------|----------|
| `AssaultRenderfovConfig.lua` | 突击兵 | AEK-971、M16A3/A4、M416、AN94、AK74M、AUG、SCAR-L、F2000、KH2002、G3A3、FAMAS、L85A2 |
| `CommonRenderfovConfig.lua` | 通用 | 手枪、刀、附件（RPG、SMAW、AT4、标枪、毒刺、SA-18、XBOW、手雷、医疗箱、弹药箱、M320、M26、C4、阔剑、除颤器、M15、修复工具、信标、镭射、地面传感器、迫击炮、MAV、EOD 机器人） |
| `EngineerRenderfovConfig.lua` | 工程兵 | M4/M4A1、AKS-74U、SCAR-H、A-91、G36C、SG553、G53、QBZ-95B、ACW-R、MTAR-21 |
| `GeneralRenderfovConfig.lua` | 通用 | 霰弹枪（870MCS、M1014、SAIGA12K、DAO-12、USAS-12、MK3A1、SPAS-12）和防卫武器（AS VAL、PP-2000、UMP-45、PDW-R、P90、MP7、PP-19、M5K） |
| `ReconRenderfovConfig.lua` | 侦察兵 | MK11、SVD、SKS、M39EMR、QBU-88、M417、SV98、M40A5、M98B、L96、JNG-90 |
| `SupportRenderfovConfig.lua` | 支援兵 | M27IAR、RPK-47、M249、PKP、M240、M60E4、Type88、QBB-95、MG36、L86A2、LSAT |

### 5.2 参数说明

每个武器定义了一组变量，命名规则为 `<武器前缀><瞄准镜类型>`，例如：

```lua
aekRenderFov = 55,        -- 持枪腰射视野
aekZoomRenderFov = 20,    -- 机瞄视野
aekReflex = 17,           -- 反射式瞄准镜
aekKobra = 18,            -- 内红点瞄准镜
aekENVG = 18,             -- 1X红外夜视镜
aekEotech = 20,           -- EOTECH光电全息瞄准镜
aekPKAS = 15,             -- PKA-S 全息瞄准镜
aekPKA = 15,              -- PK-A（3.4倍）瞄准镜
aekM145 = 15,             -- M145（3.4倍）瞄准镜
aekPSO = 15,              -- PSO-1（4倍）瞄准镜
aekACOG = 15,             -- ACOG（4倍）瞄准镜
aekRifle = 15,            -- 6倍瞄准镜
aekPKS07 = 15,            -- 7倍瞄准镜
aekBallistic = 15,        -- 12倍瞄准镜
aekHE = 35,               -- 下挂M320
aekSMK = 35,              -- 下挂M320烟雾
aekSHG = 35,              -- 下挂M320鹿弹
aekLVG = 35,              -- 下挂M320 LVG
```

### 5.3 各兵种武器列表（结合 txt 说明）

#### 突击步枪（`AssaultRenderfovConfig.lua`）
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

#### 工程兵（`EngineerRenderfovConfig.lua`）
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

#### 支援兵（`SupportRenderfovConfig.lua`）
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

#### 侦察兵（`ReconRenderfovConfig.lua`）
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

#### 通用（`CommonRenderfovConfig.lua`）
- 手枪：M9、MP443、G17C/G18、.44 Magnum、MP412Rex、M93R、M1911
- 刀：M9 军用刀、ACB-90、帝玛的刀
- 附件：RPG、SMAW、AT4、FGM-148 标枪、FIM-92A 毒刺、SA-18 IGLA、XBOW、M67 手雷、医疗箱、弹药箱、M320、M26、C4、阔剑地雷、除颤器、M15、修复工具、重生信标、镭射指示器、地面传感器、M224 迫击炮、MAV、EOD 机器人

#### 霰弹枪与防卫武器（`GeneralRenderfovConfig.lua`）
- 霰弹枪：870MCS、M1014、SAIGA12K、DAO-12、USAS-12、MK3A1、SPAS-12
- 防卫武器：AS VAL、PP-2000、UMP-45、PDW-R、P90、MP7、PP-19、M5K

---

## 6. 渲染 FOV 应用模块 `Renderfov/`

`Renderfov/` 下的脚本按兵种分类：

- `Assaultfov.lua`
- `Commonfov.lua`
- `Engineerfov.lua`
- `Generalfov.lua`
- `Reconfov.lua`
- `Supportfov.lua`

这些脚本负责读取 `RenderfovConfig/` 中的配置，并将 FOV 值应用到游戏中的 `ZoomLevelData` 实例上。具体实现未在本文档中展开，但它们是连接配置与游戏数据的关键环节。

---

## 7. 夜视与热成像系统

### 7.1 `NightVision.lua`

- 定义夜视瞄准镜的 GUID 变量。
- 通过 `THERMAL_STYLES` 表定义三种热成像风格：
  - `ORIGINAL`：原始修改（亮度 1.3、对比度 1.3、饱和度 1.5）
  - `IRON_RED`：铁红色热成像
  - `WHITE_PHOSPHOR`：白磷管夜视
- 提供 `ApplyThermalStyle(styleKey)` 函数，用于切换风格。
- 覆写颜色校正、胶片颗粒、雾效、室外环境光、暗角、角色补光、环境光遮蔽、摄像机参数、自定义着色器参数、色调映射等组件。
- 大幅优化雾效：延迟起雾、消除绿色、减少透明物体雾化。
- 提高环境照明，让夜视画面更清晰。
- 关闭暗角、关闭环境光遮蔽，让画面更干净。
- 调整色调映射，提高曝光基准，增强泛光。

### 7.2 `FLIR.lua`

- 基于 `VE_FLIR_White_MP`，覆写黑白热成像的所有组件数据。
- 包含 CameraParams、ColorCorrection、DynamicAO、FilmGrain、Fog、OutdoorLight、ShaderParams（FLIRData 和 MP007_BD_Emissive）、Sky、Tonemap、Vignette。
- 大幅降低环境亮度，突出热信号。
- 关闭 AO、胶片颗粒、暗角。
- 调整雾效、天空、色调映射等。

### 7.3 `COOPFLIR.lua`

- 基于 `VE_HeatVision_CoOp`，覆写合作模式热成像组件。
- 包含 CameraParams、Fog、Vignette、ColorCorrection、FilmGrain、OutdoorLight、ShaderParams、Tonemap、Sky。
- 颜色校正设置为完全黑白（饱和度 0），亮度 1.7，对比度 1.6。
- 关闭胶片颗粒、暗角。

### 7.4 `SPFLIR.lua`

- 基于 `VE_FLIR_WhiteHot_Orange`，覆写单人剧情热成像组件。
- 包含 HeatScale、SPTank_BD_Opacity、CameraParams、Dof、Sky、DynamicAO、Fog、LensScope、Vignette、ColorCorrection、FilmGrain、OutdoorLight、FLIRData、Tonemap。
- 调整颜色校正、关闭景深、关闭 AO、关闭胶片颗粒、关闭暗角。
- 设置雾效、天空、色调映射等。

### 7.5 `IRNVSwitch.lua`

- 订阅 `Level:RegisterEntityResources` 事件，将不同实体的视觉环境替换为指定的夜视/热成像 VE。
- 替换对象包括：
  - 单人夜视瞄准镜（`flirVeName`）
  - MAV、EOD 机器人（`envgVeName`）
  - TV 弹（AH1Z、Mi28、TV 弹）
- 部分代码被注释掉（坦克热成像、加载 Bundles 等）。

### 7.6 `Bot1pFX.lua`

- 调整 MAV、EOD 机器人等第一人称视觉特效。
- 包括颜色校正、胶片颗粒、暗角。
- 调整 TV 弹发射和爆炸时的画面效果。
- 处理镭射指示器放大无 UI 的情况。

---

## 8. 客户端交互功能

### 8.1 `ADS.lua`：B 键切换 ADS 效果

监听 `Client:UpdateInput` 事件，当按下 **B** 键时，切换多个瞄准镜的 `allowFieldOfViewScaling` 属性。涉及 Guid 包括：

- `5C006FDF-FA1D-4E29-8E21-2ECAB83AC01C`：默认主武器机瞄及内红点、反射式、M320 家族（除鹿弹）、SMAW、RPG、SA18 IGLA
- `50887762-21DF-42F5-9740-ECDBCEECC3B4`：默认一般手枪和 M26 家族（包括 M320 鹿弹）
- `A83312DC-829D-4B36-9A9B-F0140876E14A`：默认标枪及毒刺（FIM-92）筒子
- `242DAE61-CC3D-428A-8AC5-324FA95EBE7B`：默认 1 倍热成像
- `B06E9839-DA28-42E6-86C4-42D1F8E3AADB`：默认 HOLO 和 PKA-S 瞄准镜
- `83D88E7E-D266-430A-8664-CA15AFFA0D66`：默认 HOLO 和 PKA-S 瞄准镜（霰弹枪、部分冲锋枪、步枪）
- `E7AA2666-EE70-4B9F-A918-7686E7932DAF`：默认 3.4x 瞄准镜
- `BF74D9F8-E11C-4075-BDDB-AAC3F27C608D`：默认 4x 瞄准镜

### 8.2 `Client/__init__.lua`：F4 键切换热成像风格

按下 **F4** 键时，循环切换 `ORIGINAL`、`IRON_RED`、`WHITE_PHOSPHOR` 三种热成像风格，并调用 `ApplyThermalStyle` 应用。

---

## 9. 辅助说明文件（txt）

### 9.1 不能修改的镜内瞄准枪械

```
M36 Holographic
DAO-12 Red Dot, 10x Scope
M1014 10x Scope
USAS 10x Scope
MK3A1 10x Scope
```

这些武器的特定瞄准镜数据无法修改，可能由于游戏数据限制或 GUID 冲突。

### 9.2 镜子类型说明

详细列出了 `Aim_Default_IronSight`、`Aim_FastMove_IronSight`、`Aim_Slow_IronSight`、`Aim_FastMove_IronSight_UGL`、`Aim_NoAssist_IronSight_UGL`、`Aim_NoAssist_AT`、`Aim_NoAssist_IronSight`、`Aim_Default_EOTech`、`Aim_FastMove_EOTech`、`Aim_Slow_EOTech`、`Aim_Default_ENVG`、`Aim_Slow_ENVG`、`Aim_Slow_ENVG_6x`、`Aim_Slow_ENVG_10x`、`Aim_Default_3.4x`、`Aim_Slow_3.4x`、`Aim_Default_4x`、`Aim_Slow_4x`、`Aim_Slow_6x`、`Aim_Slow_7x`、`Aim_Slow_8x`、`Aim_Slow_10x`、`Aim_Slow_12x`、`Aim_Slow_20x`、`Aim_COOP_ENVG_20x`、`Aim_Default_NoZoom` 对应的武器列表。

### 9.3 说明.txt

```
1. The ADS feature has been merged into the Base file.
2. Pitch/yaw and other features have been merged into the Advanced features.
3. If you want to remove any feature, delete it in the __init__.lua file.
```

即：
1. ADS 功能已归入 `Base.lua`。
2. 俯仰偏航等功能已归入 `Advance.lua`。
3. 删除任意功能，请在 `__init__.lua` 中删除对应的 `require`。

## 游戏截图
<img width="1905" height="1072" alt="BV1g5tH6nEcf" src="https://github.com/user-attachments/assets/3f4deb95-7342-416b-89bb-e164b089065d" />
<img width="1500" height="843" alt="BV1Mah56iEjk" src="https://github.com/user-attachments/assets/2076f8b0-953e-46f1-ad2a-ce26e5fe0fdf" />
<img width="1920" height="1080" alt="BV1ogb36KEZc" src="https://github.com/user-attachments/assets/e162e984-7f75-402b-831b-1706ce73d713" />
<img width="1920" height="1080" alt="BV1ug4R6uETt" src="https://github.com/user-attachments/assets/74472157-6e1c-4278-a30b-f7fe2eeaf5d1" />

## 致谢

特别感谢 [@J4nssent](https://github.com/J4nssent) 对本项目的贡献。
