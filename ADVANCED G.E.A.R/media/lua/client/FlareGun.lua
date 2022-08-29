FlareTest = function(wielder, victim, weapon, damage)
	ModInfo = wielder:getModData()
	--FlareShot = ModInfo.FlareShot
	--print("TESTIE!")
	--print(weapon:getType())
	--print(tostring(ModInfo.FlareShot))
	local hitObject = victim
	local owner = wielder
	if weapon:getType() ~= "FlareGun" then
	 return false
	end
	print("FLARE GUN!")
	print("Victim " .. tostring(victim))
	if owner:getLastHitCount() > 0 and ModInfo.GroundShot == false then
		--hitObject:getCurrentSquare():explode()
		print("Hit target catches on fire!~~~~~~~~~~~~~~")
		hitObject:SetOnFire()
		hitObject:startMuzzleFlash()
		ModInfo.FlareShot = false
		ModInfo.FlareShotWait = false
	elseif owner:isOutside() == false and  ModInfo.GroundShot == false then
		print("Inside Boom?~~~~~~~~~~~~~~~~~~~~~~~~~~~")
		owner:getCurrentSquare():explode()
		--owner:startMuzzleFlash()
	elseif  owner:isOutside() and ModInfo.GroundShot == false then
		-- testHelicopter()
		print("Flare Launch!~~~~~~~~~~~~~~")
		WorldFlares.launchFlare(500, wielder:getX(), wielder:getY(), 50, 0, 1, 0, 0, 1, 0, 0)
		-- local clim = getWorld():getClimateManager();
        -- if clim then
            -- clim:launchFlare()
        -- end
		--launchFlare(1, 1, 1, 1, 1, 1)
	end
	ModInfo.GroundShot = false
end

--Events.OnWeaponHitXp.Add(FlareGun);
Events.OnWeaponHitCharacter.Add(FlareTest)


-- function GoFlare()
	-- WorldFlares.new(nil):launchFlare(1, 1, 1, 1, 1, 1)
-- end
