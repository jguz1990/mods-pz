function DTincreasePoison(player, chance, poison)
    --print("DT Logger: Chance: " .. chance);
    --print("DT Logger: Poison: " .. poison);
    --print("DT Logger: running DTincreasePoison function");
    local currentFoodPoison = player:getBodyDamage():getFoodSicknessLevel();
    if chance == 0 then
        player:playEmote("dtpoisonvomit");
        if player:HasTrait("WeakStomach") then
            player:getBodyDamage():setFoodSicknessLevel(currentFoodPoison + (poison * 1.3));
        elseif player:HasTrait("WeakStomach") and player:HasTrait("ProneToIllness") then
            player:getBodyDamage():setFoodSicknessLevel(currentFoodPoison + (poison * 1.5));
        elseif player:HasTrait("WeakStomach") and player:HasTrait("Resilient") then
            player:getBodyDamage():setFoodSicknessLevel(currentFoodPoison + (poison * 1.1));
        elseif player:HasTrait("ProneToIllness") then
            player:getBodyDamage():setFoodSicknessLevel(currentFoodPoison + (poison * 1.2));
        elseif player:HasTrait("ProneToIllness") and player:HasTrait("IronGut") then
            player:getBodyDamage():setFoodSicknessLevel(currentFoodPoison + (poison * 0.9));
        elseif player:HasTrait("IronGut") then
            player:getBodyDamage():setFoodSicknessLevel(currentFoodPoison + (poison * 0.7));
        elseif player:HasTrait("IronGut") and player:HasTrait("Resilient") then
            player:getBodyDamage():setFoodSicknessLevel(currentFoodPoison + (poison * 0.5));
        elseif player:HasTrait("Resilient") then
            player:getBodyDamage():setFoodSicknessLevel(currentFoodPoison + (poison * 0.8));
        else
            player:getBodyDamage():setFoodSicknessLevel(currentFoodPoison + poison);
        end
        if player:getBodyDamage():getFoodSicknessLevel() > 100 then
            player:getBodyDamage():setFoodSicknessLevel(100);
        end
    end
end

function DTincreasePoisonByWounds(player, chance, poison)
    --print("DT Logger: Chance: " .. chance);
    --print("DT Logger: Poison: " .. poison);
    --print("DT Logger: running DTincreasePoisonByWounds function");
    local currentFoodPoison = player:getBodyDamage():getFoodSicknessLevel();
    if chance == 0 then
        player:playEmote("dtpoisonvomit");
        if player:HasTrait("Thinskinned") then
            player:getBodyDamage():setFoodSicknessLevel(currentFoodPoison + (poison * 1.2));
        elseif player:HasTrait("Thinskinned") and player:HasTrait("ProneToIllness") then
            player:getBodyDamage():setFoodSicknessLevel(currentFoodPoison + (poison * 1.5));
        elseif player:HasTrait("ProneToIllness") then
            player:getBodyDamage():setFoodSicknessLevel(currentFoodPoison + (poison * 1.3));
        elseif player:HasTrait("ThickSkinned") then
            player:getBodyDamage():setFoodSicknessLevel(currentFoodPoison + (poison * 0.8));
        elseif player:HasTrait("ThickSkinned") and player:HasTrait("Resilient") then
            player:getBodyDamage():setFoodSicknessLevel(currentFoodPoison + (poison * 0.5));
        elseif player:HasTrait("Resilient") then
            player:getBodyDamage():setFoodSicknessLevel(currentFoodPoison + (poison * 0.7));
        else
            player:getBodyDamage():setFoodSicknessLevel(currentFoodPoison + poison);
        end
        if player:getBodyDamage():getFoodSicknessLevel() > 100 then
            player:getBodyDamage():setFoodSicknessLevel(100);
        end
    end
end

function DTincreaseStress(player, chance, stress)
    --print("DT Logger: running DTincreaseStress function");
    --print("DT Logger: chance: " .. chance);
    if chance == 0 then
        -- Stress only increases if the player is not sleeping.
        if not player:isAsleep() then
            --print("DT Logger: player is not sleeping, increasing stress");
            local currentStress = player:getStats():getStress();
            -- If the books set for Stress is all read, the stress gained is reduced in 30%.
            if player:getModData().DTstressIntelligence == true then
                stress = stress * 0.7;
            end
            -- If Nervous Wreck trait is present the stress gained increases in 30%.
            if player:HasTrait("NervousWreck") then
                player:getStats():setStress(currentStress + (stress * 1.3));
            else
                player:getStats():setStress(currentStress + stress);
            end
            if player:getStats():getStress() > 1 then
                player:getStats():setStress(1);
            end
        end
    end
