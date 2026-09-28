ResourceManager:RegisterInstanceLoadHandler(Guid('FDAAAC18-0AC9-4E17-A723-4EC293FB0813'), Guid('B2D0DC9F-B2A0-4B50-8BA5-A56B7AF1E44B'), function(zoomLevel)--Default hip-fire weapon FOV, not including sprinting
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 55 --55 Default FOV after ADS
	zoomLevel.allowFieldOfViewScaling = true  --true ADS effect
    zoomLevel.lookSpeedMultiplier = 1.0  --1.0 Scope sensitivity during hip fire
    zoomLevel.sprintLookSpeedMultiplier = 1.0  --1.0 Scope sensitivity during sprint
    zoomLevel.moveSpeedMultiplier = 1.0  --1.0 Movement speed during hip fire
    zoomLevel.swayPitchMultiplier = 0   --0 Scope pitch (up/down) multiplier during hip fire; higher means faster sway rate, initial sway is from top to bottom; if zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.supportedSwayPitchMultiplier = 0  --0 Scope pitch (up/down) multiplier during bipod hip fire; higher means faster sway rate, initial sway is from top to bottom, but bipod deployment usually gives a fixed view, not a random one. If zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.swayYawMultiplier = 0   --0 Scope yaw (left/right) multiplier during hip fire; higher means faster sway rate, initial sway is from right to left; if timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.supportedSwayYawMultiplier = 0   --0 Scope yaw (left/right) multiplier during bipod hip fire; higher means faster sway rate, initial sway is from right to left, but bipod deployment usually gives a fixed view, not a random one. If timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.timePitchMultiplier = 0.10000000149011612 --0.10000000149011612 Scope up/down sway (pitch) frequency during hip fire; value is how many times it sways per second
    zoomLevel.timeYawMultiplier = 0.029999999329447746 --0.029999999329447746 Scope left/right sway (yaw) frequency during hip fire; value is how many times it sways per second
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('DefaultBase Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('895050F3-B0D1-4F83-A57B-CCFA3EB0B31D'), Guid('5C006FDF-FA1D-4E29-8E21-2ECAB83AC01C'), function(zoomLevel)--Default primary weapon iron sights, red dot (Cobra), reflex sights, M320 family (except buckshot), SMAW, RPG, and SA18 IGLA FOV
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 40 --40 Default FOV after ADS
	zoomLevel.allowFieldOfViewScaling = true  --false ADS effect
    zoomLevel.lookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during ADS
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during sprint
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5 Movement speed during ADS
    zoomLevel.swayPitchMultiplier = 0.0009374999790452421  --0.0009374999790452421 Scope pitch (up/down) multiplier during ADS; higher means faster sway rate, initial sway is from top to bottom; if zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.supportedSwayPitchMultiplier = 0.0009374999790452421  --0.0009374999790452421 Scope pitch (up/down) multiplier during bipod ADS; higher means faster sway rate, initial sway is from top to bottom, but bipod deployment usually gives a fixed view, not a random one. If zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.swayYawMultiplier = 0.0018749999580904841 --0.0018749999580904841 Scope yaw (left/right) multiplier during ADS; higher means faster sway rate, initial sway is from right to left; if timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.supportedSwayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841 Scope yaw (left/right) multiplier during bipod ADS; higher means faster sway rate, initial sway is from right to left, but bipod deployment usually gives a fixed view, not a random one. If timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448 Scope up/down sway (pitch) frequency during ADS; value is how many times it sways per second
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806 Scope left/right sway (yaw) frequency during ADS; value is how many times it sways per second
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('IronSights and UGL Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('FFEAFC24-9812-44BF-AD98-EBC06193739C'), Guid('50887762-21DF-42F5-9740-ECDBCEECC3B4'), function(zoomLevel)--Default general pistols and M26 family (including M320 buckshot) FOV
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 40 --40 Default FOV after ADS
	zoomLevel.allowFieldOfViewScaling = true  --false ADS effect
    zoomLevel.lookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during ADS
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during sprint
    zoomLevel.moveSpeedMultiplier = 0.5  --0.800000011920929 Movement speed during ADS
    zoomLevel.swayPitchMultiplier = 0.0009374999790452421   --0.0009374999790452421 Scope pitch (up/down) multiplier during ADS; higher means faster sway rate, initial sway is from top to bottom; if zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.supportedSwayPitchMultiplier = 0.0009374999790452421  --0.0009374999790452421 Scope pitch (up/down) multiplier during bipod ADS; higher means faster sway rate, initial sway is from top to bottom, but bipod deployment usually gives a fixed view, not a random one. If zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.swayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841 Scope yaw (left/right) multiplier during ADS; higher means faster sway rate, initial sway is from right to left; if timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.supportedSwayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841 Scope yaw (left/right) multiplier during bipod ADS; higher means faster sway rate, initial sway is from right to left, but bipod deployment usually gives a fixed view, not a random one. If timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448 Scope up/down sway (pitch) frequency during ADS; value is how many times it sways per second
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806 Scope left/right sway (yaw) frequency during ADS; value is how many times it sways per second
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('pistol and M26 Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('A211D3C5-2DA2-4A60-8A49-5F4D90D32CCB'), Guid('A83312DC-829D-4B36-9A9B-F0140876E14A'), function(zoomLevel)--Default Javelin and Stinger (FIM-92) launcher FOV
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 40 --40 Default FOV after ADS
	zoomLevel.allowFieldOfViewScaling = true  --false ADS effect
    zoomLevel.lookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during ADS
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during sprint
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5 Movement speed during ADS
    zoomLevel.swayPitchMultiplier = 0.0009374999790452421   --0.0009374999790452421 Scope pitch (up/down) multiplier during ADS; higher means faster sway rate, initial sway is from top to bottom; if zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.supportedSwayPitchMultiplier = 0.0009374999790452421  --0.0009374999790452421 Scope pitch (up/down) multiplier during bipod ADS; higher means faster sway rate, initial sway is from top to bottom, but bipod deployment usually gives a fixed view, not a random one. If zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.swayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841 Scope yaw (left/right) multiplier during ADS; higher means faster sway rate, initial sway is from right to left; if timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.supportedSwayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841 Scope yaw (left/right) multiplier during bipod ADS; higher means faster sway rate, initial sway is from right to left, but bipod deployment usually gives a fixed view, not a random one. If timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448 Scope up/down sway (pitch) frequency during ADS; value is how many times it sways per second
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806 Scope left/right sway (yaw) frequency during ADS; value is how many times it sways per second
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('AT Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C28310FD-2731-44A3-9B56-A048B3227EA6'), Guid('242DAE61-CC3D-428A-8AC5-324FA95EBE7B'), function(zoomLevel)--Default 1x thermal imaging FOV
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 40 --40 Default FOV after ADS
	zoomLevel.allowFieldOfViewScaling = true  --false ADS effect
    zoomLevel.lookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during ADS
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during sprint
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5 Movement speed during ADS
    zoomLevel.swayPitchMultiplier = 0.007499999832361937   --0.007499999832361937 Scope pitch (up/down) multiplier during ADS; higher means faster sway rate, initial sway is from top to bottom; if zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.supportedSwayPitchMultiplier = 0.007499999832361937  --0.007499999832361937 Scope pitch (up/down) multiplier during bipod ADS; higher means faster sway rate, initial sway is from top to bottom, but bipod deployment usually gives a fixed view, not a random one. If zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.swayYawMultiplier = 0.014999999664723873   --0.014999999664723873 Scope yaw (left/right) multiplier during ADS; higher means faster sway rate, initial sway is from right to left; if timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.supportedSwayYawMultiplier = 0.014999999664723873   --0.014999999664723873 Scope yaw (left/right) multiplier during bipod ADS; higher means faster sway rate, initial sway is from right to left, but bipod deployment usually gives a fixed view, not a random one. If timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448 Scope up/down sway (pitch) frequency during ADS; value is how many times it sways per second
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806 Scope left/right sway (yaw) frequency during ADS; value is how many times it sways per second
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('ENVG Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('3D6A5B06-8046-47E8-8EE6-348E878E5DF5'), Guid('B06E9839-DA28-42E6-86C4-42D1F8E3AADB'), function(zoomLevel)--Default HOLO and PKA-S sight FOV
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 32 --32 Default FOV after ADS
	zoomLevel.allowFieldOfViewScaling = true  --false ADS effect
    zoomLevel.lookSpeedMultiplier = 0.3199999928474426  --0.3199999928474426 Scope sensitivity during ADS
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during sprint
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5 Movement speed during ADS
    zoomLevel.swayPitchMultiplier = 0.0009374999790452421   --0.0009374999790452421 Scope pitch (up/down) multiplier during ADS; higher means faster sway rate, initial sway is from top to bottom; if zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.supportedSwayPitchMultiplier = 0.0009374999790452421  --0.0009374999790452421 Scope pitch (up/down) multiplier during bipod ADS; higher means faster sway rate, initial sway is from top to bottom, but bipod deployment usually gives a fixed view, not a random one. If zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.swayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841 Scope yaw (left/right) multiplier during ADS; higher means faster sway rate, initial sway is from right to left; if timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.supportedSwayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841 Scope yaw (left/right) multiplier during bipod ADS; higher means faster sway rate, initial sway is from right to left, but bipod deployment usually gives a fixed view, not a random one. If timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448 Scope up/down sway (pitch) frequency during ADS; value is how many times it sways per second
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806 Scope left/right sway (yaw) frequency during ADS; value is how many times it sways per second
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('2X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('DF98AF9C-A315-4B68-BD63-31DFAA5FABCF'), Guid('83D88E7E-D266-430A-8664-CA15AFFA0D66'), function(zoomLevel)--Default HOLO and PKA-S sight FOV (shotguns, some SMGs, and rifles)
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 32 --32 Default FOV after ADS
	zoomLevel.allowFieldOfViewScaling = true  --false ADS effect
    zoomLevel.lookSpeedMultiplier = 0.3199999928474426  --0.3199999928474426 Scope sensitivity during ADS
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during sprint
    zoomLevel.moveSpeedMultiplier = 0.5  --0.800000011920929 Movement speed during ADS
    zoomLevel.swayPitchMultiplier = 0.0009374999790452421   --0.0009374999790452421 Scope pitch (up/down) multiplier during ADS; higher means faster sway rate, initial sway is from top to bottom; if zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.supportedSwayPitchMultiplier = 0.0009374999790452421  --0.0009374999790452421 Scope pitch (up/down) multiplier during bipod ADS; higher means faster sway rate, initial sway is from top to bottom, but bipod deployment usually gives a fixed view, not a random one. If zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.swayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841 Scope yaw (left/right) multiplier during ADS; higher means faster sway rate, initial sway is from right to left; if timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.supportedSwayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841 Scope yaw (left/right) multiplier during bipod ADS; higher means faster sway rate, initial sway is from right to left, but bipod deployment usually gives a fixed view, not a random one. If timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448 Scope up/down sway (pitch) frequency during ADS; value is how many times it sways per second
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806 Scope left/right sway (yaw) frequency during ADS; value is how many times it sways per second
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('Fast 2X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('6E7D36F2-7BAC-4E20-A8D7-8ABF9F7FC6D2'), Guid('E7AA2666-EE70-4B9F-A918-7686E7932DAF'), function(zoomLevel)--Default 3.4x scope FOV, including the pistol one
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 20 --20 Default FOV after ADS
	zoomLevel.allowFieldOfViewScaling = true  --false ADS effect
    zoomLevel.lookSpeedMultiplier = 0.36000001430511475  --0.36000001430511475 Scope sensitivity during ADS
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during sprint
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5 Movement speed during ADS
    zoomLevel.swayPitchMultiplier = 0.0009374999790452421   --0.0009374999790452421 Scope pitch (up/down) multiplier during ADS; higher means faster sway rate, initial sway is from top to bottom; if zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.supportedSwayPitchMultiplier = 0.0009374999790452421  --0.0009374999790452421 Scope pitch (up/down) multiplier during bipod ADS; higher means faster sway rate, initial sway is from top to bottom, but bipod deployment usually gives a fixed view, not a random one. If zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.swayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841 Scope yaw (left/right) multiplier during ADS; higher means faster sway rate, initial sway is from right to left; if timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.supportedSwayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841 Scope yaw (left/right) multiplier during bipod ADS; higher means faster sway rate, initial sway is from right to left, but bipod deployment usually gives a fixed view, not a random one. If timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448 Scope up/down sway (pitch) frequency during ADS; value is how many times it sways per second
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806 Scope left/right sway (yaw) frequency during ADS; value is how many times it sways per second
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('3.4X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('7F25A028-ED1A-4B4E-A291-8A8E8B3A9159'), Guid('BF74D9F8-E11C-4075-BDDB-AAC3F27C608D'), function(zoomLevel)--Default 4x scope FOV
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 17.200000762939453 --17.200000762939453 Default FOV after ADS
	zoomLevel.allowFieldOfViewScaling = true  --false ADS effect
    zoomLevel.lookSpeedMultiplier = 0.3100000023841858  --0.3100000023841858 Scope sensitivity during ADS
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during sprint
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5 Movement speed during ADS
    zoomLevel.swayPitchMultiplier = 0.0009374999790452421   --0.0009374999790452421 Scope pitch (up/down) multiplier during ADS; higher means faster sway rate, initial sway is from top to bottom; if zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.supportedSwayPitchMultiplier = 0.0009374999790452421  --0.0009374999790452421 Scope pitch (up/down) multiplier during bipod ADS; higher means faster sway rate, initial sway is from top to bottom, but bipod deployment usually gives a fixed view, not a random one. If zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.swayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841 Scope yaw (left/right) multiplier during ADS; higher means faster sway rate, initial sway is from right to left; if timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.supportedSwayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841 Scope yaw (left/right) multiplier during bipod ADS; higher means faster sway rate, initial sway is from right to left, but bipod deployment usually gives a fixed view, not a random one. If timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448 Scope up/down sway (pitch) frequency during ADS; value is how many times it sways per second
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806 Scope left/right sway (yaw) frequency during ADS; value is how many times it sways per second
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('4X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1EDCC582-8B61-44DC-876C-C2DBB03FF74B'), Guid('531FFD11-A7A9-4175-9049-7ADA2333931D'), function(zoomLevel)--Default 6x scope FOV
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 11.600000381469727 --11.600000381469727 Default FOV after ADS
	zoomLevel.allowFieldOfViewScaling = false  --false ADS effect
    zoomLevel.lookSpeedMultiplier = 0.20999999344348907  --0.20999999344348907 Scope sensitivity during ADS
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during sprint
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5 Movement speed during ADS
    zoomLevel.swayPitchMultiplier = 0.0037499999161809683   --0.0037499999161809683 Scope pitch (up/down) multiplier during ADS; higher means faster sway rate, initial sway is from top to bottom; if zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.supportedSwayPitchMultiplier = 0.007499999832361937  --0.007499999832361937 Scope pitch (up/down) multiplier during bipod ADS; higher means faster sway rate, initial sway is from top to bottom, but bipod deployment usually gives a fixed view, not a random one. If zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.swayYawMultiplier = 0.007499999832361937   --0.007499999832361937 Scope yaw (left/right) multiplier during ADS; higher means faster sway rate, initial sway is from right to left; if timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.supportedSwayYawMultiplier = 0.014999999664723873   --0.014999999664723873 Scope yaw (left/right) multiplier during bipod ADS; higher means faster sway rate, initial sway is from right to left, but bipod deployment usually gives a fixed view, not a random one. If timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448 Scope up/down sway (pitch) frequency during ADS; value is how many times it sways per second
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806 Scope left/right sway (yaw) frequency during ADS; value is how many times it sways per second
    zoomLevel.recoilFovMultiplier = -2.0 --  -2.0
    zoomLevel.fadeToBlackInZoomTransition = false  --false Fade-to-black start time on ADS
    zoomLevel.startFadeToBlackAtTime = 0.10000000149011612  --0.10000000149011612 Time to enter black view on ADS
    zoomLevel.fadeToBlackDuration = 0.20000000298023224  --0.20000000298023224 Duration of fading to black
    zoomLevel.startFadeFromBlackAtTime = 0.30000001192092896  --0.30000001192092896 Duration of black screen after ADS
    zoomLevel.fadeFromBlackDuration = 0.10000000149011612  --0.10000000149011612 Time for black to fade back to normal color
    --print('6X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('8815B047-AEB1-4BCB-9A25-0128D948B3EE'), Guid('6A83DD0E-1CA3-47DF-A829-F0EFEFF228F1'), function(zoomLevel)--Default singleplayer 6x infrared scope FOV
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 11.600000381469727 --11.600000381469727 Default FOV after ADS
	zoomLevel.allowFieldOfViewScaling = false  --false ADS effect
    zoomLevel.lookSpeedMultiplier = 0.20999999344348907  --0.20999999344348907 Scope sensitivity during ADS
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during sprint
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5 Movement speed during ADS
    zoomLevel.swayPitchMultiplier = 0.0037499999161809683   --0.0037499999161809683 Scope pitch (up/down) multiplier during ADS; higher means faster sway rate, initial sway is from top to bottom; if zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.supportedSwayPitchMultiplier = 0.007499999832361937  --0.007499999832361937 Scope pitch (up/down) multiplier during bipod ADS; higher means faster sway rate, initial sway is from top to bottom, but bipod deployment usually gives a fixed view, not a random one. If zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.swayYawMultiplier = 0.007499999832361937   --0.007499999832361937 Scope yaw (left/right) multiplier during ADS; higher means faster sway rate, initial sway is from right to left; if timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.supportedSwayYawMultiplier = 0.014999999664723873   --0.014999999664723873 Scope yaw (left/right) multiplier during bipod ADS; higher means faster sway rate, initial sway is from right to left, but bipod deployment usually gives a fixed view, not a random one. If timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448 Scope up/down sway (pitch) frequency during ADS; value is how many times it sways per second
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806 Scope left/right sway (yaw) frequency during ADS; value is how many times it sways per second
    zoomLevel.recoilFovMultiplier = -2.0 --  -2.0
    zoomLevel.fadeToBlackInZoomTransition = false  --false Fade-to-black start time on ADS
    zoomLevel.startFadeToBlackAtTime = 0.10000000149011612  --0.10000000149011612 Time to enter black view on ADS
    zoomLevel.fadeToBlackDuration = 0.20000000298023224  --0.20000000298023224 Duration of fading to black
    zoomLevel.startFadeFromBlackAtTime = 0.30000001192092896  --0.30000001192092896 Duration of black screen after ADS
    zoomLevel.fadeFromBlackDuration = 0.10000000149011612  --0.10000000149011612 Time for black to fade back to normal color
    --print('SP 6X ENVG Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D6C590F7-9AFE-4B45-BA23-5D187678C42C'), Guid('BC4F88FE-DC56-4EDB-B2C6-9ABAFD993A88'), function(zoomLevel)--Default 7x scope FOV
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 9.899999618530273 --9.899999618530273 Default FOV after ADS
	zoomLevel.allowFieldOfViewScaling = false  --false ADS effect
    zoomLevel.lookSpeedMultiplier = 0.20999999344348907  --0.20999999344348907 Scope sensitivity during ADS
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during sprint
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5 Movement speed during ADS
    zoomLevel.swayPitchMultiplier = 0.0037499999161809683   --0.0037499999161809683 Scope pitch (up/down) multiplier during ADS; higher means faster sway rate, initial sway is from top to bottom; if zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.supportedSwayPitchMultiplier = 0.007499999832361937  --0.007499999832361937 Scope pitch (up/down) multiplier during bipod ADS; higher means faster sway rate, initial sway is from top to bottom, but bipod deployment usually gives a fixed view, not a random one. If zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.swayYawMultiplier = 0.007499999832361937   --0.007499999832361937 Scope yaw (left/right) multiplier during ADS; higher means faster sway rate, initial sway is from right to left; if timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.supportedSwayYawMultiplier = 0.014999999664723873   --0.014999999664723873 Scope yaw (left/right) multiplier during bipod ADS; higher means faster sway rate, initial sway is from right to left, but bipod deployment usually gives a fixed view, not a random one. If timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448 Scope up/down sway (pitch) frequency during ADS; value is how many times it sways per second
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806 Scope left/right sway (yaw) frequency during ADS; value is how many times it sways per second
    zoomLevel.recoilFovMultiplier = -2.0 --  -2.0
    zoomLevel.fadeToBlackInZoomTransition = false  --false Fade-to-black start time on ADS
    zoomLevel.startFadeToBlackAtTime = 0.10000000149011612  --0.10000000149011612 Time to enter black view on ADS
    zoomLevel.fadeToBlackDuration = 0.20000000298023224  --0.20000000298023224 Duration of fading to black
    zoomLevel.startFadeFromBlackAtTime = 0.30000001192092896  --0.30000001192092896 Duration of black screen after ADS
    zoomLevel.fadeFromBlackDuration = 0.10000000149011612  --0.10000000149011612 Time for black to fade back to normal color
    --print('7X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('725A64F5-4A69-4F67-A933-89E43BB1E641'), Guid('C6913617-8845-4A35-9146-38F2A988EC03'), function(zoomLevel)--Default 8x scope FOV
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 8.699999809265137 --8.699999809265137 Default FOV after ADS
	zoomLevel.allowFieldOfViewScaling = false  --false ADS effect
    zoomLevel.lookSpeedMultiplier = 0.1599999964237213  --0.1599999964237213 Scope sensitivity during ADS
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during sprint
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5 Movement speed during ADS
    zoomLevel.swayPitchMultiplier = 0.0037499999161809683   --0.0037499999161809683 Scope pitch (up/down) multiplier during ADS; higher means faster sway rate, initial sway is from top to bottom; if zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.supportedSwayPitchMultiplier = 0.007499999832361937  --0.007499999832361937 Scope pitch (up/down) multiplier during bipod ADS; higher means faster sway rate, initial sway is from top to bottom, but bipod deployment usually gives a fixed view, not a random one. If zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.swayYawMultiplier = 0.007499999832361937   --0.007499999832361937 Scope yaw (left/right) multiplier during ADS; higher means faster sway rate, initial sway is from right to left; if timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.supportedSwayYawMultiplier = 0.014999999664723873   --0.014999999664723873 Scope yaw (left/right) multiplier during bipod ADS; higher means faster sway rate, initial sway is from right to left, but bipod deployment usually gives a fixed view, not a random one. If timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448 Scope up/down sway (pitch) frequency during ADS; value is how many times it sways per second
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806 Scope left/right sway (yaw) frequency during ADS; value is how many times it sways per second
    zoomLevel.recoilFovMultiplier = -2.0 --  -2.0
    zoomLevel.fadeToBlackInZoomTransition = false  --false Fade-to-black start time on ADS
    zoomLevel.startFadeToBlackAtTime = 0.10000000149011612  --0.10000000149011612 Time to enter black view on ADS
    zoomLevel.fadeToBlackDuration = 0.20000000298023224  --0.20000000298023224 Duration of fading to black
    zoomLevel.startFadeFromBlackAtTime = 0.30000001192092896  --0.30000001192092896 Duration of black screen after ADS
    zoomLevel.fadeFromBlackDuration = 0.10000000149011612  --0.10000000149011612 Time for black to fade back to normal color
    --print('8X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('F412EBAD-2551-4832-93A0-B9E1A412FB5D'), Guid('E068484D-EE7F-4199-992A-59772D8B7D4B'), function(zoomLevel)--Default 10x scope FOV, usually the co-op mode infrared scope
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 7.0 --7.0 Default FOV after ADS
	zoomLevel.allowFieldOfViewScaling = false  --false ADS effect
    zoomLevel.lookSpeedMultiplier = 0.12999999523162842  --0.12999999523162842 Scope sensitivity during ADS
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during sprint
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5 Movement speed during ADS
    zoomLevel.swayPitchMultiplier = 0.0037499999161809683   --0.0037499999161809683 Scope pitch (up/down) multiplier during ADS; higher means faster sway rate, initial sway is from top to bottom; if zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.supportedSwayPitchMultiplier = 0.007499999832361937  --0.007499999832361937 Scope pitch (up/down) multiplier during bipod ADS; higher means faster sway rate, initial sway is from top to bottom, but bipod deployment usually gives a fixed view, not a random one. If zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.swayYawMultiplier = 0.007499999832361937   --0.007499999832361937 Scope yaw (left/right) multiplier during ADS; higher means faster sway rate, initial sway is from right to left; if timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.supportedSwayYawMultiplier = 0.014999999664723873   --0.014999999664723873 Scope yaw (left/right) multiplier during bipod ADS; higher means faster sway rate, initial sway is from right to left, but bipod deployment usually gives a fixed view, not a random one. If timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448 Scope up/down sway (pitch) frequency during ADS; value is how many times it sways per second
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806 Scope left/right sway (yaw) frequency during ADS; value is how many times it sways per second
    zoomLevel.recoilFovMultiplier = -2.0 --  -2.0
    zoomLevel.fadeToBlackInZoomTransition = false  --false Fade-to-black start time on ADS
    zoomLevel.startFadeToBlackAtTime = 0.10000000149011612  --0.10000000149011612 Time to enter black view on ADS
    zoomLevel.fadeToBlackDuration = 0.20000000298023224  --0.20000000298023224 Duration of fading to black
    zoomLevel.startFadeFromBlackAtTime = 0.30000001192092896  --0.30000001192092896 Duration of black screen after ADS
    zoomLevel.fadeFromBlackDuration = 0.10000000149011612  --0.10000000149011612 Time for black to fade back to normal color
    --print('10X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('72AFA964-EFE0-4203-83E2-88052DD7ECBA'), Guid('B6B46C0F-92B8-4F9F-9429-595261801A14'), function(zoomLevel)--Default 12x scope FOV
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 5.800000190734863 --5.800000190734863 Default FOV after ADS
	zoomLevel.allowFieldOfViewScaling = false  --false ADS effect
    zoomLevel.lookSpeedMultiplier = 0.10999999940395355  --0.10999999940395355 Scope sensitivity during ADS
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during sprint
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5 Movement speed during ADS
    zoomLevel.swayPitchMultiplier = 0.0037499999161809683   --0.0037499999161809683 Scope pitch (up/down) multiplier during ADS; higher means faster sway rate, initial sway is from top to bottom; if zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.supportedSwayPitchMultiplier = 0.007499999832361937  --0.007499999832361937 Scope pitch (up/down) multiplier during bipod ADS; higher means faster sway rate, initial sway is from top to bottom, but bipod deployment usually gives a fixed view, not a random one. If zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.swayYawMultiplier = 0.007499999832361937   --0.007499999832361937 Scope yaw (left/right) multiplier during ADS; higher means faster sway rate, initial sway is from right to left; if timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.supportedSwayYawMultiplier = 0.014999999664723873   --0.014999999664723873 Scope yaw (left/right) multiplier during bipod ADS; higher means faster sway rate, initial sway is from right to left, but bipod deployment usually gives a fixed view, not a random one. If timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448 Scope up/down sway (pitch) frequency during ADS; value is how many times it sways per second
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806 Scope left/right sway (yaw) frequency during ADS; value is how many times it sways per second
    zoomLevel.recoilFovMultiplier = -2 --  -2.0
    zoomLevel.fadeToBlackInZoomTransition = false  --false Fade-to-black start time on ADS
    zoomLevel.startFadeToBlackAtTime = 0.10000000149011612  --0.10000000149011612 Time to enter black view on ADS
    zoomLevel.fadeToBlackDuration = 0.20000000298023224  --0.20000000298023224 Duration of fading to black
    zoomLevel.startFadeFromBlackAtTime = 0.30000001192092896  --0.30000001192092896 Duration of black screen after ADS
    zoomLevel.fadeFromBlackDuration = 0.10000000149011612  --0.10000000149011612 Time for black to fade back to normal color
    --print('12X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('609CC1AC-4B36-4197-B1C1-2357E57CEBAF'), Guid('34C9BF53-1E0C-42D3-9EC1-696421E8A420'), function(zoomLevel)--Default 20x scope FOV
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 3.5 --3.5 Default FOV after ADS
	zoomLevel.allowFieldOfViewScaling = false  --false ADS effect
    zoomLevel.lookSpeedMultiplier = 0.07999999821186066  --0.07999999821186066 Scope sensitivity during ADS
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5 Scope sensitivity during sprint
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5 Movement speed during ADS
    zoomLevel.swayPitchMultiplier = 0.0037499999161809683   --0.0037499999161809683 Scope pitch (up/down) multiplier during ADS; higher means faster sway rate, initial sway is from top to bottom; if zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.supportedSwayPitchMultiplier = 0.007499999832361937  --0.007499999832361937 Scope pitch (up/down) multiplier during bipod ADS; higher means faster sway rate, initial sway is from top to bottom, but bipod deployment usually gives a fixed view, not a random one. If zoomLevel.timePitchMultiplier is 0, the scope generally tends upward regardless of sign
    zoomLevel.swayYawMultiplier = 0.007499999832361937   --0.007499999832361937 Scope yaw (left/right) multiplier during ADS; higher means faster sway rate, initial sway is from right to left; if timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.supportedSwayYawMultiplier = 0.014999999664723873   --0.014999999664723873 Scope yaw (left/right) multiplier during bipod ADS; higher means faster sway rate, initial sway is from right to left, but bipod deployment usually gives a fixed view, not a random one. If timeYawMultiplier is 0, the value is invalid regardless of sign
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448 Scope up/down sway (pitch) frequency during ADS; value is how many times it sways per second
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806 Scope left/right sway (yaw) frequency during ADS; value is how many times it sways per second
    zoomLevel.recoilFovMultiplier = -20 --  -2.0
    zoomLevel.fadeToBlackInZoomTransition = false  --false Fade-to-black start time on ADS
    zoomLevel.startFadeToBlackAtTime = 0.10000000149011612  --0.10000000149011612 Time to enter black view on ADS
    zoomLevel.fadeToBlackDuration = 0.20000000298023224  --0.20000000298023224 Duration of fading to black
    zoomLevel.startFadeFromBlackAtTime = 0.30000001192092896  --0.30000001192092896 Duration of black screen after ADS
    zoomLevel.fadeFromBlackDuration = 0.10000000149011612  --0.10000000149011612 Time for black to fade back to normal color
    --print('20X Load')
end)