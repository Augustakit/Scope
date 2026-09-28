-- ==================== 1. 定义所有 GUID 局部变量 ====================
local irnv_PGuids = Guid('9C13ACA5-1E35-11E0-89E4-87B70A2B0A19')

-- 原有组件 GUID
local irnv_colorGuids = Guid('B3937CFD-3F39-4136-BABC-6CB5BF714BD6')
local irnv_filmGrainGuids = Guid('3B31E4B3-8540-44D9-8A51-60F964032EDA')
local irnv_fogGuids = Guid('E298F0B2-87B0-460B-9FAF-656DA3BD1271')
local irnv_outdoorLightGuids = Guid('4A472BC0-BB10-4498-B31F-2ABEA663E4C5')
local irnv_vignetteGuids = Guid('BD368693-F149-43E1-9912-7C108CC47CDD')

-- 新补全的组件 GUID
local irnv_characterLightingGuids = Guid('C50A87AE-343D-41B7-840A-6B94049E2958')
local irnv_aoGuids = Guid('FFD03CCC-3706-454F-9A42-9E9878A99DEC')
local irnv_cameraParamsGuids = Guid('805B9617-D924-4AA0-A83B-2A19897E346E')
local irnv_shaderParamsGuids = Guid('040B2E4C-BD9F-43A5-9C9A-5980CE043161')
local irnv_tonemapGuids = Guid('AF2A98F1-F71E-4A04-ACE3-F6B17A11DA48')

-- ==================== 2. 所有组件数据注入 ====================

-- 2.1 颜色校正（调色、亮度、对比度、饱和度）
THERMAL_STYLES = {
    ORIGINAL = {  --原版修改
        name = "Original",
        brightness = Vec3(1.3, 1.3, 1.3),                                              -- 1.3 (原 2.0 亮度)
        contrast = Vec3(1.3, 1.3, 1.3),                                                -- 1.3 (原 1.5 对比度)
        saturation = Vec3(1.5, 1.5, 1.5)                                              -- 1.0 (原 0.7 饱和度)
    },

    IRON_RED = {  --铁红色热成像
        name = "Iron Red",
        brightness = Vec3(0.6, 0.2, 1.2),
        contrast = Vec3(2.5, 0.3, 1.4),
        saturation = Vec3(1.0, 0.5, 0.6)
    },

    WHITE_PHOSPHOR = {  --白磷管夜视
        name = "White Phosphor",
        brightness = Vec3(0.5, 1.0, 1.3),
        contrast = Vec3(2.0, 1.6, 1.6),
        saturation = Vec3(0.1, 0.4, 0.7)
    },
}

-- 当前激活的风格 (默认)
currentThermalStyle = "ORIGINAL"

-- ColorCorrection实例缓存
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


-- 2.2 胶片颗粒（噪点 - 几乎完全消除）
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_filmGrainGuids, function(filmgrain)
    filmgrain = FilmGrainComponentData(filmgrain)
    filmgrain:MakeWritable()
    filmgrain.enable = false
    filmgrain.textureScale = Vec2(0.01, 0.01)                           -- 0.01 (原 0.4 颗粒大小，极小几乎看不见)
    filmgrain.colorScale = Vec3(0.005, 0.005, 0.005)                    -- 0.005 (原 0.05,0.12,0.05 噪点颜色强度，极淡)
    filmgrain.linearFilteringEnable = false                             -- false (原 false 线性过滤)
    filmgrain.randomEnable = true                                       -- true (原 true 随机动态噪点)
end)

