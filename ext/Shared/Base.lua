ResourceManager:RegisterInstanceLoadHandler(Guid('FDAAAC18-0AC9-4E17-A723-4EC293FB0813'), Guid('B2D0DC9F-B2A0-4B50-8BA5-A56B7AF1E44B'), function(zoomLevel)--默认腰射时持枪的视野，不包括奔跑时的样子
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 55 --55 默认开镜后视野范围 
	zoomLevel.allowFieldOfViewScaling = true  --true  ADS效果
    zoomLevel.lookSpeedMultiplier = 1.0  --1.0  腰射时的瞄准镜灵敏度
    zoomLevel.sprintLookSpeedMultiplier = 1.0  --1.0  冲刺时瞄准镜的灵敏度
    zoomLevel.moveSpeedMultiplier = 1.0  --1.0  腰射时的移动速度
    zoomLevel.swayPitchMultiplier = 0   --0  腰射时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.supportedSwayPitchMultiplier = 0  --0  使用脚架腰射时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，但是部署脚架一般是固定视角，并不是随机视角。如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.swayYawMultiplier = 0   --0  腰射时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.supportedSwayYawMultiplier = 0   --0  使用脚架腰射时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，但是部署脚架一般是固定视角，并不是随机视角。如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.timePitchMultiplier = 0.10000000149011612 --0.10000000149011612  腰射时瞄准镜上下晃动（俯仰）的频率，数值为一秒内晃动几次
    zoomLevel.timeYawMultiplier = 0.029999999329447746 --0.029999999329447746  腰射时瞄准镜左右（偏航）晃动的频率，数值为一秒内晃动几次
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('DefaultBase Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('895050F3-B0D1-4F83-A57B-CCFA3EB0B31D'), Guid('5C006FDF-FA1D-4E29-8E21-2ECAB83AC01C'), function(zoomLevel)--默认主武器机瞄以及内红点（眼镜蛇）和反射式瞄准镜以及M320家族(除了鹿弹)、SMAW，RPG,和SA18IGLA的视野
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 40 --40 默认开镜后视野范围 
	zoomLevel.allowFieldOfViewScaling = true  --false  ADS效果
    zoomLevel.lookSpeedMultiplier = 0.5  --0.5  开镜时的瞄准镜灵敏度
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5  冲刺时瞄准镜的灵敏度
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5  开镜时的移动速度
    zoomLevel.swayPitchMultiplier = 0.0009374999790452421  --0.0009374999790452421  开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.supportedSwayPitchMultiplier = 0.0009374999790452421  --0.0009374999790452421  使用脚架开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，但是部署脚架一般是固定视角，并不是随机视角。如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.swayYawMultiplier = 0.0018749999580904841 --0.0018749999580904841  开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.supportedSwayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841  使用脚架开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，但是部署脚架一般是固定视角，并不是随机视角。如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448  开镜时瞄准镜上下晃动（俯仰）的频率，数值为一秒内晃动几次
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806  开镜时瞄准镜左右（偏航）晃动的频率，数值为一秒内晃动几次
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('IronSights and UGL Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('FFEAFC24-9812-44BF-AD98-EBC06193739C'), Guid('50887762-21DF-42F5-9740-ECDBCEECC3B4'), function(zoomLevel)--默认一般手枪和M26家族(包括M320鹿弹)的视野
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 40 --40 默认开镜后视野范围 
	zoomLevel.allowFieldOfViewScaling = true  --false  ADS效果
    zoomLevel.lookSpeedMultiplier = 0.5  --0.5  开镜时的瞄准镜灵敏度
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5  冲刺时瞄准镜的灵敏度
    zoomLevel.moveSpeedMultiplier = 0.5  --0.800000011920929  开镜时的移动速度
    zoomLevel.swayPitchMultiplier = 0.0009374999790452421   --0.0009374999790452421  开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.supportedSwayPitchMultiplier = 0.0009374999790452421  --0.0009374999790452421  使用脚架开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，但是部署脚架一般是固定视角，并不是随机视角。如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.swayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841  开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.supportedSwayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841  使用脚架开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，但是部署脚架一般是固定视角，并不是随机视角。如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448  开镜时瞄准镜上下晃动（俯仰）的频率，数值为一秒内晃动几次
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806  开镜时瞄准镜左右（偏航）晃动的频率，数值为一秒内晃动几次
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('pistol and M26 Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('A211D3C5-2DA2-4A60-8A49-5F4D90D32CCB'), Guid('A83312DC-829D-4B36-9A9B-F0140876E14A'), function(zoomLevel)--默认标枪以及毒刺(FIM-92)筒子视野
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 40 --40 默认开镜后视野范围 
	zoomLevel.allowFieldOfViewScaling = true  --false  ADS效果
    zoomLevel.lookSpeedMultiplier = 0.5  --0.5  开镜时的瞄准镜灵敏度
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5  冲刺时瞄准镜的灵敏度
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5  开镜时的移动速度
    zoomLevel.swayPitchMultiplier = 0.0009374999790452421   --0.0009374999790452421  开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.supportedSwayPitchMultiplier = 0.0009374999790452421  --0.0009374999790452421  使用脚架开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，但是部署脚架一般是固定视角，并不是随机视角。如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.swayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841  开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.supportedSwayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841  使用脚架开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，但是部署脚架一般是固定视角，并不是随机视角。如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448  开镜时瞄准镜上下晃动（俯仰）的频率，数值为一秒内晃动几次
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806  开镜时瞄准镜左右（偏航）晃动的频率，数值为一秒内晃动几次
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('AT Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('C28310FD-2731-44A3-9B56-A048B3227EA6'), Guid('242DAE61-CC3D-428A-8AC5-324FA95EBE7B'), function(zoomLevel)--默认1倍热成像视野
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 40 --40 默认开镜后视野范围 
	zoomLevel.allowFieldOfViewScaling = true  --false  ADS效果
    zoomLevel.lookSpeedMultiplier = 0.5  --0.5  开镜时的瞄准镜灵敏度
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5  冲刺时瞄准镜的灵敏度
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5  开镜时的移动速度
    zoomLevel.swayPitchMultiplier = 0.007499999832361937   --0.007499999832361937  开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.supportedSwayPitchMultiplier = 0.007499999832361937  --0.007499999832361937  使用脚架开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，但是部署脚架一般是固定视角，并不是随机视角。如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.swayYawMultiplier = 0.014999999664723873   --0.014999999664723873  开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.supportedSwayYawMultiplier = 0.014999999664723873   --0.014999999664723873  使用脚架开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，但是部署脚架一般是固定视角，并不是随机视角。如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448  开镜时瞄准镜上下晃动（俯仰）的频率，数值为一秒内晃动几次
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806  开镜时瞄准镜左右（偏航）晃动的频率，数值为一秒内晃动几次
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('ENVG Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('3D6A5B06-8046-47E8-8EE6-348E878E5DF5'), Guid('B06E9839-DA28-42E6-86C4-42D1F8E3AADB'), function(zoomLevel)--默认HOLO和PKA-S瞄准镜视野
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 32 --32 默认开镜后视野范围 
	zoomLevel.allowFieldOfViewScaling = true  --false  ADS效果
    zoomLevel.lookSpeedMultiplier = 0.3199999928474426  --0.3199999928474426  开镜时的瞄准镜灵敏度
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5  冲刺时瞄准镜的灵敏度
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5  开镜时的移动速度
    zoomLevel.swayPitchMultiplier = 0.0009374999790452421   --0.0009374999790452421  开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.supportedSwayPitchMultiplier = 0.0009374999790452421  --0.0009374999790452421  使用脚架开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，但是部署脚架一般是固定视角，并不是随机视角。如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.swayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841  开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.supportedSwayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841  使用脚架开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，但是部署脚架一般是固定视角，并不是随机视角。如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448  开镜时瞄准镜上下晃动（俯仰）的频率，数值为一秒内晃动几次
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806  开镜时瞄准镜左右（偏航）晃动的频率，数值为一秒内晃动几次
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('2X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('DF98AF9C-A315-4B68-BD63-31DFAA5FABCF'), Guid('83D88E7E-D266-430A-8664-CA15AFFA0D66'), function(zoomLevel)--默认HOLO和PKA-S瞄准镜视野（霰弹枪和部分冲锋枪以及步枪）
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 32 --32 默认开镜后视野范围 
	zoomLevel.allowFieldOfViewScaling = true  --false  ADS效果
    zoomLevel.lookSpeedMultiplier = 0.3199999928474426  --0.3199999928474426  开镜时的瞄准镜灵敏度
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5  冲刺时瞄准镜的灵敏度
    zoomLevel.moveSpeedMultiplier = 0.5  --0.800000011920929  开镜时的移动速度
    zoomLevel.swayPitchMultiplier = 0.0009374999790452421   --0.0009374999790452421  开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.supportedSwayPitchMultiplier = 0.0009374999790452421  --0.0009374999790452421  使用脚架开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，但是部署脚架一般是固定视角，并不是随机视角。如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.swayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841  开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.supportedSwayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841  使用脚架开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，但是部署脚架一般是固定视角，并不是随机视角。如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448  开镜时瞄准镜上下晃动（俯仰）的频率，数值为一秒内晃动几次
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806  开镜时瞄准镜左右（偏航）晃动的频率，数值为一秒内晃动几次
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('Fast 2X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('6E7D36F2-7BAC-4E20-A8D7-8ABF9F7FC6D2'), Guid('E7AA2666-EE70-4B9F-A918-7686E7932DAF'), function(zoomLevel)--默认3.4x瞄准镜视野,包括手枪那个
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 20 --20 默认开镜后视野范围 
	zoomLevel.allowFieldOfViewScaling = true  --false  ADS效果
    zoomLevel.lookSpeedMultiplier = 0.36000001430511475  --0.36000001430511475  开镜时的瞄准镜灵敏度
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5  冲刺时瞄准镜的灵敏度
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5  开镜时的移动速度
    zoomLevel.swayPitchMultiplier = 0.0009374999790452421   --0.0009374999790452421  开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.supportedSwayPitchMultiplier = 0.0009374999790452421  --0.0009374999790452421  使用脚架开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，但是部署脚架一般是固定视角，并不是随机视角。如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.swayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841  开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.supportedSwayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841  使用脚架开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，但是部署脚架一般是固定视角，并不是随机视角。如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448  开镜时瞄准镜上下晃动（俯仰）的频率，数值为一秒内晃动几次
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806  开镜时瞄准镜左右（偏航）晃动的频率，数值为一秒内晃动几次
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('3.4X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('7F25A028-ED1A-4B4E-A291-8A8E8B3A9159'), Guid('BF74D9F8-E11C-4075-BDDB-AAC3F27C608D'), function(zoomLevel)--默认4x瞄准镜视野
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 17.200000762939453 --17.200000762939453 默认开镜后视野范围 
	zoomLevel.allowFieldOfViewScaling = true  --false  ADS效果
    zoomLevel.lookSpeedMultiplier = 0.3100000023841858  --0.3100000023841858  开镜时的瞄准镜灵敏度
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5  冲刺时瞄准镜的灵敏度
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5  开镜时的移动速度
    zoomLevel.swayPitchMultiplier = 0.0009374999790452421   --0.0009374999790452421  开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.supportedSwayPitchMultiplier = 0.0009374999790452421  --0.0009374999790452421  使用脚架开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，但是部署脚架一般是固定视角，并不是随机视角。如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.swayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841  开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.supportedSwayYawMultiplier = 0.0018749999580904841   --0.0018749999580904841  使用脚架开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，但是部署脚架一般是固定视角，并不是随机视角。如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448  开镜时瞄准镜上下晃动（俯仰）的频率，数值为一秒内晃动几次
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806  开镜时瞄准镜左右（偏航）晃动的频率，数值为一秒内晃动几次
    zoomLevel.recoilFovMultiplier = 1.0 --1.0
    --print('4X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1EDCC582-8B61-44DC-876C-C2DBB03FF74B'), Guid('531FFD11-A7A9-4175-9049-7ADA2333931D'), function(zoomLevel)--默认6x瞄准镜视野
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 11.600000381469727 --11.600000381469727 默认开镜后视野范围 
	zoomLevel.allowFieldOfViewScaling = false  --false  ADS效果
    zoomLevel.lookSpeedMultiplier = 0.20999999344348907  --0.20999999344348907  开镜时的瞄准镜灵敏度
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5  冲刺时瞄准镜的灵敏度
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5  开镜时的移动速度
    zoomLevel.swayPitchMultiplier = 0.0037499999161809683   --0.0037499999161809683  开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.supportedSwayPitchMultiplier = 0.007499999832361937  --0.007499999832361937  使用脚架开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，但是部署脚架一般是固定视角，并不是随机视角。如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.swayYawMultiplier = 0.007499999832361937   --0.007499999832361937  开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.supportedSwayYawMultiplier = 0.014999999664723873   --0.014999999664723873  使用脚架开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，但是部署脚架一般是固定视角，并不是随机视角。如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448  开镜时瞄准镜上下晃动（俯仰）的频率，数值为一秒内晃动几次
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806  开镜时瞄准镜左右（偏航）晃动的频率，数值为一秒内晃动几次
    zoomLevel.recoilFovMultiplier = -2.0 --  -2.0
    zoomLevel.fadeToBlackInZoomTransition = false  --false  开镜启动黑暗时间
    zoomLevel.startFadeToBlackAtTime = 0.10000000149011612  --0.10000000149011612  开镜进入黑暗视角的时长
    zoomLevel.fadeToBlackDuration = 0.20000000298023224  --0.20000000298023224  逐渐变为黑色的持续时间
    zoomLevel.startFadeFromBlackAtTime = 0.30000001192092896  --0.30000001192092896  开镜后黑色持续时间
    zoomLevel.fadeFromBlackDuration = 0.10000000149011612  --0.10000000149011612  黑色渐变至正常颜色的时间
    --print('6X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('8815B047-AEB1-4BCB-9A25-0128D948B3EE'), Guid('6A83DD0E-1CA3-47DF-A829-F0EFEFF228F1'), function(zoomLevel)--默认单人剧情6x红外线瞄准镜视野
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 11.600000381469727 --11.600000381469727 默认开镜后视野范围 
	zoomLevel.allowFieldOfViewScaling = false  --false  ADS效果
    zoomLevel.lookSpeedMultiplier = 0.20999999344348907  --0.20999999344348907  开镜时的瞄准镜灵敏度
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5  冲刺时瞄准镜的灵敏度
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5  开镜时的移动速度
    zoomLevel.swayPitchMultiplier = 0.0037499999161809683   --0.0037499999161809683  开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.supportedSwayPitchMultiplier = 0.007499999832361937  --0.007499999832361937  使用脚架开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，但是部署脚架一般是固定视角，并不是随机视角。如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.swayYawMultiplier = 0.007499999832361937   --0.007499999832361937  开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.supportedSwayYawMultiplier = 0.014999999664723873   --0.014999999664723873  使用脚架开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，但是部署脚架一般是固定视角，并不是随机视角。如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448  开镜时瞄准镜上下晃动（俯仰）的频率，数值为一秒内晃动几次
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806  开镜时瞄准镜左右（偏航）晃动的频率，数值为一秒内晃动几次
    zoomLevel.recoilFovMultiplier = -2.0 --  -2.0
    zoomLevel.fadeToBlackInZoomTransition = false  --false  开镜启动黑暗时间
    zoomLevel.startFadeToBlackAtTime = 0.10000000149011612  --0.10000000149011612  开镜进入黑暗视角的时长
    zoomLevel.fadeToBlackDuration = 0.20000000298023224  --0.20000000298023224  逐渐变为黑色的持续时间
    zoomLevel.startFadeFromBlackAtTime = 0.30000001192092896  --0.30000001192092896  开镜后黑色持续时间
    zoomLevel.fadeFromBlackDuration = 0.10000000149011612  --0.10000000149011612  黑色渐变至正常颜色的时间
    --print('SP 6X ENVG Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('D6C590F7-9AFE-4B45-BA23-5D187678C42C'), Guid('BC4F88FE-DC56-4EDB-B2C6-9ABAFD993A88'), function(zoomLevel)--默认7x瞄准镜视野
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 9.899999618530273 --9.899999618530273 默认开镜后视野范围 
	zoomLevel.allowFieldOfViewScaling = false  --false  ADS效果
    zoomLevel.lookSpeedMultiplier = 0.20999999344348907  --0.20999999344348907  开镜时的瞄准镜灵敏度
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5  冲刺时瞄准镜的灵敏度
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5  开镜时的移动速度
    zoomLevel.swayPitchMultiplier = 0.0037499999161809683   --0.0037499999161809683  开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.supportedSwayPitchMultiplier = 0.007499999832361937  --0.007499999832361937  使用脚架开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，但是部署脚架一般是固定视角，并不是随机视角。如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.swayYawMultiplier = 0.007499999832361937   --0.007499999832361937  开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.supportedSwayYawMultiplier = 0.014999999664723873   --0.014999999664723873  使用脚架开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，但是部署脚架一般是固定视角，并不是随机视角。如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448  开镜时瞄准镜上下晃动（俯仰）的频率，数值为一秒内晃动几次
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806  开镜时瞄准镜左右（偏航）晃动的频率，数值为一秒内晃动几次
    zoomLevel.recoilFovMultiplier = -2.0 --  -2.0
    zoomLevel.fadeToBlackInZoomTransition = false  --false  开镜启动黑暗时间
    zoomLevel.startFadeToBlackAtTime = 0.10000000149011612  --0.10000000149011612  开镜进入黑暗视角的时长
    zoomLevel.fadeToBlackDuration = 0.20000000298023224  --0.20000000298023224  逐渐变为黑色的持续时间
    zoomLevel.startFadeFromBlackAtTime = 0.30000001192092896  --0.30000001192092896  开镜后黑色持续时间
    zoomLevel.fadeFromBlackDuration = 0.10000000149011612  --0.10000000149011612  黑色渐变至正常颜色的时间
    --print('7X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('725A64F5-4A69-4F67-A933-89E43BB1E641'), Guid('C6913617-8845-4A35-9146-38F2A988EC03'), function(zoomLevel)--默认8x瞄准镜视野
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 8.699999809265137 --8.699999809265137 默认开镜后视野范围 
	zoomLevel.allowFieldOfViewScaling = false  --false  ADS效果
    zoomLevel.lookSpeedMultiplier = 0.1599999964237213  --0.1599999964237213  开镜时的瞄准镜灵敏度
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5  冲刺时瞄准镜的灵敏度
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5  开镜时的移动速度
    zoomLevel.swayPitchMultiplier = 0.0037499999161809683   --0.0037499999161809683  开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.supportedSwayPitchMultiplier = 0.007499999832361937  --0.007499999832361937  使用脚架开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，但是部署脚架一般是固定视角，并不是随机视角。如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.swayYawMultiplier = 0.007499999832361937   --0.007499999832361937  开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.supportedSwayYawMultiplier = 0.014999999664723873   --0.014999999664723873  使用脚架开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，但是部署脚架一般是固定视角，并不是随机视角。如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448  开镜时瞄准镜上下晃动（俯仰）的频率，数值为一秒内晃动几次
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806  开镜时瞄准镜左右（偏航）晃动的频率，数值为一秒内晃动几次
    zoomLevel.recoilFovMultiplier = -2.0 --  -2.0
    zoomLevel.fadeToBlackInZoomTransition = false  --false  开镜启动黑暗时间
    zoomLevel.startFadeToBlackAtTime = 0.10000000149011612  --0.10000000149011612  开镜进入黑暗视角的时长
    zoomLevel.fadeToBlackDuration = 0.20000000298023224  --0.20000000298023224  逐渐变为黑色的持续时间
    zoomLevel.startFadeFromBlackAtTime = 0.30000001192092896  --0.30000001192092896  开镜后黑色持续时间
    zoomLevel.fadeFromBlackDuration = 0.10000000149011612  --0.10000000149011612  黑色渐变至正常颜色的时间
    --print('8X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('F412EBAD-2551-4832-93A0-B9E1A412FB5D'), Guid('E068484D-EE7F-4199-992A-59772D8B7D4B'), function(zoomLevel)--默认10x瞄准镜视野,一般是合作模式的红外线瞄准镜
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 7.0 --7.0 默认开镜后视野范围 
	zoomLevel.allowFieldOfViewScaling = false  --false  ADS效果
    zoomLevel.lookSpeedMultiplier = 0.12999999523162842  --0.12999999523162842  开镜时的瞄准镜灵敏度
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5  冲刺时瞄准镜的灵敏度
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5  开镜时的移动速度
    zoomLevel.swayPitchMultiplier = 0.0037499999161809683   --0.0037499999161809683  开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.supportedSwayPitchMultiplier = 0.007499999832361937  --0.007499999832361937  使用脚架开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，但是部署脚架一般是固定视角，并不是随机视角。如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.swayYawMultiplier = 0.007499999832361937   --0.007499999832361937  开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.supportedSwayYawMultiplier = 0.014999999664723873   --0.014999999664723873  使用脚架开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，但是部署脚架一般是固定视角，并不是随机视角。如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448  开镜时瞄准镜上下晃动（俯仰）的频率，数值为一秒内晃动几次
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806  开镜时瞄准镜左右（偏航）晃动的频率，数值为一秒内晃动几次
    zoomLevel.recoilFovMultiplier = -2.0 --  -2.0
    zoomLevel.fadeToBlackInZoomTransition = false  --false  开镜启动黑暗时间
    zoomLevel.startFadeToBlackAtTime = 0.10000000149011612  --0.10000000149011612  开镜进入黑暗视角的时长
    zoomLevel.fadeToBlackDuration = 0.20000000298023224  --0.20000000298023224  逐渐变为黑色的持续时间
    zoomLevel.startFadeFromBlackAtTime = 0.30000001192092896  --0.30000001192092896  开镜后黑色持续时间
    zoomLevel.fadeFromBlackDuration = 0.10000000149011612  --0.10000000149011612  黑色渐变至正常颜色的时间
    --print('10X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('72AFA964-EFE0-4203-83E2-88052DD7ECBA'), Guid('B6B46C0F-92B8-4F9F-9429-595261801A14'), function(zoomLevel)--默认12x瞄准镜视野
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 5.800000190734863 --5.800000190734863 默认开镜后视野范围 
	zoomLevel.allowFieldOfViewScaling = false  --false  ADS效果
    zoomLevel.lookSpeedMultiplier = 0.10999999940395355  --0.10999999940395355  开镜时的瞄准镜灵敏度
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5  冲刺时瞄准镜的灵敏度
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5  开镜时的移动速度
    zoomLevel.swayPitchMultiplier = 0.0037499999161809683   --0.0037499999161809683  开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.supportedSwayPitchMultiplier = 0.007499999832361937  --0.007499999832361937  使用脚架开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，但是部署脚架一般是固定视角，并不是随机视角。如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.swayYawMultiplier = 0.007499999832361937   --0.007499999832361937  开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.supportedSwayYawMultiplier = 0.014999999664723873   --0.014999999664723873  使用脚架开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，但是部署脚架一般是固定视角，并不是随机视角。如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448  开镜时瞄准镜上下晃动（俯仰）的频率，数值为一秒内晃动几次
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806  开镜时瞄准镜左右（偏航）晃动的频率，数值为一秒内晃动几次
    zoomLevel.recoilFovMultiplier = -2 --  -2.0
    zoomLevel.fadeToBlackInZoomTransition = false  --false  开镜启动黑暗时间
    zoomLevel.startFadeToBlackAtTime = 0.10000000149011612  --0.10000000149011612  开镜进入黑暗视角的时长
    zoomLevel.fadeToBlackDuration = 0.20000000298023224  --0.20000000298023224  逐渐变为黑色的持续时间
    zoomLevel.startFadeFromBlackAtTime = 0.30000001192092896  --0.30000001192092896  开镜后黑色持续时间
    zoomLevel.fadeFromBlackDuration = 0.10000000149011612  --0.10000000149011612  黑色渐变至正常颜色的时间
    --print('12X Load')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('609CC1AC-4B36-4197-B1C1-2357E57CEBAF'), Guid('34C9BF53-1E0C-42D3-9EC1-696421E8A420'), function(zoomLevel)--默认20x瞄准镜视野
    zoomLevel = ZoomLevelData(zoomLevel)
    zoomLevel:MakeWritable()
    zoomLevel.fieldOfView = 3.5 --3.5 默认开镜后视野范围 
	zoomLevel.allowFieldOfViewScaling = false  --false  ADS效果
    zoomLevel.lookSpeedMultiplier = 0.07999999821186066  --0.07999999821186066  开镜时的瞄准镜灵敏度
    zoomLevel.sprintLookSpeedMultiplier = 0.5  --0.5  冲刺时瞄准镜的灵敏度
    zoomLevel.moveSpeedMultiplier = 0.5  --0.5  开镜时的移动速度
    zoomLevel.swayPitchMultiplier = 0.0037499999161809683   --0.0037499999161809683  开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.supportedSwayPitchMultiplier = 0.007499999832361937  --0.007499999832361937  使用脚架开镜时瞄准镜的俯仰（上下）系数，数字越大晃动速率越快，初始值为从上到下晃动，但是部署脚架一般是固定视角，并不是随机视角。如果zoomLevel.timePitchMultiplier为0，则数值无论正负，瞄准镜一般偏上
    zoomLevel.swayYawMultiplier = 0.007499999832361937   --0.007499999832361937  开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.supportedSwayYawMultiplier = 0.014999999664723873   --0.014999999664723873  使用脚架开镜时瞄准镜的偏航（左右）系数，数字越大晃动速率越快，初始为从右到左晃动，但是部署脚架一般是固定视角，并不是随机视角。如果timeYawMultiplier为0，则数值无论正负均为无效
    zoomLevel.timePitchMultiplier = 0.15000000596046448 --0.15000000596046448  开镜时瞄准镜上下晃动（俯仰）的频率，数值为一秒内晃动几次
    zoomLevel.timeYawMultiplier = 0.05000000074505806 --0.05000000074505806  开镜时瞄准镜左右（偏航）晃动的频率，数值为一秒内晃动几次
    zoomLevel.recoilFovMultiplier = -20 --  -2.0
    zoomLevel.fadeToBlackInZoomTransition = false  --false  开镜启动黑暗时间
    zoomLevel.startFadeToBlackAtTime = 0.10000000149011612  --0.10000000149011612  开镜进入黑暗视角的时长
    zoomLevel.fadeToBlackDuration = 0.20000000298023224  --0.20000000298023224  逐渐变为黑色的持续时间
    zoomLevel.startFadeFromBlackAtTime = 0.30000001192092896  --0.30000001192092896  开镜后黑色持续时间
    zoomLevel.fadeFromBlackDuration = 0.10000000149011612  --0.10000000149011612  黑色渐变至正常颜色的时间
    --print('20X Load')
end)

