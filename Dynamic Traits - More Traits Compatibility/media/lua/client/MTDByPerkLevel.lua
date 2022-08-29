function MTDtraitsGainsByLevel(player, perk, perkLevel)
    -- CALL TO INITIALIZATIONS METHOD TO PREVENT LUA ERRORS WHEN A CHARACTER IS CREATED AND HAS PERK LEVELS (THE LEVEL PERK EVENT IS CALLED WHEN THE ASSIGNING THE STARTING PERK LEVELS)
    if player:getModData().MTDEvasive == nil then
        MTDBaseGameCharacterDetails.DoExistingCharacterInitializations(player);
    end
    
    --------------- AGILITY SKILLS ---------------
    -- SPRINTING
    if perk == Perks.Sprinting then
        player:getModData().MTDEvasive = player:getModData().MTDEvasive + 1;
    end
    -- SNEAK
    if perk == Perks.Sneak then
        -- Adding the trait "swift" when reaching Sneak Lv5
        if perkLevel >= 5 and not player:HasTrait("quiet") then
            player:getTraits():add("quiet");
            applyXPBoost(player, Perks.Sneak, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_quiet"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().MTDEvasive = player:getModData().MTDEvasive + 1;
    end
    -- LIGHTFOOT
    if perk == Perks.Lightfoot then
        -- Adding the trait "swift" when reaching Lightfoot Lv5
        if perkLevel >= 5 and not player:HasTrait("swift") then
            player:getTraits():add("swift");
            applyXPBoost(player, Perks.Lightfoot, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_swift"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().MTDEvasive = player:getModData().MTDEvasive + 1;
    end
    -- NIMBLE
    if perk == Perks.Nimble then
        -- Adding the trait "flexible" when reaching Nimble Lv4
        if perkLevel >= 4 and not player:HasTrait("flexible") then
            player:getTraits():add("flexible");
            applyXPBoost(player, Perks.Nimble, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_flexible"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().MTDEvasive = player:getModData().MTDEvasive + 1;
    end
    --------------- FIREARMS SKILLS ---------------
    if perk == Perks.Aiming then
        -- Adding the trait "gunspecialist" when reaching Aiming Lv5 and Reloading Lv5
        -- Case 1: Leveling up Aiming
        if perkLevel >= 5 and player:getPerkLevel(Perks.Reloading) >= 5 and not player:HasTrait("gunspecialist") then
            player:getTraits():add("gunspecialist");
            applyXPBoost(player, Perks.Aiming, 1);
            applyXPBoost(player, Perks.Reloading, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_gunspecialist"), true, HaloTextHelper.getColorGreen());
        end
        -- Adding the trait "progun" when reaching Aiming Lv7 and Reloading Lv7
        -- Case 1: Leveling up Aiming
        if perkLevel >= 7 and player:getPerkLevel(Perks.Reloading) >= 7 and not player:HasTrait("progun") then
            player:getTraits():add("progun");
            applyXPBoost(player, Perks.Aiming, 1);
            applyXPBoost(player, Perks.Reloading, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_progun"), true, HaloTextHelper.getColorGreen());
        end
    end
    if perk == Perks.Reloading then
        -- Adding the trait "gunspecialist" when reaching Aiming Lv5 and Reloading Lv5
        -- Case 2: Leveling up Reloading
        if perkLevel >= 5 and player:getPerkLevel(Perks.Aiming) >= 5 and not player:HasTrait("gunspecialist") then
            player:getTraits():add("gunspecialist");
            applyXPBoost(player, Perks.Aiming, 1);
            applyXPBoost(player, Perks.Reloading, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_gunspecialist"), true, HaloTextHelper.getColorGreen());
        end
        -- Adding the trait "progun" when reaching Aiming Lv7 and Reloading Lv7
        -- Case 2: Leveling up Reloading
        if perkLevel >= 7 and player:getPerkLevel(Perks.Aiming) >= 7 and not player:HasTrait("gunspecialist") then
            player:getTraits():add("gunspecialist");
            applyXPBoost(player, Perks.Aiming, 1);
            applyXPBoost(player, Perks.Reloading, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_gunspecialist"), true, HaloTextHelper.getColorGreen());
        end
    end
    --------------- COMBAT SKILLS ---------------
    -- AXE
    if perk == Perks.Axe then
        -- Adding the trait "problade" when reaching SmallBlade Lv9, LongBlade Lv9 and Axe Lv9
        -- Case 1: Leveling up Axe
        if perkLevel >= 9 and player:getPerkLevel(Perks.SmallBlade) >= 9 and player:getPerkLevel(Perks.LongBlade) >= 9 and not player:HasTrait("problade") then
            player:getTraits():add("problade");
            applyXPBoost(player, Perks.Axe, 1);
            applyXPBoost(player, Perks.SmallBlade, 1);
            applyXPBoost(player, Perks.LongBlade, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_problade"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().MTDEvasive = player:getModData().MTDEvasive + 1;
    end
    -- LONG BLUNT
    if perk == Perks.Blunt then
        -- Adding the trait "blunttwirl" when reaching Blunt Lv7 and SmallBlunt Lv7
        -- Case 1: Leveling up Blunt
        if perkLevel >= 7 and player:getPerkLevel(Perks.SmallBlunt) >= 7 and not player:HasTrait("blunttwirl") then
            player:getTraits():add("blunttwirl");
            applyXPBoost(player, Perks.Blunt, 1);
            applyXPBoost(player, Perks.SmallBlunt, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_blunttwirl"), true, HaloTextHelper.getColorGreen());
        end
        -- Adding the trait "problunt" when reaching Blunt Lv9 and SmallBlunt Lv9
        -- Case 1: Leveling up Blunt
        if perkLevel >= 9 and player:getPerkLevel(Perks.SmallBlunt) >= 9 and not player:HasTrait("problunt") then
            player:getTraits():add("problunt");
            applyXPBoost(player, Perks.Blunt, 1);
            applyXPBoost(player, Perks.SmallBlunt, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_problunt"), true, HaloTextHelper.getColorGreen());
        end
        -- Gain Trait "gordanite" when reaching Blunt Lv10
        if perkLevel >= 10 and not player:HasTrait("gordanite") then
            player:getTraits():add("gordanite");
            applyXPBoost(player, Perks.Blunt, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_gordanite"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().MTDEvasive = player:getModData().MTDEvasive + 1;
    end
    -- SMALL BLUNT
    if perk == Perks.SmallBlunt then
        -- Adding the trait "grunt" when reaching SmallBlunt Lv4 and Carpentry Lv6
        -- Case 1: Leveling up Small Blunt
        if perkLevel >= 4 and player:getPerkLevel(Perks.Woodwork) >= 6 and not player:HasTrait("grunt") then
            player:getTraits():add("grunt");
            applyXPBoost(player, Perks.SmallBlunt, 1);
            applyXPBoost(player, Perks.Woodwork, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_grunt"), true, HaloTextHelper.getColorGreen());
        end
        -- Adding the trait "blunttwirl" when reaching Blunt Lv7 and SmallBlunt Lv7
        -- Case 2: Leveling up SmallBlunt
        if perkLevel >= 7 and player:getPerkLevel(Perks.Blunt) >= 7 and not player:HasTrait("blunttwirl") then
            player:getTraits():add("blunttwirl");
            applyXPBoost(player, Perks.Blunt, 1);
            applyXPBoost(player, Perks.SmallBlunt, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_blunttwirl"), true, HaloTextHelper.getColorGreen());
        end
        -- Adding the trait "problunt" when reaching Blunt Lv9 and SmallBlunt Lv9
        -- Case 2: Leveling up SmallBlunt
        if perkLevel >= 9 and player:getPerkLevel(Perks.Blunt) >= 9 and not player:HasTrait("problunt") then
            player:getTraits():add("problunt");
            applyXPBoost(player, Perks.Blunt, 1);
            applyXPBoost(player, Perks.SmallBlunt, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_problunt"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().MTDEvasive = player:getModData().MTDEvasive + 1;
    end
    -- LONG BLADE
    if perk == Perks.LongBlade then
        -- Adding the trait "bladetwirl" when reaching LongBlade Lv7 and SmallBlade Lv7
        -- Case 1: Leveling up LongBlade
        if perkLevel >= 7 and player:getPerkLevel(Perks.SmallBlade) >= 7 and not player:HasTrait("bladetwirl") then
            player:getTraits():add("bladetwirl");
            applyXPBoost(player, Perks.LongBlade, 1);
            applyXPBoost(player, Perks.SmallBlade, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_bladetwirl"), true, HaloTextHelper.getColorGreen());
        end
        -- Adding the trait "problade" when reaching SmallBlade Lv9, LongBlade Lv9 and Axe Lv9
        -- Case 2: Leveling up LongBlade
        if perkLevel >= 9 and player:getPerkLevel(Perks.SmallBlade) >= 9 and player:getPerkLevel(Perks.Axe) >= 9 and not player:HasTrait("problade") then
            player:getTraits():add("problade");
            applyXPBoost(player, Perks.Axe, 1);
            applyXPBoost(player, Perks.SmallBlade, 1);
            applyXPBoost(player, Perks.LongBlade, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_problade"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().MTDEvasive = player:getModData().MTDEvasive + 1;
    end
    -- SMALL BLADE
    if perk == Perks.SmallBlade then
        -- Adding the trait "bladetwirl" when reaching LongBlade Lv7 and SmallBlade Lv7
        -- Case 1: Leveling up SmallBlade
        if perkLevel >= 7 and player:getPerkLevel(Perks.LongBlade) >= 7 and not player:HasTrait("bladetwirl") then
            player:getTraits():add("bladetwirl");
            applyXPBoost(player, Perks.LongBlade, 1);
            applyXPBoost(player, Perks.SmallBlade, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_bladetwirl"), true, HaloTextHelper.getColorGreen());
        end
        -- Adding the trait "problade" when reaching SmallBlade Lv9, LongBlade Lv9 and Axe Lv9
        -- Case 3: Leveling up SmallBlade
        if perkLevel >= 9 and player:getPerkLevel(Perks.LongBlade) >= 9 and player:getPerkLevel(Perks.Axe) >= 9 and not player:HasTrait("problade") then
            player:getTraits():add("problade");
            applyXPBoost(player, Perks.Axe, 1);
            applyXPBoost(player, Perks.SmallBlade, 1);
            applyXPBoost(player, Perks.LongBlade, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_problade"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().MTDEvasive = player:getModData().MTDEvasive + 1;
    end
    -- SPEAR
    if perk == Perks.Spear then
        -- Adding the trait "wildsman" when reaching Lv5 in Spear, Lv6 in Fishing, Lv6 in Trapping and Lv8 in Foraging
        -- Case 1: Leveling Up Spear
        if perkLevel >= 5 and player:getPerkLevel(Perks.Fishing) >= 6 and player:getPerkLevel(Perks.Trapping) >= 6 and player:getPerkLevel(Perks.PlantScavenging) >= 8 and not player:HasTrait("wildsman") then
            player:getTraits():add("wildsman");
            applyXPBoost(player, Perks.Spear, 1);
            applyXPBoost(player, Perks.Fishing, 1);
            applyXPBoost(player, Perks.Trapping, 1);
            applyXPBoost(player, Perks.PlantScavenging, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_wildsman"), true, HaloTextHelper.getColorGreen());
        end
        -- Adding the trait "prospear" when reaching Spear Lv8
        if perkLevel >= 8 and not player:HasTrait("prospear") then
            player:getTraits():add("prospear");
            applyXPBoost(player, Perks.Spear, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_prospear"), true, HaloTextHelper.getColorGreen());
        end
        player:getModData().MTDEvasive = player:getModData().MTDEvasive + 1;
    end
    -- MAINTENANCE
    if perk == Perks.Maintenance then
        -- Adding the trait "scrapper" when reaching MetalWelding Lv7 and Maintenance Lv5
        -- Case 1: Leveling up Maintenance
        if perkLevel >= 5 and player:getPerkLevel(Perks.MetalWelding) >= 7 and not player:HasTrait("scrapper") then
            player:getTraits():add("scrapper");
            applyXPBoost(player, Perks.MetalWelding, 1);
            applyXPBoost(player, Perks.Maintenance, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_scrapper"), true, HaloTextHelper.getColorGreen());
        end
    end
    --------------- CRAFTING SKILLS ---------------
    -- CARPENTRY
    if perk == Perks.Woodwork then
        -- Adding the trait "grunt" when reaching SmallBlunt Lv4 and Carpentry Lv6
        -- Case 2: Leveling up Carpentry
        if perkLevel >= 6 and player:getPerkLevel(Perks.SmallBlunt) >= 4 and not player:HasTrait("grunt") then
            player:getTraits():add("grunt");
            applyXPBoost(player, Perks.SmallBlunt, 1);
            applyXPBoost(player, Perks.Woodwork, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_grunt"), true, HaloTextHelper.getColorGreen());
        end
    end
    -- COOKING
    if perk == Perks.Cooking then
        -- Adding the trait "natural" when reaching Cooking Lv6 and Foraging Lv7
        -- Case 1: Leveling up Cooking
        if perkLevel >= 6 and player:getPerkLevel(Perks.PlantScavenging) >= 7 and not player:HasTrait("natural") then
            player:getTraits():add("natural");
            applyXPBoost(player, Perks.Cooking, 1);
            applyXPBoost(player, Perks.PlantScavenging, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_natural"), true, HaloTextHelper.getColorGreen());
        end
        -- Removing the trait "ascetic" when reaching Cooking Lv8
        if perkLevel >= 8 and player:HasTrait("ascetic") then
            player:getTraits():remove("ascetic");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_asceticdesc"), false, HaloTextHelper.getColorGreen());
        end
        -- Adding the trait "gourmand" when reaching Cooking Lv10
        if perkLevel >= 10 and not player:HasTrait("gourmand") then
            player:getTraits():add("gourmand");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_gourmand"), true, HaloTextHelper.getColorGreen());
        end
    end
    -- FARMING
    if perk == Perks.Farming then

    end
    -- DOCTOR
    if perk == Perks.Doctor then
        
    end
    -- ELECTRONIC
    if perk == Perks.Electricity then
        -- Adding the trait "tinkerer" when reaching Electricity Lv7, Mechanics Lv7 and Tailoring Lv7
        -- Case 1: Leveling up Electronics
        if perkLevel >= 7 and player:getPerkLevel(Perks.Mechanics) >= 7 and player:getPerkLevel(Perks.Tailoring) >= 7 and not player:HasTrait("tinkerer") then
            player:getTraits():add("tinkerer");
            applyXPBoost(player, Perks.Electricity, 1);
            applyXPBoost(player, Perks.Mechanics, 1);
            applyXPBoost(player, Perks.Tailoring, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_tinkerer"), true, HaloTextHelper.getColorGreen());
        end
    end
    -- METALWELDING
    if perk == Perks.MetalWelding then
        -- Adding the trait "scrapper" when reaching MetalWelding Lv7 and Maintenance Lv5
        -- Case 2: Leveling up MetalWelding
        if perkLevel >= 7 and player:getPerkLevel(Perks.Maintenance) >= 5 and not player:HasTrait("scrapper") then
            player:getTraits():add("scrapper");
            applyXPBoost(player, Perks.MetalWelding, 1);
            applyXPBoost(player, Perks.Maintenance, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_scrapper"), true, HaloTextHelper.getColorGreen());
        end
    end
    -- MECHANICS
    if perk == Perks.Mechanics then
        -- Adding the trait "tinkerer" when reaching Electricity Lv7, Mechanics Lv7 and Tailoring Lv7
        -- Case 2: Leveling up Mechanics
        if perkLevel >= 7 and player:getPerkLevel(Perks.Electricity) >= 7 and player:getPerkLevel(Perks.Tailoring) >= 7 and not player:HasTrait("tinkerer") then
            player:getTraits():add("tinkerer");
            applyXPBoost(player, Perks.Electricity, 1);
            applyXPBoost(player, Perks.Mechanics, 1);
            applyXPBoost(player, Perks.Tailoring, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_tinkerer"), true, HaloTextHelper.getColorGreen());
        end
    end
    -- TAILORING
    if perk == Perks.Tailoring then
        -- Adding the trait "tinkerer" when reaching Electricity Lv7, Mechanics Lv7 and Tailoring Lv7
        -- Case 3: Leveling up Tailoring
        if perkLevel >= 7 and player:getPerkLevel(Perks.Electricity) >= 7 and player:getPerkLevel(Perks.Mechanics) >= 7 and not player:HasTrait("tinkerer") then
            player:getTraits():add("tinkerer");
            applyXPBoost(player, Perks.Electricity, 1);
            applyXPBoost(player, Perks.Mechanics, 1);
            applyXPBoost(player, Perks.Tailoring, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_tinkerer"), true, HaloTextHelper.getColorGreen());
        end
    end
    --------------- SURVIVALIST SKILLS ---------------
    -- FISHING
    if perk == Perks.Fishing then
        -- Adding the trait "wildsman" when reaching Lv5 in Spear, Lv6 in Fishing, Lv6 in Trapping and Lv8 in Foraging
        -- Case 2: Leveling Up Fishing
        if perkLevel >= 6 and player:getPerkLevel(Perks.Spear) >= 5 and player:getPerkLevel(Perks.Trapping) >= 6 and player:getPerkLevel(Perks.PlantScavenging) >= 8 and not player:HasTrait("wildsman") then
            player:getTraits():add("wildsman");
            applyXPBoost(player, Perks.Spear, 1);
            applyXPBoost(player, Perks.Fishing, 1);
            applyXPBoost(player, Perks.Trapping, 1);
            applyXPBoost(player, Perks.PlantScavenging, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_wildsman"), true, HaloTextHelper.getColorGreen());
        end
    end
    -- TRAPPING
    if perk == Perks.Trapping then
        -- Adding the trait "wildsman" when reaching Lv5 in Spear, Lv6 in Fishing, Lv6 in Trapping and Lv8 in Foraging
        -- Case 3: Leveling Up Trapping
        if perkLevel >= 6 and player:getPerkLevel(Perks.Spear) >= 5 and player:getPerkLevel(Perks.Fishing) >= 6 and player:getPerkLevel(Perks.PlantScavenging) >= 8 and not player:HasTrait("wildsman") then
            player:getTraits():add("wildsman");
            applyXPBoost(player, Perks.Spear, 1);
            applyXPBoost(player, Perks.Fishing, 1);
            applyXPBoost(player, Perks.Trapping, 1);
            applyXPBoost(player, Perks.PlantScavenging, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_wildsman"), true, HaloTextHelper.getColorGreen());
        end
    end
    if perk == Perks.PlantScavenging then
        -- Adding the trait "natural" when reaching Cooking Lv6 and Foraging Lv7
        -- Case 1: Leveling up Cooking
        if perkLevel >= 7 and player:getPerkLevel(Perks.Cooking) >= 6 and not player:HasTrait("natural") then
            player:getTraits():add("natural");
            applyXPBoost(player, Perks.Cooking, 1);
            applyXPBoost(player, Perks.PlantScavenging, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_natural"), true, HaloTextHelper.getColorGreen());
        end
        -- Adding the trait "wildsman" when reaching Lv5 in Spear, Lv6 in Fishing, Lv6 in Trapping and Lv8 in Foraging
        -- Case 4: Leveling Up Foraging
        if perkLevel >= 8 and player:getPerkLevel(Perks.Spear) >= 5 and player:getPerkLevel(Perks.Fishing) >= 6 and player:getPerkLevel(Perks.Trapping) >= 6 and not player:HasTrait("wildsman") then
            player:getTraits():add("wildsman");
            applyXPBoost(player, Perks.Spear, 1);
            applyXPBoost(player, Perks.Fishing, 1);
            applyXPBoost(player, Perks.Trapping, 1);
            applyXPBoost(player, Perks.PlantScavenging, 1);
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_wildsman"), true, HaloTextHelper.getColorGreen());
        end
        -- Adding the trait "graverobber" when reaching Foraging Lv10
        if perkLevel == 10 and not player:HasTrait("graverobber") then
            player:getTraits():add("graverobber");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_graverobber"), true, HaloTextHelper.getColorGreen());
        end 
    end

    -- CHECKS IF THE PLAYER HAS THE NECESSARY TO OBTAIN EVASIVE
    if player:getModData().MTDEvasive >= 80 and not player:HasTrait("evasive") then
        player:getTraits():add("evasive");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_evasive"), true, HaloTextHelper.getColorGreen());
    end
end