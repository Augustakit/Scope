require('__shared/RenderfovConfig/SupportRenderfovConfig')

local m27_PGuids = Guid('FB9A13FB-5D10-48C7-8BD4-A97B712E2C20')
--M27IAR
ResourceManager:RegisterInstanceLoadHandler(m27_PGuids, Guid('6A57F20A-21BE-4830-B255-CA96C53A6C6E'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  s_Settings.m27RenderFov
    weaponRenderZoom.zoomRenderFov =  s_Settings.m27ZoomRenderFov
    --print('M27IAR RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(m27_PGuids, Guid('7A90AC39-60DF-4AAD-AC03-530C2CAACAF1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m27Reflex
    --print('M27IAR Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(m27_PGuids, Guid('212C9480-4E4C-40ED-8E55-CA79C90A1A16'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m27Kobra
    --print('M27IAR Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(m27_PGuids, Guid('57C7E4DB-B64D-4F77-9692-9DC6C2C9B7D1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m27ENVG
    --print('M27IAR ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(m27_PGuids, Guid('8D91BBE3-1C67-4D5B-B451-19E94B1441E3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m27Eotech
    --print('M27IAR EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(m27_PGuids, Guid('F3743A7C-3759-4A19-ABBE-135C698128AB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m27PKAS
    --print('M27IAR PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(m27_PGuids, Guid('71CEBD23-CC3D-47D1-AA4D-2CEFDAC7925C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m27PKA
    --print('M27IAR PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(m27_PGuids, Guid('BDCBA5CB-F042-4958-98C3-F861CDB5F3B2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m27M145
    --print('M27IAR M145')
end)

ResourceManager:RegisterInstanceLoadHandler(m27_PGuids, Guid('426BAF06-063D-4F8B-8154-5477D65DC3F0'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m27PSO
    --print('M27IAR PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(m27_PGuids, Guid('6670DD80-B085-4AC9-8A12-3050DAB5BAF3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m27ACOG
    --print('M27IAR ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(m27_PGuids, Guid('8640D710-FC3E-4071-9851-1146DE48A280'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m27Rifle
    --print('M27IAR Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(m27_PGuids, Guid('7B80A6D2-A600-4BBC-84B6-A35DF3DCD562'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m27PKS07
    --print('M27IAR PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(m27_PGuids, Guid('E88FF944-F509-43FD-8FC1-8CF4FF1B79D5'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m27Ballistic
    --print('M27IAR Ballistic')
end)




local rpk_PGuids = Guid('6D35134E-EDA8-11DF-81C7-E27FD45FBB2E')
--RPK-47
ResourceManager:RegisterInstanceLoadHandler(rpk_PGuids, Guid('779818F6-D1C6-1800-4C47-7C995E5C20BA'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  s_Settings.rpkRenderFov
    weaponRenderZoom.zoomRenderFov =  s_Settings.rpkZoomRenderFov
    --print('RPK-47 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(rpk_PGuids, Guid('14877015-EA5E-41F4-A56D-E0D17993C8CD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.rpkReflex
    --print('RPK-47 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(rpk_PGuids, Guid('9F706BF1-C336-443D-A342-D29CF44B0E20'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.rpkKobra
    --print('RPK-47 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(rpk_PGuids, Guid('2C5314DA-1370-49CE-AE00-D1BF85EB18F6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.rpkENVG
    --print('RPK-47 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(rpk_PGuids, Guid('34CA121F-5109-4B37-879D-E0042D3795EC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.rpkEotech
    --print('RPK-47 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(rpk_PGuids, Guid('A6C57533-D6CA-40B7-86D8-9FDBCD734B32'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.rpkPKAS
    --print('RPK-47 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(rpk_PGuids, Guid('0E4D03AE-9D29-4168-97FF-4CF764E41A0C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.rpkPKA
    --print('RPK-47 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(rpk_PGuids, Guid('FF106AC0-049C-495C-85E7-5D9EE83F21EE'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.rpkM145
    --print('RPK-47 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(rpk_PGuids, Guid('ED1BB3FE-0E76-46AC-A3D8-4DFC98FAFF55'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.rpkPSO
    --print('RPK-47 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(rpk_PGuids, Guid('AC47D959-52CF-4F9A-92A6-AB41717C4B16'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.rpkACOG
    --print('RPK-47 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(rpk_PGuids, Guid('396749A0-BB97-442C-A028-2D9D7E4F1279'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.rpkRifle
    --print('RPK-47 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(rpk_PGuids, Guid('41CAB725-0FB9-425F-AF19-08F5A74876A3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.rpkPKS07
    --print('RPK-47 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(rpk_PGuids, Guid('ECB5F01C-1531-4B74-A2AB-831EC266E45D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.rpkBallistic
    --print('RPK-47 Ballistic')
end)





local m249_PGuids = Guid('F37DBC84-F61B-11DF-829C-95F94E7154E3')
--M249
ResourceManager:RegisterInstanceLoadHandler(m249_PGuids, Guid('7367D2CB-FFE0-EAFD-98E3-E8089BBE4E4F'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  s_Settings.m249RenderFov
    weaponRenderZoom.zoomRenderFov =  s_Settings.m249ZoomRenderFov
    --print('M249 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(m249_PGuids, Guid('F1802295-27B7-499E-8399-2C262EB9465C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m249Reflex
    --print('M249 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(m249_PGuids, Guid('E7B1B6C9-54BE-4742-A77C-1D130E9EAE0E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m249Kobra
    --print('M249 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(m249_PGuids, Guid('1285AE3C-FA6F-4BA5-87D8-9FDDA43FFC7C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m249ENVG
    --print('M249 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(m249_PGuids, Guid('AE5681AC-E4B5-4AA2-89BA-CCF8CD693858'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m249Eotech
    --print('M249 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(m249_PGuids, Guid('17EB6B77-6F1F-4350-97DA-B667D00E2305'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m249PKAS
    --print('M249 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(m249_PGuids, Guid('EBE7DBAB-26B5-4ED8-9E08-D523697896AC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m249PKA
    --print('M249 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(m249_PGuids, Guid('BEE81269-CA31-493B-B157-DB2EC72E6266'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m249M145
    --print('M249 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(m249_PGuids, Guid('0EA4DA6E-25A8-4BF7-98FB-AE639246F353'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m249PSO
    --print('M249 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(m249_PGuids, Guid('73B7B1D4-4E62-4716-BC4B-9B0F722D969F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m249ACOG
    --print('M249 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(m249_PGuids, Guid('7EF912F6-418C-4988-B0E1-83EC583DBDB1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m249Rifle
    --print('M249 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(m249_PGuids, Guid('59F9DD77-2D89-4A42-875C-713246433BC9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m249PKS07
    --print('M249 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(m249_PGuids, Guid('FE144AA7-1A8F-492B-A116-4B6445CCC4D7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m249Ballistic
    --print('M249 Ballistic')
end)



local pkp_PGuids = Guid('D1DC5650-EBFE-11DF-8ACD-A1D8961E5550')
--PKP
ResourceManager:RegisterInstanceLoadHandler(pkp_PGuids, Guid('73E555B8-97EF-3927-6D01-03123C876818'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  s_Settings.pkpRenderFov
    weaponRenderZoom.zoomRenderFov =  s_Settings.pkpZoomRenderFov
    --print('PKP RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(pkp_PGuids, Guid('78B5A795-7A31-45BE-9DC5-BA124ECCBE51'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.pkpReflex
    --print('PKP Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(pkp_PGuids, Guid('A4A4F569-AC2D-4344-BAD8-833DC91AB3DA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.pkpKobra
    --print('PKP Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(pkp_PGuids, Guid('D70790DA-06F1-4A2F-8C5C-A92BB6C191C9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.pkpENVG
    --print('PKP ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(pkp_PGuids, Guid('669FEDB2-2563-4FDB-933A-CFBD57079ED2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.pkpEotech
    --print('PKP EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(pkp_PGuids, Guid('41A9828F-C92A-461C-AF7E-613A603D1E08'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.pkpPKAS
    --print('PKP PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(pkp_PGuids, Guid('0BE26AD3-6095-4897-931D-2794799FD3ED'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.pkpPKA
    --print('PKP PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(pkp_PGuids, Guid('C1A374F1-C0EF-4100-8F78-4EB1D998995E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.pkpM145
    --print('PKP M145')
end)

ResourceManager:RegisterInstanceLoadHandler(pkp_PGuids, Guid('E929DCAD-EA15-4277-AA11-780C5E53D414'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.pkpPSO
    --print('PKP PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(pkp_PGuids, Guid('984D6F05-6140-4770-A5FC-4CF165C6BC7B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.pkpACOG
    --print('PKP ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(pkp_PGuids, Guid('EEDBD501-88EE-49E6-8C66-3FAE7B2DCFC7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.pkpRifle
    --print('PKP Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(pkp_PGuids, Guid('938545BD-D0A1-4A65-AF7D-42FC5DE2DB00'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.pkpPKS07
    --print('PKP PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(pkp_PGuids, Guid('F2BAC713-4E1F-4661-8404-4D7B2BC82C21'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.pkpBallistic
    --print('PKP Ballistic')
end)




local m240_PGuids = Guid('5D6FD6B8-E5BC-11DF-A152-D82BD29AC2ED')
--M240
ResourceManager:RegisterInstanceLoadHandler(m240_PGuids, Guid('ED9C3562-5CF7-5D43-33A7-CB55688AC298'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  s_Settings.m240RenderFov
    weaponRenderZoom.zoomRenderFov =  s_Settings.m240ZoomRenderFov
    --print('M240 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(m240_PGuids, Guid('D844E50B-8E6A-4282-B083-12F16C45939D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m240Reflex
    --print('M240 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(m240_PGuids, Guid('869ACCC7-B411-4304-A4FD-6E984D21C324'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m240Kobra
    --print('M240 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(m240_PGuids, Guid('D85ECF14-7C69-41E3-8429-6315473BBD1F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m240ENVG
    --print('M240 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(m240_PGuids, Guid('4E348E48-501D-4798-9DEA-239D05F09964'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m240Eotech
    --print('M240 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(m240_PGuids, Guid('11BE5C6E-7181-480D-B946-2EACCBB8DFA1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m240PKAS
    --print('M240 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(m240_PGuids, Guid('F8C851CF-4293-4E4C-A591-29F7D8E3973D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m240PKA
    --print('M240 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(m240_PGuids, Guid('277FA4A9-B7FC-469B-A57D-5ADE7F8E4A79'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m240M145
    --print('M240 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(m240_PGuids, Guid('72ED5BF4-2FD6-40F7-8662-290607CDD324'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m240PSO
    --print('M240 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(m240_PGuids, Guid('59001B40-4DF6-493B-ADB1-08A6E762B718'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m240ACOG
    --print('M240 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(m240_PGuids, Guid('B091786B-AEE3-45AE-8182-FD9E116E51B1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m240Rifle
    --print('M240 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(m240_PGuids, Guid('4FDD6234-0635-4BA9-8CF4-C3473205731E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m240PKS07
    --print('M240 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(m240_PGuids, Guid('9A6C195B-00BE-4680-8965-91743EC3627A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m240Ballistic
    --print('M240 Ballistic')
end)





local m60e4_PGuids = Guid('99BD41C7-EDB0-11DF-A0C6-D95650B9E286')
--M60E4
ResourceManager:RegisterInstanceLoadHandler(m60e4_PGuids, Guid('0839F319-645A-D6AC-34ED-16F7AB54EDA7'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  s_Settings.m60RenderFov
    weaponRenderZoom.zoomRenderFov =  s_Settings.m60ZoomRenderFov
    --print('M60E4 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(m60e4_PGuids, Guid('44EC3593-E8D0-4346-8612-EB42933B0E68'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m60Reflex
    --print('M60E4 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(m60e4_PGuids, Guid('5F02A796-4749-4A6C-86AD-55D0976C10D9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m60Kobra
    --print('M60E4 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(m60e4_PGuids, Guid('0191F22A-BDBC-445A-BAB6-121A6B0F2B00'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m60ENVG
    --print('M60E4 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(m60e4_PGuids, Guid('236355D8-3BAB-4469-96AE-0F6BDA11F9F5'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m60Eotech
    --print('M60E4 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(m60e4_PGuids, Guid('9DFEA199-BAF7-4CA9-9E64-6953D586A491'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m60PKAS
    --print('M60E4 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(m60e4_PGuids, Guid('80C0CCC6-8347-4BC0-8F85-07C21CB03ADB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m60PKA
    --print('M60E4 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(m60e4_PGuids, Guid('94954F45-E11A-4EF7-BC38-B0285A409CBA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m60M145
    --print('M60E4 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(m60e4_PGuids, Guid('4321FEE9-EC76-4B54-BDA9-333C5A7B77BF'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m60PSO
    --print('M60E4 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(m60e4_PGuids, Guid('B25B40FF-EAC6-4CB3-8000-D22867550915'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m60ACOG
    --print('M60E4 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(m60e4_PGuids, Guid('072A694B-ACF5-497C-B016-B9AF9B43DA90'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m60Rifle
    --print('M60E4 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(m60e4_PGuids, Guid('E54994BA-2694-4527-986D-EB6740D93A43'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m60PKS07
    --print('M60E4 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(m60e4_PGuids, Guid('5C0DB67B-D3FE-43B9-B071-E3CDB3C73321'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.m60Ballistic
    --print('M60E4 Ballistic')
end)





local type88_PGuids = Guid('97F4741B-2AFA-11E0-9848-9E9BC51DCED8')
--88式轻机枪
ResourceManager:RegisterInstanceLoadHandler(type88_PGuids, Guid('39F61421-9767-1546-E196-6F9AE3E4F59C'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  s_Settings.type88RenderFov
    weaponRenderZoom.zoomRenderFov =  s_Settings.type88ZoomRenderFov
    --print('Type88 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(type88_PGuids, Guid('CEBED740-27DF-419C-A976-CAF63CDD45AA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.type88Reflex
    --print('Type88 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(type88_PGuids, Guid('6C383EE4-EEE9-4647-987B-08D781164E1F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.type88Kobra
    --print('Type88 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(type88_PGuids, Guid('BD2B5CDB-D3C3-4D05-87C8-1DDC7049ED2C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.type88ENVG
    --print('Type88 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(type88_PGuids, Guid('C9A6B7B3-F488-4EBC-8CA3-1D0B302958AA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.type88Eotech
    --print('Type88 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(type88_PGuids, Guid('D4721788-5E9F-4588-8E4B-FD1CBF857C12'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.type88PKAS
    --print('Type88 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(type88_PGuids, Guid('451324A9-569B-438B-9E11-1E8E8F043317'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.type88PKA
    --print('Type88 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(type88_PGuids, Guid('CA97B9C6-8122-4EB3-8BFA-8F545AE7AA88'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.type88M145
    --print('Type88 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(type88_PGuids, Guid('87AB3EA0-14F4-472B-AEEC-98F7CD7D9431'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.type88PSO
    --print('Type88 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(type88_PGuids, Guid('C97DA3A8-1819-4A76-984E-B530D5607935'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.type88ACOG
    --print('Type88 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(type88_PGuids, Guid('38AEF213-B96C-4E97-BA40-BB4AE1F42038'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.type88Rifle
    --print('Type88 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(type88_PGuids, Guid('DE248A9F-8FCE-4513-871C-6E27DA94207B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.type88PKS07
    --print('Type88 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(type88_PGuids, Guid('5E42CD4E-7475-419B-81BB-692DA0CBB937'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.type88Ballistic
    --print('Type88 Ballistic')
end)





local qbb95 = Guid('EC29F616-A358-481C-BD2E-EEAD692CAA49')
--QBB-95
ResourceManager:RegisterInstanceLoadHandler(qbb95, Guid('363A489B-F06A-429A-8D72-25952DFA02CD'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  s_Settings.qbb95RenderFov
    weaponRenderZoom.zoomRenderFov =  s_Settings.qbb95ZoomRenderFov
    --print('QBB-95 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(qbb95, Guid('86131DEA-307C-4463-AFF8-B68DE75693A8'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.qbb95Reflex
    --print('QBB-95 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(qbb95, Guid('DEB8A7FC-4D97-4936-9313-4A435B9D813C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.qbb95Kobra
    --print('QBB-95 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(qbb95, Guid('B071AB5D-AABE-4793-B1EE-9C79F7C919C5'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.qbb95ENVG
    --print('QBB-95 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(qbb95, Guid('AD2D24A6-A098-459A-A99A-D855D7886D66'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.qbb95Eotech
    --print('QBB-95 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(qbb95, Guid('93DF0416-E7A2-4ABC-864E-6CF117AC0A10'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.qbb95PKAS
    --print('QBB-95 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(qbb95, Guid('8B9B1804-DEB3-4632-80CD-3236B2011619'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.qbb95PKA
    --print('QBB-95 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(qbb95, Guid('6F1766F8-5FC0-4DB9-941E-A181D8618849'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.qbb95M145
    --print('QBB-95 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(qbb95, Guid('2D7BE532-2C0D-4D5A-879D-D578422A42A9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.qbb95PSO
    --print('QBB-95 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(qbb95, Guid('327F27E7-3FC6-40A2-AE08-650D7DD003B7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.qbb95ACOG
    --print('QBB-95 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(qbb95, Guid('24B6DBEE-146F-41D3-B367-5005B8173A82'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.qbb95Rifle
    --print('QBB-95 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(qbb95, Guid('7E895BAA-C843-45A4-B7EB-F17FE0A065D7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.qbb95PKS07
    --print('QBB-95 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(qbb95, Guid('D1719589-F531-4235-8442-4480B1C387F2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.qbb95Ballistic
    --print('QBB-95 Ballistic')
end)






local mg36_PGuids = Guid('9AE12268-346F-4249-8E22-B5DB851332F2')
--MG36
ResourceManager:RegisterInstanceLoadHandler(mg36_PGuids, Guid('0FB47636-FD0C-4386-BC03-13099E78A354'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  s_Settings.mg36RenderFov
    weaponRenderZoom.zoomRenderFov =  s_Settings.mg36ZoomRenderFov
    --print('MG36 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(mg36_PGuids, Guid('324DD228-B41A-4DF8-9494-2692F7CC71B2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.mg36Reflex
    --print('MG36 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(mg36_PGuids, Guid('731C48E1-5A1D-4665-B63D-0F57F30D4FF4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.mg36Kobra
    --print('MG36 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(mg36_PGuids, Guid('A5687486-B361-4D92-81A5-201EEA83BDAE'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.mg36ENVG
    --print('MG36 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(mg36_PGuids, Guid('138C9281-5A98-4470-981A-017708C93F9F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.mg36PKAS
    --print('MG36 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(mg36_PGuids, Guid('F03DEA98-C5CE-4748-8C01-D49BCF3F2E96'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.mg36PKA
    --print('MG36 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(mg36_PGuids, Guid('7A75E31C-1F54-4472-962C-6B0C8747BEDF'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.mg36M145
    --print('MG36 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(mg36_PGuids, Guid('6E1962D2-DF05-42C2-9020-DB35D073DF9A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.mg36PSO
    --print('MG36 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(mg36_PGuids, Guid('B9618250-A0DD-4449-9D57-411B7C7B80C1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.mg36ACOG
    --print('MG36 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(mg36_PGuids, Guid('2D91F10A-E127-4C59-8F97-69574F62A2C7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.mg36Rifle
    --print('MG36 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(mg36_PGuids, Guid('BBABE41E-2E70-42B4-AB34-579A08064E53'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.mg36PKS07
    --print('MG36 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(mg36_PGuids, Guid('8AED662B-C789-4DB4-B65A-0161906546C6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.mg36Ballistic
    --print('MG36 Ballistic')
end)





local l86a2_PGuids = Guid('0BF57B31-9632-484F-8922-0BD476C5FF62')
--L86A2
ResourceManager:RegisterInstanceLoadHandler(l86a2_PGuids, Guid('88F439F1-7B94-41DA-A9EC-F2001C8FC1CA'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  s_Settings.l86a2RenderFov
    weaponRenderZoom.zoomRenderFov =  s_Settings.l86a2ZoomRenderFov
    --print('L86A2 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(l86a2_PGuids, Guid('07C2FA07-EAB7-421C-BE3F-47751B3548B8'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.l86a2Reflex
    --print('L86A2 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(l86a2_PGuids, Guid('2A98C5D7-FE29-4C1E-9314-82977B35B45B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.l86a2Kobra
    --print('L86A2 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(l86a2_PGuids, Guid('25F1BE7B-49F0-47BF-BAE8-B3325A5CAF06'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.l86a2ENVG
    --print('L86A2 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(l86a2_PGuids, Guid('F36522F9-E5A9-4F73-ABB2-21FE5C41C53A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.l86a2Eotech
    --print('L86A2 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(l86a2_PGuids, Guid('06CF08B5-202C-4E57-ACB3-B40D394B7D8E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.l86a2PKAS
    --print('L86A2 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(l86a2_PGuids, Guid('679B64CB-1A1E-4BCF-B07A-810370AA239E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.l86a2PKA
    --print('L86A2 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(l86a2_PGuids, Guid('32DC2EB8-3465-4F5F-BE5A-53E000F93CC2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.l86a2M145
    --print('L86A2 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(l86a2_PGuids, Guid('6AB62163-9EE8-4308-BDDB-9706E5A771B6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.l86a2PSO
    --print('L86A2 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(l86a2_PGuids, Guid('629048FE-EB87-4CE1-AE53-F90C79DBE484'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.l86a2ACOG
    --print('L86A2 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(l86a2_PGuids, Guid('003F1866-3138-4B11-ADCC-230B82B67989'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.l86a2Rifle
    --print('L86A2 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(l86a2_PGuids, Guid('AC52624E-A038-49FC-A0FC-4B2D8E7C7F32'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.l86a2PKS07
    --print('L86A2 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(l86a2_PGuids, Guid('A787697E-B39E-4DB2-9835-8806087B7352'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.l86a2Ballistic
    --print('L86A2 Ballistic')
end)





local lsat_PGuids = Guid('75E9AE70-B8B5-4A63-BDCC-AAF2914277D2')
--LSAT
ResourceManager:RegisterInstanceLoadHandler(lsat_PGuids, Guid('E896272B-5F6B-4091-8E3E-A162143DA2F9'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  s_Settings.lsatRenderFov
    weaponRenderZoom.zoomRenderFov =  s_Settings.lsatZoomRenderFov
    --print('LSAT RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(lsat_PGuids, Guid('ACE6E081-EE28-4C1A-8909-BAD1089B111C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.lsatReflex
    --print('LSAT Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(lsat_PGuids, Guid('D6AA2D68-24E3-4E0B-A036-3A3372FE027B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.lsatKobra
    --print('LSAT Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(lsat_PGuids, Guid('FA9FDD79-8582-46D3-B068-17A31FA5C9F9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.lsatENVG
    --print('LSAT ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(lsat_PGuids, Guid('BC3BFF2F-B634-45B1-A56B-5442EABF96FA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.lsatEotech
    --print('LSAT EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(lsat_PGuids, Guid('33ED2FBA-77C3-4E3E-B89B-3D229C94CCD1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.lsatPKAS
    --print('LSAT PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(lsat_PGuids, Guid('D73174E2-634B-4E47-BDE5-06CA2A57D237'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.lsatPKA
    --print('LSAT PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(lsat_PGuids, Guid('46A5F90D-DE44-41D8-AAD0-B0908590B90F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.lsatM145
    --print('LSAT M145')
end)

ResourceManager:RegisterInstanceLoadHandler(lsat_PGuids, Guid('6BD8A842-2C72-4E9F-A3E2-0E8329D9BD32'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.lsatPSO
    --print('LSAT PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(lsat_PGuids, Guid('C8F1B245-5E2E-4CE3-A610-4F7A8475456A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.lsatACOG
    --print('LSAT ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(lsat_PGuids, Guid('C992B5BE-9891-4042-8E78-76DD67F0E632'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.lsatRifle
    --print('LSAT Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(lsat_PGuids, Guid('84BFB2EF-370B-4EB0-AAEE-D1D1357A58DB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.lsatPKS07
    --print('LSAT PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(lsat_PGuids, Guid('AFFA7C59-06AB-439A-8FE5-0DE3A2CB2722'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = s_Settings.lsatBallistic
    --print('LSAT Ballistic')
end)
