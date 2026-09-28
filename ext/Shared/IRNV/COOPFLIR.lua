-- ============================================================
-- COOPFLIR 合作模式热成像 - 所有组件数据覆写
-- 基于 VE_HeatVision_CoOp (FX/VisualEnviroments/NightVision/VE_HeatVision_CoOp)
-- ============================================================

-- ============================================================
-- 1. 定义所有 GUID 局部变量
-- ============================================================

-- Partition GUID (VisualEnvironmentBlueprint)
local coopflir_partitionGuid = Guid('9AADF1A6-9183-470A-B399-BE3735311800')

-- 各组件 GUID (按 Components 数组顺序)
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
-- 2. 各组件数据覆写
-- ============================================================

-- 2.1 CameraParamsComponentData (摄像机参数)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_cameraParamsGuid, function(cameraParams)
    cameraParams = CameraParamsComponentData(cameraParams)
    cameraParams:MakeWritable()
    cameraParams.viewDistance = -1.0                    -- -1.0 (原 -1.0 视距，-1=默认)
    cameraParams.nearPlane = -1.0                       -- -1.0 (原 -1.0 近裁切面，-1=默认)
    cameraParams.sunShadowmapViewDistance = 0.0         -- 0.0 (原 0.0 太阳阴影视距)
end)

-- 2.2 ColorCorrectionComponentData (颜色校正)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_colorCorrectionGuid, function(color)
    color = ColorCorrectionComponentData(color)
    color:MakeWritable()
    color.enable = true                                 -- true (原 true 开关)
    color.brightness = Vec3(1.7000000476837158, 1.7000000476837158, 1.7000000476837158)  -- 1.7 (原 1.7000000476837158 亮度)
    color.contrast = Vec3(1.600000023841858, 1.600000023841858, 1.600000023841858)      -- 1.6 (原 1.600000023841858 对比度)
    color.saturation = Vec3(0.0, 0.0, 0.0)              -- 0.0 (原 0.0 饱和度，完全黑白)
    color.hue = 0.0                                     -- 0.0 (原 0.0 色相偏移)
    color.colorGradingEnable = true                     -- true (原 true 颜色分级开关)
    -- color.colorGradingTexture 保持原 LUT: Levels/SP_Tank/Lighting/Textures/colorCube_flir/...
end)

-- 2.3 FilmGrainComponentData (胶片颗粒/噪点)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_filmGrainGuid, function(filmgrain)
    filmgrain = FilmGrainComponentData(filmgrain)
    filmgrain:MakeWritable()
    filmgrain.enable = false                             -- false (原 true 噪点开关)
    filmgrain.textureScale = Vec2(0.4000000059604645, 0.4000000059604645)  -- 0.4 (原 0.4000000059604645 颗粒缩放)
    filmgrain.colorScale = Vec3(0.10000000149011612, 0.10000000149011612, 0.10000000149011612)  -- 0.1 (原 0.10000000149011612 噪点强度)
    filmgrain.linearFilteringEnable = false             -- false (原 false 线性过滤)
    filmgrain.randomEnable = true                       -- true (原 true 随机动态噪点)
    -- filmgrain.texture 保持原纹理: Systems/PostProcess/FilmGrainNoise/...
end)

-- 2.4 FogComponentData (雾效)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_fogGuid, function(fog)
    fog = FogComponentData(fog)
    fog:MakeWritable()
    fog.enable = true                                   -- true (原 true 雾效总开关)
    fog.fogDistanceMultiplier = 1.0                     -- 1.0 (原 1.0 雾距离倍数)
    fog.fogGradientEnable = true                        -- true (原 true 雾渐变开关)
    fog.start = 100.0                                   -- 100 (原 100.0 雾起始距离)
    fog.endValue = 500.0                                -- 500 (原 500.0 雾最大浓度距离)
    fog.curve = Vec4(-1.1652443408966064, 2.3073461055755615, -0.10884837806224823, -0.0050104414112865925)  -- 原 EBX 雾浓度曲线
    fog.fogColorEnable = true                           -- true (原 true 雾染色开关)
    fog.fogColor = Vec3(0.035999998450279236, 0.035999998450279236, 0.035999998450279236)  -- 0.036 (原 0.035999998450279236 雾颜色)
    fog.fogColorStart = 100.0                           -- 100 (原 100.0 雾颜色起始距离)
    fog.fogColorEnd = 500.0                             -- 500 (原 500.0 雾颜色最大距离)
    fog.fogColorCurve = Vec4(0.0, 0.0, 0.9605910778045654, -0.06302949041128159)  -- 原 EBX 颜色曲线
    fog.transparencyFadeStart = 0.0                     -- 0.0 (原 0.0 透明物体起雾起始)
    fog.transparencyFadeEnd = 1.0                       -- 1.0 (原 1.0 透明物体最大雾化)
    fog.transparencyFadeClamp = 0.9800000190734863      -- 0.98 (原 0.9800000190734863 透明物体雾化强度)
    fog.heightFogEnable = false                         -- false (原 false 高度雾开关)
    fog.heightFogFollowCamera = 0.0                     -- 0.0 (原 0.0)
    fog.heightFogAltitude = 0.0                         -- 0.0 (原 0.0)
    fog.heightFogDepth = 100.0                          -- 100 (原 100.0)
    fog.heightFogVisibilityRange = 100.0                -- 100 (原 100.0)
