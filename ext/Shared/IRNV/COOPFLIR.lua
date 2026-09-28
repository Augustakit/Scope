-- ============================================================
-- COOPFLIR Co-op mode thermal imaging - All component data overrides
-- Based on VE_HeatVision_CoOp (FX/VisualEnviroments/NightVision/VE_HeatVision_CoOp)
-- ============================================================

-- ============================================================
-- 1. Define all GUID local variables
-- ============================================================

-- Partition GUID (VisualEnvironmentBlueprint)
local coopflir_partitionGuid = Guid('9AADF1A6-9183-470A-B399-BE3735311800')

-- Component GUIDs (in Components array order)
local coopflir_cameraParamsGuid = Guid('0305E395-40F8-49B5-A627-9E51FFBDFBFE')   -- member(0) CameraParams
local coopflir_fogGuid = Guid('9F2BCA16-3368-49C3-8F13-5DEB8697075D')            -- member(1) Fog
local coopflir_vignetteGuid = Guid('352A8CEF-B222-42B9-8822-F01F61402D03')       -- member(2) Vignette
local coopflir_colorCorrectionGuid = Guid('A77AA87E-4F96-4664-9455-777799B4435B') -- member(3) ColorCorrection
local coopflir_filmGrainGuid = Guid('AE95EE3E-82C9-45CF-B504-59051DDA2923')      -- member(4) FilmGrain
local coopflir_outdoorLightGuid = Guid('F2E42584-EEF9-40ED-B43F-C260CEF689DF')   -- member(5) OutdoorLight
local coopflir_shaderParamsGuid = Guid('982B62CF-2F94-46DC-9EDD-B5B4820891C1')   -- member(6) ShaderParams (FLIRData)
local coopflir_tonemapGuid = Guid('185C3FAD-ED80-4133-85E4-2173103EE5D3')        -- member(7) Tonemap
local coopflir_skyGuid = Guid('26D0B140-5FA0-4F9E-A5DE-59C3AD27D74B')            -- member(8) Sky

-- ============================================================
-- 2. Component data overrides
-- ============================================================

-- 2.1 CameraParamsComponentData (Camera parameters)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_cameraParamsGuid, function(cameraParams)
    cameraParams = CameraParamsComponentData(cameraParams)
    cameraParams:MakeWritable()
    cameraParams.viewDistance = -1.0                    -- -1.0 (original -1.0 view distance, -1 = default)
    cameraParams.nearPlane = -1.0                       -- -1.0 (original -1.0 near plane, -1 = default)
    cameraParams.sunShadowmapViewDistance = 0.0         -- 0.0 (original 0.0 sun shadow view distance)
end)

-- 2.2 ColorCorrectionComponentData (Color correction)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_colorCorrectionGuid, function(color)
    color = ColorCorrectionComponentData(color)
    color:MakeWritable()
    color.enable = true                                 -- true (original true toggle)
    color.brightness = Vec3(1.7000000476837158, 1.7000000476837158, 1.7000000476837158)  -- 1.7 (original 1.7000000476837158 brightness)
    color.contrast = Vec3(1.600000023841858, 1.600000023841858, 1.600000023841858)      -- 1.6 (original 1.600000023841858 contrast)
    color.saturation = Vec3(0.0, 0.0, 0.0)              -- 0.0 (original 0.0 saturation, fully black and white)
    color.hue = 0.0                                     -- 0.0 (original 0.0 hue shift)
    color.colorGradingEnable = true                     -- true (original true color grading toggle)
    -- color.colorGradingTexture keeps original LUT: Levels/SP_Tank/Lighting/Textures/colorCube_flir/...
end)

