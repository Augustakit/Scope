-- ==================== 1. Define all GUID local variables ====================
local irnv_PGuids = Guid('9C13ACA5-1E35-11E0-89E4-87B70A2B0A19')

-- Original component GUIDs
local irnv_colorGuids = Guid('B3937CFD-3F39-4136-BABC-6CB5BF714BD6')
local irnv_filmGrainGuids = Guid('3B31E4B3-8540-44D9-8A51-60F964032EDA')
local irnv_fogGuids = Guid('E298F0B2-87B0-460B-9FAF-656DA3BD1271')
local irnv_outdoorLightGuids = Guid('4A472BC0-BB10-4498-B31F-2ABEA663E4C5')
local irnv_vignetteGuids = Guid('BD368693-F149-43E1-9912-7C108CC47CDD')

-- Newly added component GUIDs
local irnv_characterLightingGuids = Guid('C50A87AE-343D-41B7-840A-6B94049E2958')
local irnv_aoGuids = Guid('FFD03CCC-3706-454F-9A42-9E9878A99DEC')
local irnv_cameraParamsGuids = Guid('805B9617-D924-4AA0-A83B-2A19897E346E')
local irnv_shaderParamsGuids = Guid('040B2E4C-BD9F-43A5-9C9A-5980CE043161')
local irnv_tonemapGuids = Guid('AF2A98F1-F71E-4A04-ACE3-F6B17A11DA48')

-- ==================== 2. All component data injection ====================

-- 2.1 Color correction (color grading, brightness, contrast, saturation)
THERMAL_STYLES = {
    ORIGINAL = {  --Original modified
        name = "Original",
        brightness = Vec3(1.3, 1.3, 1.3),                                              -- 1.3 (original 2.0 brightness)
        contrast = Vec3(1.3, 1.3, 1.3),                                                -- 1.3 (original 1.5 contrast)
        saturation = Vec3(1.5, 1.5, 1.5)                                              -- 1.0 (original 0.7 saturation)
    },

    IRON_RED = {  --Iron red thermal imaging
        name = "Iron Red",
        brightness = Vec3(0.6, 0.2, 1.2),
        contrast = Vec3(2.5, 0.3, 1.4),
        saturation = Vec3(1.0, 0.5, 0.6)
    },

    WHITE_PHOSPHOR = {  --White phosphor night vision
        name = "White Phosphor",
        brightness = Vec3(0.5, 1.0, 1.3),
        contrast = Vec3(2.0, 1.6, 1.6),
        saturation = Vec3(0.1, 0.4, 0.7)
    },
}

-- Currently active style (default)
currentThermalStyle = "ORIGINAL"

-- ColorCorrection instance cache
local colorCorrectionInstance = nil

function ApplyThermalStyle(styleKey)
    local style = THERMAL_STYLES[styleKey]
    if not style or not colorCorrectionInstance then
        return
    end

    colorCorrectionInstance:MakeWritable()
    colorCorrectionInstance.brightness = style.brightness
    colorCorrectionInstance.contrast = style.contrast
    colorCorrectionInstance.saturation = style.saturation
end

ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_colorGuids, function(color)
    color = ColorCorrectionComponentData(color)
    colorCorrectionInstance = color
    ApplyThermalStyle(currentThermalStyle)
end)


-- 2.2 Film grain (noise - almost completely removed)
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_filmGrainGuids, function(filmgrain)
    filmgrain = FilmGrainComponentData(filmgrain)
    filmgrain:MakeWritable()
    filmgrain.enable = false
    filmgrain.textureScale = Vec2(0.01, 0.01)                           -- 0.01 (original 0.4 grain size, extremely small and almost invisible)
    filmgrain.colorScale = Vec3(0.005, 0.005, 0.005)                    -- 0.005 (original 0.05,0.12,0.05 noise color intensity, very faint)
    filmgrain.linearFilteringEnable = false                             -- false (original false linear filtering)
    filmgrain.randomEnable = true                                       -- true (original true random dynamic noise)
end)

