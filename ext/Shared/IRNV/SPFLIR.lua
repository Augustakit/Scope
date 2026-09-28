-- ============================================================
-- SPFLIR - 所有组件数据覆写
-- 基于 VE_FLIR_WhiteHot_Orange (FX/VisualEnviroments/NightVision/VE_FLIR_WhiteHot_Orange)
-- ============================================================

-- ============================================================
-- 1. 定义所有 GUID 局部变量
-- ============================================================

-- Partition GUID (VisualEnvironmentBlueprint)
local spflir_partitionGuid = Guid('135BAB3E-CB2D-46FF-8C55-0074C7D32F41')

-- 各组件 GUID (按 Components 数组顺序)
local spflir_heatScaleGuid = Guid('5DF209E2-8ABC-49DD-8B5F-67D36ADF7231')          -- member(0) ShaderParams (HeatScale)
local spflir_spTankOpacityGuid = Guid('0434142D-EC45-4956-B9E4-D26343E72177')     -- member(1) ShaderParams (SPTank_BD_Opacity)
local spflir_cameraParamsGuid = Guid('8C8133F8-EF0E-4A7F-972A-FF99FAE3D877')      -- member(2) CameraParams
local spflir_dofGuid = Guid('7333943D-CEBA-4F65-9759-0F01808E6393')               -- member(3) Dof
local spflir_skyGuid = Guid('F678119D-1EC8-408D-9969-2F217740CF38')               -- member(4) Sky
local spflir_aoGuid = Guid('E55732A2-5D12-45A8-A419-C2E1A94D2150')                -- member(5) DynamicAO
local spflir_fogGuid = Guid('6361B4AA-C8A0-4EA8-A00C-1E311E0A1422')               -- member(6) Fog
local spflir_lensScopeGuid = Guid('83450C3D-B076-4D68-9710-1FA18B8F6BCE')         -- member(7) LensScope
local spflir_vignetteGuid = Guid('7295515F-17E9-4ED4-853C-D7ED7CE97CD3')          -- member(8) Vignette
local spflir_colorCorrectionGuid = Guid('4199CA3B-62DA-44BD-BA1F-71882D891EE6')  -- member(9) ColorCorrection
local spflir_filmGrainGuid = Guid('B2CED1E6-F4FB-4AB6-9BA5-D102240EEC97')         -- member(10) FilmGrain
local spflir_outdoorLightGuid = Guid('8C6C03CF-1209-4326-94BF-D6510BE8E7F0')      -- member(11) OutdoorLight
local spflir_flirDataGuid = Guid('C1B64F07-93D7-4129-9F2B-2B7E22C870E2')          -- member(12) ShaderParams (FLIRData)
local spflir_tonemapGuid = Guid('25624299-2B82-4B9B-82D2-77D62E159F3D')           -- member(13) Tonemap

-- ============================================================
-- 2. 各组件数据覆写
-- ============================================================

-- 2.1 CameraParamsComponentData (摄像机参数)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_cameraParamsGuid, function(cameraParams)
    cameraParams = CameraParamsComponentData(cameraParams)
    cameraParams:MakeWritable()
    cameraParams.viewDistance = -1.0                    -- -1.0 (原 -1.0 视距，-1=默认)
    cameraParams.nearPlane = -1.0                       -- -1.0 (原 -1.0 近裁切面，-1=默认)
    cameraParams.sunShadowmapViewDistance = 0.0         -- 0.0 (原 0.0 太阳阴影视距)
end)

-- 2.2 ColorCorrectionComponentData (颜色校正)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_colorCorrectionGuid, function(color)
    color = ColorCorrectionComponentData(color)
    color:MakeWritable()
    color.enable = true                                 -- true (原 true 开关)
    color.brightness = Vec3(1.0, 1.0, 1.0)              -- 1.0 (原 1.0 亮度)
    color.contrast = Vec3(1.5, 1.5, 1.5)                -- 1.5 (原 1.5 对比度)
    color.saturation = Vec3(0.699999988079071, 0.699999988079071, 0.699999988079071)  -- 0.7 (原 0.699999988079071 饱和度)
    color.hue = 0.0                                     -- 0.0 (原 0.0 色相偏移)
    color.colorGradingEnable = true                     -- true (原 true 颜色分级开关)
    -- color.colorGradingTexture 保持原 LUT: FX/VisualEnviroments/NightVision/colorCube_flir_IRNVG_SPTank
end)