-- 2.3 FilmGrainComponentData (Film grain/noise)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_filmGrainGuid, function(filmgrain)
    filmgrain = FilmGrainComponentData(filmgrain)
    filmgrain:MakeWritable()
    filmgrain.enable = false                             -- false (original true noise toggle)
    filmgrain.textureScale = Vec2(0.4000000059604645, 0.4000000059604645)  -- 0.4 (original 0.4000000059604645 grain scale)
    filmgrain.colorScale = Vec3(0.10000000149011612, 0.10000000149011612, 0.10000000149011612)  -- 0.1 (original 0.10000000149011612 noise intensity)
    filmgrain.linearFilteringEnable = false             -- false (original false linear filtering)
    filmgrain.randomEnable = true                       -- true (original true random dynamic noise)
    -- filmgrain.texture keeps original texture: Systems/PostProcess/FilmGrainNoise/...
end)

-- 2.4 FogComponentData (Fog)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_fogGuid, function(fog)
    fog = FogComponentData(fog)
    fog:MakeWritable()
    fog.enable = true                                   -- true (original true fog master toggle)
    fog.fogDistanceMultiplier = 1.0                     -- 1.0 (original 1.0 fog distance multiplier)
    fog.fogGradientEnable = true                        -- true (original true fog gradient toggle)
    fog.start = 100.0                                   -- 100 (original 100.0 fog start distance)
    fog.endValue = 500.0                                -- 500 (original 500.0 fog maximum density distance)
    fog.curve = Vec4(-1.1652443408966064, 2.3073461055755615, -0.10884837806224823, -0.0050104414112865925)  -- original EBX fog density curve
    fog.fogColorEnable = true                           -- true (original true fog color toggle)
    fog.fogColor = Vec3(0.035999998450279236, 0.035999998450279236, 0.035999998450279236)  -- 0.036 (original 0.035999998450279236 fog color)
    fog.fogColorStart = 100.0                           -- 100 (original 100.0 fog color start distance)
    fog.fogColorEnd = 500.0                             -- 500 (original 500.0 fog color maximum distance)
    fog.fogColorCurve = Vec4(0.0, 0.0, 0.9605910778045654, -0.06302949041128159)  -- original EBX color curve
    fog.transparencyFadeStart = 0.0                     -- 0.0 (original 0.0 transparent object fog start)
    fog.transparencyFadeEnd = 1.0                       -- 1.0 (original 1.0 transparent object maximum fog)
    fog.transparencyFadeClamp = 0.9800000190734863      -- 0.98 (original 0.9800000190734863 transparent object fog intensity)
    fog.heightFogEnable = false                         -- false (original false height fog toggle)
    fog.heightFogFollowCamera = 0.0                     -- 0.0 (original 0.0)
    fog.heightFogAltitude = 0.0                         -- 0.0 (original 0.0)
    fog.heightFogDepth = 100.0                          -- 100 (original 100.0)
    fog.heightFogVisibilityRange = 100.0                -- 100 (original 100.0)
end)