end)

-- 2.5 OutdoorLightComponentData (室外环境光)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_outdoorLightGuid, function(outdoor)
    outdoor = OutdoorLightComponentData(outdoor)
    outdoor:MakeWritable()
    outdoor.enable = true                               -- true (原 true 环境光总开关)
    outdoor.sunRotationX = 105.12000274658203           -- 105.12 (原 105.12000274658203 太阳水平角度)
    outdoor.sunRotationY = 52.20000076293945            -- 52.2 (原 52.20000076293945 太阳垂直角度)
    outdoor.sunColor = Vec3(0.08900000154972076, 0.08900000154972076, 0.08900000154972076)  -- 0.089 (原 0.08900000154972076 太阳直射光)
    outdoor.skyColor = Vec3(0.18000000715255737, 0.1589999943971634, 0.1589999943971634)  -- 0.18,0.159,0.159 (原 天空漫射光)
    outdoor.groundColor = Vec3(0.0, 0.0, 0.0)           -- 0.0 (原 0.0 地面反射光)
    outdoor.skyLightAngleFactor = -0.4390000104904175   -- -0.439 (原 -0.4390000104904175 天光角度因子)
    outdoor.sunSpecularScale = 0.0                      -- 0 (原 0.0 太阳高光反射)
    outdoor.skyEnvmapShadowScale = 0.0                  -- 0 (原 0.0 环境阴影比例)
    outdoor.sunShadowHeightScale = 0.5619999766349792   -- 0.562 (原 0.5619999766349792 阴影高度缩放)
    outdoor.cloudShadowEnable = false                   -- false (原 false 云阴影开关)
    -- outdoor.cloudShadowTexture 保持 nullGuid
    outdoor.cloudShadowSpeed = Vec2(2.0, 2.0)           -- 2.0 (原 2.0 云阴影移动速度)
    outdoor.cloudShadowSize = 500.0                     -- 500 (原 500.0 云阴影尺寸)
    outdoor.cloudShadowCoverage = 0.30000001192092896   -- 0.3 (原 0.30000001192092896 云阴影覆盖度)
    outdoor.cloudShadowExponent = 8.0                   -- 8 (原 8.0 云阴影指数)
    outdoor.translucencyAmbient = 0.0                   -- 0 (原 0.0 半透明环境光)
    outdoor.translucencyScale = 0.0                     -- 0 (原 0.0 半透明缩放)
    outdoor.translucencyPower = 38.06700134277344       -- 38.067 (原 38.06700134277344 半透明指数)
    outdoor.translucencyDistortion = 0.10000000149011612  -- 0.1 (原 0.10000000149011612 半透明扭曲)
end)

-- 2.6 ShaderParamsComponentData (FLIRData)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_shaderParamsGuid, function(shaderParams)
    shaderParams = ShaderParamsComponentData(shaderParams)
    shaderParams:MakeWritable()
    shaderParams.value = Vec4(0.5, 0.5, 0.5, 0.5)       -- 0.5 (原 0.5 FLIR混合参数)
    -- shaderParams.parameterName 保持 "FLIRData"
end)

