DriveSkillUtils = {};

DriveSkillUtils.randXp = function()
	return ZombRand(SandboxVars.DrivingSkill.XPgainChance * GameTime:getInstance():getInvMultiplier()) == 0;
end

function CheckVehicle(player, vehicle, args)
    local vehicle = player.getVehicle and player:getVehicle() or nil
	if (vehicle == nil or not vehicle:isDriver(player)) then
		RemoveStatusTable(player)
	else
		if(player:getModData().VehicleDamageTable[0] == nil) then
			BuildVehicleStatusTable(player, vehicle);
		end
		CheckPartChanges(player, vehicle);
	end
	if player:isDriving() == true then
        local tmpvehicle = player.getVehicle and player:getVehicle() or nil
        local vmd = tmpvehicle:getModData();
		local brakeForceMult = 1;
		local engineQualityMult = 1;
		local engineLoudnessMult = 1;
		local enginePowerMult = 1;
		local maxSpeedMult = 1;
		local damageMitigate = 0;
		if vmd.bUpdated == nil then
            vmd.fBrakingForce = tmpvehicle:getBrakingForce();
            vmd.fMaxSpeed = tmpvehicle:getMaxSpeed();
            vmd.iEngineQuality = tmpvehicle:getEngineQuality();
            vmd.iEngineLoudness = tmpvehicle:getEngineLoudness()
            vmd.iEnginePower = tmpvehicle:getEnginePower();
			vmd.sState = 0;
            vmd.bUpdated = true;
        elseif 
			player:getPerkLevel(Perks.Driving) == 0 and vmd.sState ~= 0 then
			vmd.sState = 0;
			brakeForceMult = SandboxVars.DrivingSkill.Level0brakeForceMult * 0.01;
			engineQualityMult = SandboxVars.DrivingSkill.Level0engineQualityMult * 0.01;
			engineLoudnessMult = SandboxVars.DrivingSkill.Level0engineLoudnessMult * 0.01;
			enginePowerMult = SandboxVars.DrivingSkill.Level0enginePowerMult * 0.01;
			maxSpeedMult = SandboxVars.DrivingSkill.Level0maxSpeedMult * 0.01;
			UpdateTheCar(vehicle, vmd.fBrakingForce, brakeForceMult, vmd.iEngineQuality, engineQualityMult, vmd.iEngineLoudness, engineLoudnessMult, vmd.iEnginePower, enginePowerMult, vmd.fMaxSpeed, maxSpeedMult);
		elseif 
			player:getPerkLevel(Perks.Driving) == 1 and vmd.sState ~= 1 then
			vmd.sState = 1;
			brakeForceMult = SandboxVars.DrivingSkill.Level1brakeForceMult * 0.01;
			engineQualityMult = SandboxVars.DrivingSkill.Level1engineQualityMult * 0.01;
			engineLoudnessMult = SandboxVars.DrivingSkill.Level1engineLoudnessMult * 0.01;
			enginePowerMult = SandboxVars.DrivingSkill.Level1enginePowerMult * 0.01;
			maxSpeedMult = SandboxVars.DrivingSkill.Level1maxSpeedMult * 0.01;
			UpdateTheCar(vehicle, vmd.fBrakingForce, brakeForceMult, vmd.iEngineQuality, engineQualityMult, vmd.iEngineLoudness, engineLoudnessMult, vmd.iEnginePower, enginePowerMult, vmd.fMaxSpeed, maxSpeedMult);
		elseif 
			player:getPerkLevel(Perks.Driving) == 2 and vmd.sState ~= 2 then
			vmd.sState = 2;
			brakeForceMult = SandboxVars.DrivingSkill.Level2brakeForceMult * 0.01;
			engineQualityMult = SandboxVars.DrivingSkill.Level2engineQualityMult * 0.01;
			engineLoudnessMult = SandboxVars.DrivingSkill.Level2engineLoudnessMult * 0.01;
			enginePowerMult = SandboxVars.DrivingSkill.Level2enginePowerMult * 0.01;
			maxSpeedMult = SandboxVars.DrivingSkill.Level2maxSpeedMult * 0.01;
			UpdateTheCar(vehicle, vmd.fBrakingForce, brakeForceMult, vmd.iEngineQuality, engineQualityMult, vmd.iEngineLoudness, engineLoudnessMult, vmd.iEnginePower, enginePowerMult, vmd.fMaxSpeed, maxSpeedMult);
		elseif 
			player:getPerkLevel(Perks.Driving) == 3 and vmd.sState ~= 3 then
			vmd.sState = 3;
			brakeForceMult = SandboxVars.DrivingSkill.Level3brakeForceMult * 0.01;
			engineQualityMult = SandboxVars.DrivingSkill.Level3engineQualityMult * 0.01;
			engineLoudnessMult = SandboxVars.DrivingSkill.Level3engineLoudnessMult * 0.01;
			enginePowerMult = SandboxVars.DrivingSkill.Level3enginePowerMult * 0.01;
			maxSpeedMult = SandboxVars.DrivingSkill.Level3maxSpeedMult * 0.01;
			UpdateTheCar(vehicle, vmd.fBrakingForce, brakeForceMult, vmd.iEngineQuality, engineQualityMult, vmd.iEngineLoudness, engineLoudnessMult, vmd.iEnginePower, enginePowerMult, vmd.fMaxSpeed, maxSpeedMult);
		elseif 
			player:getPerkLevel(Perks.Driving) == 4 and vmd.sState ~= 4 then
			vmd.sState = 4;
			brakeForceMult = SandboxVars.DrivingSkill.Level4brakeForceMult * 0.01;
			engineQualityMult = SandboxVars.DrivingSkill.Level4engineQualityMult * 0.01;
			engineLoudnessMult = SandboxVars.DrivingSkill.Level4engineLoudnessMult * 0.01;
			enginePowerMult = SandboxVars.DrivingSkill.Level4enginePowerMult * 0.01;
			maxSpeedMult = SandboxVars.DrivingSkill.Level4maxSpeedMult * 0.01;
			UpdateTheCar(vehicle, vmd.fBrakingForce, brakeForceMult, vmd.iEngineQuality, engineQualityMult, vmd.iEngineLoudness, engineLoudnessMult, vmd.iEnginePower, enginePowerMult, vmd.fMaxSpeed, maxSpeedMult);
		elseif 
			player:getPerkLevel(Perks.Driving) == 5 and vmd.sState ~= 5 then
			vmd.sState = 5;
			brakeForceMult = SandboxVars.DrivingSkill.Level5brakeForceMult * 0.01;
			engineQualityMult = SandboxVars.DrivingSkill.Level5engineQualityMult * 0.01;
			engineLoudnessMult = SandboxVars.DrivingSkill.Level5engineLoudnessMult * 0.01;
			enginePowerMult = SandboxVars.DrivingSkill.Level5enginePowerMult * 0.01;
			maxSpeedMult = SandboxVars.DrivingSkill.Level5maxSpeedMult * 0.01;
			UpdateTheCar(vehicle, vmd.fBrakingForce, brakeForceMult, vmd.iEngineQuality, engineQualityMult, vmd.iEngineLoudness, engineLoudnessMult, vmd.iEnginePower, enginePowerMult, vmd.fMaxSpeed, maxSpeedMult);
		elseif 
			player:getPerkLevel(Perks.Driving) == 6 and vmd.sState ~= 6 then
			vmd.sState = 6;
			brakeForceMult = SandboxVars.DrivingSkill.Level6brakeForceMult * 0.01;
			engineQualityMult = SandboxVars.DrivingSkill.Level6engineQualityMult * 0.01;
			engineLoudnessMult = SandboxVars.DrivingSkill.Level6engineLoudnessMult * 0.01;
			enginePowerMult = SandboxVars.DrivingSkill.Level6enginePowerMult * 0.01;
			maxSpeedMult = SandboxVars.DrivingSkill.Level6maxSpeedMult * 0.01;
			UpdateTheCar(vehicle, vmd.fBrakingForce, brakeForceMult, vmd.iEngineQuality, engineQualityMult, vmd.iEngineLoudness, engineLoudnessMult, vmd.iEnginePower, enginePowerMult, vmd.fMaxSpeed, maxSpeedMult);
		elseif 
			player:getPerkLevel(Perks.Driving) == 7 and vmd.sState ~= 7 then
			vmd.sState = 7;
			brakeForceMult = SandboxVars.DrivingSkill.Level7brakeForceMult * 0.01;
			engineQualityMult = SandboxVars.DrivingSkill.Level7engineQualityMult * 0.01;
			engineLoudnessMult = SandboxVars.DrivingSkill.Level7engineLoudnessMult * 0.01;
			enginePowerMult = SandboxVars.DrivingSkill.Level7enginePowerMult * 0.01;
			maxSpeedMult = SandboxVars.DrivingSkill.Level7maxSpeedMult * 0.01;
			UpdateTheCar(vehicle, vmd.fBrakingForce, brakeForceMult, vmd.iEngineQuality, engineQualityMult, vmd.iEngineLoudness, engineLoudnessMult, vmd.iEnginePower, enginePowerMult, vmd.fMaxSpeed, maxSpeedMult);
		elseif 
			player:getPerkLevel(Perks.Driving) == 8 and vmd.sState ~= 8 then
			vmd.sState = 8;
			brakeForceMult = SandboxVars.DrivingSkill.Level8brakeForceMult * 0.01;
			engineQualityMult = SandboxVars.DrivingSkill.Level8engineQualityMult * 0.01;
			engineLoudnessMult = SandboxVars.DrivingSkill.Level8engineLoudnessMult * 0.01;
			enginePowerMult = SandboxVars.DrivingSkill.Level8enginePowerMult * 0.01;
			maxSpeedMult = SandboxVars.DrivingSkill.Level8maxSpeedMult * 0.01;
			UpdateTheCar(vehicle, vmd.fBrakingForce, brakeForceMult, vmd.iEngineQuality, engineQualityMult, vmd.iEngineLoudness, engineLoudnessMult, vmd.iEnginePower, enginePowerMult, vmd.fMaxSpeed, maxSpeedMult);
		elseif 
			player:getPerkLevel(Perks.Driving) == 9 and vmd.sState ~= 9 then
			vmd.sState = 9;
			brakeForceMult = SandboxVars.DrivingSkill.Level9brakeForceMult * 0.01;
			engineQualityMult = SandboxVars.DrivingSkill.Level9engineQualityMult * 0.01;
			engineLoudnessMult = SandboxVars.DrivingSkill.Level9engineLoudnessMult * 0.01;
			enginePowerMult = SandboxVars.DrivingSkill.Level9enginePowerMult * 0.01;
			maxSpeedMult = SandboxVars.DrivingSkill.Level9maxSpeedMult * 0.01;
			UpdateTheCar(vehicle, vmd.fBrakingForce, brakeForceMult, vmd.iEngineQuality, engineQualityMult, vmd.iEngineLoudness, engineLoudnessMult, vmd.iEnginePower, enginePowerMult, vmd.fMaxSpeed, maxSpeedMult);
		elseif 
			player:getPerkLevel(Perks.Driving) == 10 and vmd.sState ~= 10 then
			vmd.sState = 10;
			brakeForceMult = SandboxVars.DrivingSkill.Level10brakeForceMult * 0.01;
			engineQualityMult = SandboxVars.DrivingSkill.Level10engineQualityMult * 0.01;
			engineLoudnessMult = SandboxVars.DrivingSkill.Level10engineLoudnessMult * 0.01;
			enginePowerMult = SandboxVars.DrivingSkill.Level10enginePowerMult * 0.01;
			maxSpeedMult = SandboxVars.DrivingSkill.Level10maxSpeedMult * 0.01;
			UpdateTheCar(vehicle, vmd.fBrakingForce, brakeForceMult, vmd.iEngineQuality, engineQualityMult, vmd.iEngineLoudness, engineLoudnessMult, vmd.iEnginePower, enginePowerMult, vmd.fMaxSpeed, maxSpeedMult);
		end
		if DriveSkillUtils.randXp() then
			if SandboxVars.DrivingSkill.XPindicator then
				HaloTextHelper.addTextWithArrow(player, getText("UI_DrivingGainSkill"), true, HaloTextHelper.getColorGreen());
			end
			player:getXp():AddXP(Perks.Driving, 1);
		end
	end