-- 2.5 OutdoorLightComponentData (Outdoor ambient light)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_outdoorLightGuid, function(outdoor)
    outdoor = OutdoorLightComponentData(outdoor)
    outdoor:MakeWritable()
    outdoor.enable = true                               -- true (original true ambient light master toggle)
    outdoor.sunRotationX = 105.12000274658203           -- 105.12 (original 105.12000274658203 sun horizontal angle)
    outdoor.sunRotationY = 52.20000076293945            -- 52.2 (original 52.20000076293945 sun vertical angle)
    outdoor.sunColor = Vec3(0.08900000154972076, 0.08900000154972076, 0.08900000154972076)  -- 0.089 (original 0.08900000154972076 direct sunlight)
    outdoor.skyColor = Vec3(0.18000000715255737, 0.1589999943971634, 0.1589999943971634)  -- 0.18,0.159,0.159 (original sky diffuse light)
    outdoor.groundColor = Vec3(0.0, 0.0, 0.0)           -- 0.0 (original 0.0 ground reflected light)
    outdoor.skyLightAngleFactor = -0.4390000104904175   -- -0.439 (original -0.4390000104904175 sky light angle factor)
    outdoor.sunSpecularScale = 0.0                      -- 0 (original 0.0 sun specular reflection)
    outdoor.skyEnvmapShadowScale = 0.0                  -- 0 (original 0.0 environment shadow scale)
    outdoor.sunShadowHeightScale = 0.5619999766349792   -- 0.562 (original 0.5619999766349792 shadow height scale)
    outdoor.cloudShadowEnable = false                   -- false (original false cloud shadow toggle)
    -- outdoor.cloudShadowTexture keeps nullGuid
    outdoor.cloudShadowSpeed = Vec2(2.0, 2.0)           -- 2.0 (original 2.0 cloud shadow movement speed)
    outdoor.cloudShadowSize = 500.0                     -- 500 (original 500.0 cloud shadow size)
    outdoor.cloudShadowCoverage = 0.30000001192092896   -- 0.3 (original 0.30000001192092896 cloud shadow coverage)
    outdoor.cloudShadowExponent = 8.0                   -- 8 (original 8.0 cloud shadow exponent)
    outdoor.translucencyAmbient = 0.0                   -- 0 (original 0.0 translucency ambient)
    outdoor.translucencyScale = 0.0                     -- 0 (original 0.0 translucency scale)
    outdoor.translucencyPower = 38.06700134277344       -- 38.067 (original 38.06700134277344 translucency exponent)
    outdoor.translucencyDistortion = 0.10000000149011612  -- 0.1 (original 0.10000000149011612 translucency distortion)
end)

-- 2.6 ShaderParamsComponentData (FLIRData)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_shaderParamsGuid, function(shaderParams)
    shaderParams = ShaderParamsComponentData(shaderParams)
    shaderParams:MakeWritable()
    shaderParams.value = Vec4(0.5, 0.5, 0.5, 0.5)       -- 0.5 (original 0.5 FLIR blend parameter)
    -- shaderParams.parameterName keeps "FLIRData"
end)

-- 2.7 SkyComponentData (Sky)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_skyGuid, function(sky)
    sky = SkyComponentData(sky)
    sky:MakeWritable()
    sky.enable = true                                   -- true (original true sky toggle)
    sky.brightnessScale = 0.03999999910593033           -- 0.04 (original 0.03999999910593033 sky brightness scale)
    -- sky.skyGradientTexture keeps original texture
    sky.sunSize = 0.0                                   -- 0 (original 0.0 sun size)
    sky.sunScale = 0.0                                  -- 0 (original 0.0 sun scale)
    sky.panoramicUVMinX = 0.0                           -- 0 (original 0.0)
    sky.panoramicUVMaxX = 1.0                           -- 1 (original 1.0)
    sky.panoramicUVMinY = 0.0                           -- 0 (original 0.0)
    sky.panoramicUVMaxY = 1.0                           -- 1 (original 1.0)
    sky.panoramicTileFactor = 1.0                       -- 1 (original 1.0)
    sky.panoramicRotation = 0.41600000858306885         -- 0.416 (original 0.41600000858306885)
    -- sky.panoramicTexture keeps original texture
    -- sky.panoramicAlphaTexture keeps original texture
    sky.cloudLayerSunColor = Vec3(1.0, 1.0, 1.0)        -- 1.0 (original 1.0 cloud layer sun color)
    -- sky.cloudLayerMaskTexture keeps nullGuid
    sky.cloudLayer1Altitude = 10000.0                   -- 10000 (original 10000.0)
    sky.cloudLayer1TileFactor = 0.25                    -- 0.25 (original 0.25)
    sky.cloudLayer1Rotation = 0.0                       -- 0 (original 0.0)
    sky.cloudLayer1Speed = 0.009999999776482582         -- 0.01 (original 0.009999999776482582)
    sky.cloudLayer1SunLightIntensity = 4.0              -- 4 (original 4.0)
    sky.cloudLayer1SunLightPower = 50.0                 -- 50 (original 50.0)
    sky.cloudLayer1AmbientLightIntensity = 0.20000000298023224  -- 0.2 (original 0.20000000298023224)
    sky.cloudLayer1Color = Vec3(1.0, 1.0, 1.0)          -- 1.0 (original 1.0)
    sky.cloudLayer1AlphaMul = 1.0                       -- 1 (original 1.0)
    -- sky.cloudLayer1Texture keeps nullGuid
    sky.cloudLayer2Altitude = 10000.0                   -- 10000 (original 10000.0)
    sky.cloudLayer2TileFactor = 0.25                    -- 0.25 (original 0.25)
    sky.cloudLayer2Rotation = 0.0                       -- 0 (original 0.0)
    sky.cloudLayer2Speed = 0.009999999776482582         -- 0.01 (original 0.009999999776482582)
    sky.cloudLayer2SunLightIntensity = 4.0              -- 4 (original 4.0)
    sky.cloudLayer2SunLightPower = 50.0                 -- 50 (original 50.0)
    sky.cloudLayer2AmbientLightIntensity = 0.20000000298023224  -- 0.2 (original 0.20000000298023224)
    sky.cloudLayer2Color = Vec3(1.0, 1.0, 1.0)          -- 1.0 (original 1.0)
    sky.cloudLayer2AlphaMul = 1.0                       -- 1 (original 1.0)
    -- sky.cloudLayer2Texture keeps nullGuid
    -- sky.staticEnvmapTexture keeps nullGuid
    sky.staticEnvmapScale = 1.0                         -- 1 (original 1.0)
    sky.skyEnvmap8BitTexScale = 0.25                    -- 0.25 (original 0.25)
    -- sky.customEnvmapTexture keeps nullGuid
    sky.customEnvmapScale = 1.0                         -- 1 (original 1.0)
    sky.customEnvmapAmbient = 0.0                       -- 0 (original 0.0)
    sky.skyVisibilityExponent = 1.0                     -- 1 (original 1.0)
