-- ADDITIONAL EFFECTS TO HEAVY LOAD MOODLE
-- If the player is with a Heavy Load there are minimum chances of getting a fracture.
function fracturesIfHeavyLoad(player)
    --print("DT Logger: running fracturesIfHeavyLoad function");
	local fracturesBodyPart = {"Hand_L", "Hand_R", "ForeArm_L", "ForeArm_R", "UpperArm_L", "UpperArm_R", "Torso_Lower", "Groin", "UpperLeg_L", "UpperLeg_R", "LowerLeg_L", "LowerLeg_R", "Foot_L", "Foot_R"};
	local randNumber = ZombRand(1, 15);
	local bodyPart = BodyPartType.FromString(fracturesBodyPart[randNumber]);
	local playerBodyPart = player:getBodyDamage():getBodyPart(bodyPart);
	if player:getMoodles():getMoodleLevel(MoodleType.HeavyLoad) == 3 and player:getVehicle() == nil then
		if player:HasTrait("Flimsy") then
			if ZombRand(2700) == 0 then
				playerBodyPart:setFractureTime(ZombRand(30, 50));
			end
		elseif player:HasTrait("Frail") then
			if ZombRand(2400) == 0 then
				playerBodyPart:setFractureTime(ZombRand(30, 50));
			end
		elseif player:HasTrait("Anorexy") then
			if ZombRand(2100) == 0 then
				playerBodyPart:setFractureTime(ZombRand(30, 50));
			end
		elseif player:HasTrait("Flimsy") and player:HasTrait("Anorexy") then
			if ZombRand(1800) == 0 then
				playerBodyPart:setFractureTime(ZombRand(30, 50));
			end
		elseif player:HasTrait("Frail") and player:HasTrait("Anorexy") then
			if ZombRand(1500) == 0 then
				playerBodyPart:setFractureTime(ZombRand(30, 50));
			end
		else
			if ZombRand(3000) == 0 then
				playerBodyPart:setFractureTime(ZombRand(30, 50));
			end
		end
	elseif player:getMoodles():getMoodleLevel(MoodleType.HeavyLoad) == 4 and player:getVehicle() == nil then
		if player:HasTrait("Flimsy") then
			if ZombRand(2430) == 0 then
				playerBodyPart:setFractureTime(ZombRand(30, 50));
			end
		elseif player:HasTrait("Frail") then
			if ZombRand(2160) == 0 then
				playerBodyPart:setFractureTime(ZombRand(30, 50));
			end
		elseif player:HasTrait("Anorexy") then
			if ZombRand(1890) == 0 then
				playerBodyPart:setFractureTime(ZombRand(30, 50));
			end
		elseif player:HasTrait("Flimsy") and player:HasTrait("Anorexy") then
			if ZombRand(1620) == 0 then
				playerBodyPart:setFractureTime(ZombRand(30, 50));
			end
		elseif player:HasTrait("Frail") and player:HasTrait("Anorexy") then
			if ZombRand(1350) == 0 then
				playerBodyPart:setFractureTime(ZombRand(30, 50));
			end
		else
			if ZombRand(2700) == 0 then
				playerBodyPart:setFractureTime(ZombRand(30, 50));
			end
		end
	end
end

-- ADDITIONAL EFFECTS TO WETNESS MOODLE
function expandedWetnessMoodle(player)
    --print("DT Logger: running expandedWetnessMoodle function");
    if player:getMoodles():getMoodleLevel(MoodleType.Wet) == 1 then
        player:getModData().DTgenerateAColdChance = player:getModData().DTgenerateAColdChance + 1;
    elseif player:getMoodles():getMoodleLevel(MoodleType.Wet) == 2 then
        player:getModData().DTgenerateAColdChance = player:getModData().DTgenerateAColdChance + 2;
        generateACold(player, 700, ZombRand(25, 50));
    elseif player:getMoodles():getMoodleLevel(MoodleType.Wet) == 3 then
        player:getModData().DTgenerateAColdChance = player:getModData().DTgenerateAColdChance + 3;
        generateACold(player, 500, ZombRand(25, 50));
    elseif player:getMoodles():getMoodleLevel(MoodleType.Wet) == 4 then
        player:getModData().DTgenerateAColdChance = player:getModData().DTgenerateAColdChance + 4;
        generateACold(player, 300, ZombRand(25, 50));
    else
        player:getModData().DTgenerateAColdChance = player:getModData().DTgenerateAColdChance - 1;
        if player:getModData().DTgenerateAColdChance < 0 then
            player:getModData().DTgenerateAColdChance = 0;
        end
    end
end

