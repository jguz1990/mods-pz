require "TimedActions/ISFitnessAction"

-- Additional tweaks and trait effects when the player hit a tree
function tweaksToOnHitTree(player, weapon)
    --print("DT Logger: running tweaksToOnHitTree function");
	if weapon:getCategories():contains("Axe") then
		player:getXp():AddXP(Perks.Axe, 1);
	end
	if player:HasTrait("Prodigy") then
		player:getXp():AddXP(Perks.Fitness, 1);
		player:getXp():AddXP(Perks.Strength, 1);
	end
	-- If the player has the trait "Active" the negative moods are reduced when chopping trees
	if player:HasTrait("PhysicallyActive") then
		DTdecreaseStress(player, 0.03);
        DTdecreaseStressFromCigarettes(player, 0.03);
        DTdecreaseBoredom(player, 3);
        DTdecreaseUnhappyness(player, 3);
        DTdecreaseAnger(player, 0.03);
	-- If the player has the trait "Sedentary" little pain is given to the player when chopping trees
	elseif player:HasTrait("Sedentary") then
		DTapplyPain(player, ZombRand(10), "ForeArm_L", ZombRand(15));
		DTapplyPain(player, ZombRand(10), "ForeArm_R", ZombRand(15));
		DTapplyPain(player, ZombRand(10), "UpperArm_L", ZombRand(15));
		DTapplyPain(player, ZombRand(10), "UpperArm_R", ZombRand(15));
	end
	player:getModData().DTObtainLoseActiveSedentary = player:getModData().DTObtainLoseActiveSedentary + 3;
	if player:getModData().DTObtainLoseActiveSedentary > 70000 then
		player:getModData().DTObtainLoseActiveSedentary = 70000;
	end
end

-- Additional tweaks and trait effects when the player swings the weapon
function tweaksToSwingWeapon(player, weapon)
    --print("DT Logger: running tweaksToSwingWeapon function");
	-- If the player has the trait "Prodigy" extra XP is given to the player for Strength and Fitness
	if weapon:getCategories():contains("Axe") or weapon:getCategories():contains("Blunt") then
		if player:HasTrait("Prodigy") then 
			player:getXp():AddXP(Perks.Fitness, 0.80);
			player:getXp():AddXP(Perks.Strength, 0.80);
		end
		if player:HasTrait("Sedentary") then
			DTapplyPain(player, ZombRand(10), "ForeArm_L", ZombRand(15));
			DTapplyPain(player, ZombRand(10), "ForeArm_R", ZombRand(15));
			DTapplyPain(player, ZombRand(10), "UpperArm_L", ZombRand(15));
			DTapplyPain(player, ZombRand(10), "UpperArm_R", ZombRand(15));
		end
		player:getModData().DTObtainLoseActiveSedentary = player:getModData().DTObtainLoseActiveSedentary + 4;
	elseif weapon:getCategories():contains("Spear") or weapon:getCategories():contains("LongBlade")then
		if player:HasTrait("Prodigy") then 
			player:getXp():AddXP(Perks.Fitness, 0.70);
			player:getXp():AddXP(Perks.Strength, 0.70);
		end
		if player:HasTrait("Sedentary") then
			DTapplyPain(player, ZombRand(10), "ForeArm_L", ZombRand(10));
			DTapplyPain(player, ZombRand(10), "ForeArm_R", ZombRand(10));
			DTapplyPain(player, ZombRand(10), "UpperArm_L", ZombRand(10));
			DTapplyPain(player, ZombRand(10), "UpperArm_R", ZombRand(10));
		end
		player:getModData().DTObtainLoseActiveSedentary = player:getModData().DTObtainLoseActiveSedentary + 3;
	elseif weapon:getCategories():contains("SmallBlunt") then
		if player:HasTrait("Prodigy") then 
			player:getXp():AddXP(Perks.Fitness, 0.60);
			player:getXp():AddXP(Perks.Strength, 0.60);
		end
		if player:HasTrait("Sedentary") then
			DTapplyPain(player, ZombRand(12), "ForeArm_L", ZombRand(10));
			DTapplyPain(player, ZombRand(12), "ForeArm_R", ZombRand(10));
			DTapplyPain(player, ZombRand(12), "UpperArm_L", ZombRand(10));
			DTapplyPain(player, ZombRand(12), "UpperArm_R", ZombRand(10));
		end
		player:getModData().DTObtainLoseActiveSedentary = player:getModData().DTObtainLoseActiveSedentary + 2;
	elseif weapon:getCategories():contains("SmallBlade") then
		if player:HasTrait("Prodigy") then 
			player:getXp():AddXP(Perks.Fitness, 0.50);
			player:getXp():AddXP(Perks.Strength, 0.50);
		end
		if player:HasTrait("Sedentary") then
			DTapplyPain(player, ZombRand(15), "ForeArm_L", ZombRand(8));
			DTapplyPain(player, ZombRand(15), "ForeArm_R", ZombRand(8));
			DTapplyPain(player, ZombRand(15), "UpperArm_L", ZombRand(8));
			DTapplyPain(player, ZombRand(15), "UpperArm_R", ZombRand(8));
		end
		player:getModData().DTObtainLoseActiveSedentary = player:getModData().DTObtainLoseActiveSedentary + 1;
	elseif weapon:getCategories():contains("Unarmed") then
		if player:HasTrait("Prodigy") then 
			player:getXp():AddXP(Perks.Fitness, 0.25);
			player:getXp():AddXP(Perks.Strength, 0.25);
		end
		player:getModData().DTObtainLoseActiveSedentary = player:getModData().DTObtainLoseActiveSedentary + 1;
	end
	-- If the player has the trait "Active" the negative moods are reduced when when fighting
	if player:HasTrait("PhysicallyActive") then
		DTdecreaseStress(player, 0.01);
        DTdecreaseStressFromCigarettes(player, 0.01);
        DTdecreaseBoredom(player, 1);
        DTdecreaseUnhappyness(player, 1);
        DTdecreaseAnger(player, 0.01);
	end
	if player:getModData().DTObtainLoseActiveSedentary > 70000 then
		player:getModData().DTObtainLoseActiveSedentary = 70000;
	end
	--print("player:getModData().DTObtainLoseActiveSedentary: " .. player:getModData().DTObtainLoseActiveSedentary);
