require('__shared/RenderfovConfig/EngineerRenderfovConfig')


--M4/M4A1
local m4a1_PGuids = Guid('E58B6AE6-E32E-11DF-8110-9522DC68C5EB')
ResourceManager:RegisterInstanceLoadHandler(m4a1_PGuids, Guid('94C9BBB5-6E11-D7AD-EFC0-DE93EF684846'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  e_Settings.m4RenderFov
    weaponRenderZoom.zoomRenderFov =  e_Settings.m4ZoomRenderFov
    --print('M4A1 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(m4a1_PGuids, Guid('815C158F-D233-4AD2-BD15-5A1D4F9CDDE1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.m4Reflex
    --print('M4A1 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(m4a1_PGuids, Guid('C36D1399-C65F-458E-882D-5F8B0BC804B3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.m4Kobra
    --print('M4A1 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(m4a1_PGuids, Guid('06F5A01F-AA10-4ED6-982E-0CFD552DD2F7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.m4ENVG
    --print('M4A1 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(m4a1_PGuids, Guid('35D1AFCC-166A-42D1-9A66-93C3994B557F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.m4Eotech
    --print('M4A1 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(m4a1_PGuids, Guid('00C39D78-355A-4228-9445-720EA356648D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.m4PKAS
    --print('M4A1 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(m4a1_PGuids, Guid('9DE242C4-44CB-4BA6-954F-ED5BBD9F0101'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.m4PKA
    --print('M4A1 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(m4a1_PGuids, Guid('1834DF61-935C-4158-BE20-6F034AD926F9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.m4M145
    --print('M4A1 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(m4a1_PGuids, Guid('803DDB90-01D8-4273-8686-FB914E37D168'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.m4PSO
    --print('M4A1 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(m4a1_PGuids, Guid('A9E3F0BF-3722-445F-87EC-28D6870217D8'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.m4ACOG
    --print('M4A1 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(m4a1_PGuids, Guid('FB604CFE-F376-4E21-8ABA-F5661332F760'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.m4Rifle
    --print('M4A1 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(m4a1_PGuids, Guid('B54D8AC3-8591-4B60-A533-30047013A578'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.m4PKS07
    --print('M4A1 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(m4a1_PGuids, Guid('3429B496-3256-4B42-A195-51218964C767'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.m4Ballistic
    --print('M4A1 Ballistic')
end)


local ak74u_PGuids = Guid('BC650B69-F196-11DF-B91B-D0A172B2A94A')
--AKS-74U
ResourceManager:RegisterInstanceLoadHandler(ak74u_PGuids, Guid('36E70ED7-ACDF-A21D-48A1-164921328289'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  e_Settings.aks74uRenderFov
    weaponRenderZoom.zoomRenderFov =  e_Settings.aks74uZoomRenderFov
    --print('AKS-74U RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74u_PGuids, Guid('7052604D-E008-4AFE-A085-3B2CDD89FDEC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.aks74uReflex
    --print('AKS-74U Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74u_PGuids, Guid('5E450966-6240-48E2-95DA-D5F7B1CD074E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.aks74uKobra
    --print('AKS-74U Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74u_PGuids, Guid('7011E016-AB4C-404E-B272-C98437648717'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.aks74uENVG
    --print('AKS-74U ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74u_PGuids, Guid('AEBD80FB-9FFC-4270-ADAA-AF8B6819262F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.aks74uEotech
    --print('AKS-74U EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74u_PGuids, Guid('1FE8C5E8-4337-47D9-AC1A-882D26A4E830'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.aks74uPKAS
    --print('AKS-74U PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74u_PGuids, Guid('A747331E-9356-4F28-89F2-25C7E2A6A784'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.aks74uPKA
    --print('AKS-74U PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74u_PGuids, Guid('223F91E7-EB9D-4F82-900E-16C8AF546198'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.aks74uM145
    --print('AKS-74U M145')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74u_PGuids, Guid('87FA3DA6-2BA0-4C78-95A5-854DFC190F70'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.aks74uPSO
    --print('AKS-74U PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74u_PGuids, Guid('E3F04879-E1B7-4F2E-A4D3-D4FB761AC54D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.aks74uACOG
    --print('AKS-74U ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74u_PGuids, Guid('5CA5B862-4AED-4F12-8D64-D1188B2745E7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.aks74uRifle
    --print('AKS-74U Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74u_PGuids, Guid('6663709D-3650-4501-AF40-AFDCC467DD81'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.aks74uPKS07
    --print('AKS-74U PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74u_PGuids, Guid('053324E8-6EF5-46A8-95F4-126FBC9953EA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.aks74uBallistic
    --print('AKS-74U Ballistic')
end)





local scarh_PGuids = Guid('3DD281E1-279E-11E0-BCCD-BF5F79C336AA')
--SCAR-H
ResourceManager:RegisterInstanceLoadHandler(scarh_PGuids, Guid('BEB58E14-7F0F-251E-D7E6-779A06A1D5ED'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  e_Settings.scarhRenderFov
    weaponRenderZoom.zoomRenderFov =  e_Settings.scarhZoomRenderFov
    --print('SCAR-H RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(scarh_PGuids, Guid('F7B55533-87D9-4B22-A482-72D54880CFC1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.scarhReflex
    --print('SCAR-H Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(scarh_PGuids, Guid('7ACB617C-0A67-4CB0-83A2-24F9D7E9AE50'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.scarhKobra
    --print('SCAR-H Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(scarh_PGuids, Guid('E3174F22-EF0A-449A-BABE-F6510C71243A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.scarhENVG
    --print('SCAR-H ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(scarh_PGuids, Guid('653329FE-5A44-4379-A3FA-62ACFC269DB3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.scarhEotech
    --print('SCAR-H EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(scarh_PGuids, Guid('A3B59248-C922-4DB2-935C-0B1B14036EAB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.scarhPKAS
    --print('SCAR-H PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(scarh_PGuids, Guid('66E8C5A8-6528-4355-A0CE-AB3BB51B545F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.scarhPKA
    --print('SCAR-H PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(scarh_PGuids, Guid('5A2F18DD-B73C-40FA-B3A3-14BD7C617C39'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.scarhM145
    --print('SCAR-H M145')
end)

ResourceManager:RegisterInstanceLoadHandler(scarh_PGuids, Guid('8B70F2B3-5916-4112-AFA6-A1687CCDA554'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.scarhPSO
    --print('SCAR-H PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(scarh_PGuids, Guid('25AB46E1-D65E-4EED-B376-19CC08925F2F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.scarhACOG
    --print('SCAR-H ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(scarh_PGuids, Guid('51348368-6478-4DCE-9BAF-C533D832308F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.scarhRifle
    --print('SCAR-H Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(scarh_PGuids, Guid('780BBB76-10D8-4727-ADDC-FAE1D253E70E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.scarhPKS07
    --print('SCAR-H PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(scarh_PGuids, Guid('C7685777-A6D1-4CA4-90F6-93CE34DF1781'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.scarhBallistic
    --print('SCAR-H Ballistic')
end)





local a91_PGuids = Guid('98DAE0F8-1717-11E0-9317-9BA393B7EF47')
--A-91
ResourceManager:RegisterInstanceLoadHandler(a91_PGuids, Guid('17358A5E-54A5-F9DE-AFAD-138F94C4CE66'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  e_Settings.a91RenderFov
    weaponRenderZoom.zoomRenderFov =  e_Settings.a91ZoomRenderFov
    --print('A-91 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(a91_PGuids, Guid('517E53D3-3349-4762-8681-7B374BCD29A7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.a91Reflex
    --print('A-91 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(a91_PGuids, Guid('3D4471E2-6AB5-41E3-AA31-4CD3CA79AFDA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.a91Kobra
    --print('A-91 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(a91_PGuids, Guid('0F6D338B-62AC-48A9-9AA7-7C1BE524A7A4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.a91ENVG
    --print('A-91 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(a91_PGuids, Guid('2C61190A-84CB-44B3-8EB2-4055F9A11447'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.a91Eotech
    --print('A-91 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(a91_PGuids, Guid('9472BADA-C598-452F-B486-F3A99B1EBC5A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.a91PKAS
    --print('A-91 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(a91_PGuids, Guid('9E9CC4AC-059C-4575-8F86-0DD075BE81FC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.a91PKA
    --print('A-91 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(a91_PGuids, Guid('C2AD6C58-66DF-4C2B-8D2E-5EA358F27EA9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.a91M145
    --print('A-91 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(a91_PGuids, Guid('70CB9AB9-B4BA-4EF4-986A-EDCB223BF1B8'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.a91PSO
    --print('A-91 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(a91_PGuids, Guid('9F510FCF-878E-47A8-AAFD-4A77C1033296'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.a91ACOG
    --print('A-91 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(a91_PGuids, Guid('604D086E-3D9B-4AF7-9441-2558B5A99206'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.a91Rifle
    --print('A-91 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(a91_PGuids, Guid('08A10D9D-B3D3-4F74-B51D-589101F05244'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.a91PKS07
    --print('A-91 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(a91_PGuids, Guid('C5F1E48F-950B-4077-A035-CC985C9D061F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.a91Ballistic
    --print('A-91 Ballistic')
end)





local g36c_PGuids = Guid('00204E5D-09D2-11E0-9907-B7A8F369505D')
--G36C
ResourceManager:RegisterInstanceLoadHandler(g36c_PGuids, Guid('3E0EC4A4-C3D2-0F4C-F923-7041943ADDE6'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  e_Settings.g36cRenderFov
    weaponRenderZoom.zoomRenderFov =  e_Settings.g36cZoomRenderFov
    --print('G36C RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(g36c_PGuids, Guid('3081B5F5-C755-4505-8345-47418CB0EE95'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g36cReflex
    --print('G36C Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(g36c_PGuids, Guid('763883AE-FE00-442D-B55C-6D7BD7DB967A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g36cKobra
    --print('G36C Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(g36c_PGuids, Guid('6A1D47BB-903E-4582-853A-004401397155'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g36cENVG
    --print('G36C ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(g36c_PGuids, Guid('F6FEC1B8-D206-4BC4-8FB3-31CEEDF83DF9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g36cEotech
    --print('G36C EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(g36c_PGuids, Guid('1A639D09-5E2B-445F-870D-000B01172AF7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g36cPKAS
    --print('G36C PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(g36c_PGuids, Guid('D6A2EBA4-0046-4940-9E77-1377346F56BB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g36cPKA
    --print('G36C PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(g36c_PGuids, Guid('8FC6631B-C0FB-435C-9739-FF16505E4918'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g36cM145
    --print('G36C M145')
end)

ResourceManager:RegisterInstanceLoadHandler(g36c_PGuids, Guid('8C3273D4-BC49-4032-B02A-4812308BC4D2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g36cPSO
    --print('G36C PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(g36c_PGuids, Guid('E43C45C7-56F7-4763-AAAC-240576093AD2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g36cACOG
    --print('G36C ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(g36c_PGuids, Guid('9E7057DE-5061-42C5-9A64-26F9A0E77523'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g36cRifle
    --print('G36C Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(g36c_PGuids, Guid('EC0191AD-60C4-4E70-9B26-4B6579126BFE'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g36cPKS07
    --print('G36C PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(g36c_PGuids, Guid('8444A674-9B7A-4013-9DE2-26BB63AE5686'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g36cBallistic
    --print('G36C Ballistic')
end)





local sg553_PGuids = Guid('B8F7A8DD-17E0-11E0-8CD8-85483A75A7C5')
--SG553
ResourceManager:RegisterInstanceLoadHandler(sg553_PGuids, Guid('F24EC1DF-D9A6-7F90-51E7-3E09766518A3'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  e_Settings.sg553RenderFov
    weaponRenderZoom.zoomRenderFov =  e_Settings.sg553ZoomRenderFov
    --print('SG553 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(sg553_PGuids, Guid('7A128D3A-24D0-4F3B-9CFF-051406D3E838'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.sg553Reflex
    --print('SG553 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(sg553_PGuids, Guid('641E6078-72FE-4CD1-BABE-DC8CD2FBE5F4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.sg553Kobra
    --print('SG553 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(sg553_PGuids, Guid('D6899B7E-9948-4FDF-963F-FC8ECF64EB90'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.sg553ENVG
    --print('SG553 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(sg553_PGuids, Guid('8DBDDA83-EA0A-4EBF-8B10-4E6EC07F2A48'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.sg553Eotech
    --print('SG553 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(sg553_PGuids, Guid('5171ADB4-1F73-4AE5-842C-17DA6EB329BC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.sg553PKAS
    --print('SG553 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(sg553_PGuids, Guid('AD0AE8F1-7BCC-435A-937F-8B6B22C73E21'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.sg553PKA
    --print('SG553 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(sg553_PGuids, Guid('16D68E02-9B53-4166-A44E-E039F0E2D4A4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.sg553M145
    --print('SG553 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(sg553_PGuids, Guid('7C00A73A-65C3-42A1-BF7D-5D9E939946AB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.sg553PSO
    --print('SG553 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(sg553_PGuids, Guid('28937E3B-BF66-4B94-8B89-3A9C01BA144C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.sg553ACOG
    --print('SG553 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(sg553_PGuids, Guid('E5BFBE5C-C01B-4B89-BB2D-0FC0192DB97C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.sg553Rifle
    --print('SG553 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(sg553_PGuids, Guid('381A5C15-1B3B-47A8-A439-4E0926D2B28A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.sg553PKS07
    --print('SG553 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(sg553_PGuids, Guid('B1178C78-BF98-49A1-9A49-533194B6E3B9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.sg553Ballistic
    --print('SG553 Ballistic')
end)





local g53_PGuids = Guid('3E24517D-B208-4D69-8FF9-A6120249E6EC')
--G53
ResourceManager:RegisterInstanceLoadHandler(g53_PGuids, Guid('EC47FCA5-F2D0-40D9-AE88-D56B2711BEAC'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  e_Settings.g53RenderFov
    weaponRenderZoom.zoomRenderFov =  e_Settings.g53ZoomRenderFov
    --print('G53 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(g53_PGuids, Guid('45488709-C69C-4308-A594-D53CCB471E93'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g53Reflex
    --print('G53 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(g53_PGuids, Guid('6B1A02F6-5E4A-40D4-8018-8BC953405779'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g53Kobra
    --print('G53 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(g53_PGuids, Guid('7A242AFB-9677-4095-B4D7-6283F275ECA9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g53ENVG
    --print('G53 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(g53_PGuids, Guid('D0B6EFDC-57A5-49C9-A4E6-67472A78C655'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g53Eotech
    --print('G53 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(g53_PGuids, Guid('23591C97-CF16-446E-B048-10D871B394B5'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g53PKAS
    --print('G53 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(g53_PGuids, Guid('7D1CE1EB-5DD1-4196-BD96-6AF20FC47CFE'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g53PKA
    --print('G53 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(g53_PGuids, Guid('44AC2E32-3F76-4920-9181-8DF042B32018'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g53M145
    --print('G53 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(g53_PGuids, Guid('3D5D0FEB-BF72-42A7-BB05-6E50615764C5'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g53PSO
    --print('G53 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(g53_PGuids, Guid('C6D37A11-FED5-4911-B26B-E7456BB335E4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g53ACOG
    --print('G53 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(g53_PGuids, Guid('6101A32A-D20D-4427-A801-8079E34BA829'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g53Rifle
    --print('G53 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(g53_PGuids, Guid('A22ED51D-502F-4835-A12E-2EC3BDFE3232'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g53PKS07
    --print('G53 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(g53_PGuids, Guid('86FC14EE-E7A9-4629-807C-E603AE870A9E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.g53Ballistic
    --print('G53 Ballistic')
end)






local qbz95b_PGuids = Guid('1F059380-D6B9-437F-B9D4-BD85038233A9')
--QBZ-95B
ResourceManager:RegisterInstanceLoadHandler(qbz95b_PGuids, Guid('B25E5CC4-F6FB-4E34-BEEC-1B04CEF8614F'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  e_Settings.qbz95bRenderFov
    weaponRenderZoom.zoomRenderFov =  e_Settings.qbz95bZoomRenderFov
    --print('QBZ-95B RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(qbz95b_PGuids, Guid('EC90B79C-9026-42A9-AF83-39DC65B327AF'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.qbz95bReflex
    --print('QBZ-95B Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(qbz95b_PGuids, Guid('30ED5CC9-94CF-452A-88D2-4DB0A2346CDD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.qbz95bKobra
    --print('QBZ-95B Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(qbz95b_PGuids, Guid('A9487B46-84A0-454A-B0A8-1FC528A7BE4E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.qbz95bENVG
    --print('QBZ-95B ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(qbz95b_PGuids, Guid('F1FE7FBB-5FB7-40C0-96EF-E7EBA559DF20'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.qbz95bEotech
    --print('QBZ-95B EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(qbz95b_PGuids, Guid('6FBBB52D-E5F3-4E04-BAA6-2BB9157018DC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.qbz95bPKAS
    --print('QBZ-95B PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(qbz95b_PGuids, Guid('C7762AAE-6B76-4275-BD15-4FDF92F9AE38'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.qbz95bPKA
    --print('QBZ-95B PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(qbz95b_PGuids, Guid('E3C56AFF-686D-4A55-8FD3-F99EA8C16AB7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.qbz95bM145
    --print('QBZ-95B M145')
end)

ResourceManager:RegisterInstanceLoadHandler(qbz95b_PGuids, Guid('7C6927BC-5BD1-4DF2-8DC6-242541123EB3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.qbz95bPSO
    --print('QBZ-95B PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(qbz95b_PGuids, Guid('F61E500C-D1CE-40C1-8BBE-73677469EBF8'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.qbz95bACOG
    --print('QBZ-95B ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(qbz95b_PGuids, Guid('5574ABE1-3498-41DD-97DF-5A3DF131A488'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.qbz95bRifle
    --print('QBZ-95B Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(qbz95b_PGuids, Guid('4ED9BA21-402A-4D2B-9145-32F75A1E80C6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.qbz95bPKS07
    --print('QBZ-95B PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(qbz95b_PGuids, Guid('5DF1D8B1-D6F1-4379-A67F-EFC11B631CFC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.qbz95bBallistic
    --print('QBZ-95B Ballistic')
end)






local acwr_PGuids = Guid('E1DE3897-F570-11E0-B897-D25D16CBAAAF')
--ACW-R
ResourceManager:RegisterInstanceLoadHandler(acwr_PGuids, Guid('C83F98A7-039D-C6AF-93C1-FB381BAA911B'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  e_Settings.acwrRenderFov
    weaponRenderZoom.zoomRenderFov =  e_Settings.acwrZoomRenderFov
    --print('ACW-R RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(acwr_PGuids, Guid('009045ED-AD4D-45BF-8023-F5B6D49D375E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.acwrReflex
    --print('ACW-R Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(acwr_PGuids, Guid('CF94AD0C-D26F-4345-9F17-02EDC29603BE'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.acwrKobra
    --print('ACW-R Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(acwr_PGuids, Guid('A06000EB-21BB-4BDE-999E-DE770268978C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.acwrENVG
    --print('ACW-R ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(acwr_PGuids, Guid('6DBA4396-8B83-48DA-B8E1-FC4FBFB7576D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.acwrEotech
    --print('ACW-R EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(acwr_PGuids, Guid('CDB1A874-7F97-4017-9415-4FB329B0AB6D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.acwrPKAS
    --print('ACW-R PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(acwr_PGuids, Guid('D828D50A-4561-426E-A87E-869FDE9E0FF3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.acwrPKA
    --print('ACW-R PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(acwr_PGuids, Guid('4E55B2FE-3274-4B65-92E9-02AD1B1E361C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.acwrM145
    --print('ACW-R M145')
end)

ResourceManager:RegisterInstanceLoadHandler(acwr_PGuids, Guid('023A8E09-ADA9-4DDD-91CE-2A2F6D6FEFB9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.acwrPSO
    --print('ACW-R PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(acwr_PGuids, Guid('B6ABD92C-13E5-4DC4-A160-02D1C5398C84'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.acwrACOG
    --print('ACW-R ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(acwr_PGuids, Guid('8A25FE8A-CCFB-47B5-8A5F-FFBB755C091C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.acwrRifle
    --print('ACW-R Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(acwr_PGuids, Guid('9C29DAA9-3CEF-478E-9C4B-ED16BC7CDBB4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.acwrPKS07
    --print('ACW-R PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(acwr_PGuids, Guid('78D6EF2B-D50A-47AD-821E-69713C04F3DF'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.acwrBallistic
    --print('ACW-R Ballistic')
end)





local mtar21_PGuids = Guid('057A5DF0-209C-4C31-880F-479AF453884D')
--MTAR-21
ResourceManager:RegisterInstanceLoadHandler(mtar21_PGuids, Guid('C8CF7D36-E490-43F4-8EB9-B7F647960B55'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  e_Settings.mtarRenderFov
    weaponRenderZoom.zoomRenderFov =  e_Settings.mtarZoomRenderFov
    --print('MTAR-21 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(mtar21_PGuids, Guid('9A318E07-2992-4511-88FE-6EB36192B421'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.mtarReflex
    --print('MTAR-21 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(mtar21_PGuids, Guid('1ACAD0CA-286E-48EC-AD83-F6CC3D50F019'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.mtarKobra
    --print('MTAR-21 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(mtar21_PGuids, Guid('505F0D20-0DAD-48BD-A6EE-9B4CB66D20DF'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.mtarENVG
    --print('MTAR-21 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(mtar21_PGuids, Guid('6556EAB3-C195-4257-8B75-957A8EFDE1AD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.mtarEotech
    --print('MTAR-21 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(mtar21_PGuids, Guid('F0E3E041-B1A7-405B-962F-B9D7D9A6E4F7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.mtarPKAS
    --print('MTAR-21 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(mtar21_PGuids, Guid('2B3C77E4-2403-47AD-B40C-6CCD5E9BFD5D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.mtarPKA
    --print('MTAR-21 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(mtar21_PGuids, Guid('E2DBF3DB-7021-44D1-9BF3-23C088B67415'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.mtarM145
    --print('MTAR-21 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(mtar21_PGuids, Guid('4024B0E1-0EF8-44C9-A945-25CEA9BB8C69'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.mtarPSO
    --print('MTAR-21 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(mtar21_PGuids, Guid('E5D73065-4740-4565-9021-7107E65C5920'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.mtarACOG
    --print('MTAR-21 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(mtar21_PGuids, Guid('C8017C84-CD47-4147-BA4A-F49715B96189'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.mtarRifle
    --print('MTAR-21 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(mtar21_PGuids, Guid('DA86CE2B-8637-445A-9BFE-113521D8BE98'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.mtarPKS07
    --print('MTAR-21 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(mtar21_PGuids, Guid('ADADFEB7-8A44-440E-8CE5-47217C42FE52'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = e_Settings.mtarBallistic
    --print('MTAR-21 Ballistic')
end)