-- 2.3 Fog (greatly optimized: delayed fog start, removed green, reduced transparent object fog)
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_fogGuids, function(fog)
    fog = FogComponentData(fog)
    fog:MakeWritable()
    fog.enable = true                                                   -- true (original true fog master toggle)
    fog.fogDistanceMultiplier = 1.0                                     -- 1.0 (original 1.0 fog distance multiplier)
    fog.fogGradientEnable = true                                        -- true (original true fog gradient toggle)
    fog.start = 0                                                   -- 100 (original 0.0 fog start distance, no fog within 100 meters)
    fog.endValue = 2000                                             -- 500 (original 800.0 fog maximum density distance, extended for clearer view)

    -- original EBX fog density curve Vec4(3.1089489459991455, -4.220193386077881, 2.0970723628997803, -0.0016641319962218404) Vec4(-0.042, 0.550, 0.581, -0.088)
    fog.curve = Vec4(-0.042, 0.550, 0.581, -0.088)
    fog.fogColorEnable = true                                           -- true (original true fog color toggle)
    fog.fogColor = Vec3(0.017, 0.017, 0.017)                  -- original 0,1,0 pure green -> dark gray, completely removes green haze
    fog.fogColorStart = 0                                          -- 100 (original 5.0 fog color start distance, synced with start)
    fog.fogColorEnd = 1000                                          -- 600 (original 1000.0 fog color maximum density distance, synced with endValue)

    -- original EBX color curve (4.8581695556640625, -6.213437080383301, 3.2027969360351562, -0.026411322876811028)
    fog.fogColorCurve = Vec4(0.7463401556015015, 0.1163753867149353, -0.039285361766815186, -0.004800682887434959)

    -- Transparent object fog (increased values so character/vehicle edges are not wrapped in fog)
    fog.transparencyFadeStart = 1000                                  -- 1000 (original -500 transparent object fog start distance, greatly delayed)
    fog.transparencyFadeEnd = 2000.0                                    -- 200 (original 1500 transparent object maximum fog distance)
    fog.transparencyFadeClamp = 0                                   -- 0.0 (original 1.0 transparent object fog intensity, 0 = no fog at all)
    fog.heightFogEnable = false                                         -- false (original false height fog toggle)
    fog.heightFogFollowCamera = 0.0                                     -- 0.0 (original 0.0)
    fog.heightFogAltitude = 0.0                                         -- 0.0 (original 0.0)
    fog.heightFogDepth = 100.0                                          -- 100 (original 100.0)
    fog.heightFogVisibilityRange = 100.0                                -- 100 (original 100.0)
end)

-- 2.4 Outdoor ambient light (greatly increased ambient lighting)
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_outdoorLightGuids, function(outdoor)
    outdoor = OutdoorLightComponentData(outdoor)
    outdoor:MakeWritable()

    outdoor.enable = true                                               -- true (original true ambient light master toggle)
    outdoor.sunRotationX = 0.0                                          -- 0 (original 0.0 sun horizontal angle)
    outdoor.sunRotationY = 60.0                                         -- 60 (original 60.0 sun vertical angle)
    outdoor.sunColor = Vec3(0.3, 0.3, 0.3)                              -- 0.3 (original 0.1 direct sunlight)
    outdoor.skyColor = Vec3(0.5, 0.5, 0.5)                              -- 0.5 (original 0.04 sky diffuse light, greatly increased)
    outdoor.groundColor = Vec3(0.5, 0.5, 0.5)                           -- 0.5 (original 0.03 ground reflected light, greatly increased)
    outdoor.skyLightAngleFactor = 0.0                                   -- 0 (original 0.0 sky light angle factor)
    outdoor.sunSpecularScale = 0.0                                      -- 0 (original 0.0 sun specular reflection)
    outdoor.skyEnvmapShadowScale = 0.0                                  -- 0 (original 0.0 environment shadow scale)
    outdoor.sunShadowHeightScale = 0.05                                 -- 0.05 (original 0.05 shadow height scale)

    outdoor.cloudShadowEnable = false                                   -- false (original false cloud shadow toggle)
    outdoor.cloudShadowSpeed = Vec2(2.0, 2.0)                           -- 2.0 (original 2.0 cloud shadow movement speed)
    outdoor.cloudShadowSize = 500.0                                     -- 500 (original 500.0 cloud shadow size)
    outdoor.cloudShadowCoverage = 0.3                                   -- 0.3 (original 0.3 cloud shadow coverage)
    outdoor.cloudShadowExponent = 8.0                                   -- 8 (original 8.0 cloud shadow exponent)

    outdoor.translucencyAmbient = 0.0                                   -- 0 (original 0.0 translucency ambient)
    outdoor.translucencyScale = 0.0                                     -- 0 (original 0.0 translucency scale)
    outdoor.translucencyPower = 8.0                                     -- 8 (original 8.0 translucency exponent)
    outdoor.translucencyDistortion = 0.1                                -- 0.1 (original 0.1 translucency distortion)
end)

-- 2.5 Vignette (disabled)
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_vignetteGuids, function(vignette)
    vignette = VignetteComponentData(vignette)
    vignette:MakeWritable()
    vignette.enable = false                                             -- false (original true vignette toggle)
    vignette.scale = Vec2(5.0, 2.9)                                     -- 5,2.9 (original 5.0,2.9 ellipse stretch)
    vignette.exponent = 2.0                                             -- 2.0 (original 2.0 edge falloff curve)
    vignette.color = Vec3(0.0, 0.12, 0.325)                             -- 0,0.12,0.325 (original dark blue-green)
    vignette.opacity = 0.4                                              -- 0.4 (original 0.4 opacity)