-- 2.3 DofComponentData (景深)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_dofGuid, function(dof)
    dof = DofComponentData(dof)
    dof:MakeWritable()
    dof.enable = false                                  -- false (原 false 景深开关)
    dof.focusDistance = 1.0                             -- 1.0 (原 1.0 对焦距离)
    dof.blurFilter = 0                                  -- 0 (原 BfGaussian9Pixels 模糊滤镜枚举值)
    dof.blurFilterDeviation = 1.0                       -- 1.0 (原 1.0 模糊偏差)
    dof.nearDistanceScale = 1.0                         -- 1.0 (原 1.0 近处缩放)
    dof.farDistanceScale = 0.10000000149011612          -- 0.1 (原 0.10000000149011612 远处缩放)
    dof.scale = 1.0                                     -- 1.0 (原 1.0 整体缩放)
    dof.blurAdd = 0.0                                   -- 0.0 (原 0.0 模糊附加)
    dof.diffusionDofEnable = false                      -- false (原 false 扩散景深开关)
    dof.diffusionDofAperture = 5.0                      -- 5.0 (原 5.0 光圈)
    dof.diffusionDofFocalLength = 0.20000000298023224   -- 0.2 (原 0.20000000298023224 焦距)
end)

-- 2.4 DynamicAOComponentData (环境光遮蔽)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_aoGuid, function(ao)
    ao = DynamicAOComponentData(ao)
    ao:MakeWritable()
    ao.enable = false                                    -- false (原 true AO总开关)
    ao.ssaoFade = 1.0                                   -- 1.0 (原 1.0 SSAO淡入)
    ao.ssaoRadius = 1.0                                 -- 1.0 (原 1.0 SSAO采样半径)
    ao.ssaoMaxDistanceInner = 1.0                       -- 1.0 (原 1.0 SSAO内圈距离)
    ao.ssaoMaxDistanceOuter = 1.0                       -- 1.0 (原 1.0 SSAO外圈距离)
    ao.hbaoRadius = 1.003000020980835                   -- 1.003 (原 1.003000020980835 HBAO半径)
    ao.hbaoAngleBias = 0.0                              -- 0.0 (原 0.0 HBAO角度偏差)
    ao.hbaoAttenuation = 0.699999988079071              -- 0.7 (原 0.699999988079071 HBAO衰减)
    ao.hbaoContrast = 1.399999976158142                 -- 1.4 (原 1.399999976158142 HBAO对比度)
    ao.hbaoMaxFootprintRadius = 0.10000000149011612     -- 0.1 (原 0.10000000149011612 HBAO最大脚印)
    ao.hbaoPowerExponent = 1.0                          -- 1.0 (原 1.0 HBAO指数幂)
end)

-- 2.5 FilmGrainComponentData (胶片颗粒/噪点)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_filmGrainGuid, function(filmgrain)
    filmgrain = FilmGrainComponentData(filmgrain)
    filmgrain:MakeWritable()
    filmgrain.enable = false                             -- false (原 true 噪点开关)
    filmgrain.textureScale = Vec2(0.30000001192092896, 0.30000001192092896)  -- 0.3 (原 0.30000001192092896 颗粒缩放)
    filmgrain.colorScale = Vec3(0.10000000149011612, 0.10000000149011612, 0.10000000149011612)  -- 0.1 (原 0.10000000149011612 噪点强度)
    filmgrain.linearFilteringEnable = false             -- false (原 false 线性过滤)
    filmgrain.randomEnable = true                       -- true (原 true 随机动态噪点)
    -- filmgrain.texture 保持原纹理: Systems/PostProcess/FilmGrainNoise/...
end)