end

function onPlayerHittingAZombie(player, target, weapon, damage)
    --print("DT Logger: running onPlayerHittingAZombie function");
    if target:isZombie() then
        --print("DT Logger: target is a zombie");
        if not weapon:getCategories():contains("Unarmed") then
            --print("DT Logger: using a weapon");
            --print("DT Logger: damage: " .. damage);
            local currentTargetHealth = target:getHealth();
            --print("DT Logger: current target health: " .. currentTargetHealth);
            local additionalDamageToDeal = (damage * player:getStats():getAnger()) / 2;
            --print("DT Logger: additionalDamageToDeal: " .. additionalDamageToDeal);
            target:setHealth(currentTargetHealth - additionalDamageToDeal);
            --print("DT Logger: new target health: " .. target:getHealth());
            if target:getHealth() <= 0 then
			    target:update();
		    end
            if player:getMoodles():getMoodleLevel(MoodleType.Angry) ~= 0 then
                local currentWeaponCondition = weapon:getCondition();
                --print("DT Logger: current weapon condition: " .. currentWeaponCondition);
                local range = 0;
                if player:getMoodles():getMoodleLevel(MoodleType.Angry) == 1 then
                    range = 40;
                elseif player:getMoodles():getMoodleLevel(MoodleType.Angry) == 2 then
                    range = 30;
                elseif player:getMoodles():getMoodleLevel(MoodleType.Angry) == 3 then
                    range = 20;
                elseif player:getMoodles():getMoodleLevel(MoodleType.Angry) == 4 then
                    range = 10;
                end
                range = range + player:getPerkLevel(Perks.Maintenance) + weapon:getConditionLowerChance() + DTluckyUnluckyModifier(player, 15);
                --print("DT Logger: range: " .. range);
                if ZombRand(range) == 0 then
                    --print("DT Logger: reducing weapon condition");
                    weapon:setCondition(currentWeaponCondition - 1);
                    --print("DT Logger: new weapon condition: " .. weapon:getCondition());
                    DTincreaseAnger(player, 0, 0.15);
                end
                if weapon:getCondition() <= 0 then
                    --print("DT Logger: weapon broke, increasing anger");
                    DTincreaseAnger(player, 0, 0.50);
                end
            end
        end
    end
end

local DTfitness = {}
DTfitness.ISFitnessAction = {}