end

function DTdecreaseStress(player, stress)
    --print("DT Logger: running DTdecreaseStress function");
    local currentStress = player:getStats():getStress();
    player:getStats():setStress(currentStress - stress);
    if player:getStats():getStress() < 0 then
        player:getStats():setStress(0);
    end
end

function DTdecreaseStressFromCigarettes(player, stress)
    --print("DT Logger: running DTdecreaseStressFromCigarettes function");
    local currentStressByCigarettes = player:getStats():getStressFromCigarettes();
    player:getStats():setStressFromCigarettes(currentStressByCigarettes - stress);
    if player:getStats():getStressFromCigarettes() < 0 then
        player:getStats():setStressFromCigarettes(0);
    end
end

function DTincreaseUnhappyness(player, chance, unhappyness)
    --print("DT Logger: running DTincreaseUnhappyness function");
    --print("DT Logger: chance: " .. chance);
    if chance == 0 then
        -- Unhappyness only increases if the player is not sleeping.
        if not player:isAsleep() then
            --print("DT Logger: player is not sleeping, increasing unhappyness");
            local currentUnhappyness = player:getBodyDamage():getUnhappynessLevel();
            -- If the books set for Unhappyness is all read, the unhappyness gained is reduced in 30%.
            if player:getModData().DTunhappynessIntelligence == true then
                unhappyness = unhappyness * 0.7;
            end
            -- If Melancholic trait is present the Unhappyness gained increases in 30%.
            if player:HasTrait("Melancholic") then
                player:getBodyDamage():setUnhappynessLevel(currentUnhappyness + (unhappyness * 1.3));
            else
                player:getBodyDamage():setUnhappynessLevel(currentUnhappyness + unhappyness);
            end
            if player:getBodyDamage():getUnhappynessLevel() > 100 then
                player:getBodyDamage():setUnhappynessLevel(100);
            end
        end
    end
end

function DTdecreaseUnhappyness(player, unhappyness)
    --print("DT Logger: running DTdecreaseUnhappyness function");
    local currentUnhappyness = player:getBodyDamage():getUnhappynessLevel();
    player:getBodyDamage():setUnhappynessLevel(currentUnhappyness - unhappyness);
    if player:getBodyDamage():getUnhappynessLevel() < 0 then
        player:getBodyDamage():setUnhappynessLevel(0);
    end
end

function DTincreaseBoredom(player, chance, boredom)
    --print("DT Logger: running DTincreaseBoredom function");
    --print("DT Logger: chance: " .. chance);
    if chance == 0 then
        -- Boredom only increases if the player is not sleeping.
        if not player:isAsleep() then
            --print("DT Logger: player is not sleeping, increasing boredom");
            local currentBoredom = player:getBodyDamage():getBoredomLevel();
            -- If the books set for Boredom is all read, the boredom gained is reduced in 30%.
            if player:getModData().DTboredomIntelligence == true then
                boredom = boredom * 0.7;
            end
            player:getBodyDamage():setBoredomLevel(currentBoredom + boredom);
            if player:getBodyDamage():getBoredomLevel() > 100 then
                player:getBodyDamage():setBoredomLevel(100);
            end
        end
    end
end

function DTdecreaseBoredom(player, boredom)
    --print("DT Logger: running DTdecreaseBoredom function");
    local currentBoredom = player:getBodyDamage():getBoredomLevel();
    player:getBodyDamage():setBoredomLevel(currentBoredom - boredom);
    if player:getBodyDamage():getBoredomLevel() < 0 then
        player:getBodyDamage():setBoredomLevel(0);
    end
end

function DTincreaseFatigue(player, chance, fatigue)
    --print("DT Logger: running DTincreaseFatigue function");
    if chance == 0 then
        if not player:isAsleep() then
            --print("DT Logger: player is not sleeping, increasing fatigue");
            local currentFatigue = player:getStats():getFatigue();
            player:getStats():setFatigue(currentFatigue + fatigue);
            if player:getStats():getFatigue() > 1 then
                player:getStats():setFatigue(1);
            end
        end
    end
end

function DTdecreaseEndurance(player, chance, endurance)
    --print("DT Logger: running DTdecreaseEndurance function");
    if chance == 0 then
        if not player:isAsleep() then
            --print("DT Logger: player is not sleeping, decreasing endurance");
            local currentEndurance = player:getStats():getEndurance();
            player:getStats():setEndurance(currentEndurance - endurance);
            if player:getStats():getEndurance() < 0 then
                player:getStats():setEndurance(0);
            end
        end
    end
end

