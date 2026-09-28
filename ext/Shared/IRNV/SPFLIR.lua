-- ============================================================
-- SPFLIR - All component data overrides
-- Based on VE_FLIR_WhiteHot_Orange (FX/VisualEnviroments/NightVision/VE_FLIR_WhiteHot_Orange)
-- ============================================================

-- ============================================================
-- 1. Define all GUID local variables
-- ============================================================

-- Partition GUID (VisualEnvironmentBlueprint)
local spflir_partitionGuid = Guid('135BAB3E-CB2D-46FF-8C55-0074C7D32F41')

-- Component GUIDs (in Components array order)
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
-- 2. Component data overrides
-- ============================================================

-- 2.1 CameraParamsComponentData (Camera parameters)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_cameraParamsGuid, function(cameraParams)
    cameraParams = CameraParamsComponentData(cameraParams)
    cameraParams:MakeWritable()
    cameraParams.viewDistance = -1.0                    -- -1.0 (original -1.0 view distance, -1 = default)
    cameraParams.nearPlane = -1.0                       -- -1.0 (original -1.0 near plane, -1 = default)
    cameraParams.sunShadowmapViewDistance = 0.0         -- 0.0 (original 0.0 sun shadow view distance)
end)

-- 2.2 ColorCorrectionComponentData (Color correction)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_colorCorrectionGuid, function(color)
    color = ColorCorrectionComponentData(color)
    color:MakeWritable()
    color.enable = true                                 -- true (original true toggle)
    color.brightness = Vec3(1.0, 1.0, 1.0)              -- 1.0 (original 1.0 brightness)
    color.contrast = Vec3(1.5, 1.5, 1.5)                -- 1.5 (original 1.5 contrast)
    color.saturation = Vec3(0.699999988079071, 0.699999988079071, 0.699999988079071)  -- 0.7 (original 0.699999988079071 saturation)
    color.hue = 0.0                                     -- 0.0 (original 0.0 hue shift)
    color.colorGradingEnable = true                     -- true (original true color grading toggle)
    -- color.colorGradingTexture keeps original LUT: FX/VisualEnviroments/NightVision/colorCube_flir_IRNVG_SPTank
end)

-- 2.3 DofComponentData (Depth of field)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_dofGuid, function(dof)
    dof = DofComponentData(dof)
    dof:MakeWritable()
    dof.enable = false                                  -- false (original false DOF toggle)
    dof.focusDistance = 1.0                             -- 1.0 (original 1.0 focus distance)
    dof.blurFilter = 0                                  -- 0 (original BfGaussian9Pixels blur filter enum value)
    dof.blurFilterDeviation = 1.0                       -- 1.0 (original 1.0 blur deviation)
    dof.nearDistanceScale = 1.0                         -- 1.0 (original 1.0 near scale)
    dof.farDistanceScale = 0.10000000149011612          -- 0.1 (original 0.10000000149011612 far scale)
    dof.scale = 1.0                                     -- 1.0 (original 1.0 overall scale)
    dof.blurAdd = 0.0                                   -- 0.0 (original 0.0 blur add)
    dof.diffusionDofEnable = false                      -- false (original false diffusion DOF toggle)
    dof.diffusionDofAperture = 5.0                      -- 5.0 (original 5.0 aperture)
    dof.diffusionDofFocalLength = 0.20000000298023224   -- 0.2 (original 0.20000000298023224 focal length)
end)

-- 2.4 DynamicAOComponentData (Ambient occlusion)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_aoGuid, function(ao)
    ao = DynamicAOComponentData(ao)
    ao:MakeWritable()
    ao.enable = false                                    -- false (original true AO master toggle)
    ao.ssaoFade = 1.0                                   -- 1.0 (original 1.0 SSAO fade)
    ao.ssaoRadius = 1.0                                 -- 1.0 (original 1.0 SSAO sampling radius)
    ao.ssaoMaxDistanceInner = 1.0                       -- 1.0 (original 1.0 SSAO inner distance)
    ao.ssaoMaxDistanceOuter = 1.0                       -- 1.0 (original 1.0 SSAO outer distance)
    ao.hbaoRadius = 1.003000020980835                   -- 1.003 (original 1.003000020980835 HBAO radius)
    ao.hbaoAngleBias = 0.0                              -- 0.0 (original 0.0 HBAO angle bias)
    ao.hbaoAttenuation = 0.699999988079071              -- 0.7 (original 0.699999988079071 HBAO attenuation)
    ao.hbaoContrast = 1.399999976158142                 -- 1.4 (original 1.399999976158142 HBAO contrast)
    ao.hbaoMaxFootprintRadius = 0.10000000149011612     -- 0.1 (original 0.10000000149011612 HBAO max footprint)
    ao.hbaoPowerExponent = 1.0                          -- 1.0 (original 1.0 HBAO power exponent)
end)