-- 2.6 FogComponentData (雾效)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_fogGuid, function(fog)
    fog = FogComponentData(fog)
    fog:MakeWritable()
    fog.enable = true                                   -- true (原 true 雾效总开关)
    fog.fogDistanceMultiplier = 1.0                     -- 1.0 (原 1.0 雾距离倍数)
    fog.fogGradientEnable = true                        -- true (原 true 雾渐变开关)
    fog.start = 0.0                                     -- 0.0 (原 0.0 雾起始距离)
    fog.endValue = 1000.0                               -- 1000 (原 1000.0 雾最大浓度距离)
    fog.curve = Vec4(0.9160650968551636, -1.1347322463989258, 1.3604127168655396, -0.09799929708242416)  -- 原 EBX 雾浓度曲线
    fog.fogColorEnable = true                           -- true (原 true 雾染色开关)
    fog.fogColor = Vec3(0.6869999766349792, 0.6869999766349792, 0.6869999766349792)  -- 0.687 (原 0.6869999766349792 雾颜色)
    fog.fogColorStart = 0.0                             -- 0.0 (原 0.0 雾颜色起始距离)
    fog.fogColorEnd = 3000.0                            -- 3000 (原 3000.0 雾颜色最大距离)
    fog.fogColorCurve = Vec4(3.779506206512451, -5.717739582061768, 3.039273500442505, -0.1910284012556076)  -- 原 EBX 颜色曲线
    fog.transparencyFadeStart = 0.0                     -- 0.0 (原 0.0 透明物体起雾起始)
    fog.transparencyFadeEnd = 20.0                      -- 20 (原 20.0 透明物体最大雾化)
    fog.transparencyFadeClamp = 0.8999999761581421      -- 0.9 (原 0.8999999761581421 透明物体雾化强度)
    fog.heightFogEnable = false                         -- false (原 false 高度雾开关)
    fog.heightFogFollowCamera = 0.0                     -- 0.0 (原 0.0)
    fog.heightFogAltitude = 0.0                         -- 0.0 (原 0.0)
    fog.heightFogDepth = 100.0                          -- 100 (原 100.0)
    fog.heightFogVisibilityRange = 100.0                -- 100 (原 100.0)
end)

-- 2.7 LensScopeComponentData (镜头特效)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_lensScopeGuid, function(lensScope)
    lensScope = LensScopeComponentData(lensScope)
    lensScope:MakeWritable()
    lensScope.enable = false                            -- false (原 false 镜头特效开关)
    lensScope.blurScale = 0.9990000128746033            -- 0.999 (原 0.9990000128746033 模糊缩放)
    lensScope.blurCenter = Vec2(0.5, 0.5)               -- 0.5,0.5 (原 0.5,0.5 模糊中心)
    lensScope.chromaticAberrationColor1 = Vec3(0.0, 0.7070000171661377, 0.7070000171661377)  -- 色差颜色1
    lensScope.chromaticAberrationColor2 = Vec3(0.7070000171661377, 0.0, 0.7070000171661377)  -- 色差颜色2
    lensScope.chromaticAberrationStrengths = Vec2(0.20000000298023224, 0.20000000298023224)  -- 0.2 (色差强度)
    lensScope.chromaticAberrationDisplacement1 = Vec2(-0.0020000000949949026, 0.004000000189989805)  -- 位移1
    lensScope.chromaticAberrationDisplacement2 = Vec2(0.006000000052154064, 0.0)  -- 位移2
    lensScope.radialBlendDistanceCoefficients = Vec2(4.0, -0.5)  -- 径向混合系数
end)

-- 2.8 OutdoorLightComponentData (室外环境光)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_outdoorLightGuid, function(outdoor)
    outdoor = OutdoorLightComponentData(outdoor)
    outdoor:MakeWritable()
    outdoor.enable = true                               -- true (原 true 环境光总开关)
    outdoor.sunRotationX = 0.0                          -- 0 (原 0.0 太阳水平角度)
    outdoor.sunRotationY = 60.0                         -- 60 (原 60.0 太阳垂直角度)
    outdoor.sunColor = Vec3(0.10000000149011612, 0.10000000149011612, 0.10000000149011612)  -- 0.1 (原 0.10000000149011612 太阳直射光)
    outdoor.skyColor = Vec3(0.04800000041723251, 0.04699999839067459, 0.04699999839067459)  -- 0.048,0.047,0.047 (原 天空漫射光)
    outdoor.groundColor = Vec3(0.0, 0.0, 0.0)           -- 0.0 (原 0.0 地面反射光)
    outdoor.skyLightAngleFactor = -0.34700000286102295  -- -0.347 (原 -0.34700000286102295 天光角度因子)
    outdoor.sunSpecularScale = 0.0                      -- 0 (原 0.0 太阳高光反射)
    outdoor.skyEnvmapShadowScale = 0.0                  -- 0 (原 0.0 环境阴影比例)
    outdoor.sunShadowHeightScale = 0.05000000074505806  -- 0.05 (原 0.05000000074505806 阴影高度缩放)
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

