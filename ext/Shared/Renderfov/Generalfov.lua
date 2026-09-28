require('__shared/RenderfovConfig/GeneralRenderfovConfig')

local rem870_PGuids = Guid('50F905EA-E32B-11DF-931B-DC6D3E613E0F')
--870MCS
ResourceManager:RegisterInstanceLoadHandler(rem870_PGuids, Guid('0B596D6A-6CD1-FEEC-18FA-CACD5AE43F03'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  g_Settings.rem870RenderFov
    weaponRenderZoom.zoomRenderFov =  g_Settings.rem870ZoomRenderFov
    --print('870MCS RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(rem870_PGuids, Guid('4981CC6E-5C2E-410B-9457-8B5958D6D81D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.rem870Reflex
    --print('870MCS Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(rem870_PGuids, Guid('C64AA857-C4EC-47CB-A4B3-C7F3C86691F4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.rem870Kobra
    --print('870MCS Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(rem870_PGuids, Guid('812B0713-3FD0-4A69-B120-3700B0076455'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.rem870ENVG
    --print('870MCS ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(rem870_PGuids, Guid('346E403E-2A4A-45CE-B406-FDAF30792274'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.rem870Eotech
    --print('870MCS EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(rem870_PGuids, Guid('89975CAB-B873-436E-8C00-3127FADC778E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.rem870PKAS
    --print('870MCS PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(rem870_PGuids, Guid('50AF276D-CA8F-4ED9-B881-F20E089B89FD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.rem870PKA
    --print('870MCS PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(rem870_PGuids, Guid('617105B2-A4AC-4AD7-8C5A-BE5D02F8B3BC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.rem870M145
    --print('870MCS M145')
end)

ResourceManager:RegisterInstanceLoadHandler(rem870_PGuids, Guid('91C63864-B1CC-443D-914C-846C68798BE1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.rem870PSO
    --print('870MCS PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(rem870_PGuids, Guid('07685625-C152-49DA-A422-5E6D30A5F095'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.rem870ACOG
    --print('870MCS ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(rem870_PGuids, Guid('6F57760A-6175-452F-875D-37334C442435'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.rem870Rifle
    --print('870MCS Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(rem870_PGuids, Guid('F3EC3F9F-487A-4A6A-98BA-2DDF7F7C9FC8'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.rem870PKS07
    --print('870MCS PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(rem870_PGuids, Guid('4A8BDBF5-A730-493B-8D7D-F4E6CA67C534'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.rem870Ballistic
    --print('870MCS Ballistic')
end)





local m1014_PGuids = Guid('460F1126-2578-11E0-96DC-FF63A5537869')
--M1014
ResourceManager:RegisterInstanceLoadHandler(m1014_PGuids, Guid('D5180349-466A-EC62-34EC-B049DAD4A54D'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  g_Settings.m1014RenderFov
    weaponRenderZoom.zoomRenderFov =  g_Settings.m1014ZoomRenderFov
    --print('M1014 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(m1014_PGuids, Guid('6B230B31-F8E6-42FD-9894-826C3CAE7366'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m1014Reflex
    --print('M1014 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(m1014_PGuids, Guid('558C3F8C-E676-4038-9190-A90F199D704A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m1014Kobra
    --print('M1014 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(m1014_PGuids, Guid('4D725A47-24B3-4A62-B00B-48E84054957B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m1014ENVG
    --print('M1014 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(m1014_PGuids, Guid('EC49BFCE-0521-4B14-B673-86396B8ABAAC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m1014Eotech
    --print('M1014 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(m1014_PGuids, Guid('DEBD822C-06BD-4200-955D-2448053E66DA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m1014PKAS
    --print('M1014 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(m1014_PGuids, Guid('9195CE2F-E5BE-49A6-A252-24F7005E4B16'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m1014PKA
    --print('M1014 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(m1014_PGuids, Guid('CDC70D26-E441-4E56-9304-39E3FEA06651'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m1014M145
    --print('M1014 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(m1014_PGuids, Guid('FF283852-DCEA-40A3-991B-4DC335DAA975'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m1014PSO
    --print('M1014 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(m1014_PGuids, Guid('FA922612-6FC1-4396-9D97-83A580FD5607'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m1014ACOG
    --print('M1014 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(m1014_PGuids, Guid('3E806F85-5A72-45AF-8A6C-8F20686257F9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m1014Rifle
    --print('M1014 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(m1014_PGuids, Guid('2137BB39-A48C-4505-A459-2046B47BFED8'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m1014PKS07
    --print('M1014 PKS-07')
end)





local saiga_PGuids = Guid('A119D627-257B-11E0-96DC-FF63A5537869')
--SAIGA
ResourceManager:RegisterInstanceLoadHandler(saiga_PGuids, Guid('694508BD-D2F9-9ED3-4FEF-B9376029859F'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  g_Settings.saigaRenderFov
    weaponRenderZoom.zoomRenderFov =  g_Settings.saigaZoomRenderFov
    --print('SAIGA RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(saiga_PGuids, Guid('1D0273D6-C2E1-45A0-A5CF-1CB9C27B8CC1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.saigaReflex
    --print('SAIGA Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(saiga_PGuids, Guid('D27B6C6E-1271-45EB-8379-2AB6E5D1C0E3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.saigaKobra
    --print('SAIGA Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(saiga_PGuids, Guid('92D1D6CF-A823-4292-81CB-DEA0EBBB1D31'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.saigaENVG
    --print('SAIGA ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(saiga_PGuids, Guid('9192F7FB-7B1C-4065-8480-21048AB13437'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.saigaEotech
    --print('SAIGA EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(saiga_PGuids, Guid('C7276E57-121C-4FD1-82A8-DA4941FF5215'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.saigaPKAS
    --print('SAIGA PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(saiga_PGuids, Guid('23D39F21-AF58-4A2A-9636-0E8A5AB01503'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.saigaPKA
    --print('SAIGA PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(saiga_PGuids, Guid('06EDB4D3-A9D1-4B95-9F80-1AFFCA5A4AFE'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.saigaM145
    --print('SAIGA M145')
end)

ResourceManager:RegisterInstanceLoadHandler(saiga_PGuids, Guid('816F2C6F-BE85-40E7-8A79-DAD1C7C05844'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.saigaPSO
    --print('SAIGA PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(saiga_PGuids, Guid('592749E4-AEEF-4820-B87C-34D9D024E628'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.saigaACOG
    --print('SAIGA ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(saiga_PGuids, Guid('42FA41EF-959E-4AC7-988A-151F468C55A7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.saigaRifle
    --print('SAIGA Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(saiga_PGuids, Guid('5E5F8B5C-0A1E-4D11-BED2-858C9C767B89'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.saigaPKS07
    --print('SAIGA PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(saiga_PGuids, Guid('F1DFCBBC-201D-41DB-88AF-6F8B714B4CF9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.saigaBallistic
    --print('SAIGA Ballistic')
end)






local dao12_PGuids = Guid('CE832020-046A-11E0-A970-FF10D557871E')
--DAO-12
ResourceManager:RegisterInstanceLoadHandler(dao12_PGuids, Guid('15D048A7-B6D5-484A-2544-6D100FCD787C'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  g_Settings.dao12RenderFov
    weaponRenderZoom.zoomRenderFov =  g_Settings.dao12ZoomRenderFov
    --print('DAO-12 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(dao12_PGuids, Guid('F4D011E9-405A-4491-9448-55F734C031B7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.dao12Reflex
    --print('DAO-12 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(dao12_PGuids, Guid('42EE4664-1B02-407D-90BD-18AA7B8640A6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.dao12ENVG
    --print('DAO-12 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(dao12_PGuids, Guid('2B6565D9-4F28-4C75-A56D-E1065EA73BF2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.dao12Eotech
    --print('DAO-12 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(dao12_PGuids, Guid('EAFC7A20-40BA-49F0-BEC1-AD0B911244CB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.dao12PKAS
    --print('DAO-12 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(dao12_PGuids, Guid('E426D11E-4681-4103-99DC-AB5D97E6556F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.dao12PKA
    --print('DAO-12 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(dao12_PGuids, Guid('DAC1A5EB-D992-474F-A99B-DCCF4072124F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.dao12M145
    --print('DAO-12 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(dao12_PGuids, Guid('34F9E807-98C7-4817-B8A4-8FF35C3A9C4F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.dao12PSO
    --print('DAO-12 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(dao12_PGuids, Guid('1506AA9A-C009-4452-B331-E7CAF79C1C7B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.dao12ACOG
    --print('DAO-12 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(dao12_PGuids, Guid('98D35DE5-5B4D-4135-A464-A53C63A3896E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.dao12Rifle
    --print('DAO-12 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(dao12_PGuids, Guid('E2A57DFF-E79F-496A-86E6-799C178D8410'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.dao12PKS07
    --print('DAO-12 PKS-07')
end)





local usas12_PGuids = Guid('F4F57492-38F5-11E0-845E-D6BEC180D605')
--USAS-12
ResourceManager:RegisterInstanceLoadHandler(usas12_PGuids, Guid('22F54109-AEF1-30F9-8E4D-BBFB4C5AFE1F'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  g_Settings.usasRenderFov
    weaponRenderZoom.zoomRenderFov =  g_Settings.usasZoomRenderFov
    --print('USAS-12 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(usas12_PGuids, Guid('F54BEA53-B3AD-4665-82AE-D86CCF8F462F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.usasReflex
    --print('USAS-12 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(usas12_PGuids, Guid('AB329E0D-4D65-4464-A7F5-AD134A7B72B6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.usasKobra
    --print('USAS-12 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(usas12_PGuids, Guid('8B537047-69BF-4898-8B1B-ABB065E48357'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.usasENVG
    --print('USAS-12 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(usas12_PGuids, Guid('A1FBC002-126E-42C9-BA26-E1994936AB30'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.usasEotech
    --print('USAS-12 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(usas12_PGuids, Guid('27F5ED0D-1D20-49D6-BB05-FEA80D49002F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.usasPKAS
    --print('USAS-12 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(usas12_PGuids, Guid('FDBFC9FF-EE15-4E78-A7C1-BD01D0F2F9B0'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.usasPKA
    --print('USAS-12 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(usas12_PGuids, Guid('0FA75EE2-A1E6-4614-BEB2-699AB7DAB141'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.usasM145
    --print('USAS-12 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(usas12_PGuids, Guid('9FD6F468-4042-421D-B4F1-BB70F974B5E3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.usasPSO
    --print('USAS-12 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(usas12_PGuids, Guid('9CA932E4-504F-4504-AA9E-B9A87B817671'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.usasACOG
    --print('USAS-12 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(usas12_PGuids, Guid('9536440C-01FB-4929-8B2C-96585F7D3A34'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.usasRifle
    --print('USAS-12 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(usas12_PGuids, Guid('FF3F4857-FDBA-4194-ACA6-8A01B7B983F6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.usasPKS07
    --print('USAS-12 PKS-07')
end)





local mk3a1_PGuids = Guid('014C428F-9A3C-4EA0-9F0C-873058E72438')
--MK3A1
ResourceManager:RegisterInstanceLoadHandler(mk3a1_PGuids, Guid('61C73B12-8D1D-4AAE-B382-5E2D7B7DE1B3'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  g_Settings.mk3a1RenderFov
    weaponRenderZoom.zoomRenderFov =  g_Settings.mk3a1ZoomRenderFov
    --print('MK3A1 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(mk3a1_PGuids, Guid('48F1BB3E-BEF8-4251-A82E-F983104246A8'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mk3a1Reflex
    --print('MK3A1 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(mk3a1_PGuids, Guid('4EEA5FC1-9FC6-4363-B6A0-8DD51782A149'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mk3a1Kobra
    --print('MK3A1 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(mk3a1_PGuids, Guid('34777C60-C100-4430-8D3C-CB10D8BCCFCB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mk3a1ENVG
    --print('MK3A1 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(mk3a1_PGuids, Guid('94601B4E-9C25-438B-873B-C5BD0021EC3B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mk3a1Eotech
    --print('MK3A1 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(mk3a1_PGuids, Guid('FE1B4E85-2FAE-4EBF-AABD-01885D4A1265'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mk3a1PKAS
    --print('MK3A1 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(mk3a1_PGuids, Guid('404B8A25-BEF6-4AEC-8E38-06C4A9651269'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mk3a1PKA
    --print('MK3A1 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(mk3a1_PGuids, Guid('83B49ED4-2BD7-4975-BA33-1F45A9785643'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mk3a1M145
    --print('MK3A1 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(mk3a1_PGuids, Guid('7199F5F3-6D67-4760-B692-234A364D89C4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mk3a1PSO
    --print('MK3A1 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(mk3a1_PGuids, Guid('8419444F-21D8-4E8A-A59B-B531643A777B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mk3a1ACOG
    --print('MK3A1 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(mk3a1_PGuids, Guid('BD6046B7-96B0-437D-8450-9A9D4B0D586D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mk3a1Rifle
    --print('MK3A1 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(mk3a1_PGuids, Guid('399C3FA1-E114-44B9-947D-56F74886ABD1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mk3a1PKS07
    --print('MK3A1 PKS-07')
end)





local spas12_PGuids = Guid('37F8F2ED-CAC0-42E8-B77B-2300A99C3B0F')
--SPAS-12
ResourceManager:RegisterInstanceLoadHandler(spas12_PGuids, Guid('E201D2F9-0536-45D7-8F84-08D510F7D4C9'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  g_Settings.spasRenderFov
    weaponRenderZoom.zoomRenderFov =  g_Settings.spasZoomRenderFov
    --print('SPAS-12 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(spas12_PGuids, Guid('774B4397-CDE4-47DE-A943-B7A009438435'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.spasReflex
    --print('SPAS-12 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(spas12_PGuids, Guid('A340F03B-75B9-4E17-9968-C65460323DB3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.spasKobra
    --print('SPAS-12 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(spas12_PGuids, Guid('C3A2D88A-B1CE-488F-B5C0-0E90F3CE67B7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.spasENVG
    --print('SPAS-12 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(spas12_PGuids, Guid('36613AEE-1293-4A1A-A1A5-EFD889D8EF62'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.spasEotech
    --print('SPAS-12 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(spas12_PGuids, Guid('B4809D00-DB95-44FD-85F6-5D1241216698'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.spasPKAS
    --print('SPAS-12 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(spas12_PGuids, Guid('7F7C1545-85E4-4AD3-9D3A-04D0C9A75085'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.spasPKA
    --print('SPAS-12 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(spas12_PGuids, Guid('2047A2AF-34A9-4FE9-9E28-A65E6695C76F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.spasM145
    --print('SPAS-12 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(spas12_PGuids, Guid('ED22C13E-09A4-45B2-A532-1CAF00FC258F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.spasPSO
    --print('SPAS-12 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(spas12_PGuids, Guid('31584B6E-2752-43A3-AF5A-19284F6B5FFF'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.spasACOG
    --print('SPAS-12 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(spas12_PGuids, Guid('778D3A48-F401-4CFD-AB0D-DC5C5530C594'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.spasRifle
    --print('SPAS-12 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(spas12_PGuids, Guid('D95F2BA6-EA90-4FDC-B8CC-7F56EBE9492C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.spasPKS07
    --print('SPAS-12 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(spas12_PGuids, Guid('DC75C14F-706B-46CB-886A-CC2929173BA6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.spasBallistic
    --print('SPAS-12 Ballistic')
end)





local asval_PGuids = Guid('330F6EB9-1740-11E0-B7E4-E4E608316920')
--ASVaL
ResourceManager:RegisterInstanceLoadHandler(asval_PGuids, Guid('55E6A1EA-C65F-3B58-8254-649960205F12'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  g_Settings.asvalRenderFov
    weaponRenderZoom.zoomRenderFov =  g_Settings.asvalZoomRenderFov
    --print('ASVal RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(asval_PGuids, Guid('C84F0E92-AB01-4F3E-B11A-FD1CAD3859DC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.asvalReflex
    --print('ASVal Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(asval_PGuids, Guid('BA4A8C5E-939C-4364-A3CE-5A0FC2C74CED'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.asvalKobra
    --print('ASVal Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(asval_PGuids, Guid('343D680F-2EAA-46F0-A1CE-182D1F846C89'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.asvalENVG
    --print('ASVal ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(asval_PGuids, Guid('277CC24B-6BA7-486A-A300-513DDF3FEC6E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.asvalEotech
    --print('ASVal EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(asval_PGuids, Guid('C0CE2ADE-9D55-482E-BB65-4F38C3F69E0D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.asvalPKAS
    --print('ASVal PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(asval_PGuids, Guid('B3A6D963-FD50-469C-89E7-63A952FFFF28'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.asvalPKA
    --print('ASVal PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(asval_PGuids, Guid('0B3EFA20-1E91-468E-8F58-A5E8C0599DFC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.asvalM145
    --print('ASVal M145')
end)

ResourceManager:RegisterInstanceLoadHandler(asval_PGuids, Guid('36A1CAF4-6F0F-4865-94F3-B6BE3A707D9F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.asvalPSO
    --print('ASVal PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(asval_PGuids, Guid('E4E841AB-4046-4BF9-89CB-950FBA31B3E0'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.asvalACOG
    --print('ASVal ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(asval_PGuids, Guid('19D40233-6524-428F-B9D5-A0DCBCE97216'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.asvalRifle
    --print('ASVal Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(asval_PGuids, Guid('FB00DAAE-BBDB-485E-9D91-7801C6B32756'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.asvalPKS07
    --print('ASVal PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(asval_PGuids, Guid('E3F230BA-E90D-4FA0-B3C4-00FA10170613'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.asvalBallistic
    --print('ASVal Ballistic')
end)






local pp2000_PGuids = Guid('144442BD-173B-11E0-B7E4-E4E608316920')
--PP-2000
ResourceManager:RegisterInstanceLoadHandler(pp2000_PGuids, Guid('9CEFDF0C-953E-0381-B45F-49AEB187742B'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  g_Settings.pp2000RenderFov
    weaponRenderZoom.zoomRenderFov =  g_Settings.pp2000ZoomRenderFov
    --print('PP-2000 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(pp2000_PGuids, Guid('0CD6B378-8CAF-4A1A-A00D-D85570408CDD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pp2000Reflex
    --print('PP-2000 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(pp2000_PGuids, Guid('2B8A64EC-B993-465F-A022-76F65CA37584'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pp2000Kobra
    --print('PP-2000 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(pp2000_PGuids, Guid('B9604506-12F4-4E67-8460-C84D8F73E114'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pp2000ENVG
    --print('PP-2000 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(pp2000_PGuids, Guid('0EB39043-75E9-47DC-9433-4A965DB4A402'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pp2000Eotech
    --print('PP-2000 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(pp2000_PGuids, Guid('A83B3EFB-3131-470D-A25B-1F73D68A8F19'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pp2000PKAS
    --print('PP-2000 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(pp2000_PGuids, Guid('A71A7B48-8CDB-4F9E-98CD-9D571EC4345B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pp2000PKA
    --print('PP-2000 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(pp2000_PGuids, Guid('FD7987FD-E423-4B08-84A7-44DC7CB26E63'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pp2000M145
    --print('PP-2000 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(pp2000_PGuids, Guid('36A66A9B-D61B-4578-8CBD-1EB744A22BD0'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pp2000ACOG
    --print('PP-2000 ACOG')
end)






local ump45_PGuids = Guid('13D445F7-EBE3-11DF-91EC-895E59A6915B')
--UMP-45
ResourceManager:RegisterInstanceLoadHandler(ump45_PGuids, Guid('88F1C300-D6E4-4AB0-CB95-F424ADBA8271'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  g_Settings.ump45RenderFov
    weaponRenderZoom.zoomRenderFov =  g_Settings.ump45ZoomRenderFov
    --print('UMP-45 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(ump45_PGuids, Guid('3019529D-C657-4115-8F2E-6EB4C0231034'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.ump45Reflex
    --print('UMP-45 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(ump45_PGuids, Guid('FE8A7CEB-0F0E-4BA4-BBC4-1ABA7608E641'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.ump45Kobra
    --print('UMP-45 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(ump45_PGuids, Guid('28F566F4-B9EF-4A2B-91F2-BB7472785CC4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.ump45ENVG
    --print('UMP-45 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(ump45_PGuids, Guid('F30BBD1A-0D1A-41C3-A046-2F3EF24CD90A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.ump45Eotech
    --print('UMP-45 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(ump45_PGuids, Guid('E342BA96-D686-48AB-91F5-DA25B28D3EA1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.ump45PKAS
    --print('UMP-45 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(ump45_PGuids, Guid('6880BA1E-15B2-4EAF-BAD5-95EE970992AE'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.ump45PKA
    --print('UMP-45 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(ump45_PGuids, Guid('BD60B328-A9BD-405C-8CAE-B55619385C83'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.ump45M145
    --print('UMP-45 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(ump45_PGuids, Guid('88576CBC-6A06-4030-9514-1A9E63D14EE7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.ump45ACOG
    --print('UMP-45 ACOG')
end)





local pdr_PGuids = Guid('C47BFE6F-1F1E-11E0-AE3C-E30EAF72F572')
--PDW-R
ResourceManager:RegisterInstanceLoadHandler(pdr_PGuids, Guid('546FD198-0206-2456-10E1-F1028F48C55B'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  g_Settings.pdrRenderFov
    weaponRenderZoom.zoomRenderFov =  g_Settings.pdrZoomRenderFov
    --print('PDW-R RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(pdr_PGuids, Guid('6A1BD88F-90CF-4DC8-8D38-13F721BD034C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pdrReflex
    --print('PDW-R Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(pdr_PGuids, Guid('D4A61DF9-4B99-4F5D-9CBF-5F1099014FDF'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pdrKobra
    --print('PDW-R Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(pdr_PGuids, Guid('62AB1718-E87C-4CB7-9766-B20C88E26D39'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pdrENVG
    --print('PDW-R ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(pdr_PGuids, Guid('EDDAB534-999C-4D3B-95FA-A926617F8321'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pdrEotech
    --print('PDW-R EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(pdr_PGuids, Guid('A2361A3E-55D9-4A1A-AB4E-75396834B4D3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pdrPKAS
    --print('PDW-R PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(pdr_PGuids, Guid('BF9D5D0A-0804-4363-A2CA-8E8EDFE89BFD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pdrPKA
    --print('PDW-R PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(pdr_PGuids, Guid('6DA4E916-ABA3-4685-A6BA-4B0EA339C4A4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pdrM145
    --print('PDW-R M145')
end)

ResourceManager:RegisterInstanceLoadHandler(pdr_PGuids, Guid('6304778E-287D-417B-8CCC-70A473EAF1AD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pdrACOG
    --print('PDW-R ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(pdr_PGuids, Guid('394D7FF3-FC0A-4763-B3A0-EE9544387F61'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pdrRifle
    --print('PDW-R Rifle')
end)



local p90_PGuids = Guid('C75DBA86-F326-11DF-ABE6-A89858BEBE43')
--P90
ResourceManager:RegisterInstanceLoadHandler(p90_PGuids, Guid('040059E8-8A68-3D36-BFDE-6F4CD3A4ACB3'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  g_Settings.p90RenderFov
    weaponRenderZoom.zoomRenderFov =  g_Settings.p90ZoomRenderFov
    --print('P90 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(p90_PGuids, Guid('DE015DF1-5DCC-4E29-9948-18F3A892B0A5'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.p90Reflex
    --print('P90 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(p90_PGuids, Guid('B8D01165-A6FC-45F1-95D8-5E2D03EC1A09'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.p90Kobra
    --print('P90 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(p90_PGuids, Guid('507A0B25-4C8A-4C75-8977-794BE81698D9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.p90ENVG
    --print('P90 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(p90_PGuids, Guid('CACB0C91-930C-494B-9D75-B3C08885D380'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.p90Eotech
    --print('P90 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(p90_PGuids, Guid('70E8D297-1099-4281-A79C-4A8E937728CF'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.p90PKAS
    --print('P90 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(p90_PGuids, Guid('DB2F0D35-9A55-4989-AC3F-AFD622E0D55B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.p90PKA
    --print('P90 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(p90_PGuids, Guid('1C13C011-A85B-45B6-AA2E-6BAD8068E724'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.p90M145
    --print('P90 M145')
end)


ResourceManager:RegisterInstanceLoadHandler(p90_PGuids, Guid('D898B5A9-A274-45EE-A9AC-43B97DFF0B5C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.p90ACOG
    --print('P90 ACOG')
end)




local mp7_PGuids = Guid('122FC693-ECA7-11DF-BD6E-C1427E3D6CAB')
--MP7
ResourceManager:RegisterInstanceLoadHandler(mp7_PGuids, Guid('3872FD37-7E7A-17B1-0F9B-BDEFAD8119F9'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  g_Settings.mp7RenderFov
    weaponRenderZoom.zoomRenderFov =  g_Settings.mp7ZoomRenderFov
    --print('MP7 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(mp7_PGuids, Guid('32DE5DB6-48C4-46CB-9566-E8F03534EEBE'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mp7Reflex
    --print('MP7 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(mp7_PGuids, Guid('FC9E187E-C383-47A1-8E1E-2CF6E9D6AA48'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mp7Kobra
    --print('MP7 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(mp7_PGuids, Guid('CE6FFA01-3632-44C5-A34F-B101A7AE46EE'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mp7ENVG
    --print('MP7 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(mp7_PGuids, Guid('C672ED21-155F-4C8D-9E4C-9B8210EE7401'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mp7Eotech
    --print('MP7 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(mp7_PGuids, Guid('A0FA78D0-2B9B-4C5C-82B3-A2C07A93A5F7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mp7PKAS
    --print('MP7 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(mp7_PGuids, Guid('7F9B6B39-9558-4F67-8419-3BDB3AABD5A3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mp7PKA
    --print('MP7 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(mp7_PGuids, Guid('1AC56B1E-1E1B-4369-A670-35E647418EC7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mp7M145
    --print('MP7 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(mp7_PGuids, Guid('34D751E2-A627-4574-A548-06164167F3DB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.mp7ACOG
    --print('MP7 ACOG')
end)






local pp19_PGuids = Guid('983A236F-22EB-11E0-87CC-DAB15BD78BE2')
--PP-19
ResourceManager:RegisterInstanceLoadHandler(pp19_PGuids, Guid('9C9C079B-2D81-C1BE-EAE1-026A6289536B'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  g_Settings.pp19RenderFov
    weaponRenderZoom.zoomRenderFov =  g_Settings.pp19ZoomRenderFov
    --print('PP-19 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(pp19_PGuids, Guid('CFD03F3F-CFE6-4BD3-949D-E0480C9D0D0E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pp19Reflex
    --print('PP-19 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(pp19_PGuids, Guid('FAD4B168-520B-4F67-8B21-D0751A9522E1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pp19Kobra
    --print('PP-19 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(pp19_PGuids, Guid('55F9B109-E207-4DF5-A90B-46D318CC9DFF'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pp19ENVG
    --print('PP-19 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(pp19_PGuids, Guid('FB4EEE19-248D-4942-8CBC-F1770A309296'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pp19Eotech
    --print('PP-19 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(pp19_PGuids, Guid('715CF059-7119-476F-AE58-6DB0673472CA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pp19PKAS
    --print('PP-19 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(pp19_PGuids, Guid('F0A6F657-6735-4BAB-9EB9-A922ACD30D77'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pp19PKA
    --print('PP-19 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(pp19_PGuids, Guid('7FBE2525-B6DE-4717-A6D1-2DA65528D675'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pp19M145
    --print('PP-19 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(pp19_PGuids, Guid('E9F5019E-0772-44B0-BAB9-5DCEC2B60393'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.pp19ACOG
    --print('PP-19 ACOG')
end)





local m5k_PGuids = Guid('B0F05591-F4AE-4BFF-9570-8DB045590A72')
--M5K
ResourceManager:RegisterInstanceLoadHandler(m5k_PGuids, Guid('19D62F32-CBA9-4C40-9F85-9737E635BD07'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  g_Settings.m5kRenderFov
    weaponRenderZoom.zoomRenderFov =  g_Settings.m5kZoomRenderFov
    --print('M5K RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(m5k_PGuids, Guid('E4DDF87D-730D-4CED-8B99-C1ACC186E247'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m5kReflex
    --print('M5K Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(m5k_PGuids, Guid('5E85B473-EDCC-4190-8DDE-D7EF4D7EEE42'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m5kKobra
    --print('M5K Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(m5k_PGuids, Guid('7CEB7E0B-8E21-4D4F-9655-C6D3D41466CC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m5kENVG
    --print('M5K ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(m5k_PGuids, Guid('10C3C320-B48C-4282-89A2-9A7AAA07FF61'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m5kEotech
    --print('M5K EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(m5k_PGuids, Guid('89F32AD0-ABA1-4F92-BB51-08A18CFD6DA1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m5kPKAS
    --print('M5K PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(m5k_PGuids, Guid('B82B34CB-69F2-47FD-BD14-66BECD909A0B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m5kPKA
    --print('M5K PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(m5k_PGuids, Guid('B3E192A5-278B-47B8-8C89-D7D457431593'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m5kM145
    --print('M5K M145')
end)

ResourceManager:RegisterInstanceLoadHandler(m5k_PGuids, Guid('CF04A043-4271-422D-8732-C668EBB3B275'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = g_Settings.m5kACOG
    --print('M5K ACOG')
end)

