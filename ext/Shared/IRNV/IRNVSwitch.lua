--Night vision scope data
local envgVeName = "FX/VisualEnviroments/NightVision/IR_Enhanched_NightVision"

--Singleplayer tank thermal imaging data
local flirspVeName = "FX/VisualEnviroments/NightVision/VE_FLIR_WhiteHot_Orange"

--Co-op mode helicopter gunner thermal imaging data in the Fire From the Sky mission
local envgcoopVeName = "FX/VisualEnviroments/NightVision/VE_HeatVision_CoOp"

--White thermal imaging data
local flirVeName = "FX/VisualEnviroments/NightVision/VE_FLIR_White_MP"

--Vehicle visual environment conversion for tanks etc.
--[[local tankflirVeEntityGuid = Guid('7931C771-EC72-4051-A5FA-B3B0D567799C')
Events:Subscribe('Level:RegisterEntityResources', function(levelData)
    -- Get the VE for the soldier IR weapon scopes 
    local soldierIrVe = VisualEnvironmentBlueprint(ResourceManager:SearchForDataContainer(envgcoopVeName))

    -- Get the VisualEnvironmentEntityData that enables the vehicle FLIR
    -- This is part of the logic in "Vehicles/common/LogicalPrefabs/Tank1pFX"
    local vehicleFlirVeEntity = LogicVisualEnvironmentEntityData(ResourceManager:SearchForInstanceByGuid(tankflirVeEntityGuid))

    -- Apply the IR VE to the vehicle FLIR entity
    vehicleFlirVeEntity:MakeWritable()
    vehicleFlirVeEntity.visualEnvironment = soldierIrVe
end)]]


--Singleplayer night vision scope visual environment conversion
local flirVeEntityGuid = Guid('BCD74728-7241-45A7-8565-3D1A56521BD3')
Events:Subscribe('Level:RegisterEntityResources', function(levelData)

    -- Get the VE for the soldier IR weapon scopes 
    local soldierIrVe = VisualEnvironmentBlueprint(ResourceManager:SearchForDataContainer(flirVeName))
    local vehicleFlirVeEntity = LogicVisualEnvironmentEntityData(ResourceManager:SearchForInstanceByGuid(flirVeEntityGuid))
    vehicleFlirVeEntity:MakeWritable()
    vehicleFlirVeEntity.visualEnvironment = soldierIrVe
end)


--MAV and EOD bot etc. visual environment conversion (included in EOD, VehicleThermal mods)
local botflirVeEntityGuid = Guid('DA7EBAD7-26B0-4820-86F6-4F0391E2505D')
Events:Subscribe('Level:RegisterEntityResources', function(levelData)
    -- Get the VE for the soldier IR weapon scopes 
    local soldierIrVe = VisualEnvironmentBlueprint(ResourceManager:SearchForDataContainer(envgVeName))

    -- Get the VisualEnvironmentEntityData that enables the vehicle FLIR
    -- This is part of the logic in "Vehicles/common/LogicalPrefabs/Tank1pFX"
    local vehicleFlirVeEntity = LogicVisualEnvironmentEntityData(ResourceManager:SearchForInstanceByGuid(botflirVeEntityGuid))

    -- Apply the IR VE to the vehicle FLIR entity
    vehicleFlirVeEntity:MakeWritable()
    vehicleFlirVeEntity.visualEnvironment = soldierIrVe
end)


--TV missile thermal imaging
local ah1zflirVeEntityGuid = Guid('734EFD99-4DD0-4A26-BE35-6E465362AFC5')
local mi28flirVeEntityGuid = Guid('4BEE9F89-1577-4688-B131-FA29C0E28B2F')
local tvflirVeEntityGuid = Guid('5B09868D-5464-4819-BB4A-A57A10B48D09')

Events:Subscribe('Level:RegisterEntityResources', function(levelData)
    local soldierIrVe = VisualEnvironmentBlueprint(ResourceManager:SearchForDataContainer(flirVeName))

    local ah1zRaw = ResourceManager:SearchForInstanceByGuid(ah1zflirVeEntityGuid)
    if ah1zRaw ~= nil then
        local ah1zvehicleFlirVeEntity = LogicVisualEnvironmentEntityData(ah1zRaw)
        ah1zvehicleFlirVeEntity:MakeWritable()
        ah1zvehicleFlirVeEntity.visualEnvironment = soldierIrVe
    end

    local mi28Raw = ResourceManager:SearchForInstanceByGuid(mi28flirVeEntityGuid)
    if mi28Raw ~= nil then
        local mi28vehicleFlirVeEntity = LogicVisualEnvironmentEntityData(mi28Raw)
        mi28vehicleFlirVeEntity:MakeWritable()
        mi28vehicleFlirVeEntity.visualEnvironment = soldierIrVe
    end

    local tvRaw = ResourceManager:SearchForInstanceByGuid(tvflirVeEntityGuid)
    if tvRaw ~= nil then
        local tvvehicleFlirVeEntity = LogicVisualEnvironmentEntityData(tvRaw)
        tvvehicleFlirVeEntity:MakeWritable()
        tvvehicleFlirVeEntity.visualEnvironment = soldierIrVe
    end
end)

--Bundles required for loading singleplayer tank thermal imaging
--[[local bundle = 'Levels/SP_Tank/SP_Tank'
Events:Subscribe('Level:LoadResources', function()
    ResourceManager:MountSuperBundle('SPChunks')
    ResourceManager:MountSuperBundle(bundle)
end)

Hooks:Install('ResourceManager:LoadBundles', 1, function(hook, bundles, compartment)
    if bundles[1] == SharedUtils:GetLevelName() and bundles[1] ~= bundle then
        bundles = {
            bundle,
            bundles[1]
        }

        hook:Pass(bundles, compartment)
    end
end)

Events:Subscribe('Level:RegisterEntityResources', function()
    local registry = RegistryContainer(ResourceManager:SearchForInstanceByGuid(Guid('67F82662-BE3A-5161-E910-DACF2075AB01')))

    ResourceManager:AddRegistry(registry, ResourceCompartment.ResourceCompartment_Game)
end)]]


--Bundles required for loading co-op mode thermal imaging
--VE_HeatVision_CoOp
--[[local bundle = 'Levels/COOP_006/COOP_006'
Events:Subscribe('Level:LoadResources', function()
    ResourceManager:MountSuperBundle('COOPChunks')
    ResourceManager:MountSuperBundle(bundle)
end)
Hooks:Install('ResourceManager:LoadBundles', 1, function(hook, bundles, compartment)
    if bundles[1] == SharedUtils:GetLevelName() and bundles[1] ~= bundle then
        bundles = {
            bundle,
            bundles[1]
        }

        hook:Pass(bundles, compartment)
    end
end)

Events:Subscribe('Level:RegisterEntityResources', function()
    local registry = RegistryContainer(ResourceManager:SearchForInstanceByGuid(Guid('51C54150-0ABF-03BD-EADE-1876AAD3EC8D')))

    ResourceManager:AddRegistry(registry, ResourceCompartment.ResourceCompartment_Game)
end)]]