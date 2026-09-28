require('__shared/RenderfovConfig/AssaultRenderfovConfig')

--[[Events:Subscribe('Partition:Loaded', function(partition)
	for _, instance in pairs(partition.instances) do
		if instance:Is("SoldierWeaponData") then
			local instance = SoldierWeaponData(instance)
			instance:MakeWritable()
			instance.renderFov = 120
			--print('2222 ')
		end
	end
end)--]]

--AEK
local aek_PGuids = Guid('64DB81AD-1F08-11E0-BE14-C6BC4F4ED27B')
ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('5D681523-1C33-21FE-4FAE-ADDB739196DA'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  a_Settings.aekRenderFov
    weaponRenderZoom.zoomRenderFov =  a_Settings.aekZoomRenderFov
    --print('AEK RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('BF8EC908-5E77-42F6-8163-5276D20557CA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.aekReflex
    --print('AEK Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('7B86E370-FCE4-4C51-A9FC-0D6A9CCC7A7A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.aekKobra
    --print('AEK Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('E1FED99C-2C23-45FB-A52F-334F47AD48EA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.aekENVG
    --print('AEK ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('E05170F4-4324-4330-B050-5C7C3596EAEC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.aekEotech
    --print('AEK EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('59CA212F-4A0E-4AD2-BE7B-A2DBEA2C5987'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.aekPKAS
    --print('AEK PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('D6ABAA52-88FD-41F6-80B9-303FC2AA2C37'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.aekPKA
    --print('AEK PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('D6A1AD43-D587-4B82-AE43-D3A287771374'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.aekM145
    --print('AEK M145')
end)

ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('90199F85-96DB-4AC8-95E1-28D3A1513B78'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.aekPSO
    --print('AEK PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('EF1A609C-17E5-4B58-A174-76C3F0FE2B48'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.aekACOG
    --print('AEK ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('4E0D7507-6B39-49DA-8228-C57FFEAF3672'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.aekRifle
    --print('AEK Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('F9EDF856-1870-44E2-9EC6-F3757197EB57'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.aekPKS07
    --print('AEK PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('BA087D39-EBDB-4F8C-A29A-5745779F1343'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.aekBallistic
    --print('AEK Ballistic')
end)

ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('C603C91C-D999-425C-9761-0E0A814E732B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.aekHE
    --print('AEK M320 HE')
end)

ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('49D5F1FC-8360-4157-843C-086E0BE62256'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.aekSMK
    --print('AEK M320 SMK')
end)

ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('E1F8D0DD-C973-4CCF-8D42-32E6E237FC8C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.aekSHG
    --print('AEK M320 SHG')
end)

ResourceManager:RegisterInstanceLoadHandler(aek_PGuids, Guid('05D8381B-197E-43CA-92ED-683E76AAA5C2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.aekLVG
    --print('AEK M320 LVG')
end)




local m16a3_PGuids = Guid('EA96401D-F166-11DF-A2F6-9139D3229269')
--M16A3/M16A4
ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('EE9DF7D0-71D0-1127-0090-448309734FD0'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  a_Settings.m16aRenderFov
    weaponRenderZoom.zoomRenderFov =  a_Settings.m16aZoomRenderFov
    --print('M16A RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('4B3ACC1B-0CCA-4CEF-B34F-9658CF407E13'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m16aReflex
    --print('M16A Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('27248F92-6817-4061-88B2-0D3ADCBB3010'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m16aKobra
    --print('M16A Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('FC6AAB20-052D-4BB2-8E97-2D531BFF2628'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m16aENVG
    --print('M16A ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('48264B87-C454-47B5-BC73-04DFAD594412'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m16aEotech
    --print('M16A EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('712A777C-EB79-4F8E-BD52-8DADFF50BEB9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m16aPKAS
    --print('M16A PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('02406725-272F-4F42-9C42-E5C378405464'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m16aPKA
    --print('M16A PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('E4F8FE79-EA06-4DA9-AD09-A723B8F7829B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m16aM145
    --print('M16A M145')
end)

ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('14BC9F80-7B15-4ED7-80F0-A5D4D6FBB4CB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m16aPSO
    --print('M16A PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('A777FA3A-2425-4E62-B079-4B0A8979CF29'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m16aACOG
    --print('M16A ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('83187354-0069-45DC-93B0-E62BF18CAC9A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m16aRifle
    --print('M16A Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('FFBC5D4B-1493-4CB9-B047-1276E10E6430'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m16aPKS07
    --print('M16A PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('0C6C99AE-4125-4E72-A06F-375F2D02C09D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m16aBallistic
    --print('M16A Ballistic')
end)

ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('AABD62E5-2278-4817-B619-9F6CD7080611'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m16aHE
    --print('M16A M320 HE')
end)

ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('05264022-D9D8-419B-A1FF-91A8F862BFC3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m16aSMK
    --print('M16A M320 SMK')
end)

ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('6AE222DD-819F-4F8E-B43D-06ED0C409660'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m16aSHG
    --print('M16A M320 SHG')
end)

ResourceManager:RegisterInstanceLoadHandler(m16a3_PGuids, Guid('4540A0DC-BD0D-432D-9DAC-B1EECAB49727'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m16aLVG
    --print('M16A M320 LVG')
end)



local m416_PGuids = Guid('88309FB2-3912-11E0-845E-D6BEC180D605')
--M416
ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('61856312-0202-780D-3BE8-8914D722071D'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  a_Settings.m416RenderFov
    weaponRenderZoom.zoomRenderFov =  a_Settings.m416ZoomRenderFov
    --print('M416 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('D0AA072E-8DEE-4A93-835A-507261A47FCC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m416Reflex
    --print('M416 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('3D4FC5AC-416F-4C4A-BB77-9DBB4ED306E7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m416Kobra
    --print('M416 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('C4E15B86-E56F-46A9-9A13-E26CBF9E225A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m416ENVG
    --print('M416 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('FEB91619-C4CA-4F6E-8D30-2D292C8E09DC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m416Eotech
    --print('M416 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('2263264A-AA44-4179-9A5E-39975B49C2B0'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m416PKAS
    --print('M416 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('C122A8D1-8449-4C29-B8F2-353C4C5B2A78'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m416PKA
    --print('M416 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('1BD9689D-1580-4D01-B2B5-1A7FD4B4712D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m416M145
    --print('M416 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('9646E8B9-2409-4B6D-BA4B-51854ABB09C8'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m416PSO
    --print('M416 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('930531EB-A027-4079-AFD8-58C62DB9D157'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m416ACOG
    --print('M416 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('0AD68A48-D065-452A-B51A-DB6EC066563B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m416Rifle
    --print('M416 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('75143A47-8E6B-4322-8AD7-60A75E9EE2F6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m416PKS07
    --print('M416 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('F42DEB8B-2E0C-476B-BD1B-A438B0E607C1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m416Ballistic
    --print('M416 Ballistic')
end)

ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('A5806DC1-408E-47E8-A54C-A2D3659A7085'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m416HE
    --print('M416 M320 HE')
end)

ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('A8A27194-65ED-43BC-90A5-4B44A57BAADE'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m416SMK
    --print('M416 M320 SMK')
end)

ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('6CCAC97A-BB77-49E1-9EEE-8C4C2C7D8EEA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m416SHG
    --print('M416 M320 SHG')
end)

ResourceManager:RegisterInstanceLoadHandler(m416_PGuids, Guid('FACE195F-6CE6-46B7-9F2B-8846D0C8C023'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.m416LVG
    --print('M416 M320 LVG')
end)



local an94_PGuids = Guid('37A1075D-0467-11E0-A970-FF10D557871E')
--AN94
ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('9D49AB77-B5EA-007F-BDBE-70EEB0FE9F63'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  a_Settings.an94RenderFov
    weaponRenderZoom.zoomRenderFov =  a_Settings.an94ZoomRenderFov
    --print('AN94 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('828821F1-159F-419C-8AC5-32BB27991722'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.an94Reflex
    --print('AN94 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('E9DE41E7-C964-4CB3-86F4-3FF2A7668DF1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.an94Kobra
    --print('AN94 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('2C2CE445-B421-402E-A196-327AEA897B07'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.an94ENVG
    --print('AN94 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('7A15DF5D-490D-47D5-8834-DAA2DC65F213'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.an94Eotech
    --print('AN94 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('D318AC28-F0AE-4FC7-B0D2-E8241447EA44'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.an94PKAS
    --print('AN94 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('9398931B-41D1-46CF-A2D6-D0005A43F0E7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.an94PKA
    --print('AN94 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('5D2C04ED-2A80-409E-9138-DC2341D39B7F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.an94M145
    --print('AN94 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('493339C8-EDEF-4C0F-BE2D-703BAD0A602C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.an94PSO
    --print('AN94 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('C8FB0970-A847-4C79-8B9F-877785EEDFBD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.an94ACOG
    --print('AN94 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('EB46AAA4-8A74-4EB9-A1C3-308DDF91B8D4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.an94Rifle
    --print('AN94 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('E40CA8A3-05C6-479D-977C-50BA3DCD517A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.an94PKS07
    --print('AN94 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('9BFCDB8B-7021-4DBD-B568-1863A8CA57C4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.an94Ballistic
    --print('AN94 Ballistic')
end)

ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('93480424-A863-415A-AEA1-12811C88EACF'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.an94HE
    --print('AN94 M320 HE')
end)

ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('F2D92AC0-5938-495A-B66D-0AB945DDAFFB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.an94SMK
    --print('AN94 M320 SMK')
end)

ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('D02FAA6D-92CA-4D5D-B2CC-3C2BDD9CF759'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.an94SHG
    --print('AN94 M320 SHG')
end)

ResourceManager:RegisterInstanceLoadHandler(an94_PGuids, Guid('AF5076EA-D254-4AC8-A542-C749A2CF6294'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.an94LVG
    --print('AN94 M320 LVG')
end)



local ak74m_PGuids = Guid('A7C73A1A-ECD7-11DF-9B09-83A1F299B70D')
--AK74M
ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('FDADAD22-029C-E069-D1CE-99E135C00F5D'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  a_Settings.ak74mRenderFov
    weaponRenderZoom.zoomRenderFov =  a_Settings.ak74mZoomRenderFov
    --print('AK74m RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('FA1E1814-2070-4A6C-810A-F1F99F3BE948'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.ak74mReflex
    --print('AK74m Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('0D8886D0-5305-46B9-92F8-7778CE1E7DCE'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.ak74mKobra
    --print('AK74m Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('67B0278A-9CB5-4F59-A379-C4DC63B943B4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.ak74mENVG
    --print('AK74m ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('D9749E36-0318-4D51-83EC-EF07950134C8'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.ak74mEotech
    --print('AK74m EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('CCD4D785-6D13-4A92-9DE9-3DDA689767E1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.ak74mPKAS
    --print('AK74m PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('BCB87DB4-9E11-454F-B402-38F2AEE2CCA2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.ak74mPKA
    --print('AK74m PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('D9D1AA48-9583-45F4-8ECD-E86C927DF8E0'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.ak74mM145
    --print('AK74m M145')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('E6905574-9886-42A5-B851-F8DBE0E55DC2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.ak74mPSO
    --print('AK74m PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('3C9A7696-F5E9-47C4-8578-BB6114D3075C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.ak74mACOG
    --print('AK74m ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('FA36DC85-0686-451B-8030-61F51D266653'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.ak74mRifle
    --print('AK74m Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('D5221FBA-E70F-4920-AE89-EEDC77CC1E3D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.ak74mPKS07
    --print('AK74m PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('CC6EA60D-CFE3-4702-B01C-74CE05F973C3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.ak74mBallistic
    --print('AK74m Ballistic')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('61784553-2D04-4922-8821-9F6A5AA1B9EB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.ak74mHE
    --print('AK74m M320 HE')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('C66603AB-7892-4B30-863F-9BBF0CEC9AA6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.ak74mSMK
    --print('AK74m M320 SMK')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('7559F356-AA2D-4725-B32D-EDC6237FBF49'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.ak74mSHG
    --print('AK74m M320 SHG')
end)

ResourceManager:RegisterInstanceLoadHandler(ak74m_PGuids, Guid('41FC0857-26B5-4CDD-BC25-1974863CD7CB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.ak74mLVG
    --print('AK74m M320 LVG')
end)




local aug_PGuids = Guid('91978925-827B-4DA2-82C1-307ECCB7B83B')
--AUG
ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('9ECD5064-2C38-4E78-9055-AB034FCA7CB1'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  a_Settings.augRenderFov
    weaponRenderZoom.zoomRenderFov =  a_Settings.augZoomRenderFov
    --print('AUG RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('5EE9541D-2242-469B-BC31-29E820146D49'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.augReflex
    --print('AUG Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('3D73E686-8DDE-47E8-93C3-CF3204734483'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.augKobra
    --print('AUG Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('5811E3A6-7A33-42E9-A399-D53EAA299A9B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.augENVG
    --print('AUG ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('DA51DF19-C8FC-4240-BB55-9E754D067B1F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.augEotech
    --print('AUG EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('9A7BE14C-A764-46AD-84D9-A65308295A79'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.augPKAS
    --print('AUG PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('EA506303-3EC2-4F2D-8052-3D65E38659A2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.augPKA
    --print('AUG PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('8AC85FB0-BC54-48FD-BA70-62FE0E517B83'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.augM145
    --print('AUG M145')
end)

ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('041074CB-7AA2-4AAB-A63B-6469EA5D93E6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.augPSO
    --print('AUG PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('F9CFB269-8796-4042-8647-3ACF23B8B33C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.augACOG
    --print('AUG ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('74AE380E-6249-4F6A-A307-FC03AF87B931'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.augRifle
    --print('AUG Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('D589B787-5997-47BA-BBD8-102BCD6B0321'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.augPKS07
    --print('AUG PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('D92B1C06-91E6-45C5-B562-E2189E7A8713'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.augBallistic
    --print('AUG Ballistic')
end)

ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('201D6C96-75B0-46D9-A966-8C1E1865ACEE'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.augHE
    --print('AUG M320 HE')
end)

ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('7B5FA7FA-A1BF-46F2-8D04-FF7C385AC9D4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.augSMK
    --print('AUG M320 SMK')
end)

ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('9F1F8847-560C-4A48-93AD-61FFE3D4CF21'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.augSHG
    --print('AUG M320 SHG')
end)

ResourceManager:RegisterInstanceLoadHandler(aug_PGuids, Guid('D53C82E9-1531-4D6C-A2C0-C4AFA87CA598'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.augLVG
    --print('AUG M320 LVG')
end)




local scarl_PGuids = Guid('6695DE67-4178-4EA7-95F9-9D575EF95E2A')
--SCAR-L
ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('AD4E9901-3A1A-40C2-AC73-62BEFED84959'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  a_Settings.scarlRenderFov
    weaponRenderZoom.zoomRenderFov =  a_Settings.scarlZoomRenderFov
    --print('SCAR-L RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('B05A9443-3AED-4D11-95C2-EAD43CFE2CD1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.scarlReflex
    --print('SCAR-L Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('1D4F7682-07C8-4C14-ABC5-77F32E98282A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.scarlKobra
    --print('SCAR-L Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('C7F35C9B-AEC2-490A-8718-C3DC60689699'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.scarlENVG
    --print('SCAR-L ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('5EABC17F-3AFC-496E-B366-308394E6427E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.scarlEotech
    --print('SCAR-L EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('81E3E291-71EA-4B77-B462-E91AE85CC371'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.scarlPKAS
    --print('SCAR-L PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('348ADE3B-9EC3-4DEF-BF43-4828C7F81508'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.scarlPKA
    --print('SCAR-L PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('7B98539F-BC8D-4562-947C-61F40276BE50'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.scarlM145
    --print('SCAR-L M145')
end)

ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('34F33A75-E937-41B3-AD20-2DB5E8BDA73E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.scarlPSO
    --print('SCAR-L PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('17E141CC-C1D4-4D9B-AB82-05B21594DC66'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.scarlACOG
    --print('SCAR-L ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('F781C2AB-96BC-490C-B374-A48C644EDC2E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.scarlRifle
    --print('SCAR-L Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('694E8BEE-4D81-48D4-BDDC-505BEE9C318F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.scarlPKS07
    --print('SCAR-L PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('4F1957DB-FAFF-4C32-82E0-CE6AA89533AA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.scarlBallistic
    --print('SCAR-L Ballistic')
end)

ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('ADC61BD2-B4EE-4AC1-8FC7-2AAFCD94B8A0'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.scarlHE
    --print('SCAR-L M320 HE')
end)

ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('BD7CF9B7-25A4-4516-9000-A9B497209724'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.scarlSMK
    --print('SCAR-L M320 SMK')
end)

ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('8D067458-E3C8-4BFC-A5E5-D4593D76203D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.scarlSHG
    --print('SCAR-L M320 SHG')
end)

ResourceManager:RegisterInstanceLoadHandler(scarl_PGuids, Guid('1DB9B159-9419-4262-9EB6-C370C53876E1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.scarlLVG
    --print('SCAR-L M320 LVG')
end)




local f2000_PGuids = Guid('B73816D2-F3B8-11DF-B48C-9F474D51EF2A')
--F2000
ResourceManager:RegisterInstanceLoadHandler(f2000_PGuids, Guid('AEAF0C4B-7ADB-F596-CEB2-D394B0AD3FF7'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  a_Settings.f2000RenderFov
    weaponRenderZoom.zoomRenderFov =  a_Settings.f2000ZoomRenderFov
    --print('F2000 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(f2000_PGuids, Guid('CEF9DCEF-B218-42AA-8A7E-DD9CF7F7CA0F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.f2000Reflex
    --print('F2000 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(f2000_PGuids, Guid('E06D31C9-29A8-4C72-A19A-F4AC409A8FA1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.f2000Kobra
    --print('F2000 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(f2000_PGuids, Guid('14764C5C-733A-454A-A7FA-A1F383DBA0FC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.f2000ENVG
    --print('F2000 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(f2000_PGuids, Guid('C30A9E71-98F0-4ACB-9A31-C842138F41A0'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.f2000Eotech
    --print('F2000 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(f2000_PGuids, Guid('6628C67F-59F4-46C2-BE40-602A328BE82F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.f2000PKAS
    --print('F2000 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(f2000_PGuids, Guid('D5C9D892-81B1-4456-8B2E-8B5B177E143C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.f2000PKA
    --print('F2000 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(f2000_PGuids, Guid('E2DB3BB4-C2D2-49B3-808B-6905376F672C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.f2000M145
    --print('F2000 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(f2000_PGuids, Guid('129B3507-D3B3-4C04-9E67-B55F1646B602'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.f2000PSO
    --print('F2000 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(f2000_PGuids, Guid('2E1E8342-105D-4FD6-BBA0-6B3B7D99F5CB'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.f2000ACOG
    --print('F2000 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(f2000_PGuids, Guid('6BA8D168-F2A4-42A4-9822-595BBD9F0D75'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.f2000Rifle
    --print('F2000 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(f2000_PGuids, Guid('592F0C91-5421-4C26-8B8C-F0BC264F0D9A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.f2000PKS07
    --print('F2000 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(f2000_PGuids, Guid('46BEBDE1-9E77-4887-9F12-6785F2D308E6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.f2000Ballistic
    --print('F2000 Ballistic')
end)






local kh2002_PGuids = Guid('CF1239D1-1738-11E0-B7E4-E4E608316920')
--KH2002
ResourceManager:RegisterInstanceLoadHandler(kh2002_PGuids, Guid('08A54DD6-A3EB-DD02-B059-5217B50CA327'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  a_Settings.kh2002RenderFov
    weaponRenderZoom.zoomRenderFov =  a_Settings.kh2002ZoomRenderFov
    --print('KH2002 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(kh2002_PGuids, Guid('076E202A-D91F-45A6-8625-24E7BC2AA564'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.kh2002Reflex
    --print('KH2002 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(kh2002_PGuids, Guid('84B78F23-FB94-4417-896C-E053D73201CD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.kh2002Kobra
    --print('KH2002 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(kh2002_PGuids, Guid('31BFD9D6-3F57-4EF5-AE63-BE5813961093'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.kh2002ENVG
    --print('KH2002 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(kh2002_PGuids, Guid('A4214E89-D02A-4886-B94F-A084CD3A97EC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.kh2002Eotech
    --print('KH2002 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(kh2002_PGuids, Guid('D2C10C97-3D58-4C52-A707-64F779DCE2C9'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.kh2002PKAS
    --print('KH2002 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(kh2002_PGuids, Guid('D268F682-7B97-4D67-822C-DFC8DEE9932E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.kh2002PKA
    --print('KH2002 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(kh2002_PGuids, Guid('CF63FA3B-7917-4B48-9DDC-CA11A547ED01'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.kh2002M145
    --print('KH2002 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(kh2002_PGuids, Guid('09080C8F-30E7-4883-BB3E-B54129FDB2D2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.kh2002PSO
    --print('KH2002 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(kh2002_PGuids, Guid('12291FB2-AFE5-4B71-978A-4979968A9015'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.kh2002ACOG
    --print('KH2002 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(kh2002_PGuids, Guid('E6BF9460-FE86-46EF-9F3C-A4EA9E7D9CA2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.kh2002Rifle
    --print('KH2002 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(kh2002_PGuids, Guid('AD09DE5F-064C-403C-88E5-1A7F196A6EB4'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.kh2002PKS07
    --print('KH2002 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(kh2002_PGuids, Guid('3351CE44-EA15-48BA-BD18-BCB520CADAE0'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.kh2002Ballistic
    --print('KH2002 Ballistic')
end)





local g3a3_PGuids = Guid('34347158-E5AA-11DF-99EB-E13A35414FEB')
--G3A3
ResourceManager:RegisterInstanceLoadHandler(g3a3_PGuids, Guid('38F3A1B3-E8BD-B4BF-95EF-A0DA1F8AD2C7'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  a_Settings.g3a3RenderFov
    weaponRenderZoom.zoomRenderFov =  a_Settings.g3a3ZoomRenderFov
    --print('G3A3 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(g3a3_PGuids, Guid('EA4C9145-513B-47EA-9A14-9BB0165BDBF5'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.g3a3Reflex
    --print('G3A3 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(g3a3_PGuids, Guid('7340B9DE-C562-40B3-B3D6-FCF2E3EC4E5A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.g3a3Kobra
    --print('G3A3 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(g3a3_PGuids, Guid('FB1B607E-D43C-41E0-88A6-6CC36927FEE8'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.g3a3ENVG
    --print('G3A3 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(g3a3_PGuids, Guid('F8F01F67-75F6-4564-B92C-2BE35EA856A1'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.g3a3Eotech
    --print('G3A3 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(g3a3_PGuids, Guid('70DC08AB-7ED3-4318-8194-BDFC3FD32AFD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.g3a3PKAS
    --print('G3A3 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(g3a3_PGuids, Guid('FBFB1D3B-06F5-49EF-A94E-E6E5ABDAEAC6'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.g3a3PKA
    --print('G3A3 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(g3a3_PGuids, Guid('A46E4FD4-6A18-4BC4-B5E1-8F85D8A2EF24'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.g3a3M145
    --print('G3A3 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(g3a3_PGuids, Guid('F7CD9BDE-DA75-4177-A0F1-388CF93105DA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.g3a3PSO
    --print('G3A3 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(g3a3_PGuids, Guid('6F5A355A-F067-4571-9EB1-DE11D30FE43E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.g3a3ACOG
    --print('G3A3 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(g3a3_PGuids, Guid('4CC767F6-1401-492C-9856-B700663878E7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.g3a3Rifle
    --print('G3A3 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(g3a3_PGuids, Guid('3A646801-B47B-4411-A0E6-EF901F4CCA99'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.g3a3PKS07
    --print('G3A3 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(g3a3_PGuids, Guid('EA1E5640-9213-45FA-94A3-A3F6C892CE2A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.g3a3Ballistic
    --print('G3A3 Ballistic')
end)




local famas_PGuids = Guid('706A1BD6-6DAB-4CEE-BFCA-82814251E2D8')
--FAMAS
ResourceManager:RegisterInstanceLoadHandler(famas_PGuids, Guid('A75A16C6-8837-4951-A923-B9EDFB52EFF7'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  a_Settings.famasRenderFov
    weaponRenderZoom.zoomRenderFov =  a_Settings.famasZoomRenderFov
    --print('FAMAS RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(famas_PGuids, Guid('5F95D38C-1143-4AD6-B133-23589ED1DF30'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.famasReflex
    --print('FAMAS Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(famas_PGuids, Guid('EDEBD8E4-97D1-4BB5-A3D7-40FFEFBAB898'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.famasKobra
    --print('FAMAS Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(famas_PGuids, Guid('2B79F3D8-1CC6-41F8-A20D-4FE5451398D3'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.famasENVG
    --print('FAMAS ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(famas_PGuids, Guid('0BEFC5D0-2208-402B-8666-FB025C897037'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.famasEotech
    --print('FAMAS EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(famas_PGuids, Guid('BEEF67C8-737B-4D56-82DB-C1C0021F956A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.famasPKAS
    --print('FAMAS PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(famas_PGuids, Guid('4AD60188-D22A-4044-BB97-089E978E78CD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.famasPKA
    --print('FAMAS PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(famas_PGuids, Guid('9DE990B3-E05A-420E-890F-5246A3219DAF'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.famasM145
    --print('FAMAS M145')
end)

ResourceManager:RegisterInstanceLoadHandler(famas_PGuids, Guid('022EA902-BF9E-4033-8308-20A199AD1D13'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.famasPSO
    --print('FAMAS PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(famas_PGuids, Guid('F31F0161-27F5-4C09-BB01-8F2165DDC7ED'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.famasACOG
    --print('FAMAS ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(famas_PGuids, Guid('D5DCCDAC-F51E-4C7C-8376-E25A31B22028'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.famasRifle
    --print('FAMAS Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(famas_PGuids, Guid('A99BB50C-CDDA-481B-AF08-03B4E13EE27F'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.famasPKS07
    --print('FAMAS PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(famas_PGuids, Guid('69153EC0-DC2D-4FF5-830B-E884F2D1B309'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.famasBallistic
    --print('FAMAS Ballistic')
end)




local l85a2_PGuids = Guid('197EE0EE-6190-46FF-982C-AA90A37439C7')
--L85A2
ResourceManager:RegisterInstanceLoadHandler(l85a2_PGuids, Guid('C7207557-65BA-4DCB-83E7-2C9D23553020'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  a_Settings.l85a2RenderFov
    weaponRenderZoom.zoomRenderFov =  a_Settings.l85a2ZoomRenderFov
    --print('L85A2 RenderFov')
end)

ResourceManager:RegisterInstanceLoadHandler(l85a2_PGuids, Guid('DFA7E301-B7F1-472F-A244-B8FA3AFA2674'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.l85a2Reflex
    --print('L85A2 Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(l85a2_PGuids, Guid('EB0C20AD-CBFB-4FE5-A004-B9A6C0AB902D'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.l85a2Kobra
    --print('L85A2 Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(l85a2_PGuids, Guid('EA8E0446-74ED-4FE5-9C3E-603B31780B99'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.l85a2ENVG
    --print('L85A2 ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(l85a2_PGuids, Guid('DE9D3165-F805-493B-A6C9-36116CAE314C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.l85a2Eotech
    --print('L85A2 EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(l85a2_PGuids, Guid('6BAF6E85-CF4C-4BD7-9DE6-BC7159A66CA7'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.l85a2PKAS
    --print('L85A2 PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(l85a2_PGuids, Guid('D3D4B790-8189-471C-B267-6015F698647E'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.l85a2PKA
    --print('L85A2 PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(l85a2_PGuids, Guid('921E4841-A861-4E96-8AF4-F5CA38D6BCAD'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.l85a2M145
    --print('L85A2 M145')
end)

ResourceManager:RegisterInstanceLoadHandler(l85a2_PGuids, Guid('0DF6E567-0918-4167-A271-67D9130281C2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.l85a2PSO
    --print('L85A2 PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(l85a2_PGuids, Guid('C2058259-8725-4BA5-A205-B4833E0ED32C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.l85a2ACOG
    --print('L85A2 ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(l85a2_PGuids, Guid('4BDFD496-C8FF-4BE4-95E1-01E41712BBAC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.l85a2Rifle
    --print('L85A2 Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(l85a2_PGuids, Guid('2F20B032-1DDD-4F78-B006-B6A5C3010619'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.l85a2PKS07
    --print('L85A2 PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(l85a2_PGuids, Guid('79EF6691-545B-490F-AB73-0B4A2FB69455'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = a_Settings.l85a2Ballistic
    --print('L85A2 Ballistic')
end)