end

function UpdateTheCar (vehicle, brakeForce, brakeForceMult, engineQuality, engineQualityMult, engineLoudness, engineLoudnessMult, enginePower, enginePowerMult, maxSpeed, maxSpeedMult)
	vehicle:setBrakingForce(brakeForce * brakeForceMult);
	vehicle:setEngineFeature(engineQuality * engineQualityMult, engineLoudness * engineLoudnessMult, enginePower * enginePowerMult);
	vehicle:setMaxSpeed(maxSpeed * maxSpeedMult);
	vehicle:update();
end

function RemoveStatusTable(player)
	player:getModData().VehicleDamageTable = {};

end

function BuildVehicleStatusTable(player, vehicle)
	local partCount = vehicle:getPartCount();
	for i=0, partCount-1 do	
		local part = vehicle:getPartByIndex(i);
		if (not part:getInventoryItem() and part:getTable("install")) then
			player:getModData().VehicleDamageTable[i] = -1;
		else
			player:getModData().VehicleDamageTable[i] = part:getCondition();
		end
	end
end

function CheckPartChanges(player, vehicle)
	local skill = player:getPerkLevel(Perks.Driving);
	local damageReduction = DamageReduction(player);
	damageReduction = damageReduction * 0.01;

	local savingThrow = 0;
	-- 0 = not attempted, 1 = passed, -1 = failed
	
	local damageMitigated = 0;
	
	local partCount = vehicle:getPartCount();
	for i=0, partCount-1 do
		local part = vehicle:getPartByIndex(i);
		local knownHP = player:getModData().VehicleDamageTable[i];
		if(not part:getInventoryItem() and part:getTable("install") and knownHP ~= -1 ) then
			player:getModData().VehicleDamageTable[i] = -1;
			if(savingThrow == 0) then
				savingThrow = CalculateSave(player);
			end
		else
			local partHP = part:getCondition();	
			if(knownHP ~= partHP and knownHP ~= -1) then
				local damage = knownHP - partHP
				if (damage > 1) then
					if(savingThrow == 0) then
						savingThrow = CalculateSave(player);
					end
					if(savingThrow == 1) then
						ReduceTakenDamage(skill, part, partHP, damage, damageReduction);
					end
				end
				player:getModData().VehicleDamageTable[i] = partHP;
			end
		end
	end
