-- Traits gains based on skills levels are going to be handled in this function.
function traitsGainsByLevel(player, perk, perkLevel)
    --print("DT Logger: running traitsGainsByLevel function");
    -- CALL TO INITIALIZATIONS METHOD TO PREVENT LUA ERRORS WHEN A CHARACTER IS CREATED AND HAS PERK LEVELS (THE LEVEL PERK EVENT IS CALLED WHEN THE ASSIGNING THE STARTING PERK LEVELS)
    if player:getModData().DTSlowFastLearner == nil or player:getModData().DTKeenHardOfHearing == nil then
        DTBaseGameCharacterDetails.DoExistingCharacterInitializations(player);
    end
    --------------- AGILITY SKILLS ---------------
    -- SPRINTING
    if perk == Perks.Sprinting then
        -- Gaining Trait "Jogger" when reaching Sprinting Lv4
        if perkLevel >= 4 and not player:HasTrait("Jogger") then
            player:getTraits():add("Jogger");
            applyXPBoost(player, Perks.Sprinting, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Jogger"), true, HaloTextHelper.getColorGreen());
        end    
    end

    -- SNEAK
    if perk == Perks.Sneak then
        -- Gain trait "Hunter" if the next requirements are met: Lv5 of Aiming, Lv5 of Trapping, Lv5 of Sneak, Lv5 of SmallBlade.
        -- Case 1 Leveling Up Sneak
        if perkLevel >= 5 and player:getPerkLevel(Perks.Aiming) >= 5 and player:getPerkLevel(Perks.Trapping) >= 5 and 
        player:getPerkLevel(Perks.SmallBlade) >= 5 and not player:HasTrait("Hunter") then
            player:getTraits():add("Hunter");
            applyXPBoost(player, Perks.Sneak, 1);
            applyXPBoost(player, Perks.Aiming, 1);
            applyXPBoost(player, Perks.Trapping, 1);
            applyXPBoost(player, Perks.SmallBlade, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Hunter"), true, HaloTextHelper.getColorGreen());
        end
        -- Losing Trait "Conspicuous" when reaching Sneak Lv5
        if perkLevel >= 5 and player:HasTrait("Conspicuous") then
            player:getTraits():remove("Conspicuous");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Conspicuous"), false, HaloTextHelper.getColorGreen());
        end 
        if perkLevel >= 6 and not player:HasTrait("Sneaky") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("Sneaky");
            applyXPBoost(player, Perks.Sneak, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_sneaky"), true, HaloTextHelper.getColorGreen());
        end   
        -- Gaining Trait "Inconspicuous" when reaching Sneak Lv8
        if perkLevel >= 8 and not player:HasTrait("Inconspicuous") then
            player:getTraits():add("Inconspicuous");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Inconspicuous"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTKeenHardOfHearing = player:getModData().DTKeenHardOfHearing + 1;
    end
    
    -- LIGHTFOOT
    if perk == Perks.Lightfoot then
        -- Losing Trait "Clumsy" when reaching Lightfoot Lv5
        if perkLevel >= 5 and player:HasTrait("Clumsy") then
            player:getTraits():remove("Clumsy");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_clumsy"), false, HaloTextHelper.getColorGreen());
        end
        if perkLevel >= 6 and not player:HasTrait("Lightfooted") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("Lightfooted");
            applyXPBoost(player, Perks.Lightfoot, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_lightfooted"), true, HaloTextHelper.getColorGreen());
        end
        -- Gain Trait "Gymnast" when reaching Nimble Lv4 and Lightfoot Lv7.
        -- Case 1: Leveling Up Lightfoot.
        if perkLevel >= 7 and player:getPerkLevel(Perks.Nimble) >= 4 and not player:HasTrait("Gymnast") then 
            player:getTraits():add("Gymnast");
            applyXPBoost(player, Perks.Lightfoot, 1);
            applyXPBoost(player, Perks.Nimble, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Gymnast"), true, HaloTextHelper.getColorGreen());
        end
        -- Gaining Trait "Graceful" when reaching Lightfoot Lv8
        if perkLevel >= 8 and not player:HasTrait("Graceful") then
            player:getTraits():add("Graceful");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_graceful"), true, HaloTextHelper.getColorGreen());
        end
        
        player:getModData().DTKeenHardOfHearing = player:getModData().DTKeenHardOfHearing + 1;
    end

    -- NIMBLE
    if perk == Perks.Nimble then
        -- Gain trait "Burglar" if the next requirements are met: Lv2 of Mechanics, Lv1 of Electronics, Lv1 of Nimble.
        -- Case 3: Leveling Up Nimble.
        if perkLevel >= 1 and player:getPerkLevel(Perks.Electricity) >= 1 and player:getPerkLevel(Perks.Mechanics) >= 2 and not player:HasTrait("Burglar") then
            player:getTraits():add("Burglar");
            HaloTextHelper.addTextWithArrow(player, getText("UI_prof_Burglar"), true, HaloTextHelper.getColorGreen());
        end
        -- Gain Trait "Gymnast" when reaching Nimble Lv4 and Lightfoot Lv7.
        -- Case 2: Leveling Up Nimble.
        if perkLevel >= 4 and player:getPerkLevel(Perks.Lightfoot) >= 7 and not player:HasTrait("Gymnast") then 
            player:getTraits():add("Gymnast");
            applyXPBoost(player, Perks.Lightfoot, 1);
            applyXPBoost(player, Perks.Nimble, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Gymnast"), true, HaloTextHelper.getColorGreen());
        end
        if perkLevel >= 5 and not player:HasTrait("Nimble") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("Nimble");
            applyXPBoost(player, Perks.Nimble, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_nimble"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTKeenHardOfHearing = player:getModData().DTKeenHardOfHearing + 1;
    end

    --------------- FIREARMS SKILLS ---------------
    -- AIMING
    if perk == Perks.Aiming then
        -- Gain trait "Hunter" if the next requirements are met: Lv5 of Aiming, Lv5 of Trapping, Lv5 of Sneak, Lv5 of SmallBlade.
        -- Case 2 Leveling Up Aiming
        if perkLevel >= 5 and player:getPerkLevel(Perks.Trapping) >= 5 and player:getPerkLevel(Perks.Sneak) >= 5 and 
        player:getPerkLevel(Perks.SmallBlade) >= 5 and not player:HasTrait("Hunter") then
            player:getTraits():add("Hunter");
            applyXPBoost(player, Perks.Sneak, 1);
            applyXPBoost(player, Perks.Aiming, 1);
            applyXPBoost(player, Perks.Trapping, 1);
            applyXPBoost(player, Perks.SmallBlade, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Hunter"), true, HaloTextHelper.getColorGreen());
        end
        -- Gain Trait "EagleEyed" when reaching Aiming Lv5.
        if perkLevel >= 5 and not player:HasTrait("EagleEyed") and not player:HasTrait("ShortSighted") then
            player:getTraits():add("EagleEyed");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_eagleeyed"), true, HaloTextHelper.getColorGreen());
        end
        if perkLevel >= 6 and player:getPerkLevel(Perks.Reloading) >= 4 and not player:HasTrait("Gunfan") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("Gunfan");
            applyXPBoost(player, Perks.Aiming, 1);
			applyXPBoost(player, Perks.Reloading, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_gunfan"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTKeenHardOfHearing = player:getModData().DTKeenHardOfHearing + 1;
    end

    -- RELOADING
    if perk == Perks.Reloading then
        if perkLevel >= 4 and player:getPerkLevel(Perks.Aiming) >= 6 and not player:HasTrait("Gunfan") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("Gunfan");
            applyXPBoost(player, Perks.Aiming, 1);
			applyXPBoost(player, Perks.Reloading, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_gunfan"), true, HaloTextHelper.getColorGreen());
        end
    end

    --------------- COMBAT SKILLS ---------------
    -- MAINTENANCE
	if perk == Perks.Maintenance then
        if perkLevel >= 6 and not player:HasTrait("Durabile") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("Durabile");
            applyXPBoost(player, Perks.Maintenance, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_durabile"), true, HaloTextHelper.getColorGreen());
        end
	end	

    -- AXE
    if perk == Perks.Axe then
        if perkLevel >= 5 and not player:HasTrait("Cutter") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("Cutter");
            applyXPBoost(player, Perks.Axe, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_cutter"), true, HaloTextHelper.getColorGreen());
        end
        -- Gain Trait "Brawler" when reaching Axe Lv6 and Long Blunt Lv7.
        -- Case 1: Leveling Up Axe.
        if perkLevel >= 6 and player:getPerkLevel(Perks.Blunt) >= 7 and not player:HasTrait("Brawler") then 
            player:getTraits():add("Brawler");
            applyXPBoost(player, Perks.Axe, 1);
            applyXPBoost(player, Perks.Blunt, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_BarFighter"), true, HaloTextHelper.getColorGreen());
        end
        -- Gain Trait "Axeman" when reaching Axe Lv7
        if perkLevel >= 7 and not player:HasTrait("Axeman") then
            player:getTraits():add("Axeman");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_axeman"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTKeenHardOfHearing = player:getModData().DTKeenHardOfHearing + 1;
    end

    -- LONG BLUNT
    if perk == Perks.Blunt then
        -- Gain Trait "Baseball player" when reaching Long blunt Lv4
        if perkLevel >= 4 and not player:HasTrait("BaseballPlayer") then
            player:getTraits():add("BaseballPlayer");
            applyXPBoost(player, Perks.Blunt, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_PlaysBaseball"), true, HaloTextHelper.getColorGreen());
        end
        -- Gain Trait "Brawler" when reaching Axe Lv6 and Long Blunt Lv7.
        -- Case 2: Leveling Up Long Blunt.
        if perkLevel >= 7 and player:getPerkLevel(Perks.Axe) >= 6 and not player:HasTrait("Brawler") then 
            player:getTraits():add("Brawler");
            applyXPBoost(player, Perks.Axe, 1);
            applyXPBoost(player, Perks.Blunt, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_BarFighter"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTKeenHardOfHearing = player:getModData().DTKeenHardOfHearing + 1;
    end

    -- SMALL BLUNT
    if perk == Perks.SmallBlunt then
        if perkLevel >= 4 and not player:HasTrait("Shortbluntfan") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("Shortbluntfan");
            applyXPBoost(player, Perks.SmallBlunt, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_shortbluntfan"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTKeenHardOfHearing = player:getModData().DTKeenHardOfHearing + 1;
    end

    -- LONG BLADE
    if perk == Perks.LongBlade then
        if perkLevel >= 5 and not player:HasTrait("Swordsman") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("Swordsman");
            applyXPBoost(player, Perks.LongBlade, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_swordsman"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTKeenHardOfHearing = player:getModData().DTKeenHardOfHearing + 1;
    end

    -- SMALL BLADE
    if perk == Perks.SmallBlade then
        if perkLevel >= 4 and not player:HasTrait("Shortbladefan") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("Shortbladefan");
            applyXPBoost(player, Perks.SmallBlade, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_shortbladefan"), true, HaloTextHelper.getColorGreen());
        end
        -- Gain trait "Hunter" if the next requirements are met: Lv5 of Aiming, Lv5 of Trapping, Lv5 of Sneak, Lv5 of SmallBlade.
        -- Case 3 Leveling Up SmallBlade
        if perkLevel >= 5 and player:getPerkLevel(Perks.Aiming) >= 5 and player:getPerkLevel(Perks.Trapping) >= 5 and 
        player:getPerkLevel(Perks.Sneak) >= 5 and not player:HasTrait("Hunter") then
            player:getTraits():add("Hunter");
            applyXPBoost(player, Perks.Sneak, 1);
            applyXPBoost(player, Perks.Aiming, 1);
            applyXPBoost(player, Perks.Trapping, 1);
            applyXPBoost(player, Perks.SmallBlade, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Hunter"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTKeenHardOfHearing = player:getModData().DTKeenHardOfHearing + 1;
    end

    -- SPEAR
    if perk == Perks.Spear then
        if perkLevel >= 6 and not player:HasTrait("Spearman") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("Spearman");
            applyXPBoost(player, Perks.Spear, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_spearman"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTKeenHardOfHearing = player:getModData().DTKeenHardOfHearing + 1;
    end

    --------------- CRAFTING SKILLS ---------------
    -- CARPENTRY
    if perk == Perks.Woodwork then
        if perkLevel >= 5 and not player:HasTrait("AMCarpenter") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("AMCarpenter");
            applyXPBoost(player, Perks.Woodwork, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_amcarpenter"), true, HaloTextHelper.getColorGreen());
        end
        -- Gain Trait "Handy" when reaching Carpentry Lv8
        if perkLevel >= 8 and not player:HasTrait("Handy") then
            player:getTraits():add("Handy");
            applyXPBoost(player, Perks.Woodwork, 1);
            applyXPBoost(player, Perks.Maintenance, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_handy"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTSlowFastLearner = player:getModData().DTSlowFastLearner + 1;
    end

    -- COOKING
    if perk == Perks.Cooking then
        if perkLevel >= 4 and not player:HasTrait("AMCook") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("AMCook");
            applyXPBoost(player, Perks.Cooking, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_amcook"), true, HaloTextHelper.getColorGreen());
        end
        -- Gain Trait "Cook" when reaching Cooking Lv7
        if perkLevel >= 7 and not player:HasTrait("Cook") then
            player:getTraits():add("Cook");
            applyXPBoost(player, Perks.Cooking, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Cook"), true, HaloTextHelper.getColorGreen());
        end
        -- Gain Trait "Nutritionist" when reaching Cooking Lv10
        if perkLevel == 10 and not player:HasTrait("Nutritionist") then
            player:getTraits():add("Nutritionist");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_nutritionist"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTSlowFastLearner = player:getModData().DTSlowFastLearner + 1;
    end

    -- FARMING
    if perk == Perks.Farming then
        -- Gain trait "Gardener" when reaching Farming Lv8.
        if perkLevel >= 8 and not player:HasTrait("Gardener") then
            player:getTraits():add("Gardener");
            applyXPBoost(player, Perks.Farming, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Gardener"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTSlowFastLearner = player:getModData().DTSlowFastLearner + 1;
    end

    -- DOCTOR
    if perk == Perks.Doctor then
        -- Gain trait "FirstAid" when reaching First Aid Lv3.
        if perkLevel >= 3 and not player:HasTrait("FirstAid") then
            player:getTraits():add("FirstAid");
            applyXPBoost(player, Perks.Doctor, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_FirstAid"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTSlowFastLearner = player:getModData().DTSlowFastLearner + 1;
    end

    -- ELECTRONIC
    if perk == Perks.Electricity then
        -- Gain trait "Burglar" if the next requirements are met: Lv2 of Mechanics, Lv1 of Electronics, Lv1 of Nimble.
        -- Case 2: Leveling Up Electronics
        if perkLevel >= 1 and player:getPerkLevel(Perks.Mechanics) >= 2 and player:getPerkLevel(Perks.Nimble) >= 1 and not player:HasTrait("Burglar") then
            player:getTraits():add("Burglar");
            HaloTextHelper.addTextWithArrow(player, getText("UI_prof_Burglar"), true, HaloTextHelper.getColorGreen());
        end
        -- Gain Trait "AmateurElectrician" when reaching Electronic Lv3
        if perkLevel >= 3 and not player:HasTrait("AmateurElectrician") and not player:HasTrait("AmateurElectrician2") then
            player:getTraits():add("AmateurElectrician");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_AmateurElectrician"), true, HaloTextHelper.getColorGreen());
            local playerRecipes = player:getKnownRecipes();
            if not playerRecipes:contains("Generator") then
                playerRecipes:add("Generator");
            end
        end
        if perkLevel >= 5 and not player:HasTrait("AMElectrician") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("AMElectrician");
            applyXPBoost(player, Perks.Electricity, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_amelectrician"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTSlowFastLearner = player:getModData().DTSlowFastLearner + 1;
    end

    -- METALWELDING
    if perk == Perks.MetalWelding then
        if perkLevel >= 5 and not player:HasTrait("AMMetalworker") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("AMMetalworker");
            applyXPBoost(player, Perks.MetalWelding, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_ammetalworker"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTSlowFastLearner = player:getModData().DTSlowFastLearner + 1;
    end

    -- MECHANICS
    if perk == Perks.Mechanics then
        -- Gain trait "Burglar" if the next requirements are met: Lv2 of Mechanics, Lv1 of Electronics, Lv1 of Nimble.
        -- Case 1: Leveling Up Mechanics
        if perkLevel >= 2 and player:getPerkLevel(Perks.Electricity) >= 1 and player:getPerkLevel(Perks.Nimble) >= 1 and not player:HasTrait("Burglar") then
            player:getTraits():add("Burglar");
            HaloTextHelper.addTextWithArrow(player, getText("UI_prof_Burglar"), true, HaloTextHelper.getColorGreen());
        end
        if perkLevel >= 5 and not player:HasTrait("AMMechanic") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("AMMechanic");
            applyXPBoost(player, Perks.Mechanics, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_ammechanic"), true, HaloTextHelper.getColorGreen());
        end
        -- Gain trait "Mechanics" when reaching Mechanic Lv7.
        if perkLevel >= 7 and not player:HasTrait("Mechanics") then
            player:getTraits():add("Mechanics");
            applyXPBoost(player, Perks.Mechanics, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Mechanics"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTSlowFastLearner = player:getModData().DTSlowFastLearner + 1;
    end

    -- TAILORING
    if perk == Perks.Tailoring then
        -- Gain trait "Tailor" when reaching Tailoring Lv7.
        if perkLevel >= 6 and not player:HasTrait("Tailor") then
            player:getTraits():add("Tailor");
            applyXPBoost(player, Perks.Tailoring, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Tailor"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTSlowFastLearner = player:getModData().DTSlowFastLearner + 1;
    end

    --------------- SURVIVALIST SKILLS ---------------
    -- FISHING
    if perk == Perks.Fishing then
        -- Gain trait "Fishing" when reaching Fishing Lv6.
        if perkLevel >= 5 and not player:HasTrait("Fishing") then
            player:getTraits():add("Fishing");
            applyXPBoost(player, Perks.Fishing, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Fishing"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTSlowFastLearner = player:getModData().DTSlowFastLearner + 1;
    end

    -- TRAPPING
    if perk == Perks.Trapping then
        -- Gain trait "Formerscout" if the next requirements are met: Lv4 of PlantScavenging, Lv2 of Trapping.
        -- Case 1: Leveling Up Trapping
        if perkLevel >= 2 and player:getPerkLevel(Perks.PlantScavenging) >= 4 and not player:HasTrait("Formerscout") then
            player:getTraits():add("Formerscout");
            applyXPBoost(player, Perks.Trapping, 1);
            applyXPBoost(player, Perks.PlantScavenging, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Scout"), true, HaloTextHelper.getColorGreen());
        end
        -- Gain trait "Hiker" if the next requirements are met: Lv7 of PlantScavenging, Lv3 of Trapping.
        -- Case 2: Leveling Up Trapping
        if perkLevel >= 3 and player:getPerkLevel(Perks.PlantScavenging) >= 7 and not player:HasTrait("Hiker") then
            player:getTraits():add("Hiker");
            applyXPBoost(player, Perks.Trapping, 1);
            applyXPBoost(player, Perks.PlantScavenging, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Hiker"), true, HaloTextHelper.getColorGreen());
        end
        if perkLevel >= 4 and not player:HasTrait("AMTrapper") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("AMTrapper");
            applyXPBoost(player, Perks.Trapping, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_amtrapper"), true, HaloTextHelper.getColorGreen());
        end
        -- Gain trait "Hunter" if the next requirements are met: Lv5 of Aiming, Lv5 of Trapping, Lv5 of Sneak, Lv5 of SmallBlade.
        -- Case 4 Leveling Up Trapping
        if perkLevel >= 5 and player:getPerkLevel(Perks.Aiming) >= 5 and player:getPerkLevel(Perks.Sneak) >= 5 and 
        player:getPerkLevel(Perks.SmallBlade) >= 5 and not player:HasTrait("Hunter") then
            player:getTraits():add("Hunter");
            applyXPBoost(player, Perks.Sneak, 1);
            applyXPBoost(player, Perks.Aiming, 1);
            applyXPBoost(player, Perks.Trapping, 1);
            applyXPBoost(player, Perks.SmallBlade, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Hunter"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().DTSlowFastLearner = player:getModData().DTSlowFastLearner + 1;
    end

    -- FORAGING
    if perk == Perks.PlantScavenging then
        -- Gain trait "Formerscout" if the next requirements are met: Lv4 of PlantScavenging, Lv2 of Trapping.
        -- Case 2: Leveling Up Plant Scavenging.
        if perkLevel >= 4 and player:getPerkLevel(Perks.Trapping) >= 2 and not player:HasTrait("Formerscout") then
            player:getTraits():add("Formerscout");
            applyXPBoost(player, Perks.Trapping, 1);
            applyXPBoost(player, Perks.PlantScavenging, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Scout"), true, HaloTextHelper.getColorGreen());
        end
        if perkLevel >= 6 and not player:HasTrait("AMForager") and not getActivatedMods():contains("MoreSimpleTraits") then
            player:getTraits():add("AMForager");
            applyXPBoost(player, Perks.PlantScavenging, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_amforager"), true, HaloTextHelper.getColorGreen());
        end
        -- Gain trait "Hiker" if the next requirements are met: Lv7 of PlantScavenging, Lv3 of Trapping.
        -- Case 1: Leveling Up PlantScavenging
        if perkLevel >= 7 and player:getPerkLevel(Perks.Trapping) >= 3 and not player:HasTrait("Hiker") then
            player:getTraits():add("Hiker");
            applyXPBoost(player, Perks.Trapping, 1);
            applyXPBoost(player, Perks.PlantScavenging, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Hiker"), true, HaloTextHelper.getColorGreen());
        end
        
        player:getModData().DTKeenHardOfHearing = player:getModData().DTKeenHardOfHearing + 1;
        player:getModData().DTSlowFastLearner = player:getModData().DTSlowFastLearner + 1;
    end
    -- CHECKS IF THE PLAYER HAS THE NECESSARY TO REMOVE SLOW LEARNER OR OBTAIN FAST LEARNER
    if player:getModData().DTSlowFastLearner >= 30 and player:HasTrait("SlowLearner") then
        player:getTraits():remove("SlowLearner");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_SlowLearner"), false, HaloTextHelper.getColorGreen());
    end
    if player:getModData().DTSlowFastLearner >= 50 and not player:HasTrait("FastLearner") then
        player:getTraits():add("FastLearner");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_FastLearner"), true, HaloTextHelper.getColorGreen());
    end
    -- CHECKS IF THE PLAYER HAS THE NECESSARY TO REMOVE HARD OF HEARING OR OBTAIN KEEN HEARING
    if player:getModData().DTKeenHardOfHearing >= 30 and player:HasTrait("HardOfHearing") then
        player:getTraits():remove("HardOfHearing");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_hardhear"), false, HaloTextHelper.getColorGreen());
    end
    if player:getModData().DTKeenHardOfHearing >= 50 and not player:HasTrait("KeenHearing") and not player:HasTrait("Deaf") then
        player:getTraits():add("KeenHearing");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_keenhearing"), true, HaloTextHelper.getColorGreen());
    end
end