-- 2.3 雾效（大幅优化：延迟起雾、消除绿色、减少透明物体雾化）
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_fogGuids, function(fog)
    fog = FogComponentData(fog)
    fog:MakeWritable()
    fog.enable = true                                                   -- true (原 true 雾效总开关)
    fog.fogDistanceMultiplier = 1.0                                     -- 1.0 (原 1.0 雾距离倍数)
    fog.fogGradientEnable = true                                        -- true (原 true 雾渐变开关)
    fog.start = 0                                                   -- 100 (原 0.0 雾起始距离，100米内无雾)
    fog.endValue = 2000                                             -- 500 (原 800.0 雾最大浓度距离，拉远让视野更通透)

    -- 原EBX雾浓度曲线 Vec4(3.1089489459991455, -4.220193386077881, 2.0970723628997803, -0.0016641319962218404) Vec4(-0.042, 0.550, 0.581, -0.088)
    fog.curve = Vec4(-0.042, 0.550, 0.581, -0.088)
    fog.fogColorEnable = true                                           -- true (原 true 雾染色开关)
    fog.fogColor = Vec3(0.017, 0.017, 0.017)                  -- 原 0,1,0 纯绿→深灰色，彻底消除绿色雾霾
    fog.fogColorStart = 0                                          -- 100 (原 5.0 雾颜色开始变浓距离，与start同步)
    fog.fogColorEnd = 1000                                          -- 600 (原 1000.0 雾颜色最大浓度距离，与endValue同步)

    -- 原EBX颜色曲线(4.8581695556640625, -6.213437080383301, 3.2027969360351562, -0.026411322876811028)
    fog.fogColorCurve = Vec4(0.7463401556015015, 0.1163753867149353, -0.039285361766815186, -0.004800682887434959)

    -- 透明物体雾化（调大数值，让角色/载具边缘不被雾包裹）
    fog.transparencyFadeStart = 1000                                  -- 1000 (原 -500 透明物体起雾起始距离，极大延迟)
    fog.transparencyFadeEnd = 2000.0                                    -- 200 (原 1500 透明物体最大雾化距离)
    fog.transparencyFadeClamp = 0                                   -- 0.0 (原 1.0 透明物体雾化强度，0=完全不雾化)
    fog.heightFogEnable = false                                         -- false (原 false 高度雾开关)
    fog.heightFogFollowCamera = 0.0                                     -- 0.0 (原 0.0)
    fog.heightFogAltitude = 0.0                                         -- 0.0 (原 0.0)
    fog.heightFogDepth = 100.0                                          -- 100 (原 100.0)
    fog.heightFogVisibilityRange = 100.0                                -- 100 (原 100.0)
end)

-- 2.4 室外环境光（大幅提高环境照明）
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_outdoorLightGuids, function(outdoor)
    outdoor = OutdoorLightComponentData(outdoor)
    outdoor:MakeWritable()

    outdoor.enable = true                                               -- true (原 true 环境光总开关)
    outdoor.sunRotationX = 0.0                                          -- 0 (原 0.0 太阳水平角度)
    outdoor.sunRotationY = 60.0                                         -- 60 (原 60.0 太阳垂直角度)
    outdoor.sunColor = Vec3(0.3, 0.3, 0.3)                              -- 0.3 (原 0.1 太阳直射光)
    outdoor.skyColor = Vec3(0.5, 0.5, 0.5)                              -- 0.5 (原 0.04 天空漫射光，大幅提高)
    outdoor.groundColor = Vec3(0.5, 0.5, 0.5)                           -- 0.5 (原 0.03 地面反射光，大幅提高)
    outdoor.skyLightAngleFactor = 0.0                                   -- 0 (原 0.0 天光角度因子)
    outdoor.sunSpecularScale = 0.0                                      -- 0 (原 0.0 太阳高光反射)
    outdoor.skyEnvmapShadowScale = 0.0                                  -- 0 (原 0.0 环境阴影比例)
    outdoor.sunShadowHeightScale = 0.05                                 -- 0.05 (原 0.05 阴影高度缩放)

    outdoor.cloudShadowEnable = false                                   -- false (原 false 云阴影开关)
    outdoor.cloudShadowSpeed = Vec2(2.0, 2.0)                           -- 2.0 (原 2.0 云阴影移动速度)
    outdoor.cloudShadowSize = 500.0                                     -- 500 (原 500.0 云阴影尺寸)
    outdoor.cloudShadowCoverage = 0.3                                   -- 0.3 (原 0.3 云阴影覆盖度)
    outdoor.cloudShadowExponent = 8.0                                   -- 8 (原 8.0 云阴影指数)

    outdoor.translucencyAmbient = 0.0                                   -- 0 (原 0.0 半透明环境光)
    outdoor.translucencyScale = 0.0                                     -- 0 (原 0.0 半透明缩放)
    outdoor.translucencyPower = 8.0                                     -- 8 (原 8.0 半透明指数)
    outdoor.translucencyDistortion = 0.1                                -- 0.1 (原 0.1 半透明扭曲)
end)

-- 2.5 暗角（关闭）
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_vignetteGuids, function(vignette)
    vignette = VignetteComponentData(vignette)
    vignette:MakeWritable()
    vignette.enable = false                                             -- false (原 true 暗角开关)
    vignette.scale = Vec2(5.0, 2.9)                                     -- 5,2.9 (原 5.0,2.9 椭圆拉伸)
    vignette.exponent = 2.0                                             -- 2.0 (原 2.0 边缘衰减曲线)
    vignette.color = Vec3(0.0, 0.12, 0.325)                             -- 0,0.12,0.325 (原 深蓝绿色)
    vignette.opacity = 0.4                                              -- 0.4 (原 0.4 不透明度)
end)