end

function ReduceTakenDamage(skill, part, partHP, damage, damageReduction)
	local reduction = damage * damageReduction;
	local newCondition = partHP + reduction;
	part:setCondition(newCondition);
end

function CalculateSave(player)
	local roll = ZombRand(100);
	local avoidDamage = 0;
	if player:getPerkLevel(Perks.Driving) == 0 then
		avoidDamage = SandboxVars.DrivingSkill.Level0avoidDamage;
	end
	if player:getPerkLevel(Perks.Driving) == 1 then
		avoidDamage = SandboxVars.DrivingSkill.Level1avoidDamage;
	end
	if player:getPerkLevel(Perks.Driving) == 2 then
		avoidDamage = SandboxVars.DrivingSkill.Level2avoidDamage;
	end
	if player:getPerkLevel(Perks.Driving) == 3 then
		avoidDamage = SandboxVars.DrivingSkill.Level3avoidDamage;
	end
	if player:getPerkLevel(Perks.Driving) == 4 then
		avoidDamage = SandboxVars.DrivingSkill.Level4avoidDamage;
	end
	if player:getPerkLevel(Perks.Driving) == 5 then
		avoidDamage = SandboxVars.DrivingSkill.Level5avoidDamage;
	end
	if player:getPerkLevel(Perks.Driving) == 6 then
		avoidDamage = SandboxVars.DrivingSkill.Level6avoidDamage;
	end
	if player:getPerkLevel(Perks.Driving) == 7 then
		avoidDamage = SandboxVars.DrivingSkill.Level7avoidDamage;
	end
	if player:getPerkLevel(Perks.Driving) == 8 then
		avoidDamage = SandboxVars.DrivingSkill.Level8avoidDamage;
	end
	if player:getPerkLevel(Perks.Driving) == 9 then
		avoidDamage = SandboxVars.DrivingSkill.Level9avoidDamage;
	end
	if player:getPerkLevel(Perks.Driving) == 10 then
		avoidDamage = SandboxVars.DrivingSkill.Level10avoidDamage;
	end
	if(roll < avoidDamage) then
		return 1
	else
		return -1
	end
