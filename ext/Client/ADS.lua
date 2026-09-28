
Events:Subscribe('Client:UpdateInput', function(delta) 
    if InputManager:WentKeyDown(InputDeviceKeys.IDK_B) then
		local zoomLevel = ResourceManager:SearchForInstanceByGuid(Guid('5C006FDF-FA1D-4E29-8E21-2ECAB83AC01C'))--默认主武器机瞄以及内红点（眼镜蛇）和反射式瞄准镜以及M320家族(除了鹿弹)、SMAW，RPG,和SA18IGLA的视野
        zoomLevel = ZoomLevelData(zoomLevel)
              if zoomLevel == nil then
                  --print("could not find data")
                  return
              end
              zoomLevel = ZoomLevelData(zoomLevel)
              zoomLevel:MakeWritable()
              zoomLevel.allowFieldOfViewScaling = not zoomLevel.allowFieldOfViewScaling
              --print("IronSights allowFieldOfViewScaling set to "..tostring(zoomLevel.allowFieldOfViewScaling))			  
    end
    if InputManager:WentKeyDown(InputDeviceKeys.IDK_B) then
		local zoomLevel = ResourceManager:SearchForInstanceByGuid(Guid('50887762-21DF-42F5-9740-ECDBCEECC3B4'))--默认一般手枪和M26家族(包括M320鹿弹)的视野
              if zoomLevel == nil then
                  --print("could not find data")
                  return
              end
              zoomLevel = ZoomLevelData(zoomLevel)
              zoomLevel:MakeWritable()
              zoomLevel.allowFieldOfViewScaling = not zoomLevel.allowFieldOfViewScaling
              --print("pistol and M26 allowFieldOfViewScaling set to "..tostring(zoomLevel.allowFieldOfViewScaling))			  
    end
    if InputManager:WentKeyDown(InputDeviceKeys.IDK_B) then
		local zoomLevel = ResourceManager:SearchForInstanceByGuid(Guid('A83312DC-829D-4B36-9A9B-F0140876E14A'))--默认标枪以及毒刺(FIM-92)筒子视野
              if zoomLevel == nil then
                  --print("could not find data")
                  return
              end
              zoomLevel = ZoomLevelData(zoomLevel)
              zoomLevel:MakeWritable()
              zoomLevel.allowFieldOfViewScaling = not zoomLevel.allowFieldOfViewScaling
              --print("AT allowFieldOfViewScaling set to "..tostring(zoomLevel.allowFieldOfViewScaling))			  
    end
    if InputManager:WentKeyDown(InputDeviceKeys.IDK_B) then
		local zoomLevel = ResourceManager:SearchForInstanceByGuid(Guid('242DAE61-CC3D-428A-8AC5-324FA95EBE7B'))--默认1倍热成像视野
              if zoomLevel == nil then
                  --print("could not find data")
                  return
              end
              zoomLevel = ZoomLevelData(zoomLevel)
              zoomLevel:MakeWritable()
              zoomLevel.allowFieldOfViewScaling = not zoomLevel.allowFieldOfViewScaling
              --print("ENVG allowFieldOfViewScaling set to "..tostring(zoomLevel.allowFieldOfViewScaling))			  
    end
    if InputManager:WentKeyDown(InputDeviceKeys.IDK_B) then
		local zoomLevel = ResourceManager:SearchForInstanceByGuid(Guid('B06E9839-DA28-42E6-86C4-42D1F8E3AADB'))--默认HOLO和PKA-S瞄准镜视野
              if zoomLevel == nil then
                  --print("could not find data")
                  return
              end
              zoomLevel = ZoomLevelData(zoomLevel)
              zoomLevel:MakeWritable()
              zoomLevel.allowFieldOfViewScaling = not zoomLevel.allowFieldOfViewScaling
              --print("2X allowFieldOfViewScaling set to "..tostring(zoomLevel.allowFieldOfViewScaling))			  
    end

    if InputManager:WentKeyDown(InputDeviceKeys.IDK_B) then
		local zoomLevel = ResourceManager:SearchForInstanceByGuid(Guid('83D88E7E-D266-430A-8664-CA15AFFA0D66'))--默认HOLO和PKA-S瞄准镜视野
              if zoomLevel == nil then
                  --print("could not find data")
                  return
              end
              zoomLevel = ZoomLevelData(zoomLevel)
              zoomLevel:MakeWritable()
              zoomLevel.allowFieldOfViewScaling = not zoomLevel.allowFieldOfViewScaling
              --print("Fast 2X allowFieldOfViewScaling set to "..tostring(zoomLevel.allowFieldOfViewScaling))			  
    end

    if InputManager:WentKeyDown(InputDeviceKeys.IDK_B) then
		local zoomLevel = ResourceManager:SearchForInstanceByGuid(Guid('E7AA2666-EE70-4B9F-A918-7686E7932DAF'))--默认3.4X瞄准镜视野
              if zoomLevel == nil then
                  --print("could not find data")
                  return
              end
              zoomLevel = ZoomLevelData(zoomLevel)
              zoomLevel:MakeWritable()
              zoomLevel.allowFieldOfViewScaling = not zoomLevel.allowFieldOfViewScaling
              --print("3.4X allowFieldOfViewScaling set to "..tostring(zoomLevel.allowFieldOfViewScaling))			  
    end
    if InputManager:WentKeyDown(InputDeviceKeys.IDK_B) then
		local zoomLevel = ResourceManager:SearchForInstanceByGuid(Guid('BF74D9F8-E11C-4075-BDDB-AAC3F27C608D'))--默认4X瞄准镜视野
              if zoomLevel == nil then
                  --print("could not find data")
                  return
              end
              zoomLevel = ZoomLevelData(zoomLevel)
              zoomLevel:MakeWritable()
              zoomLevel.allowFieldOfViewScaling = not zoomLevel.allowFieldOfViewScaling
              --print("4X allowFieldOfViewScaling set to "..tostring(zoomLevel.allowFieldOfViewScaling))			  
    end

end)