function DTluckyUnluckyModifier(player, randomRange)
    --print("DT Logger: running DTluckyUnluckyModifier function");
    if player:HasTrait("Lucky") then
        return ZombRand(randomRange)
    elseif player:HasTrait("Unlucky") then
        return (ZombRand(randomRange) * -1)
    else
        return 0
    end
end

function DTapplyPain(player, chance, bodyPart, pain)
    --print("DT Logger: running DTapplyPain function");
    if chance == 0 then
        local bodyPartAux = BodyPartType.FromString(bodyPart);
        local playerBodyPart = player:getBodyDamage():getBodyPart(bodyPartAux);
        local currentPain = playerBodyPart:getPain();
        playerBodyPart:setAdditionalPain(currentPain + pain);
        if playerBodyPart:getPain() > 100 then
            playerBodyPart:setAdditionalPain(100);
        end
    end
end

function DTrandomNumberForKills(player, range)
    --print("DT Logger: running DTrandomNumberForKills function");
    local randNum = ZombRand(range - player:getZombieKills() - player:getHoursSurvived() + (DTluckyUnluckyModifier(player, (range / 10)) * -1));
    if randNum < 0 then
        randNum = 0;
    end
    return randNum;
end

function DTincreaseWetness(player, chance, wetness)
    --print("DT Logger: running DTincreaseWetness function");
    --print("DT Logger: chance: " .. chance);
    if chance == 0 then
        local currentWetness = player:getBodyDamage():getWetness();
        player:getBodyDamage():setWetness(currentWetness + wetness);
        if player:getBodyDamage():getWetness() > 100 then
            player:getBodyDamage():setWetness(100);
        end
    end
end

function applyXPBoost(player, perk, boostLevel)
    --print("DT Logger: running applyXPBoost function");
    local currentXPBoost = player:getXp():getPerkBoost(perk);
    local newBoost = currentXPBoost + boostLevel;
    if newBoost > 3 then
        player:getXp():setPerkBoost(perk, 3);
    else
        player:getXp():setPerkBoost(perk, newBoost);
    end
end

function generateACold(player, baseRange, coldStrength)
    --print("DT Logger: running generateACold function");
    local currentColdStrength = player:getBodyDamage():getColdStrength();
    local auxRange = baseRange;
    -- Increases the range if Outdoorsman is present
    if player:HasTrait("Outdoorsman") then
        auxRange = auxRange * 1.3;
    end
    -- Increases the range if Resilient is present
    if player:HasTrait("Resilient") then
        auxRange = auxRange * 1.5;
    -- Decreases the range if ProneToIllness is present
    elseif player:HasTrait("ProneToIllness") then
        auxRange = auxRange * 0.5;
    end
    local range = auxRange - player:getModData().DTgenerateAColdChance;
    if range < 0 then
        range = 0;
    end
    if ZombRand(range) == 0 then
        player:getBodyDamage():setHasACold(true);
        player:getBodyDamage():setColdStrength(currentColdStrength + coldStrength);
        player:getModData().DTgenerateAColdChance = 0;
    end
end

function DTincreaseItemWetness(item, rainIntensity, windIntensity, extraValue)
    --print("DT Logger: running DTincreaseItemWetness function");
    local currentWetness = item:getWetness();
    local waterResistance = item:getWaterResistance();
    local newWetness = currentWetness + rainIntensity + windIntensity + extraValue - waterResistance;
    if newWetness >= 99 then
        item:setWetness(99);
    else
        item:setWetness(newWetness);
    end
end

function DTPlaySound(player, chance, sound)
    --print("Chance: " .. chance);
    --print("Sound: " .. sound);
    if chance == 0 then
        player:playSound(sound);
    end
end

function DTincreaseAnger(player, chance, anger)
    --print("DT Logger: running DTincreaseAnger function");
    --print("DT Logger: chance: " .. chance);
    --print("DT Logger: anger: " .. anger);
    if chance == 0 then
        if not player:isAsleep() then
            --print("DT Logger: player is not sleeping, increasing anger");
            local currentAnger = player:getStats():getAnger();
            player:getStats():setAnger(currentAnger + anger);
            if player:getStats():getAnger() > 1 then
                player:getStats():setAnger(1);
            end
        end
    end
end

function DTdecreaseAnger(player, anger)
    --print("DT Logger: running DTdecreaseAnger function");
    --print("DT Logger: anger: " .. anger);
    local currentAnger = player:getStats():getAnger();
    player:getStats():setAnger(currentAnger - anger);
    if player:getStats():getAnger() < 0 then
        player:getStats():setAnger(0);
    end
end