-- 2.5 FilmGrainComponentData (Film grain/noise)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_filmGrainGuid, function(filmgrain)
    filmgrain = FilmGrainComponentData(filmgrain)
    filmgrain:MakeWritable()
    filmgrain.enable = false                             -- false (original true noise toggle)
    filmgrain.textureScale = Vec2(0.30000001192092896, 0.30000001192092896)  -- 0.3 (original 0.30000001192092896 grain scale)
    filmgrain.colorScale = Vec3(0.10000000149011612, 0.10000000149011612, 0.10000000149011612)  -- 0.1 (original 0.10000000149011612 noise intensity)
    filmgrain.linearFilteringEnable = false             -- false (original false linear filtering)
    filmgrain.randomEnable = true                       -- true (original true random dynamic noise)
    -- filmgrain.texture keeps original texture: Systems/PostProcess/FilmGrainNoise/...
end)

-- 2.6 FogComponentData (Fog)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_fogGuid, function(fog)
    fog = FogComponentData(fog)
    fog:MakeWritable()
    fog.enable = true                                   -- true (original true fog master toggle)
    fog.fogDistanceMultiplier = 1.0                     -- 1.0 (original 1.0 fog distance multiplier)
    fog.fogGradientEnable = true                        -- true (original true fog gradient toggle)
    fog.start = 0.0                                     -- 0.0 (original 0.0 fog start distance)
    fog.endValue = 1000.0                               -- 1000 (original 1000.0 fog maximum density distance)
    fog.curve = Vec4(0.9160650968551636, -1.1347322463989258, 1.3604127168655396, -0.09799929708242416)  -- original EBX fog density curve
    fog.fogColorEnable = true                           -- true (original true fog color toggle)
    fog.fogColor = Vec3(0.6869999766349792, 0.6869999766349792, 0.6869999766349792)  -- 0.687 (original 0.6869999766349792 fog color)
    fog.fogColorStart = 0.0                             -- 0.0 (original 0.0 fog color start distance)
    fog.fogColorEnd = 3000.0                            -- 3000 (original 3000.0 fog color maximum distance)
    fog.fogColorCurve = Vec4(3.779506206512451, -5.717739582061768, 3.039273500442505, -0.1910284012556076)  -- original EBX color curve
    fog.transparencyFadeStart = 0.0                     -- 0.0 (original 0.0 transparent object fog start)
    fog.transparencyFadeEnd = 20.0                      -- 20 (original 20.0 transparent object maximum fog)
    fog.transparencyFadeClamp = 0.8999999761581421      -- 0.9 (original 0.8999999761581421 transparent object fog intensity)
    fog.heightFogEnable = false                         -- false (original false height fog toggle)
    fog.heightFogFollowCamera = 0.0                     -- 0.0 (original 0.0)
    fog.heightFogAltitude = 0.0                         -- 0.0 (original 0.0)
    fog.heightFogDepth = 100.0                          -- 100 (original 100.0)
    fog.heightFogVisibilityRange = 100.0                -- 100 (original 100.0)
end)

-- 2.7 LensScopeComponentData (Lens effects)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_lensScopeGuid, function(lensScope)
    lensScope = LensScopeComponentData(lensScope)
    lensScope:MakeWritable()
    lensScope.enable = false                            -- false (original false lens effect toggle)
    lensScope.blurScale = 0.9990000128746033            -- 0.999 (original 0.9990000128746033 blur scale)
    lensScope.blurCenter = Vec2(0.5, 0.5)               -- 0.5,0.5 (original 0.5,0.5 blur center)
    lensScope.chromaticAberrationColor1 = Vec3(0.0, 0.7070000171661377, 0.7070000171661377)  -- chromatic aberration color 1
    lensScope.chromaticAberrationColor2 = Vec3(0.7070000171661377, 0.0, 0.7070000171661377)  -- chromatic aberration color 2
    lensScope.chromaticAberrationStrengths = Vec2(0.20000000298023224, 0.20000000298023224)  -- 0.2 (chromatic aberration strength)
    lensScope.chromaticAberrationDisplacement1 = Vec2(-0.0020000000949949026, 0.004000000189989805)  -- displacement 1
    lensScope.chromaticAberrationDisplacement2 = Vec2(0.006000000052154064, 0.0)  -- displacement 2
    lensScope.radialBlendDistanceCoefficients = Vec2(4.0, -0.5)  -- radial blend coefficients
end)

-- 2.8 OutdoorLightComponentData (Outdoor ambient light)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_outdoorLightGuid, function(outdoor)
    outdoor = OutdoorLightComponentData(outdoor)
    outdoor:MakeWritable()
    outdoor.enable = true                               -- true (original true ambient light master toggle)
    outdoor.sunRotationX = 0.0                          -- 0 (original 0.0 sun horizontal angle)
    outdoor.sunRotationY = 60.0                         -- 60 (original 60.0 sun vertical angle)
    outdoor.sunColor = Vec3(0.10000000149011612, 0.10000000149011612, 0.10000000149011612)  -- 0.1 (original 0.10000000149011612 direct sunlight)
    outdoor.skyColor = Vec3(0.04800000041723251, 0.04699999839067459, 0.04699999839067459)  -- 0.048,0.047,0.047 (original sky diffuse light)
    outdoor.groundColor = Vec3(0.0, 0.0, 0.0)           -- 0.0 (original 0.0 ground reflected light)
    outdoor.skyLightAngleFactor = -0.34700000286102295  -- -0.347 (original -0.34700000286102295 sky light angle factor)
    outdoor.sunSpecularScale = 0.0                      -- 0 (original 0.0 sun specular reflection)
    outdoor.skyEnvmapShadowScale = 0.0                  -- 0 (original 0.0 environment shadow scale)
    outdoor.sunShadowHeightScale = 0.05000000074505806  -- 0.05 (original 0.05000000074505806 shadow height scale)
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

