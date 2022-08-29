FlareGun_Shoot = function(character, chargeDelta, weapon)
	ModInfo = character:getModData()
	--FlareShot = ModInfo.FlareShot
	--print("SHOOT!")
	local typeWeapon = weapon:getType()
	--print(typeWeapon)
	ModInfo.FlareShot = false
	--if weapon:getType() == "FlareGun" then
	if  ( typeWeapon == "FlareGun" or typeWeapon == "Flare Gun" ) and weapon:getCurrentAmmoCount() > 0 then
		print("FLARE GUNE~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
		ModInfo.FlareShot = true
		--print(tostring(ModInfo.FlareShot))
	end	
end

FlareGun_Shot_Test = function(player)
	ModInfo = player:getModData()
	local owner = player
	if ModInfo.FlareShotWait == true then	
		ModInfo.FlareShot = false
		ModInfo.FlareShotWait = false
		if owner:isOutside() == false then
			print("Inside Explosion on Test?")
			owner:getCurrentSquare():explode()
			owner:startMuzzleFlash()
		else
			print("Flare Launch!ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ")
			WorldFlares.launchFlare(5000, player:getX(), player:getY(), 250, 0, 1, 0, 0, 1, 0, 0)
		end
	end
	if ModInfo.FlareShot == true then
		ModInfo.FlareShotWait = true
	end
end	
	
Hook.Attack.Add(FlareGun_Shoot);
Events.OnPlayerUpdate.Add(FlareGun_Shot_Test)