-- ADDITIONAL EFFECTS TO HASACOLD MOODLE
function expandedHasAColdMoodle(player)
    --print("DT Logger: running expandedHasAColdMoodle function");
    if player:getMoodles():getMoodleLevel(MoodleType.HasACold) == 1 then
        -- HEADACHE
        DTapplyPain(player, ZombRand(20), "Head", ZombRand(30));
    elseif player:getMoodles():getMoodleLevel(MoodleType.HasACold) == 2 then
        -- HEADACHE
        DTapplyPain(player, ZombRand(15), "Head", ZombRand(45));
        -- FATIGUE
        DTincreaseFatigue(player, ZombRand(15), 0.05);
    elseif player:getMoodles():getMoodleLevel(MoodleType.HasACold) == 3 then
        -- HEADACHE
        DTapplyPain(player, ZombRand(10), "Head", ZombRand(60));
        -- FATIGUE
        DTincreaseFatigue(player, ZombRand(13), 0.10);
        -- POISON
        DTincreasePoison(player, ZombRand(7), ZombRand(15));
    elseif player:getMoodles():getMoodleLevel(MoodleType.HasACold) == 4 then
        -- HEADACHE
        DTapplyPain(player, ZombRand(5), "Head", ZombRand(75));
        -- FATIGUE
        DTincreaseFatigue(player, ZombRand(9), 0.13);
        -- ENDURANCE
        DTdecreaseEndurance(player, ZombRand(9), 0.13);
        -- POISON
        DTincreasePoison(player, ZombRand(5), ZombRand(20));
    end
end

-- ADDITIONAL EFFECTS TO SICK MOODLE
function expandedSickMoodle(player)
    --print("DT Logger: running expandedSickMoodle function");
    for i = 0, player:getBodyDamage():getBodyParts():size() - 1 do
        local bodyPart = player:getBodyDamage():getBodyParts():get(i);
        if bodyPart:getWoundInfectionLevel() > 0 then
            if player:getBodyDamage():IsScratched(bodyPart:getType()) then
                --print("The BodyPart " .. player:getBodyDamage():getBodyPartName(i) .. " with a scratch is infected with infection level of " .. bodyPart:getWoundInfectionLevel());
                DTincreasePoisonByWounds(player, ZombRand(3), ZombRand(15));
            elseif player:getBodyDamage():IsCut(bodyPart:getType()) then
                --print("The BodyPart " .. player:getBodyDamage():getBodyPartName(i) .. " with a laceration is infected with infection level of " .. bodyPart:getWoundInfectionLevel());
                DTincreasePoisonByWounds(player, ZombRand(3), ZombRand(20));
            elseif player:getBodyDamage():IsWounded(bodyPart:getType()) then
                --print("The BodyPart " .. player:getBodyDamage():getBodyPartName(i) .. " with a deep wound is infected with infection level of " .. bodyPart:getWoundInfectionLevel());
                DTincreasePoisonByWounds(player, ZombRand(3), ZombRand(25));
            end
        end
        if bodyPart:HasInjury() then
            if player:getBodyDamage():IsScratched(bodyPart:getType()) then
                --print("The BodyPart " .. player:getBodyDamage():getBodyPartName(i) .. " with a scratch is injuried");
                DTincreaseStress(player, ZombRand(5), 0.15);
            elseif player:getBodyDamage():IsCut(bodyPart:getType()) then
                --print("The BodyPart " .. player:getBodyDamage():getBodyPartName(i) .. " with a laceration is injuried");
                DTincreaseStress(player, ZombRand(5), 0.20);
            elseif player:getBodyDamage():IsWounded(bodyPart:getType()) then
                --print("The BodyPart " .. player:getBodyDamage():getBodyPartName(i) .. " with a deep wound is injuried");
                DTincreaseStress(player, ZombRand(5), 0.25);
            end
        end
    end
end

function expandedMoodlesCheckStats(player)
    --print("DT Logger: running expandedMoodlesCheckStats function");

    -- GETTING CURRENT STATS
    local currentDrunkeness = player:getStats():getDrunkenness();
    local currentAnger = player:getStats():getAnger();
    local currentPanic = player:getStats():getPanic();
    local currentStress = player:getStats():getStress();
    
    -- INCREASING ANGRY WHEN BEING DRUNK
    DTincreaseAnger(player, ZombRand(30), currentDrunkeness / 100);

    -- INCREASING STRESS & UNHAPPYNESS WHEN BEING ANGRY
    DTincreaseStress(player, ZombRand(20), currentAnger / 10);
    DTincreaseUnhappyness(player, ZombRand(30), currentAnger * 10);

    -- INCREASING WETNESS WHEN BEING PANICKED
    DTincreaseWetness(player, ZombRand(20), currentPanic / 10);

    -- INCREASING WETNESS WHEN BEING STRESSED
    DTincreaseWetness(player, ZombRand(20), currentStress * 10);
end