end)

-- 2.6 Character lighting (make enemy models brighter)
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_characterLightingGuids, function(characterLighting)
    characterLighting = CharacterLightingComponentData(characterLighting)
    characterLighting:MakeWritable()
    characterLighting.characterLightEnable = true                       -- true (original true character light toggle)
    characterLighting.firstPersonEnable = false                         -- false (original false first-person light)
    characterLighting.lockToCameraDirection = true                      -- true (original true lock to camera direction)
    characterLighting.cameraUpRotation = 0.0                            -- 0 (original 0.0 camera rotation)
    characterLighting.characterLightingMode =  1                        -- original CharacterLightingMode_Blend(1)
    characterLighting.blendFactor = 1.0                                 -- 1.0 (original 1.0 blend factor)
    characterLighting.topLight = Vec3(0.5, 0.5, 0.5)                    -- 0.5 (original 0.25 top light)
    characterLighting.bottomLight = Vec3(1.5, 1.5, 1.5)                 -- 1.5 (original 1.0 bottom light, makes faces brighter)
    characterLighting.topLightDirX = 0.0                                -- 0 (original 0.0)
    characterLighting.topLightDirY = 90.0                               -- 90 (original 90.0)
end)

-- 2.7 Ambient occlusion (disabled, cleaner image)
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_aoGuids, function(ao)
    ao = DynamicAOComponentData(ao)
    ao:MakeWritable()
    ao.enable = false                                                   -- false (original true AO master toggle)
    ao.ssaoFade = 1.0                                                   -- 1.0 (original 1.0 SSAO fade)
    ao.ssaoRadius = 1.0                                                 -- 1.0 (original 1.0 SSAO sampling radius)
    ao.ssaoMaxDistanceInner = 1.0                                       -- 1.0 (original 1.0 SSAO inner distance)
    ao.ssaoMaxDistanceOuter = 1.0                                       -- 1.0 (original 1.0 SSAO outer distance)
    ao.hbaoRadius = 1.0                                                 -- 1.0 (original 1.0 HBAO radius)
    ao.hbaoAngleBias = 0.0                                              -- 0 (original 0.0 HBAO angle bias)
    ao.hbaoAttenuation = 0.7                                            -- 0.7 (original 0.7 HBAO attenuation)
    ao.hbaoContrast = 1.4                                               -- 1.4 (original 1.4 HBAO contrast)
    ao.hbaoMaxFootprintRadius = 0.1                                     -- 0.1 (original 0.1 HBAO max footprint)
    ao.hbaoPowerExponent = 1.0                                          -- 1.0 (original 1.0 HBAO power exponent)
end)

-- 2.8 Camera parameters (keep default)
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_cameraParamsGuids, function(cameraParams)
    cameraParams = CameraParamsComponentData(cameraParams)
    cameraParams:MakeWritable()
    cameraParams.viewDistance = -1.0                                    -- -1 (original -1.0 view distance, -1 = default)
    cameraParams.nearPlane = -1.0                                       -- -1 (original -1.0 near plane, -1 = default)
    cameraParams.sunShadowmapViewDistance = 0.0                         -- 0 (original 0.0 sun shadow view distance)
end)

-- 2.9 Custom shader parameters (FLIRData - controls thermal imaging color tone)
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_shaderParamsGuids, function(shaderParams)
    shaderParams = ShaderParamsComponentData(shaderParams)
    shaderParams:MakeWritable()
    shaderParams.value = Vec4(1, 1, 1, 1)                       -- original 1,1,1,1 FLIR blend intensity, increased to make thermal tone more obvious
end)

-- 2.10 Tonemap (exposure / bloom)
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_tonemapGuids, function(tonemap)
    tonemap = TonemapComponentData(tonemap)
    tonemap:MakeWritable()

    tonemap.tonemapMethod = 2                                           --  original TonemapMethod_FilmicNeutral(2)
    tonemap.middleGray = 0.5                                            -- 0.5 (original 0.25 exposure reference, increased to brighten image)
    tonemap.minExposure = 0.05                                         -- 0.25 (original 0.25 minimum exposure)
    tonemap.maxExposure = 5.0                                           -- 5.0 (original 5.0 maximum exposure)
    tonemap.exposureAdjustTime = 0.3                                    -- 0.3 (original 0.3 exposure adaptation time)
    tonemap.bloomScale = Vec3(0.5, 0.3, 0.2)                            -- 0.5,0.3,0.2 (original 0.2 bloom intensity, red strong green weak blue weak -> orange-red glow)
    tonemap.chromostereopsisEnable = false                              -- false (original false chromostereopsis)
    tonemap.chromostereopsisScale = 1.0                                 -- 1.0 (original 1.0)
    tonemap.chromostereopsisOffset = 1.0                                -- 1.0 (original 1.0)
end)