-- 2.9 ShaderParamsComponentData (HeatScale - heat scale)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_heatScaleGuid, function(shaderParams)
    shaderParams = ShaderParamsComponentData(shaderParams)
    shaderParams:MakeWritable()
    shaderParams.value = Vec4(2.0, 2.0, 2.0, 2.0)       -- 2.0 (original 2.0 heat scale parameter)
    -- shaderParams.parameterName keeps "HeatScale"
end)

-- 2.10 ShaderParamsComponentData (SPTank_BD_Opacity - tank opacity)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_spTankOpacityGuid, function(shaderParams)
    shaderParams = ShaderParamsComponentData(shaderParams)
    shaderParams:MakeWritable()
    shaderParams.value = Vec4(0.0, 0.0, 0.0, 0.0)       -- 0.0 (original 0.0 tank opacity parameter)
    -- shaderParams.parameterName keeps "SPTank_BD_Opacity"
end)

-- 2.11 ShaderParamsComponentData (FLIRData)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_flirDataGuid, function(shaderParams)
    shaderParams = ShaderParamsComponentData(shaderParams)
    shaderParams:MakeWritable()
    shaderParams.value = Vec4(1.2999999523162842, 1.2999999523162842, 1.2999999523162842, 1.2999999523162842)  -- 1.3 (original 1.2999999523162842 FLIR blend parameter)
    -- shaderParams.parameterName keeps "FLIRData"
end)

-- 2.12 SkyComponentData (Sky)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_skyGuid, function(sky)
    sky = SkyComponentData(sky)
    sky:MakeWritable()
    sky.enable = true                                   -- true (original true sky toggle)
    sky.brightnessScale = 0.10000000149011612           -- 0.1 (original 0.10000000149011612 sky brightness scale)
    -- sky.skyGradientTexture keeps original texture: FX/VisualEnviroments/NightVision/IRNVG_Sky_Gradient_01
    sky.sunSize = 0.0                                   -- 0 (original 0.0 sun size)
    sky.sunScale = 0.0                                  -- 0 (original 0.0 sun scale)
    sky.panoramicUVMinX = 0.0                           -- 0 (original 0.0)
    sky.panoramicUVMaxX = 1.0                           -- 1 (original 1.0)
    sky.panoramicUVMinY = 0.0                           -- 0 (original 0.0)
    sky.panoramicUVMaxY = 1.0                           -- 1 (original 1.0)
    sky.panoramicTileFactor = 1.0                       -- 1 (original 1.0)
    sky.panoramicRotation = 0.6290000081062317          -- 0.629 (original 0.6290000081062317)
    -- sky.panoramicTexture keeps nullGuid
    -- sky.panoramicAlphaTexture keeps nullGuid
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

-- 2.13 TonemapComponentData (Tonemap)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_tonemapGuid, function(tonemap)
    tonemap = TonemapComponentData(tonemap)
    tonemap:MakeWritable()
    tonemap.tonemapMethod = 2                           -- 2 (original TonemapMethod_FilmicNeutral)
    tonemap.middleGray = 0.05000000074505806            -- 0.05 (original 0.05000000074505806 exposure reference)
    tonemap.minExposure = 0.25                          -- 0.25 (original 0.25 minimum exposure)
    tonemap.maxExposure = 2.0                           -- 2.0 (original 2.0 maximum exposure)
    tonemap.exposureAdjustTime = 1.0                    -- 1.0 (original 1.0 exposure adaptation time)
    tonemap.bloomScale = Vec3(1.0, 1.0, 1.0)            -- 1.0 (original 1.0 bloom intensity)
    tonemap.chromostereopsisEnable = false              -- false (original false chromostereopsis)
    tonemap.chromostereopsisScale = 1.0                 -- 1.0 (original 1.0)
    tonemap.chromostereopsisOffset = 1.0                -- 1.0 (original 1.0)
end)

-- 2.14 VignetteComponentData (Vignette)
ResourceManager:RegisterInstanceLoadHandler(spflir_partitionGuid, spflir_vignetteGuid, function(vignette)
    vignette = VignetteComponentData(vignette)
    vignette:MakeWritable()
    vignette.enable = false                              -- false (original true vignette toggle)
    vignette.scale = Vec2(0.0, 2.0)                     -- 0.0,2.0 (original 0.0,2.0 ellipse stretch)
    vignette.exponent = 1.0                             -- 1.0 (original 1.0 edge falloff curve)
    vignette.color = Vec3(0.013000000268220901, 1.0, 0.0)  -- 0.013,1.0,0.0 (original vignette color - pure green)
    vignette.opacity = 0.421999990940094                -- 0.422 (original 0.421999990940094 opacity)
end)