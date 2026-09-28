--Aim_Default_NoZoom
ResourceManager:RegisterInstanceLoadHandler(Guid('DE2323F8-AE97-4402-A0F4-C49CACFEB8BB'), Guid('C82FC86A-AE50-4D60-8E80-1AA3613C6F83'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 
    aimingSimulation.standPose.maximumPitch = 85 --  85 
    aimingSimulation.standPose.targetingFov = -1.0  --  -1.0  
    aimingSimulation.standPose.aimSteadiness = 1.0  --1.0  
    aimingSimulation.standPose.speedMultiplier = 1.0  --1.0 
    aimingSimulation.standPose.recoilMultiplier = 1.0   --0 
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 
    aimingSimulation.crouchPose.maximumPitch = 85 --  -70 
    aimingSimulation.crouchPose.targetingFov = -1.0  --  -1.0  
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 
    aimingSimulation.crouchPose.recoilMultiplier = 1.0   --0 
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 
    aimingSimulation.pronePose.maximumPitch = 85 --  -70 
    aimingSimulation.pronePose.targetingFov = -1.0  --  -1.0  
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 
    aimingSimulation.pronePose.recoilMultiplier = 1.0   --0      
    --print('Default NoZoom')
end)

--Aim_Default_IronSight
ResourceManager:RegisterInstanceLoadHandler(Guid('8C7B467F-8790-448B-9365-C70825D61486'), Guid('58DFC3A8-A7D6-4AE9-8226-BA627A84809A'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.09000000357627869 -- 0.09000000357627869 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.11999999731779099 -- 0.11999999731779099 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.10000000149011612 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Default IronSight')
end)

--Aim_FastMove_IronSight
ResourceManager:RegisterInstanceLoadHandler(Guid('F3919C89-CAF0-42AA-83FF-396F62EF8101'), Guid('865F9E23-CB70-4EB7-BBAF-24331B9ACC66'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.09000000357627869-- 0.09000000357627869 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.11999999731779099 -- 0.11999999731779099 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.10000000149011612 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim FastMove IronSight')
end)

--Aim_Slow_IronSight
ResourceManager:RegisterInstanceLoadHandler(Guid('84684364-D860-423F-A42C-764D29054BBD'), Guid('F514EF56-42AA-4467-AC39-7E55D9FC0648'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.10000000149011612-- 0.10000000149011612 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.10000000149011612 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Slow IronSight')
end)

--Aim_FastMove_IronSight_UGL
ResourceManager:RegisterInstanceLoadHandler(Guid('EB978AE7-5E5A-4D44-A4CA-924FD2B4A2F8'), Guid('819129D4-9F10-4B2C-A5B4-84EF92C2073E'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 9999.0-- 9999.0 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.11999999731779099 -- 0.11999999731779099 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.10000000149011612 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim FastMove IronSight UGL')
end)

--Aim_NoAssist_IronSight_UGL
ResourceManager:RegisterInstanceLoadHandler(Guid('D57691CB-EBB6-41A5-9189-E4D40E09BF46'), Guid('446F5AA4-D94D-42F1-90DE-4F11E0ADAD89'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 9999.0-- 9999.0 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.11999999731779099 -- 0.11999999731779099 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.10000000149011612 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim FastMove IronSight UGL')
end)

--Aim_NoAssist_AT
ResourceManager:RegisterInstanceLoadHandler(Guid('9CB63B25-6C4F-4222-9558-0D790AFDBC7E'), Guid('E024D55C-B2EA-4C2B-AEEB-998C9A7DC7C4'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.10000000149011612-- 0.10000000149011612 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.20000000298023224 -- 0.20000000298023224 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim NoAssist AT')
end)

--Aim_NoAssist_IronSight
ResourceManager:RegisterInstanceLoadHandler(Guid('70B7363E-9E80-498E-B1F4-A8649BB406FD'), Guid('BFD75298-7161-4AAF-B41E-8C937C115ED1'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.10000000149011612-- 0.10000000149011612 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.20000000298023224 -- 0.20000000298023224 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim NoAssist IronSight')
end)

--Aim_Default_EOTech
ResourceManager:RegisterInstanceLoadHandler(Guid('4CEAC6B2-1FDB-424C-B778-5AECDE81A41B'), Guid('39CCBC84-1FEA-4CF5-A80C-40F4549E2BB7'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.129999995231628422-- 0.12999999523162842 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Default EOTech')
end)

--Aim_FastMove_EOTech
ResourceManager:RegisterInstanceLoadHandler(Guid('0F0E96AE-2001-4A70-AADE-C3FB2F9AA5D8'), Guid('1F64B95F-A3B8-44EA-8EF1-D2D537D9E989'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.09000000357627869-- 0.09000000357627869 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.11999999731779099 -- 0.11999999731779099 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim FastMove EOTech')
end)

--Aim_Slow_EOTech
ResourceManager:RegisterInstanceLoadHandler(Guid('E127FC5D-F7DA-45EF-A466-7DC88FFF1232'), Guid('EC14000D-7F49-480F-9CFE-413808168694'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.09000000357627869-- 0.09000000357627869 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.11999999731779099 -- 0.11999999731779099 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Slow EOTech')
end)

--Aim_Default_ENVG
ResourceManager:RegisterInstanceLoadHandler(Guid('D370C6D2-6F84-4BAF-ADE7-992E9C80104B'), Guid('4778B674-61CB-4FAB-A45C-963DAC5192F6'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.20000000298023224-- 0.20000000298023224 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.25 -- 0.25 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Default ENVG')
end)


--Aim_Slow_ENVG
ResourceManager:RegisterInstanceLoadHandler(Guid('6C567E85-9E1A-47A3-92FE-1757C524A891'), Guid('E1B054EF-DA29-44B0-933A-9D624C839EBD'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.20000000298023224-- 0.20000000298023224 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.25 -- 0.25 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Slow ENVG')
end)

--Aim_Slow_ENVG_6x
ResourceManager:RegisterInstanceLoadHandler(Guid('D9A351A3-8ABE-42B2-9719-D0780920E209'), Guid('A23A461C-0291-41B4-B564-967C3406642E'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.25 -- 0.25 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Slow ENVG_6x')
end)

--Aim_Slow_ENVG_10x
ResourceManager:RegisterInstanceLoadHandler(Guid('22C93C4A-5AE6-45BC-BD07-D90A7D73EF9A'), Guid('5BFC1590-6279-4036-AC58-32FE74DA8C68'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.20000000298023224-- 0.20000000298023224 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.25 -- 0.25 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Slow ENVG_10x')
end)

--Aim_Default_3.4x
ResourceManager:RegisterInstanceLoadHandler(Guid('94CEA049-9B44-4C67-AA89-B2E1CB1DAED7'), Guid('CADEBC2B-35DF-41A2-96F8-553F8EB1DD8F'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.07999999821186066-- 0.07999999821186066 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.1599999964237213 -- 0.1599999964237213 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Default 3.4x')
end)

--Aim_Slow_3.4x
ResourceManager:RegisterInstanceLoadHandler(Guid('5DEFA236-40CF-48CF-8EA8-C1C0093F3013'), Guid('8BDECEC7-453B-4A88-87B4-A23D20C4147E'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.09000000357627869-- 0.09000000357627869 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.18000000715255737 -- 0.18000000715255737 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Slow 3.4x')
end)

--Aim_Default_4x
ResourceManager:RegisterInstanceLoadHandler(Guid('7BE3448D-5683-40B2-8BD3-344530D4B481'), Guid('BE3D5770-3173-4C80-83A3-36E3B3ADA1B2'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.14000000059604645-- 0.140000000596046459 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.20000000298023224 -- 0.20000000298023224 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Default 4x')
end)

--Aim_Slow_4x
ResourceManager:RegisterInstanceLoadHandler(Guid('7053A952-1B0A-45A4-9627-C25FFDB990F6'), Guid('D1FCE0F6-9D8E-416A-B1AF-48F2E7D68D3F'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.14000000059604645-- 0.140000000596046459 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.20000000298023224 -- 0.20000000298023224 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Slow 4x')
end)

--Aim_Slow_6x
ResourceManager:RegisterInstanceLoadHandler(Guid('2D712F61-A61F-4E31-B527-B0FA5D9973E5'), Guid('4407BA79-EB88-408B-92C8-646E48AD77EF'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.20000000298023224-- 0.20000000298023224 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.25 -- 0.25 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Slow 6x')
end)

--Aim_Slow_7x
ResourceManager:RegisterInstanceLoadHandler(Guid('8FF044A6-51B0-47FD-AD6E-6CC5F0D34EA9'), Guid('A7196B7D-F24A-4774-A494-8E2D36412294'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.25 -- 0.25 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Slow 7x')
end)

--Aim_Slow_8x
ResourceManager:RegisterInstanceLoadHandler(Guid('CA093AE4-DDDA-4BC2-8501-39559B065125'), Guid('1E7265DF-1584-4146-BA4D-CE649192D772'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.20000000298023224-- 0.20000000298023224 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.25 -- 0.25 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Slow 8x')
end)

--Aim_Slow_10x
ResourceManager:RegisterInstanceLoadHandler(Guid('E074551B-2CB3-4DE4-A439-0C3836FB5E02'), Guid('81664604-3469-47D5-A4E5-8306FE898051'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.20000000298023224-- 0.20000000298023224 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.25 -- 0.25 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Slow 10x')
end)

--Aim_Slow_12x
ResourceManager:RegisterInstanceLoadHandler(Guid('CC02E587-13AA-4D8A-B8F8-2CFBC8DE6F17'), Guid('DEE43068-4200-4C27-ABBC-98F6655A3C31'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.10000000149011612-- 0.10000000149011612 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.25 -- 0.25 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Slow 12x')
end)

--Aim_Slow_20x
ResourceManager:RegisterInstanceLoadHandler(Guid('1621AD85-8DCD-4EAD-8FDB-C98964EAAE1D'), Guid('60FCA152-8473-4D6C-B4D9-B184D728F38C'), function(aimingSimulation)
    aimingSimulation = SoldierAimingSimulationData(aimingSimulation)
    aimingSimulation:MakeWritable()
    aimingSimulation.standPose.minimumPitch = -70 --  -70 站姿最小俯仰系数，即视角向下的角度
    aimingSimulation.standPose.maximumPitch = 85 --  85 站姿最大俯仰系数，即视角向上的角度
    aimingSimulation.standPose.aimSteadiness = 1.0  -- 1.0  站姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.standPose.speedMultiplier = 1.0  -- 1.0 --站姿灵敏度
    aimingSimulation.crouchPose.minimumPitch = -70 --  -70 蹲姿最小俯仰系数，即视角向下的角度
    aimingSimulation.crouchPose.maximumPitch = 85 --  85 蹲姿最大俯仰系数，即视角向上的角度
    aimingSimulation.crouchPose.aimSteadiness = 1.0  --1.0  蹲姿镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.crouchPose.speedMultiplier = 1.0  --1.0 蹲姿灵敏度
    aimingSimulation.pronePose.minimumPitch = -70 --  -70 趴地最小俯仰系数，即视角向下的角度
    aimingSimulation.pronePose.maximumPitch = 85 --  85 趴地最大俯仰系数，即视角向上的角度
    aimingSimulation.pronePose.aimSteadiness = 1.0  --1.0  趴地镜子稳定程度，数值越大越稳定，反之越晃,基于Base文件的俯仰偏航系数
    aimingSimulation.pronePose.speedMultiplier = 1.0  --1.0 趴地灵敏度
    aimingSimulation.fovDelayTime = 0 --0 开镜延长时间
    aimingSimulation.zoomTransitionTimeArray[1].zoomTransitionTime = 0.10000000149011612-- 0.10000000149011612 开镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[1].fovTransitionTime = 0.25 -- 0.25 开镜后从腰射视野到当前镜子视野的转化时长
    aimingSimulation.zoomTransitionTimeArray[2].zoomTransitionTime = 0.15000000596046448-- 0.15000000596046448 关镜后准心归位时长
    aimingSimulation.zoomTransitionTimeArray[2].fovTransitionTime = 0.15000000596046448 -- 0.15000000596046448 开镜后从当前镜子视野到腰射视野的转化时长
    --print('Aim Slow 20x')
end) 