end

function DamageReduction(player)
	local damageReduction = 0;
	if player:getPerkLevel(Perks.Driving) == 0 then
		damageReduction = SandboxVars.DrivingSkill.Level0damageMitigate;
	end
	if player:getPerkLevel(Perks.Driving) == 1 then
		damageReduction = SandboxVars.DrivingSkill.Level1damageMitigate;
	end
	if player:getPerkLevel(Perks.Driving) == 2 then
		damageReduction = SandboxVars.DrivingSkill.Level2damageMitigate;
	end
	if player:getPerkLevel(Perks.Driving) == 3 then
		damageReduction = SandboxVars.DrivingSkill.Level3damageMitigate;
	end
	if player:getPerkLevel(Perks.Driving) == 4 then
		damageReduction = SandboxVars.DrivingSkill.Level4damageMitigate;
	end
	if player:getPerkLevel(Perks.Driving) == 5 then
		damageReduction = SandboxVars.DrivingSkill.Level5damageMitigate;
	end
	if player:getPerkLevel(Perks.Driving) == 6 then
		damageReduction = SandboxVars.DrivingSkill.Level6damageMitigate;
	end
	if player:getPerkLevel(Perks.Driving) == 7 then
		damageReduction = SandboxVars.DrivingSkill.Level7damageMitigate;
	end
	if player:getPerkLevel(Perks.Driving) == 8 then
		damageReduction = SandboxVars.DrivingSkill.Level8damageMitigate;
	end
	if player:getPerkLevel(Perks.Driving) == 9 then
		damageReduction = SandboxVars.DrivingSkill.Level9damageMitigate;
	end
	if player:getPerkLevel(Perks.Driving) == 10 then
		damageReduction = SandboxVars.DrivingSkill.Level10damageMitigate;
	end
	return damageReduction;
end

Events.OnPlayerUpdate.Add(CheckVehicle);