-- 2.7 SkyComponentData (天空)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_skyGuid, function(sky)
    sky = SkyComponentData(sky)
    sky:MakeWritable()
    sky.enable = true                                   -- true (原 true 天空开关)
    sky.brightnessScale = 0.03999999910593033           -- 0.04 (原 0.03999999910593033 天空亮度缩放)
    -- sky.skyGradientTexture 保持原纹理
    sky.sunSize = 0.0                                   -- 0 (原 0.0 太阳大小)
    sky.sunScale = 0.0                                  -- 0 (原 0.0 太阳缩放)
    sky.panoramicUVMinX = 0.0                           -- 0 (原 0.0)
    sky.panoramicUVMaxX = 1.0                           -- 1 (原 1.0)
    sky.panoramicUVMinY = 0.0                           -- 0 (原 0.0)
    sky.panoramicUVMaxY = 1.0                           -- 1 (原 1.0)
    sky.panoramicTileFactor = 1.0                       -- 1 (原 1.0)
    sky.panoramicRotation = 0.41600000858306885         -- 0.416 (原 0.41600000858306885)
    -- sky.panoramicTexture 保持原纹理
    -- sky.panoramicAlphaTexture 保持原纹理
    sky.cloudLayerSunColor = Vec3(1.0, 1.0, 1.0)        -- 1.0 (原 1.0 云层太阳光颜色)
    -- sky.cloudLayerMaskTexture 保持 nullGuid
    sky.cloudLayer1Altitude = 10000.0                   -- 10000 (原 10000.0)
    sky.cloudLayer1TileFactor = 0.25                    -- 0.25 (原 0.25)
    sky.cloudLayer1Rotation = 0.0                       -- 0 (原 0.0)
    sky.cloudLayer1Speed = 0.009999999776482582         -- 0.01 (原 0.009999999776482582)
    sky.cloudLayer1SunLightIntensity = 4.0              -- 4 (原 4.0)
    sky.cloudLayer1SunLightPower = 50.0                 -- 50 (原 50.0)
    sky.cloudLayer1AmbientLightIntensity = 0.20000000298023224  -- 0.2 (原 0.20000000298023224)
    sky.cloudLayer1Color = Vec3(1.0, 1.0, 1.0)          -- 1.0 (原 1.0)
    sky.cloudLayer1AlphaMul = 1.0                       -- 1 (原 1.0)
    -- sky.cloudLayer1Texture 保持 nullGuid
    sky.cloudLayer2Altitude = 10000.0                   -- 10000 (原 10000.0)
    sky.cloudLayer2TileFactor = 0.25                    -- 0.25 (原 0.25)
    sky.cloudLayer2Rotation = 0.0                       -- 0 (原 0.0)
    sky.cloudLayer2Speed = 0.009999999776482582         -- 0.01 (原 0.009999999776482582)
    sky.cloudLayer2SunLightIntensity = 4.0              -- 4 (原 4.0)
    sky.cloudLayer2SunLightPower = 50.0                 -- 50 (原 50.0)
    sky.cloudLayer2AmbientLightIntensity = 0.20000000298023224  -- 0.2 (原 0.20000000298023224)
    sky.cloudLayer2Color = Vec3(1.0, 1.0, 1.0)          -- 1.0 (原 1.0)
    sky.cloudLayer2AlphaMul = 1.0                       -- 1 (原 1.0)
    -- sky.cloudLayer2Texture 保持 nullGuid
    -- sky.staticEnvmapTexture 保持 nullGuid
    sky.staticEnvmapScale = 1.0                         -- 1 (原 1.0)
    sky.skyEnvmap8BitTexScale = 0.25                    -- 0.25 (原 0.25)
    -- sky.customEnvmapTexture 保持 nullGuid
    sky.customEnvmapScale = 1.0                         -- 1 (原 1.0)
    sky.customEnvmapAmbient = 0.0                       -- 0 (原 0.0)
    sky.skyVisibilityExponent = 1.0                     -- 1 (原 1.0)
end)

-- 2.8 TonemapComponentData (色调映射)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_tonemapGuid, function(tonemap)
    tonemap = TonemapComponentData(tonemap)
    tonemap:MakeWritable()
    tonemap.tonemapMethod = 2                           -- 2 (原 TonemapMethod_FilmicNeutral)
    tonemap.middleGray = 0.25                           -- 0.25 (原 0.25 曝光基准)
    tonemap.minExposure = 0.25                          -- 0.25 (原 0.25 最小曝光)
    tonemap.maxExposure = 4.0                           -- 4.0 (原 4.0 最大曝光)
    tonemap.exposureAdjustTime = 0.05000000074505806    -- 0.05 (原 0.05000000074505806 曝光适应时间)
    tonemap.bloomScale = Vec3(0.21199999749660492, 0.16300000250339508, 0.16300000250339508)  -- 0.212,0.163,0.163 (原 泛光强度)
    tonemap.chromostereopsisEnable = false              -- false (原 false 色差立体)
    tonemap.chromostereopsisScale = 1.0                 -- 1.0 (原 1.0)
    tonemap.chromostereopsisOffset = 1.0                -- 1.0 (原 1.0)
end)

-- 2.9 VignetteComponentData (暗角)
ResourceManager:RegisterInstanceLoadHandler(coopflir_partitionGuid, coopflir_vignetteGuid, function(vignette)
    vignette = VignetteComponentData(vignette)
    vignette:MakeWritable()
    vignette.enable = false                              -- false (原 true 暗角开关)
    vignette.scale = Vec2(3.299999952316284, 2.200000047683716)  -- 3.3,2.2 (原 3.299999952316284,2.200000047683716 椭圆拉伸)
    vignette.exponent = 1.0                             -- 1.0 (原 1.0 边缘衰减曲线)
    vignette.color = Vec3(0.007000000216066837, 0.03200000151991844, 0.07400000095367432)  -- 0.007,0.032,0.074 (原 暗角颜色)
    vignette.opacity = 0.30000001192092896              -- 0.3 (原 0.30000001192092896 不透明度)
end)