end)

-- 2.8 TonemapComponentData (Tonemap)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_tonemapGuid, function(tonemap)
    tonemap = TonemapComponentData(tonemap)
    tonemap:MakeWritable()
    tonemap.tonemapMethod = 2                           -- 2 (original TonemapMethod_FilmicNeutral)
    tonemap.middleGray = 0.25                           -- 0.25 (original 0.25 exposure reference)
    tonemap.minExposure = 0.25                          -- 0.25 (original 0.25 minimum exposure)
    tonemap.maxExposure = 4.0                           -- 4.0 (original 4.0 maximum exposure)
    tonemap.exposureAdjustTime = 0.05000000074505806    -- 0.05 (original 0.05000000074505806 exposure adaptation time)
    tonemap.bloomScale = Vec3(0.21199999749660492, 0.16300000250339508, 0.16300000250339508)  -- 0.212,0.163,0.163 (original bloom intensity)
    tonemap.chromostereopsisEnable = false              -- false (original false chromostereopsis)
    tonemap.chromostereopsisScale = 1.0                 -- 1.0 (original 1.0)
    tonemap.chromostereopsisOffset = 1.0                -- 1.0 (original 1.0)
end)

-- 2.9 VignetteComponentData (Vignette)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_vignetteGuid, function(vignette)
    vignette = VignetteComponentData(vignette)
    vignette:MakeWritable()
    vignette.enable = false                              -- false (original true vignette toggle)
    vignette.scale = Vec2(3.299999952316284, 2.200000047683716)  -- 3.3,2.2 (original 3.299999952316284,2.200000047683716 ellipse stretch)
    vignette.exponent = 1.0                             -- 1.0 (original 1.0 edge falloff curve)
    vignette.color = Vec3(0.007000000216066837, 0.03200000151991844, 0.07400000095367432)  -- 0.007,0.032,0.074 (original vignette color)
    vignette.opacity = 0.30000001192092896              -- 0.3 (original 0.30000001192092896 opacity)
end)