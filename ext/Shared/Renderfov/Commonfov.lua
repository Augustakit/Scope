require('__shared/RenderfovConfig/CommonRenderfovConfig')

--M9
ResourceManager:RegisterInstanceLoadHandler(Guid('94D0FEE8-E685-11DF-805B-F4FA4757ED08'), Guid('A221CAEE-3A6F-105D-32C3-530DC747B47E'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.m9RenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.m9ZoomRenderFov
    --print('M9 RenderFov')
end)



--MP443
ResourceManager:RegisterInstanceLoadHandler(Guid('0D4646B4-F3DF-11DF-B48C-9F474D51EF2A'), Guid('5AA9ADF7-CF94-E3EE-21E2-668C7C007538'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.mp443RenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.mp443ZoomRenderFov
    --print('MP443 RenderFov')
end)



--G17/G18
ResourceManager:RegisterInstanceLoadHandler(Guid('3B3F9879-EB4B-11DF-8AA6-AE0344995412'), Guid('3EC4D98C-E7A2-3679-2C2D-9E6C16F126A9'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.gseriesRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.gseriesZoomRenderFov
    --print('G17 or G18 RenderFov')
end)



--.44
ResourceManager:RegisterInstanceLoadHandler(Guid('21E91507-2AF6-11E0-9848-9E9BC51DCED8'), Guid('07C0CCDA-7254-C27D-51EC-83B4CC1EEFFA'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.taurus44RenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.taurus44ZoomRenderFov
    --print('Taurus44 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('21E91507-2AF6-11E0-9848-9E9BC51DCED8'), Guid('4F9AE8E4-7F90-4059-A3AC-6D511F77E8E3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.taurus44PKA
    --print('Taurus44 PKA')
end)



--MP412REX
ResourceManager:RegisterInstanceLoadHandler(Guid('2EB76B74-1F16-11E0-BE14-C6BC4F4ED27B'), Guid('7934F76D-930A-8142-2235-E52B35EC6E3B'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.mp412RenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.mp412ZoomRenderFov
    --print('MP412REX RenderFov')
end)



--M93R
ResourceManager:RegisterInstanceLoadHandler(Guid('06374F08-F23B-11DF-A182-B47F2E879897'), Guid('DD3C5473-FC71-C77B-E089-949073741BC7'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.m93rRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.m93rZoomRenderFov
    --print('M93R RenderFov')
end)



--M1911/M1911全系列
ResourceManager:RegisterInstanceLoadHandler(Guid('944B9E9B-279F-11E0-BCCD-BF5F79C336AA'), Guid('52EB0805-8BAE-7479-BE50-5A38DB2EF38F'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.m1911RenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.m1911ZoomRenderFov
    --print('M1911 RenderFov')
end)



--M9knife
ResourceManager:RegisterInstanceLoadHandler(Guid('8AC0C3BC-F09C-11DF-87EE-DBDB1600AD3A'), Guid('BB3BD324-6501-7C7E-FF2D-CDF401201266'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.knifeRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.knifeZoomRenderFov
    --print('Knife RenderFov')
end)



--ACB-90
ResourceManager:RegisterInstanceLoadHandler(Guid('438EC5F6-9217-4A18-BC1E-3E324B6AABD6'), Guid('2EAE5747-BE57-4502-986C-8F3490326333'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.acb90RenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.acb90ZoomRenderFov
    --print('ACB-90 RenderFov')
end)



--Mechete
ResourceManager:RegisterInstanceLoadHandler(Guid('14C4CC08-7012-11E0-8382-CF9D6AEDA2D0'), Guid('F88F2307-EFC4-9FD8-C8F1-0C3F9CDA46B3'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.mecheteRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.mecheteZoomRenderFov
    --print('ACB-90 RenderFov')
end)




--RPG-7
ResourceManager:RegisterInstanceLoadHandler(Guid('E7F8EC1A-E8F5-11DF-AC96-84E6B0EFF32E'), Guid('BD910B9D-216B-1533-FCCC-00CDF9576608'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.rpgRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.rpgZoomRenderFov
    --print('RPG-7 RenderFov')
end)



--SMAW
ResourceManager:RegisterInstanceLoadHandler(Guid('BCE98CA0-17EC-11E0-8CD8-85483A75A7C5'), Guid('E69D1CC9-A8F1-7A66-9494-4A0F130645A8'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.smawRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.smawZoomRenderFov
    --print('SMAW RenderFov')
end)



--AT4
ResourceManager:RegisterInstanceLoadHandler(Guid('D487DEBD-EB3C-11DF-B5BF-9988EEC5C3D3'), Guid('A591A3BB-8178-304F-1592-48B3DD302DC7'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.m136RenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.m136ZoomRenderFov
    --print('AT4 RenderFov')
end)



--FGM-148
ResourceManager:RegisterInstanceLoadHandler(Guid('F4C6BD34-0D15-11E0-99FE-EA6897C76A7E'), Guid('7A88F1A6-2E8D-E3B8-803F-A9632DD8C6F0'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.fgm148RenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.fgm148ZoomRenderFov
    --print('FGM-148 RenderFov')
end)



--FIM-92A
ResourceManager:RegisterInstanceLoadHandler(Guid('28C2561D-EC16-11DF-BA9E-F3DCE5C70CB9'), Guid('8303ADEF-8240-9AD9-1654-32BA7690B8F0'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.fim92RenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.fim92ZoomRenderFov
    --print('FIM-92A RenderFov')
end)



--SA-18 IGLA 
ResourceManager:RegisterInstanceLoadHandler(Guid('B412A569-1413-11E0-A672-E0A480096E27'), Guid('A7F5C5D5-F260-7218-5A21-F733D2EBE23D'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.sa18RenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.sa18ZoomRenderFov
    --print('SA-18 IGLA  RenderFov')
end)



--XBOW
ResourceManager:RegisterInstanceLoadHandler(Guid('EEEC6E85-6A26-4C51-842E-55C5B75DE9DC'), Guid('495EF468-552E-4128-B9F1-530BB1CEC12C'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.xbowRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.xbowZoomRenderFov
    --print('Xbow RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('EEEC6E85-6A26-4C51-842E-55C5B75DE9DC'), Guid('DBCA5662-169C-4276-BF8B-C535273E730B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xbowKobra
    --print('Xbow Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('EEEC6E85-6A26-4C51-842E-55C5B75DE9DC'), Guid('C58E03BD-CF18-42DE-825E-CFF7C521B03F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xbowRifle
    --print('Xbow Rifle')
end)



--M67
ResourceManager:RegisterInstanceLoadHandler(Guid('FFF5DB09-E74B-11DF-9B5E-86394B544891'), Guid('793FC225-DC6A-974F-CBCA-E431F432756E'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.m67RenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.m67ZoomRenderFov
    --print('M67 RenderFov')
end)



--Medicbag
ResourceManager:RegisterInstanceLoadHandler(Guid('B54E9BDA-1F2E-11E0-8602-946E2AD98284'), Guid('D8DEEFB9-3C21-F092-463D-F723CCDE4687'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.medicRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.medicZoomRenderFov
    --print('Medicbag RenderFov')
end)



--Ammobag
ResourceManager:RegisterInstanceLoadHandler(Guid('0343F80F-06CC-11E0-8BDF-D7443366E28A'), Guid('3CDD7808-26E0-7C12-2E21-DC8BFDD7E9E2'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.ammoRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.ammoZoomRenderFov
    --print('Ammobag RenderFov')
end)



--M320
ResourceManager:RegisterInstanceLoadHandler(Guid('A2BD3F80-0474-11E0-8A24-DDC0A9242026'), Guid('4693B78B-0C4C-0BEE-3AD2-6C69F24F3380'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.m320RenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.m320ZoomRenderFov
    --print('M320 RenderFov')
end)



--M26
ResourceManager:RegisterInstanceLoadHandler(Guid('20274D23-1F26-11E0-ACC2-FB9EDDD58478'), Guid('483FA784-711C-2E9A-72B9-2353B28D5DA8'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.m26RenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.m26ZoomRenderFov
    --print('M26 RenderFov')
end)



--C4
ResourceManager:RegisterInstanceLoadHandler(Guid('90D317AC-2554-11E0-9BE1-9E3A551FF0D1'), Guid('1BA85487-6367-412B-C7E8-0F1C9D0F9B42'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.c4RenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.c4ZoomRenderFov
    --print('C4 RenderFov')
end)



--Claymore
ResourceManager:RegisterInstanceLoadHandler(Guid('D9EAFB20-1357-11E0-B5EB-8AEE7FB8A0AF'), Guid('06C6D329-BEF4-82E3-C0D9-EBB3D69EC2AC'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.claymoreRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.claymoreZoomRenderFov
    --print('Claymore RenderFov')
end)



--Defibrillator
ResourceManager:RegisterInstanceLoadHandler(Guid('1B81A779-135F-11E0-B4A8-98C3FD926350'), Guid('268546BF-5032-2C2E-D0D3-0874C8C4C528'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.defibRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.defibZoomRenderFov
    --print('Defibrillator RenderFov')
end)



--M15
ResourceManager:RegisterInstanceLoadHandler(Guid('B38C8E78-EBE6-11DF-8768-F4F1C9378C27'), Guid('E8548505-11F3-131C-C52C-BA6D112A04F2'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.m15RenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.m15ZoomRenderFov
    --print('M15 RenderFov')
end)



--Repairtool
ResourceManager:RegisterInstanceLoadHandler(Guid('9D6458CD-2955-11E0-864C-EDEE51946146'), Guid('1D073024-FD06-8081-872A-1D532F158AAB'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.repairRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.repairZoomRenderFov
    --print('Repairtool RenderFov')
end)



--Beacon
ResourceManager:RegisterInstanceLoadHandler(Guid('52A0C0E0-27C6-11E0-9123-987FBA709E0E'), Guid('808C0A00-651B-AE6D-E642-69180FC7101F'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.beaconRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.beaconZoomRenderFov
    --print('Beacon RenderFov')
end)



--SOFLAM_PDA
ResourceManager:RegisterInstanceLoadHandler(Guid('54715D36-2C3C-49A6-9F60-90FA372068C5'), Guid('60265767-EC60-4698-BD99-8EA7FA83D19A'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.soflamRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.soflamZoomRenderFov
    --print('SOFLAM RenderFov')
end)



--T-UGS
ResourceManager:RegisterInstanceLoadHandler(Guid('483F1918-1815-11E0-8BA5-9B1E2E41035E'), Guid('ABEB8587-90A3-49B1-13F5-C03AA949251B'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.tugsRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.tugsZoomRenderFov
    --print('T-UGS RenderFov')
end)



--M224
ResourceManager:RegisterInstanceLoadHandler(Guid('E8CBD57D-18D5-11E0-B820-CD6C272E4FCC'), Guid('40F15280-6709-5209-65CC-616AEB4091E2'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.m224RenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.m224ZoomRenderFov
    --print('M224 RenderFov')
end)



--MAV
ResourceManager:RegisterInstanceLoadHandler(Guid('1271F1BE-49D5-4599-AAD2-0D3BBAFB1EF7'), Guid('04CBE609-55AE-4B42-B61F-7C313BB0FED8'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.mavRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.mavZoomRenderFov
    --print('MAV RenderFov')
end)



--EOD_BOT
ResourceManager:RegisterInstanceLoadHandler(Guid('88BAEC68-03CE-4024-A951-20DB8CB2069C'), Guid('5E5B3DB8-FF3B-4674-BD17-29A3CDE81D06'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.eodRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.eodZoomRenderFov
    --print('Eod RenderFov')
end)