-- 2.9 ShaderParamsComponentData (HeatScale - 热缩放)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_heatScaleGuid, function(shaderParams)
    shaderParams = ShaderParamsComponentData(shaderParams)
    shaderParams:MakeWritable()
    shaderParams.value = Vec4(2.0, 2.0, 2.0, 2.0)       -- 2.0 (原 2.0 热缩放参数)
    -- shaderParams.parameterName 保持 "HeatScale"
end)

-- 2.10 ShaderParamsComponentData (SPTank_BD_Opacity - 坦克不透明度)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_spTankOpacityGuid, function(shaderParams)
    shaderParams = ShaderParamsComponentData(shaderParams)
    shaderParams:MakeWritable()
    shaderParams.value = Vec4(0.0, 0.0, 0.0, 0.0)       -- 0.0 (原 0.0 坦克不透明度参数)
    -- shaderParams.parameterName 保持 "SPTank_BD_Opacity"
end)

-- 2.11 ShaderParamsComponentData (FLIRData)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_flirDataGuid, function(shaderParams)
    shaderParams = ShaderParamsComponentData(shaderParams)
    shaderParams:MakeWritable()
    shaderParams.value = Vec4(1.2999999523162842, 1.2999999523162842, 1.2999999523162842, 1.2999999523162842)  -- 1.3 (原 1.2999999523162842 FLIR混合参数)
    -- shaderParams.parameterName 保持 "FLIRData"
end)

-- 2.12 SkyComponentData (天空)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_skyGuid, function(sky)
    sky = SkyComponentData(sky)
    sky:MakeWritable()
    sky.enable = true                                   -- true (原 true 天空开关)
    sky.brightnessScale = 0.10000000149011612           -- 0.1 (原 0.10000000149011612 天空亮度缩放)
    -- sky.skyGradientTexture 保持原纹理: FX/VisualEnviroments/NightVision/IRNVG_Sky_Gradient_01
    sky.sunSize = 0.0                                   -- 0 (原 0.0 太阳大小)
    sky.sunScale = 0.0                                  -- 0 (原 0.0 太阳缩放)
    sky.panoramicUVMinX = 0.0                           -- 0 (原 0.0)
    sky.panoramicUVMaxX = 1.0                           -- 1 (原 1.0)
    sky.panoramicUVMinY = 0.0                           -- 0 (原 0.0)
    sky.panoramicUVMaxY = 1.0                           -- 1 (原 1.0)
    sky.panoramicTileFactor = 1.0                       -- 1 (原 1.0)
    sky.panoramicRotation = 0.6290000081062317          -- 0.629 (原 0.6290000081062317)
    -- sky.panoramicTexture 保持 nullGuid
    -- sky.panoramicAlphaTexture 保持 nullGuid
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

-- 2.13 TonemapComponentData (色调映射)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_tonemapGuid, function(tonemap)
    tonemap = TonemapComponentData(tonemap)
    tonemap:MakeWritable()
    tonemap.tonemapMethod = 2                           -- 2 (原 TonemapMethod_FilmicNeutral)
    tonemap.middleGray = 0.05000000074505806            -- 0.05 (原 0.05000000074505806 曝光基准)
    tonemap.minExposure = 0.25                          -- 0.25 (原 0.25 最小曝光)
    tonemap.maxExposure = 2.0                           -- 2.0 (原 2.0 最大曝光)
    tonemap.exposureAdjustTime = 1.0                    -- 1.0 (原 1.0 曝光适应时间)
    tonemap.bloomScale = Vec3(1.0, 1.0, 1.0)            -- 1.0 (原 1.0 泛光强度)
    tonemap.chromostereopsisEnable = false              -- false (原 false 色差立体)
    tonemap.chromostereopsisScale = 1.0                 -- 1.0 (原 1.0)
    tonemap.chromostereopsisOffset = 1.0                -- 1.0 (原 1.0)
end)

-- 2.14 VignetteComponentData (暗角)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_vignetteGuid, function(vignette)
    vignette = VignetteComponentData(vignette)
    vignette:MakeWritable()
    vignette.enable = false                              -- false (原 true 暗角开关)
    vignette.scale = Vec2(0.0, 2.0)                     -- 0.0,2.0 (原 0.0,2.0 椭圆拉伸)
    vignette.exponent = 1.0                             -- 1.0 (原 1.0 边缘衰减曲线)
    vignette.color = Vec3(0.013000000268220901, 1.0, 0.0)  -- 0.013,1.0,0.0 (原 暗角颜色 - 纯绿)
    vignette.opacity = 0.421999990940094                -- 0.422 (原 0.421999990940094 不透明度)
end)