DTfitness.ISFitnessAction.exeLooped = ISFitnessAction.exeLooped
function ISFitnessAction:exeLooped()
    DTfitness.ISFitnessAction.exeLooped(self)
    --print("DT Logger: running ISFitnessAction:exeLooped function");
    player = self.character;
    -- If the player has the trait "Prodigy", extra experience is added to Strength or/and Fitness on each loop (depending on the exercise)
    -- If the player has the trait "Physically Active" the negative moods are reduced when doing exercise
    -- If the player has the trait "Sedentary" extra pain is added the the bodyparts based on the exercise
    if self.exercise == "squats" then
        if player:HasTrait("Prodigy") then
            -- Adding 5.0XP
            player:getXp():AddXP(Perks.Fitness, (self.exeData.xpMod * 20));
        end 
        if player:HasTrait("Sedentary") then
            DTapplyPain(player, 0, "UpperLeg_L", ZombRand(7));
            DTapplyPain(player, 0, "UpperLeg_R", ZombRand(7));
            DTapplyPain(player, 0, "LowerLeg_L", ZombRand(7));
            DTapplyPain(player, 0, "LowerLeg_R", ZombRand(7));
        end
    elseif self.exercise == "pushups" then
        if player:HasTrait("Prodigy") then
            -- Adding 5.0XP
            player:getXp():AddXP(Perks.Strength, (self.exeData.xpMod * 20));
        end
        if player:HasTrait("Sedentary") then
            DTapplyPain(player, 0, "ForeArm_L", ZombRand(7));
            DTapplyPain(player, 0, "ForeArm_R", ZombRand(7));
            DTapplyPain(player, 0, "UpperArm_L", ZombRand(7));
            DTapplyPain(player, 0, "UpperArm_R", ZombRand(7));
        end
    elseif self.exercise == "situp" then
        if player:HasTrait("Prodigy") then
            -- Adding 5.0XP
            player:getXp():AddXP(Perks.Fitness, (self.exeData.xpMod * 20));
        end
        if player:HasTrait("Sedentary") then
            DTapplyPain(player, 0, "Torso_Lower", ZombRand(15));
        end
    elseif self.exercise == "burpees" then
        if player:HasTrait("Prodigy") then
            -- Adding 4.0XP
            player:getXp():AddXP(Perks.Fitness, (self.exeData.xpMod * 20));
            player:getXp():AddXP(Perks.Strength, (self.exeData.xpMod * 20));
        end
        if player:HasTrait("Sedentary") then
            DTapplyPain(player, 0, "UpperLeg_L", ZombRand(5));
            DTapplyPain(player, 0, "UpperLeg_R", ZombRand(5));
            DTapplyPain(player, 0, "LowerLeg_L", ZombRand(5));
            DTapplyPain(player, 0, "LowerLeg_R", ZombRand(5));
            DTapplyPain(player, 0, "ForeArm_L", ZombRand(5));
            DTapplyPain(player, 0, "ForeArm_R", ZombRand(5));
            DTapplyPain(player, 0, "UpperArm_L", ZombRand(5));
            DTapplyPain(player, 0, "UpperArm_R", ZombRand(5));
        end
    elseif self.exercise == "barbellcurl" then
        if player:HasTrait("Prodigy") then
            -- Adding 6.0XP
            player:getXp():AddXP(Perks.Strength, (self.exeData.xpMod * 20));
        end
        if player:HasTrait("Sedentary") then
            DTapplyPain(player, 0, "ForeArm_L", ZombRand(10));
            DTapplyPain(player, 0, "ForeArm_R", ZombRand(10));
            DTapplyPain(player, 0, "UpperArm_L", ZombRand(10));
            DTapplyPain(player, 0, "UpperArm_R", ZombRand(10));
        end
    elseif self.exercise == "dumbbellpress" then
        if player:HasTrait("Prodigy") then
            -- Adding 9.0XP
            player:getXp():AddXP(Perks.Strength, (self.exeData.xpMod * 20));
        end
        if player:HasTrait("Sedentary") then
            DTapplyPain(player, 0, "ForeArm_L", ZombRand(10));
            DTapplyPain(player, 0, "ForeArm_R", ZombRand(10));
            DTapplyPain(player, 0, "UpperArm_L", ZombRand(13));
            DTapplyPain(player, 0, "UpperArm_R", ZombRand(13));
        end
    elseif self.exercise == "bicepscurl" then
        if player:HasTrait("Prodigy") then
            -- Adding 9.0XP
            player:getXp():AddXP(Perks.Strength, (self.exeData.xpMod * 20));
        end
        if player:HasTrait("Sedentary") then
            DTapplyPain(player, 0, "ForeArm_L", ZombRand(10));
            DTapplyPain(player, 0, "ForeArm_R", ZombRand(10));
            DTapplyPain(player, 0, "UpperArm_L", ZombRand(13));
            DTapplyPain(player, 0, "UpperArm_R", ZombRand(13));
        end
    end
    -- IMPROVE THE MOODLE IF PHYSICALLY ACTIVE IS PRESENT
    if player:HasTrait("PhysicallyActive") then
        DTdecreaseStress(player, 0.05);
        DTdecreaseStressFromCigarettes(player, 0.05);
        DTdecreaseUnhappyness(player, 5);
        DTdecreaseBoredom(player, 5);
        DTdecreaseAnger(player, 0.05);
    -- GIVE BOREDOM IF SEDENTARY IS PRESENT
    elseif player:HasTrait("Sedentary") then
        DTincreaseBoredom(player, 0, 7);
    end
    player:getModData().DTObtainLoseActiveSedentary = player:getModData().DTObtainLoseActiveSedentary + 10;
    if player:getModData().DTObtainLoseActiveSedentary > 70000 then
	    player:getModData().DTObtainLoseActiveSedentary = 70000;
	end
    -- IF THE ROLL IS 0 THEN THE NEXT TRAITS ARE POSITIVELY AFFECTED: SMOKER, ALCOHOLIC, ANOREXIC
    if ZombRand(15) == 0 then
        -- SMOKER
        if player:HasTrait("Smoker") then
            player:getModData().DTdaysSinceLastSmoke = player:getModData().DTdaysSinceLastSmoke + ZombRand(5);
        end
        -- ALCOHOLIC
        player:getModData().DThoursSinceLastDrink = player:getModData().DThoursSinceLastDrink + ZombRand(3);
        player:getModData().DTthresholdToObtainAlcoholic = player:getModData().DTthresholdToObtainAlcoholic - ZombRand(3);
        -- ANOREXIC
        player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy + ZombRand(7);
    end
    DTincreaseWetness(player, 0, 1);
    --print("DT Logger: end of ISFitnessAction:exeLooped function")
end