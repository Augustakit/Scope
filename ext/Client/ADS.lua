Events:Subscribe('Client:UpdateInput', function(delta) 
    if InputManager:WentKeyDown(InputDeviceKeys.IDK_B) then
		local zoomLevel = ResourceManager:SearchForInstanceByGuid(Guid('5C006FDF-FA1D-4E29-8E21-2ECAB83AC01C'))--Default primary weapon iron sights, red dot (Cobra), reflex sights, M320 family (except buckshot), SMAW, RPG, and SA18 IGLA FOV
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
		local zoomLevel = ResourceManager:SearchForInstanceByGuid(Guid('50887762-21DF-42F5-9740-ECDBCEECC3B4'))--Default general pistols and M26 family (including M320 buckshot) FOV
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
		local zoomLevel = ResourceManager:SearchForInstanceByGuid(Guid('A83312DC-829D-4B36-9A9B-F0140876E14A'))--Default Javelin and Stinger (FIM-92) launcher FOV
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
		local zoomLevel = ResourceManager:SearchForInstanceByGuid(Guid('242DAE61-CC3D-428A-8AC5-324FA95EBE7B'))--Default 1x thermal imaging FOV
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
		local zoomLevel = ResourceManager:SearchForInstanceByGuid(Guid('B06E9839-DA28-42E6-86C4-42D1F8E3AADB'))--Default HOLO and PKA-S sight FOV
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
		local zoomLevel = ResourceManager:SearchForInstanceByGuid(Guid('83D88E7E-D266-430A-8664-CA15AFFA0D66'))--Default HOLO and PKA-S sight FOV
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
		local zoomLevel = ResourceManager:SearchForInstanceByGuid(Guid('E7AA2666-EE70-4B9F-A918-7686E7932DAF'))--Default 3.4x scope FOV
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
		local zoomLevel = ResourceManager:SearchForInstanceByGuid(Guid('BF74D9F8-E11C-4075-BDDB-AAC3F27C608D'))--Default 4x scope FOV
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