-- 2.6 角色补光（让敌人模型更亮）
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_characterLightingGuids, function(characterLighting)
    characterLighting = CharacterLightingComponentData(characterLighting)
    characterLighting:MakeWritable()
    characterLighting.characterLightEnable = true                       -- true (原 true 角色补光开关)
    characterLighting.firstPersonEnable = false                         -- false (原 false 第一人称补光)
    characterLighting.lockToCameraDirection = true                      -- true (原 true 锁定摄像机方向)
    characterLighting.cameraUpRotation = 0.0                            -- 0 (原 0.0 摄像机旋转)
    characterLighting.characterLightingMode =  1                        --原 CharacterLightingMode_Blend(1)
    characterLighting.blendFactor = 1.0                                 -- 1.0 (原 1.0 混合系数)
    characterLighting.topLight = Vec3(0.5, 0.5, 0.5)                    -- 0.5 (原 0.25 顶部补光)
    characterLighting.bottomLight = Vec3(1.5, 1.5, 1.5)                 -- 1.5 (原 1.0 底部补光，让脸更亮)
    characterLighting.topLightDirX = 0.0                                -- 0 (原 0.0)
    characterLighting.topLightDirY = 90.0                               -- 90 (原 90.0)
end)

-- 2.7 环境光遮蔽（关闭，让画面更干净）
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_aoGuids, function(ao)
    ao = DynamicAOComponentData(ao)
    ao:MakeWritable()
    ao.enable = false                                                   -- false (原 true AO总开关)
    ao.ssaoFade = 1.0                                                   -- 1.0 (原 1.0 SSAO淡入)
    ao.ssaoRadius = 1.0                                                 -- 1.0 (原 1.0 SSAO采样半径)
    ao.ssaoMaxDistanceInner = 1.0                                       -- 1.0 (原 1.0 SSAO内圈距离)
    ao.ssaoMaxDistanceOuter = 1.0                                       -- 1.0 (原 1.0 SSAO外圈距离)
    ao.hbaoRadius = 1.0                                                 -- 1.0 (原 1.0 HBAO半径)
    ao.hbaoAngleBias = 0.0                                              -- 0 (原 0.0 HBAO角度偏差)
    ao.hbaoAttenuation = 0.7                                            -- 0.7 (原 0.7 HBAO衰减)
    ao.hbaoContrast = 1.4                                               -- 1.4 (原 1.4 HBAO对比度)
    ao.hbaoMaxFootprintRadius = 0.1                                     -- 0.1 (原 0.1 HBAO最大脚印)
    ao.hbaoPowerExponent = 1.0                                          -- 1.0 (原 1.0 HBAO指数幂)
end)

-- 2.8 摄像机参数（保持默认）
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_cameraParamsGuids, function(cameraParams)
    cameraParams = CameraParamsComponentData(cameraParams)
    cameraParams:MakeWritable()
    cameraParams.viewDistance = -1.0                                    -- -1 (原 -1.0 视距，-1=默认)
    cameraParams.nearPlane = -1.0                                       -- -1 (原 -1.0 近裁切面，-1=默认)
    cameraParams.sunShadowmapViewDistance = 0.0                         -- 0 (原 0.0 太阳阴影视距)
end)

-- 2.9 自定义着色器参数（FLIRData - 控制热成像色调）
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_shaderParamsGuids, function(shaderParams)
    shaderParams = ShaderParamsComponentData(shaderParams)
    shaderParams:MakeWritable()
    shaderParams.value = Vec4(1, 1, 1, 1)                       --原 1,1,1,1 FLIR混合强度，提高让热成像色调更明显
end)

-- 2.10 色调映射（曝光度 / 泛光Bloom）
ResourceManager:RegisterInstanceLoadHandler(irnv_PGuids, irnv_tonemapGuids, function(tonemap)
    tonemap = TonemapComponentData(tonemap)
    tonemap:MakeWritable()

    tonemap.tonemapMethod = 2                                           --  原 TonemapMethod_FilmicNeutral(2)
    tonemap.middleGray = 0.5                                            -- 0.5 (原 0.25 曝光基准，提高让画面更亮)
    tonemap.minExposure = 0.05                                         -- 0.25 (原 0.25 最小曝光)
    tonemap.maxExposure = 5.0                                           -- 5.0 (原 5.0 最大曝光)
    tonemap.exposureAdjustTime = 0.3                                    -- 0.3 (原 0.3 曝光适应时间)
    tonemap.bloomScale = Vec3(0.5, 0.3, 0.2)                            -- 0.5,0.3,0.2 (原 0.2 泛光强度，红强绿弱蓝弱→橘红色光晕)
    tonemap.chromostereopsisEnable = false                              -- false (原 false 色差立体)
    tonemap.chromostereopsisScale = 1.0                                 -- 1.0 (原 1.0)
    tonemap.chromostereopsisOffset = 1.0                                -- 1.0 (原 1.0)
end)