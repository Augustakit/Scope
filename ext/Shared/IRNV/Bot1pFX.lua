
--排爆机器人以及MAV等
   --颜色
ResourceManager:RegisterInstanceLoadHandler(Guid('98984439-BB6C-481E-85DA-4CD6EB2D4745'), Guid('63DFC12F-ECEF-445B-8D35-A314391CBF4C'), function(color)
    color = ColorCorrectionComponentData(color)
    color:MakeWritable()
    color.brightness.x = 1 --1 亮度
    color.brightness.y = 1 --1 亮度
    color.brightness.z = 1 --1 亮度
    color.contrast.x = 1 --1 对比度
    color.contrast.y = 1 --1 对比度
    color.contrast.z = 1 --1 对比度
    color.saturation.x = 1 --0 饱和度
    color.saturation.y = 1 --0 饱和度
    color.saturation.z = 1 --0 饱和度
    --print('BOT Color')
end)
   --胶片颗粒
ResourceManager:RegisterInstanceLoadHandler(Guid('98984439-BB6C-481E-85DA-4CD6EB2D4745'), Guid('BF3F9F71-86D4-45AD-83E4-215C340C0361'), function(filmgrain)
    filmgrain = FilmGrainComponentData(filmgrain)
    filmgrain:MakeWritable()
    filmgrain.enable = false  --true 启用或禁止胶片颗粒
    filmgrain.textureScale.x = 0.10999999940395355  --0.10999999940395355
    filmgrain.textureScale.y = 0.10000000149011612 --0.10000000149011612
    filmgrain.colorScale.x = 0.02500000037252903 --0.02500000037252903
    filmgrain.colorScale.y = 0.02500000037252903 --0.02500000037252903
    filmgrain.colorScale.z = 0.02500000037252903 --0.02500000037252903
    --print('BOT FilmGrain')
end)
   --暗角
ResourceManager:RegisterInstanceLoadHandler(Guid('98984439-BB6C-481E-85DA-4CD6EB2D4745'), Guid('C3CDE442-4FBF-4CC1-96FC-380F6CE89C31'), function(vignette)
    vignette = VignetteComponentData(vignette)
    vignette:MakeWritable()
    vignette.enable = false --true 启用或禁止暗角
    vignette.scale.x = 2.0 --2.0
    vignette.scale.y = 1.25 --1.25
    vignette.color.x = 0.05900000035762787 --0.05900000035762787
    vignette.color.y = 0.09399999678134918 --0.09399999678134918
    vignette.color.z = 0.06499999761581421 --0.06499999761581421
    vignette.opacity = 0.800000011920929 --0.800000011920929
   --print('BOT vignette')
end)


--TV弹发射时候的画面
   --颜色
   ResourceManager:RegisterInstanceLoadHandler(Guid('74EE7181-68F0-45BC-B6AC-2A5E2B42B719'), Guid('7EA5B4C6-8C54-4BBD-A5A7-33D3A2F8BD1B'), function(color)
    color = ColorCorrectionComponentData(color)
    color:MakeWritable()
    color.brightness.x = 1 --1 亮度
    color.brightness.y = 1 --1 亮度
    color.brightness.z = 1 --1 亮度
    color.contrast.x = 1 --1 对比度
    color.contrast.y = 1 --1 对比度
    color.contrast.z = 1 --1 对比度
    color.saturation.x = 1 --0.1770000010728836 饱和度
    color.saturation.y = 1 --0.1770000010728836 饱和度
    color.saturation.z = 1 --0.1770000010728836 饱和度
    --print('TV Color')
end)
   --胶片颗粒
ResourceManager:RegisterInstanceLoadHandler(Guid('74EE7181-68F0-45BC-B6AC-2A5E2B42B719'), Guid('A248BCF4-64FE-4065-845F-EDF8723F37A1'), function(filmgrain)
    filmgrain = FilmGrainComponentData(filmgrain)
    filmgrain:MakeWritable()
    filmgrain.enable = false  --true --启用或禁止胶片颗粒
    filmgrain.textureScale.x = 0.10000000149011612  --0.10000000149011612
    filmgrain.textureScale.y = 0.10000000149011612 --0.10000000149011612
    filmgrain.colorScale.x = 0.05000000074505806 --0.05000000074505806
    filmgrain.colorScale.y = 0.05000000074505806 --0.05000000074505806
    filmgrain.colorScale.z = 0.05000000074505806 --0.05000000074505806
    --print('TV FilmGrain')
end)
   --暗角
