require('__shared/RenderfovConfig/ReconRenderfovConfig')


--MK11
local mk11_PGuids = Guid('0B82D738-09DF-11E0-9907-B7A8F369505D')

ResourceManager:RegisterInstanceLoadHandler(mk11_PGuids, Guid('6CB1F476-13E2-61F0-F77F-267C893DBD07'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  r_Settings.mk11RenderFov
    weaponRenderZoom.zoomRenderFov =  r_Settings.mk11ZoomRenderFov
    --print('MK11 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(mk11_PGuids, Guid('B142E293-C69A-457C-A120-6BFA2F742279'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.mk11Reflex
    --print('MK11 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(mk11_PGuids, Guid('FA2A647A-6401-47D0-9CF0-0E20322EF2FA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.mk11Kobra
    --print('MK11 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(mk11_PGuids, Guid('8473378B-319C-4BC0-B138-5A5239D4B063'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.mk11ENVG
    --print('MK11 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(mk11_PGuids, Guid('75FBF52B-C7B6-4542-8F15-C390EBA677FD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.mk11Eotech
    --print('MK11 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(mk11_PGuids, Guid('94A12B20-A446-48A3-842B-297DCFC75C63'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.mk11PKAS
    --print('MK11 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(mk11_PGuids, Guid('3CF6CDA8-C27A-4389-B380-DFAFD9FEED89'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.mk11PKA
    --print('MK11 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(mk11_PGuids, Guid('4A3382DD-6D37-4202-BC61-75FF4A60E1B8'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.mk11M145
    --print('MK11 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(mk11_PGuids, Guid('DEBA3896-4202-4510-9646-8C0C19B95192'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.mk11PSO
    --print('MK11 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(mk11_PGuids, Guid('B94260C0-37AD-40F2-AF47-837EE06A40B6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.mk11ACOG
    --print('MK11 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(mk11_PGuids, Guid('4B235947-9397-475B-B48A-B5E7B81114EB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.mk11Rifle
    --print('MK11 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(mk11_PGuids, Guid('F85573CC-08B3-45F1-AFB9-A631D767DAD9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.mk11PKS07
    --print('MK11 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(mk11_PGuids, Guid('F16B2F22-6167-4DBD-A658-EFE360A6BAC8'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.mk11Ballistic
    --print('MK11 Ballistic')
end)




--SVD
local svd_PGuids = Guid('C1A5290C-ED78-11DF-8D94-C4EBBBD642E1')

ResourceManager:RegisterInstanceLoadHandler(svd_PGuids, Guid('6F7744A5-02A2-A587-D940-19539F1D5D63'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  r_Settings.svdRenderFov
    weaponRenderZoom.zoomRenderFov =  r_Settings.svdZoomRenderFov
    --print('SVD RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(svd_PGuids, Guid('E4151938-CDC7-4C02-BCC7-141D1A19A857'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.svdReflex
    --print('SVD Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(svd_PGuids, Guid('9560E227-9FD1-4E55-BF46-FE98F4D7C830'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.svdKobra
    --print('SVD Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(svd_PGuids, Guid('18730487-AC5D-4E84-81BF-E327E02F6BEB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.svdENVG
    --print('SVD ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(svd_PGuids, Guid('65FD9A52-E4D5-48E1-90C6-A5E404319DF6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.svdEotech
    --print('SVD EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(svd_PGuids, Guid('AC46CED3-15CE-44C3-8DB9-214B4A099070'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.svdPKAS
    --print('SVD PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(svd_PGuids, Guid('5B5AA1F0-C17A-431E-9971-BD4925340E1B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.svdPKA
    --print('SVD PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(svd_PGuids, Guid('E3E32917-5A19-4CBB-B84C-1E11DBB1F97C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.svdM145
    --print('SVD M145')
end)

ResourceManager:RegisterInstanceLoadHandler(svd_PGuids, Guid('81222B9D-4B09-46DA-95DC-D3A78E8A20B1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.svdPSO
    --print('SVD PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(svd_PGuids, Guid('BF0E401B-6AC7-4FB5-8C6C-381CF09945CF'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.svdACOG
    --print('SVD ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(svd_PGuids, Guid('6BCB83E6-9BF3-4DC2-8DD6-32C383F70D58'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.svdRifle
    --print('SVD Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(svd_PGuids, Guid('D8F4D4B2-87A9-4D57-83AD-EAC4C743C3D1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.svdPKS07
    --print('SVD PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(svd_PGuids, Guid('4294C41B-38E0-438B-B633-686BD99BD493'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.svdBallistic
    --print('SVD Ballistic')
end)





--SKS
local sks_PGuids = Guid('409062B8-2AEF-11E0-9848-9E9BC51DCED8')

ResourceManager:RegisterInstanceLoadHandler(sks_PGuids, Guid('2106902D-8728-5254-B625-53DC1492A144'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  r_Settings.sksRenderFov
    weaponRenderZoom.zoomRenderFov =  r_Settings.sksZoomRenderFov
    --print('SKS RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(sks_PGuids, Guid('B5ADCB4A-7C86-464B-B20A-1DCBE88D994B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sksReflex
    --print('SKS Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(sks_PGuids, Guid('91A0D44F-CFDA-4D75-A1B6-2487F22223BE'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sksKobra
    --print('SKS Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(sks_PGuids, Guid('517418F9-DE1B-4DEB-8132-D664B68D79D5'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sksENVG
    --print('SKS ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(sks_PGuids, Guid('12DC79C1-5A24-490F-96DA-D9BCF543E910'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sksEotech
    --print('SKS EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(sks_PGuids, Guid('33C4C370-0072-4BA5-8477-5D931C5F3A7F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sksPKAS
    --print('SKS PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(sks_PGuids, Guid('3F45C6F4-23C6-4CBC-993C-9A23430C8DEF'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sksPKA
    --print('SKS PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(sks_PGuids, Guid('3356B510-548D-4F29-9D50-8722545DF612'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sksM145
    --print('SKS M145')
end)

ResourceManager:RegisterInstanceLoadHandler(sks_PGuids, Guid('CE4DACAD-31F7-41D6-A976-E16E7EF5A54C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sksPSO
    --print('SKS PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(sks_PGuids, Guid('9E336C2E-6B70-4001-A09D-03C14FB224C4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sksACOG
    --print('SKS ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(sks_PGuids, Guid('96989E0B-7222-4DB3-834F-FF980BF1FF4B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sksRifle
    --print('SKS Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(sks_PGuids, Guid('73544A8F-60B9-4677-B1EE-286657D23454'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sksPKS07
    --print('SKS PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(sks_PGuids, Guid('17E67F5B-DE98-4D1C-B0A9-EE87973B9181'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sksBallistic
    --print('SKS Ballistic')
end)




--M39EMR
local m39emr_PGuids = Guid('351A4849-F3F3-11DF-B48C-9F474D51EF2A')

ResourceManager:RegisterInstanceLoadHandler(m39emr_PGuids, Guid('E79FF0C3-7E0A-ACE5-8206-A144B311B24D'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  r_Settings.m39emrRenderFov
    weaponRenderZoom.zoomRenderFov =  r_Settings.m39emrZoomRenderFov
    --print('M39EMR RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(m39emr_PGuids, Guid('B7F2ACA1-074B-4D4A-B405-35CFFD0DA57A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m39emrReflex
    --print('M39EMR Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(m39emr_PGuids, Guid('21EA2D29-CCF8-469F-9BC0-4AD00D6A4F04'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m39emrKobra
    --print('M39EMR Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(m39emr_PGuids, Guid('EBB69E4C-B9B7-4E66-881D-FFD8EF5B56D2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m39emrENVG
    --print('M39EMR ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(m39emr_PGuids, Guid('608F2A3E-34BB-443B-BA0E-FEF668FA8B33'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m39emrEotech
    --print('M39EMR EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(m39emr_PGuids, Guid('F4391EAB-D829-4D01-9472-48B370EC5995'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m39emrPKAS
    --print('M39EMR PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(m39emr_PGuids, Guid('F0745C28-A37A-4793-8F9A-E3EF064D288F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m39emrPKA
    --print('M39EMR PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(m39emr_PGuids, Guid('0A821B26-43C4-4F61-9C5C-23604D55FF1B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m39emrM145
    --print('M39EMR M145')
end)

ResourceManager:RegisterInstanceLoadHandler(m39emr_PGuids, Guid('EB4348C6-EBF6-400D-B7DA-C9964EC47092'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m39emrPSO
    --print('M39EMR PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(m39emr_PGuids, Guid('24B0074F-21E1-448F-9750-14532A4585BD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m39emrACOG
    --print('M39EMR ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(m39emr_PGuids, Guid('727ED802-2B3C-4E2E-978E-675A54C98637'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m39emrRifle
    --print('M39EMR Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(m39emr_PGuids, Guid('F9371CE7-6680-4E1A-BC4A-9119992B3CFA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m39emrPKS07
    --print('M39EMR PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(m39emr_PGuids, Guid('75B33764-F9CA-4E3F-93DA-9141BB892E37'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m39emrBallistic
    --print('M39EMR Ballistic')
end)




--QBU-88
local qbu88_PGuids = Guid('62FBED30-927B-11E0-A920-988860D1D68B')

ResourceManager:RegisterInstanceLoadHandler(qbu88_PGuids, Guid('916DE6A2-1F2B-3BF6-AC98-4EE2FDC22AF8'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  r_Settings.qbu88RenderFov
    weaponRenderZoom.zoomRenderFov =  r_Settings.qbu88ZoomRenderFov
    --print('QBU-88 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(qbu88_PGuids, Guid('2E50FFB0-D1E8-4FC8-8076-E704FB9B5794'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.qbu88Reflex
    --print('QBU-88 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(qbu88_PGuids, Guid('9FD1E1B7-23F8-4531-8A28-40438A1CBCBF'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.qbu88Kobra
    --print('QBU-88 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(qbu88_PGuids, Guid('F7DB150A-F9A6-4C0F-B682-52A0F67F4F55'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.qbu88ENVG
    --print('QBU-88 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(qbu88_PGuids, Guid('DCEE6BF4-FC23-4FD6-9098-9008F23F92F0'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.qbu88Eotech
    --print('QBU-88 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(qbu88_PGuids, Guid('FA919876-0F77-42CD-8CB8-9E30F3DF6788'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.qbu88PKAS
    --print('QBU-88 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(qbu88_PGuids, Guid('7F27BA18-F30C-400F-85D0-9F13AE1CBDDE'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.qbu88PKA
    --print('QBU-88 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(qbu88_PGuids, Guid('55E3BBCF-65E2-4FCE-A5FB-349D11F189DD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.qbu88M145
    --print('QBU-88 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(qbu88_PGuids, Guid('33F36612-F6C0-40F7-909F-06A62E194A6B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.qbu88PSO
    --print('QBU-88 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(qbu88_PGuids, Guid('E8C7E322-086C-4C50-864D-6EC3099F1700'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.qbu88ACOG
    --print('QBU-88 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(qbu88_PGuids, Guid('E897F288-DE62-4D13-A51A-C4EFD9AF2273'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.qbu88Rifle
    --print('QBU-88 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(qbu88_PGuids, Guid('9F22E1A1-C4EA-44A5-9870-79EFC78529D6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.qbu88PKS07
    --print('QBU-88 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(qbu88_PGuids, Guid('ECD9A1BC-D502-44FF-8419-C123CE99F742'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.qbu88Ballistic
    --print('QBU-88 Ballistic')
end)




--M417
local m417_PGuids = Guid('E9658C2B-DE00-413D-B63B-BC3504652373')

ResourceManager:RegisterInstanceLoadHandler(m417_PGuids, Guid('EDA6B0BB-CAD6-4BF1-918C-8F6C968C9604'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  r_Settings.m417RenderFov
    weaponRenderZoom.zoomRenderFov =  r_Settings.m417ZoomRenderFov
    --print('M417 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(m417_PGuids, Guid('75AE3697-88E4-412E-95E8-2F84468DB2F4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m417Reflex
    --print('M417 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(m417_PGuids, Guid('7DEA6C80-1408-45D0-B629-D48A9EDE4D6B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m417Kobra
    --print('M417 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(m417_PGuids, Guid('B083FD04-8C18-485F-8953-40B185B97DF2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m417ENVG
    --print('M417 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(m417_PGuids, Guid('E33C5CFA-0529-4211-8748-61560FA34571'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m417Eotech
    --print('M417 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(m417_PGuids, Guid('CF87A0DC-7577-4AF7-8F6B-0DA4790A5E5A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m417PKAS
    --print('M417 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(m417_PGuids, Guid('7579174D-583D-4FDC-9ED6-4E48765F29CB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m417PKA
    --print('M417 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(m417_PGuids, Guid('74B5BB0A-E08F-4402-A7D4-AAF949E6E4C4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m417M145
    --print('M417 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(m417_PGuids, Guid('EB2B7A16-FD49-4FC8-88B6-425FA383A5EF'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m417PSO
    --print('M417 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(m417_PGuids, Guid('FE8EEC63-E9F6-44BE-B3D5-6E9458ED69E5'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m417ACOG
    --print('M417 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(m417_PGuids, Guid('80522D94-649C-4029-B14A-A1B079EE983E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m417Rifle
    --print('M417 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(m417_PGuids, Guid('62C58329-B95D-4417-B2D4-9FD4B6279724'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m417PKS07
    --print('M417 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(m417_PGuids, Guid('6103CB07-16DF-4812-8BDC-83ABB24F8AC7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m417Ballistic
    --print('M417 Ballistic')
end)




--SV98
local sv98_PGuids = Guid('0B551663-E80F-11DF-9138-C690837A65DF')
ResourceManager:RegisterInstanceLoadHandler(sv98_PGuids, Guid('20AC5110-FC1E-9646-A451-8EB189727C11'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  r_Settings.sv98RenderFov
    weaponRenderZoom.zoomRenderFov =  r_Settings.sv98ZoomRenderFov
    --print('SV98 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(sv98_PGuids, Guid('82B4F614-6979-444D-99E0-84883F33B1F8'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sv98Reflex
    --print('SV98 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(sv98_PGuids, Guid('9C8BE270-E801-4AA2-AC0C-9ED594F5CC3A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sv98Kobra
    --print('SV98 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(sv98_PGuids, Guid('237161C5-1C65-4D13-9A36-3084899EAF96'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sv98ENVG
    --print('SV98 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(sv98_PGuids, Guid('8E3B567D-DF0E-455C-8CCD-0A22BA8D62E8'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sv98Eotech
    --print('SV98 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(sv98_PGuids, Guid('1692E48D-A767-47E4-B8D9-06B9A33F56A9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sv98PKAS
    --print('SV98 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(sv98_PGuids, Guid('293E4C0F-E0D2-4AC8-A381-019BA0432213'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sv98PKA
    --print('SV98 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(sv98_PGuids, Guid('7E3CF600-17DD-4F08-B248-DA73FC5C02F7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sv98M145
    --print('SV98 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(sv98_PGuids, Guid('5A084189-7C60-47AF-BED1-66507700631D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sv98PSO
    --print('SV98 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(sv98_PGuids, Guid('0A0DA222-C009-4498-B202-AE111141E1D5'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sv98ACOG
    --print('SV98 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(sv98_PGuids, Guid('C6D81754-082D-40FB-951D-D2F43958CD72'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sv98Rifle
    --print('SV98 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(sv98_PGuids, Guid('F6A76D9A-3755-4C06-8ACE-D0EEB581C691'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sv98PKS07
    --print('SV98 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(sv98_PGuids, Guid('E65E6650-DC4C-4220-ADF4-448093777E7D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.sv98Ballistic
    --print('SV98 Ballistic')
end)




--M40A5
local m40a5_PGuids = Guid('65B7D9D8-256F-11E0-96DC-FF63A5537869')

ResourceManager:RegisterInstanceLoadHandler(m40a5_PGuids, Guid('9545948E-DB3F-AA1A-F10C-5CFC34EDE06B'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  r_Settings.m40a5RenderFov
    weaponRenderZoom.zoomRenderFov =  r_Settings.m40a5ZoomRenderFov
    --print('M40A5 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(m40a5_PGuids, Guid('140633E8-DBAD-4DC6-9481-82678A518E30'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m40a5Reflex
    --print('M40A5 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(m40a5_PGuids, Guid('6FB43DCD-7543-41BB-AFE4-486EA810A032'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m40a5Kobra
    --print('M40A5 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(m40a5_PGuids, Guid('D534D5D6-AADB-47BF-8597-2A12886D1ABD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m40a5ENVG
    --print('M40A5 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(m40a5_PGuids, Guid('FA8D3499-A0BB-4257-A90C-FB0388211740'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m40a5Eotech
    --print('M40A5 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(m40a5_PGuids, Guid('FDD31A28-E432-4C87-985E-96DBD07EF003'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m40a5PKAS
    --print('M40A5 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(m40a5_PGuids, Guid('EBF4E6DB-A258-45A2-996E-785F9F361B1D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m40a5PKA
    --print('M40A5 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(m40a5_PGuids, Guid('60564817-42A7-4530-A4DB-892645751215'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m40a5M145
    --print('M40A5 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(m40a5_PGuids, Guid('CBB0F886-8E5A-423C-A453-FEAF1B675626'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m40a5PSO
    --print('M40A5 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(m40a5_PGuids, Guid('1C139BCB-39B4-47FF-AEEB-C5CF41050403'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m40a5ACOG
    --print('M40A5 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(m40a5_PGuids, Guid('9C9F9156-2FEA-41A7-A0F3-22D78C5B9EBB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m40a5Rifle
    --print('M40A5 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(m40a5_PGuids, Guid('0D8A9A4C-8F84-4283-81DA-7F47BFBD7B36'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m40a5PKS07
    --print('M40A5 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(m40a5_PGuids, Guid('BE4CA44D-652B-43EA-851D-C5D44B100A81'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m40a5Ballistic
    --print('M40A5 Ballistic')
end)




--M98B
local m98b_PGuids = Guid('84BA0CE7-1755-11E0-B7E4-E4E608316920')

ResourceManager:RegisterInstanceLoadHandler(m98b_PGuids, Guid('47BED55F-7963-A445-CD98-00043E0CFEC7'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  r_Settings.m98bRenderFov
    weaponRenderZoom.zoomRenderFov =  r_Settings.m98bZoomRenderFov
    --print('M98B RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(m98b_PGuids, Guid('A61F3DED-4C06-47D2-970B-165396BCBEF6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m98bReflex
    --print('M98B Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(m98b_PGuids, Guid('C4CB6560-3F32-4F6F-BAC9-121BD719439C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m98bKobra
    --print('M98B Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(m98b_PGuids, Guid('E64CD44C-D528-4802-9413-59197E1E17C3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m98bENVG
    --print('M98B ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(m98b_PGuids, Guid('FF17A806-EF86-41A3-B2D2-74474EA9256E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m98bEotech
    --print('M98B EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(m98b_PGuids, Guid('6F9D7F41-724B-42C4-9C4B-8D33CFDCF580'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m98bPKAS
    --print('M98B PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(m98b_PGuids, Guid('D502D557-7C12-41BC-B4B7-D168B86EB1B7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m98bPKA
    --print('M98B PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(m98b_PGuids, Guid('630CDAB5-9941-4E0A-A340-72985FBA6D94'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m98bM145
    --print('M98B M145')
end)

ResourceManager:RegisterInstanceLoadHandler(m98b_PGuids, Guid('C74A3862-50AF-4548-9E9B-E418242FC232'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m98bPSO
    --print('M98B PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(m98b_PGuids, Guid('91127C03-1FD2-4AC2-AC17-14508D3242C4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m98bACOG
    --print('M98B ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(m98b_PGuids, Guid('BC05E854-6569-4A8C-B167-04D8331150AC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m98bRifle
    --print('M98B Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(m98b_PGuids, Guid('F6B6D209-230B-4E91-B7D1-950393B809EB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m98bPKS07
    --print('M98B PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(m98b_PGuids, Guid('57A01270-1D05-43C6-8E01-01D4C3A3AF23'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.m98bBallistic
    --print('M98B Ballistic')
end)






--L96
local l96_PGuids = Guid('30710090-22F9-11E0-9B3A-DBCC579DBD38')

ResourceManager:RegisterInstanceLoadHandler(l96_PGuids, Guid('84CBFB75-81D1-687D-2956-F1FD92A9F6C5'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  r_Settings.l96RenderFov
    weaponRenderZoom.zoomRenderFov =  r_Settings.l96ZoomRenderFov
    --print('L96 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(l96_PGuids, Guid('00110291-A0E5-4CE2-8F0F-9F98C7C42F26'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.l96Reflex
    --print('L96 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(l96_PGuids, Guid('673E6025-89C7-4A22-BBE7-B9D69CEB3961'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.l96Kobra
    --print('L96 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(l96_PGuids, Guid('FD409165-B603-4D26-9032-4D80473AB322'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.l96ENVG
    --print('L96 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(l96_PGuids, Guid('5D71D4AA-7469-46EE-A7BD-B8E24D29756B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.l96Eotech
    --print('L96 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(l96_PGuids, Guid('3BC9EE74-FA46-4517-84A5-80C6D6A46586'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.l96PKAS
    --print('L96 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(l96_PGuids, Guid('C76D4E67-7CE5-4529-8029-23A7DD0CB972'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.l96PKA
    --print('L96 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(l96_PGuids, Guid('16DE586C-441A-49C7-9290-4C48FDB161F9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.l96M145
    --print('L96 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(l96_PGuids, Guid('694BAA8E-B39E-4E6E-B685-630B2B22E54B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.l96PSO
    --print('L96 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(l96_PGuids, Guid('E2503371-0F89-4173-AFAF-E8C66A131401'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.l96ACOG
    --print('L96 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(l96_PGuids, Guid('E91A0A01-0D6B-42B4-88D8-5A00B4E9F4DD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.l96Rifle
    --print('L96 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(l96_PGuids, Guid('74B407B5-3969-42D8-87F5-5BA5263151B3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.l96PKS07
    --print('L96 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(l96_PGuids, Guid('94813337-5B3E-44AA-A45A-A9443C76152F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.l96Ballistic
    --print('L96 Ballistic')
end)

ResourceManager:RegisterInstanceLoadHandler(l96_PGuids, Guid('AE60D802-B213-414F-AE9D-9603C9ED27B2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.l966X
    --print('L96 6X')
end)

ResourceManager:RegisterInstanceLoadHandler(l96_PGuids, Guid('64A751B6-BE92-4B4E-9314-C3CC2E3E3A17'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.l9620X
    --print('L96 20X')
end)





local jng90_PGuids = Guid('8C663DDE-525E-4A4D-8D88-7CA1970E59D7')
--JNG-90
ResourceManager:RegisterInstanceLoadHandler(jng90_PGuids, Guid('EAA18E7E-7B65-42A9-B3A4-32B2BBC820B7'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  r_Settings.jng90RenderFov
    weaponRenderZoom.zoomRenderFov =  r_Settings.jng90ZoomRenderFov
    --print('JNG90 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(jng90_PGuids, Guid('C678E029-7F7E-43C1-A3D3-B2396479F906'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.jng90Reflex
    --print('JNG90 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(jng90_PGuids, Guid('CBAFB1BA-0A28-4565-AB1F-E1E2C2590534'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.jng90Kobra
    --print('JNG90 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(jng90_PGuids, Guid('004730B5-1D28-40EF-B32D-70D97FEF4F28'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.jng90ENVG
    --print('JNG90 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(jng90_PGuids, Guid('DAA35B2E-4584-4123-80DC-E8D68B67E389'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.jng90Eotech
    --print('JNG90 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(jng90_PGuids, Guid('923E9842-6043-45ED-A025-F5ECA829B163'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.jng90PKAS
    --print('JNG90 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(jng90_PGuids, Guid('C7F0E416-98EE-419E-AFD0-75B2BF744AE3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.jng90PKA
    --print('JNG90 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(jng90_PGuids, Guid('FAC2BE7F-1760-4902-8E77-A00163E0BF5A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.jng90M145
    --print('JNG90 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(jng90_PGuids, Guid('26990288-9BCB-42D4-B2A9-503AB8C912F5'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.jng90PSO
    --print('JNG90 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(jng90_PGuids, Guid('1206D6A5-9AB7-44AF-BF25-B61AF7CF4FC3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.jng90ACOG
    --print('JNG90 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(jng90_PGuids, Guid('84DA9628-0BFD-4A98-9301-42EC826147D5'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.jng90Rifle
    --print('JNG90 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(jng90_PGuids, Guid('D95FB0CF-2C93-49EF-977B-C54980E0568E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.jng90PKS07
    --print('JNG90 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(jng90_PGuids, Guid('49DE46B9-97AD-4798-9817-6C746C0AED0F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = r_Settings.jng90Ballistic
    --print('JNG90 Ballistic')
end)
