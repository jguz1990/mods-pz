-- EMOTIONAL INTELLIGENCE RECIPES CHECK
function emotionalIntelligenceRecipes(player)
    local playerRecipes = player:getKnownRecipes();
    if player:getModData().DTstressIntelligence == false and playerRecipes:contains("Stress management volume 1") and 
    playerRecipes:contains("Stress management volume 2") and playerRecipes:contains("Stress management volume 3") and 
    playerRecipes:contains("Stress management volume 4") and playerRecipes:contains("Stress management volume 5") then
        player:getModData().DTstressIntelligence = true;
    end
    if player:getModData().DTunhappynessIntelligence == false and playerRecipes:contains("Unhappyness management volume 1") and 
    playerRecipes:contains("Unhappyness management volume 2") and playerRecipes:contains("Unhappyness management volume 3") and 
    playerRecipes:contains("Unhappyness management volume 4") and playerRecipes:contains("Unhappyness management volume 5") then
        player:getModData().DTunhappynessIntelligence = true;
    end
    if player:getModData().DTboredomIntelligence == false and playerRecipes:contains("Boredom management volume 1") and 
    playerRecipes:contains("Boredom management volume 2") and playerRecipes:contains("Boredom management volume 3") and 
    playerRecipes:contains("Boredom management volume 4") and playerRecipes:contains("Boredom management volume 5") then
        player:getModData().DTboredomIntelligence = true;
    end
end

-- BLOODLUST TRAIT
function bloodlustTrait(player)
    --print("DT Logger: running bloodlustTrait function");
    if not player:isAsleep() then
        player:getModData().DTtimesinceLastKill = player:getModData().DTtimesinceLastKill + 1;
    end
    --print("DT Logger: DTtimesinceLastKill value is " .. player:getModData().DTtimesinceLastKill);
end

function bloodlustTraitEffects(player)
    --print("DT Logger: running bloodlustTraitEffects function");
    -- CHECKS IF THE PLAYER READ ALL THE BOOKS TO LEARN HOW TO CONTROL THE EMOTIONS
    if player:getModData().DTstressIntelligence == true and player:getModData().DTunhappynessIntelligence == true and 
    player:getModData().DTboredomIntelligence == true then
        -- IF PLAYER HAVEN'T KILLED ZOMBIES FOR 72 HOURS, THEN THE MOOD WILL BE AFFECTED EVERY HOUR
        if player:getModData().DTtimesinceLastKill > 72 then
            --print("DT Logger: All the books were read");
            -- STRESS
            DTincreaseStress(player, ZombRand(5), 0.20);
            -- BOREDOM
            DTincreaseBoredom(player, ZombRand(5), 15);
            -- UNHAPPYNESS
            DTincreaseUnhappyness(player, ZombRand(5), 10);
            -- ANGER
            DTincreaseAnger(player, ZombRand(5), 0.30);
        end
    else
        -- IF PLAYER HAVEN'T KILLED ZOMBIES FOR 24 HOURS, THEN THE MOOD WILL BE AFFECTED EVERY HOUR
        if player:getModData().DTtimesinceLastKill > 24 then
            --print("DT Logger: All the books were not read");
            -- STRESS
            DTincreaseStress(player, ZombRand(5), 0.20);
            -- BOREDOM
            DTincreaseBoredom(player, ZombRand(5), 15);
            -- UNHAPPYNESS
            DTincreaseUnhappyness(player, ZombRand(5), 10);
            -- ANGER
            DTincreaseAnger(player, ZombRand(5), 0.30);
        end
    end
end

function bloodlustTraitSounds(player)
    --print("DT Logger: running bloodlustTraitSounds function");
    if not player:isAsleep() then
        local randomSoundToPlay = {"zombierand1","zombierand2","zombierand3","zombierand4","zombierand5","zombierand6","zombierand7",
        "zombierand8","zombierand9","zombiebite","zombie_footstep_m_01","zombie_footstep_m_02","zombie_footstep_m_03","zombie_footstep_m_04",
        "zombie_footstep_m_05","zombie_footstep_m_06","zombie_footstep_m_07","zombie_footstep_m_08","zombie_footstep_m_09","zombie_footstep_m_10",
        "zombie_footstep_m_11","zombie_footstep_m_12","thump1","thump2","thump3","thump4","thump5","thump6","thumpa1","thumpa2","thumpsqueakdistant01",
        "thumpsqueakdistant02","thumpsqueakdistant03","thumpsqueakdistant04","PZ_MaleZombie_01","PZ_MaleZombie_02","PZ_MaleZombie_03","PZ_MaleZombie_04",
        "PZ_MaleZombie_05","PZ_MaleZombie_06","PZ_MaleZombie_07","PZ_MaleZombie_08","PZ_MaleZombieEating","PZ_Female_zombie_01","PZ_Female_zombie_02",
        "PZ_Female_zombie_03","PZ_Female_zombie_04","PZ_Female_zombie_05","PZ_Female_zombie_06","PZ_Female_zombie_07","PZ_Female_zombie_08",
        "PZ_Female_zombie_09","PZ_FemaleZombieEating","fzombierand1","fzombierand2","fzombierand3","fzombierand4","fzombierand5","fzombierand6",
        "fzombierand7","fzombierand8","fzombierand9"};
        if player:getModData().DTstressIntelligence == true and player:getModData().DTunhappynessIntelligence == true and 
        player:getModData().DTboredomIntelligence == true then
            -- IF PLAYER HAVEN'T KILLED ZOMBIES FOR 72 HOURS, THEN THE PLAYER WILL START TO HEAR RANDOM SOUNDS
            if player:getModData().DTtimesinceLastKill > 72 then
                DTPlaySound(player, ZombRand(60), randomSoundToPlay[ZombRand(1,63)]);
            end
        else
            -- IF PLAYER HAVEN'T KILLED ZOMBIES FOR 24 HOURS, THEN THE PLAYER WILL START TO HEAR RANDOM SOUNDS
            if player:getModData().DTtimesinceLastKill > 24 then
                DTPlaySound(player, ZombRand(60), randomSoundToPlay[ZombRand(1,63)]);
            end
        end
    end
end

function bloodlustTraitOnZombieKill(player)
    --print("DT Logger: running bloodlustTraitOnZombieKill function");
    -- IF THE PLAYER KILLED A ZOMBIE THE NEGATIVE MOODS ARE REDUCED
    if player:getZombieKills() > player:getModData().DTKillscheck then
        -- STRESS
        DTdecreaseStress(player, 0.05);
        DTdecreaseStressFromCigarettes(player, 0.10);
        -- BOREDOM
        DTdecreaseBoredom(player, 5);
        -- UNHAPPYNESS
        DTdecreaseUnhappyness(player, 10);
        -- ANGRY
        DTdecreaseAnger(player, 0.05);
        player:getModData().DTKillscheck = player:getZombieKills();
        player:getModData().DTtimesinceLastKill = 0;
    end
end