ResourceManager:RegisterInstanceLoadHandler(Guid('74EE7181-68F0-45BC-B6AC-2A5E2B42B719'), Guid('47E1C028-1A01-43A6-BF73-C4025D9C7780'), function(vignette)
    vignette = VignetteComponentData(vignette)
    vignette:MakeWritable()
    vignette.enable = false --true  启用或禁止暗角
    vignette.scale.x = 0 --0 
    vignette.scale.y = 2.0999999046325684 --2.0999999046325684
    vignette.color.x = 0.05900000035762787 --0.05900000035762787
    vignette.color.y = 0.09399999678134918 --0.09399999678134918
    vignette.color.z = 0.06499999761581421 --0.06499999761581421
    vignette.opacity = 0.5090000033378601 --0.5090000033378601
   --print('TV vignette')
end)


--TV弹爆炸后的画面
   --颜色
ResourceManager:RegisterInstanceLoadHandler(Guid('90D6FEBB-7416-4DC8-B0B3-B720E1F3DF1B'), Guid('9F460A6E-63F0-4696-B35D-2928ADF428B5'), function(color)
    color = ColorCorrectionComponentData(color)
    color:MakeWritable()
    color.brightness.x = 0.009999999776482582 --0.009999999776482582 亮度
    color.brightness.y = 0.009999999776482582 --0.009999999776482582 亮度
    color.brightness.z = 0.009999999776482582 --0.009999999776482582 亮度
    color.contrast.x = 1.5 --1.5 对比度
    color.contrast.y = 1.5 --1.5 对比度
    color.contrast.z = 1.5 --1.5 对比度
    color.saturation.x = 1 --1 饱和度
    color.saturation.y = 1 --1 饱和度
    color.saturation.z = 1 --1 饱和度
    --print('TV Boom Color')
end)
   --胶片颗粒
ResourceManager:RegisterInstanceLoadHandler(Guid('90D6FEBB-7416-4DC8-B0B3-B720E1F3DF1B'), Guid('FB76B45F-3242-49A4-A891-912DA7399753'), function(filmgrain)
    filmgrain = FilmGrainComponentData(filmgrain)
    filmgrain:MakeWritable()
    filmgrain.enable = false  --true --启用或禁止胶片颗粒
    filmgrain.textureScale.x = 0.30000001192092896  --0.30000001192092896
    filmgrain.textureScale.y = 0.30000001192092896 --0.30000001192092896
    filmgrain.colorScale.x = 3.0 --3.0
    filmgrain.colorScale.y = 3.0 --3.0
    filmgrain.colorScale.z = 3.0 --3.0
    --print('TV Boom FilmGrain')
end)
   --暗角
ResourceManager:RegisterInstanceLoadHandler(Guid('90D6FEBB-7416-4DC8-B0B3-B720E1F3DF1B'), Guid('0A8E6BDC-1603-4CD6-8E89-31AA53E30B91'), function(vignette)
    vignette = VignetteComponentData(vignette)
    vignette:MakeWritable()
    vignette.enable = false --true  启用或禁止暗角
    vignette.scale.x = 3.0 --3.0  
    vignette.scale.y = 3.0 --3.0  
    vignette.color.x = 0 --0
    vignette.color.y = 0 --0
    vignette.color.z = 0 --0
    vignette.opacity = 0.7459999918937683 --0.7459999918937683
   --print('TV Boom vignette')
end)
--9A8C0D0D-3C40-4E1C-905A-B560110E90DE


--镭射指示器放大无ui
ResourceManager:RegisterInstanceLoadHandler(Guid('7432AA7D-1802-11E0-8BA5-9B1E2E41035E'), Guid('FABF5806-3CA9-4197-805C-E1F93957CD09'), function(acv)
   acv = AlternateCameraViewData(acv)
   acv:MakeWritable()
   acv.mesh = nil
    --print('sofalm Boomacv')
end)
