DTBaseGameCharacterDetails = {}

------------------------------------------------------------
----- NEW TRAITS / TRAITS REBALANCE / TRAITS EXCLUSIONS -----
------------------------------------------------------------
DTBaseGameCharacterDetails.DoTraits = function()
    print("DT Logger: DTBaseGameCharacterDetails.DoTraits function");
    -- VANILLA TRAITS COST REBALANCE

    -- PROFESSION TRAITS
    TraitFactory.addTrait("Axeman", getText("UI_trait_axeman"), 0, getText("UI_trait_axemandesc"), true);
    TraitFactory.addTrait("Burglar", getText("UI_prof_Burglar"), 0, getText("UI_trait_BurglarDesc"), true);
    TraitFactory.addTrait("NightOwl", getText("UI_trait_nightowl"), 0, getText("UI_trait_nightowldesc"), true);
    TraitFactory.addTrait("Desensitized", getText("UI_trait_Desensitized"), 0, getText("UI_trait_DesensitizedDesc"), true);

    -- WEIGHT / STRENGTH / FITNESS TRAITS
    TraitFactory.addTrait("Emaciated", getText("UI_trait_emaciated"), 0, getText("UI_trait_emaciateddesc"), true);
    local unfit = TraitFactory.addTrait("Unfit", getText("UI_trait_unfit"), -12, getText("UI_trait_unfitdesc"), false);
    unfit:addXPBoost(Perks.Fitness, -4);
    local outof = TraitFactory.addTrait("Out of Shape", getText("UI_trait_outofshape"), -8, getText("UI_trait_outofshapedesc"), false);
    outof:addXPBoost(Perks.Fitness, -2);
    local fit = TraitFactory.addTrait("Fit", getText("UI_trait_fit"), 8, getText("UI_trait_fitdesc"), false);
    fit:addXPBoost(Perks.Fitness, 2);
    local ath = TraitFactory.addTrait("Athletic", getText("UI_trait_athletic"), 16, getText("UI_trait_athleticdesc"), false);
    ath:addXPBoost(Perks.Fitness, 4);

    local weak = TraitFactory.addTrait("Weak", getText("UI_trait_weak"), -12, getText("UI_trait_weakdesc"), false);
    weak:addXPBoost(Perks.Strength, -5);
    local feeble = TraitFactory.addTrait("Feeble", getText("UI_trait_feeble"), -8, getText("UI_trait_feebledesc"), false);
    feeble:addXPBoost(Perks.Strength, -2);
    local stout = TraitFactory.addTrait("Stout", getText("UI_trait_stout"), 8, getText("UI_trait_stoutdesc"), false);
    stout:addXPBoost(Perks.Strength, 2);
    local strong = TraitFactory.addTrait("Strong", getText("UI_trait_strong"), 16, getText("UI_trait_strongdesc"), false);
    strong:addXPBoost(Perks.Strength, 4);

    local veryUnderweight = TraitFactory.addTrait("Very Underweight", getText("UI_trait_veryunderweight"), -10, getText("UI_trait_veryunderweightdesc"), false);
    veryUnderweight:addXPBoost(Perks.Fitness, -2);
    local underweight = TraitFactory.addTrait("Underweight", getText("UI_trait_underweight"), -8, getText("UI_trait_underweightdesc"), false);
    underweight:addXPBoost(Perks.Fitness, -1);
    local overweight = TraitFactory.addTrait("Overweight", getText("UI_trait_overweight"), -8, getText("UI_trait_overweightdesc"), false);
    overweight:addXPBoost(Perks.Fitness, -1);
    local obese = TraitFactory.addTrait("Obese", getText("UI_trait_obese"), -10, getText("UI_trait_obesedesc"), false);
    obese:addXPBoost(Perks.Fitness, -2);

    -- PERKS & RECIPES TRAITS

    -- AGILITY
    local jogger = TraitFactory.addTrait("Jogger", getText("UI_trait_Jogger"), 1, getText("UI_trait_JoggerDesc"), false);
    jogger:addXPBoost(Perks.Sprinting, 1);
    local gym = TraitFactory.addTrait("Gymnast", getText("UI_trait_Gymnast"), 5, getText("UI_trait_GymnastDesc"), false);
    gym:addXPBoost(Perks.Lightfoot, 1);
    gym:addXPBoost(Perks.Nimble, 1);

    -- COMBAT
    local barfighter = TraitFactory.addTrait("Brawler", getText("UI_trait_BarFighter"), 7, getText("UI_trait_BarFighterDesc"), false);
    barfighter:addXPBoost(Perks.Axe, 1);
    barfighter:addXPBoost(Perks.Blunt, 1);
    local baseball = TraitFactory.addTrait("BaseballPlayer", getText("UI_trait_PlaysBaseball"), 3, getText("UI_trait_PlaysBaseballDesc"), false);
    baseball:addXPBoost(Perks.Blunt, 1);

    -- CRAFTING
    local handy = TraitFactory.addTrait("Handy", getText("UI_trait_handy"), 5, getText("UI_trait_handydesc"), false);
    handy:addXPBoost(Perks.Maintenance, 1);
    handy:addXPBoost(Perks.Woodwork, 1);
    local firstAid = TraitFactory.addTrait("FirstAid", getText("UI_trait_FirstAid"), 1, getText("UI_trait_FirstAidDesc"), false);
    firstAid:addXPBoost(Perks.Doctor, 2);
    local fisher = TraitFactory.addTrait("Fishing", getText("UI_trait_Fishing"), 1, getText("UI_trait_FishingDesc"), false);
    fisher:addXPBoost(Perks.Fishing, 1);
    fisher:getFreeRecipes():add("Make Fishing Rod");
    fisher:getFreeRecipes():add("Fix Fishing Rod");
    local gardener = TraitFactory.addTrait("Gardener", getText("UI_trait_Gardener"), 1, getText("UI_trait_GardenerDesc"), false);
    gardener:addXPBoost(Perks.Farming, 1);
    gardener:getFreeRecipes():add("Make Mildew Cure");
    gardener:getFreeRecipes():add("Make Flies Cure");
    local tailoring = TraitFactory.addTrait("Tailor", getText("UI_trait_Tailor"), 1, getText("UI_trait_TailorDesc"), false);
    tailoring:addXPBoost(Perks.Tailoring, 1);
    local cook = TraitFactory.addTrait("Cook", getText("UI_trait_Cook"), 3, getText("UI_trait_CookDesc"), false);
    cook:addXPBoost(Perks.Cooking, 2);
    cook:getFreeRecipes():add("Make Cake Batter");
    cook:getFreeRecipes():add("Make Pie Dough");
    cook:getFreeRecipes():add("Make Bread Dough");
    cook:getFreeRecipes():add("Make Biscuits");
    cook:getFreeRecipes():add("Make Chocolate Cookie Dough");
    cook:getFreeRecipes():add("Make Chocolate Chip Cookie Dough");
    cook:getFreeRecipes():add("Make Oatmeal Cookie Dough");
    cook:getFreeRecipes():add("Make Shortbread Cookie Dough");
    cook:getFreeRecipes():add("Make Sugar Cookie Dough");
    cook:getFreeRecipes():add("Make Pizza");
    local carenthusiast = TraitFactory.addTrait("Mechanics", getText("UI_trait_Mechanics"), 4, getText("UI_trait_MechanicsDesc"), false);
    carenthusiast:addXPBoost(Perks.Mechanics, 2);
    carenthusiast:getFreeRecipes():add("Basic Mechanics");
    carenthusiast:getFreeRecipes():add("Intermediate Mechanics");
    carenthusiast:getFreeRecipes():add("Advanced Mechanics");

    -- SURVIVALIST
    local herbalist = TraitFactory.addTrait("Herbalist", getText("UI_trait_Herbalist"), 2, getText("UI_trait_HerbalistDesc"), false);
    herbalist:getFreeRecipes():add("Herbalist");
    local formerscout = TraitFactory.addTrait("Formerscout", getText("UI_trait_Scout"), 2, getText("UI_trait_ScoutDesc"), false);
    formerscout:addXPBoost(Perks.Trapping, 1);
    formerscout:addXPBoost(Perks.PlantScavenging, 1);
    local backpacker = TraitFactory.addTrait("Hiker", getText("UI_trait_Hiker"), 4, getText("UI_trait_HikerDesc"), false);
    backpacker:addXPBoost(Perks.PlantScavenging, 2);
    backpacker:addXPBoost(Perks.Trapping, 1);
    backpacker:getFreeRecipes():add("Make Stick Trap");
    backpacker:getFreeRecipes():add("Make Snare Trap");
    backpacker:getFreeRecipes():add("Make Wooden Cage Trap");
    local hunter = TraitFactory.addTrait("Hunter", getText("UI_trait_Hunter"), 8, getText("UI_trait_HunterDesc"), false);
    hunter:addXPBoost(Perks.Aiming, 1);
    hunter:addXPBoost(Perks.Trapping, 1);
    hunter:addXPBoost(Perks.Sneak, 1);
    hunter:addXPBoost(Perks.SmallBlade, 1);
    hunter:getFreeRecipes():add("Make Stick Trap");
    hunter:getFreeRecipes():add("Make Snare Trap");
    hunter:getFreeRecipes():add("Make Wooden Cage Trap");
    hunter:getFreeRecipes():add("Make Trap Box");
    hunter:getFreeRecipes():add("Make Cage Trap");

    -- PANIC TRAITS
    TraitFactory.addTrait("Brave", getText("UI_trait_brave"), 4, getText("UI_trait_bravedesc"), false);
    TraitFactory.addTrait("Cowardly", getText("UI_trait_cowardly"), -4, getText("UI_trait_cowardlydesc"), false);
    TraitFactory.addTrait("Hemophobic", getText("UI_trait_Hemophobic"), -8, getText("UI_trait_HemophobicDesc"), false);
    TraitFactory.addTrait("AdrenalineJunkie", getText("UI_trait_AdrenalineJunkie"), 3, getText("UI_trait_AdrenalineJunkieDesc"), false);
    TraitFactory.addTrait("Agoraphobic", getText("UI_trait_agoraphobic"), -4, getText("UI_trait_agoraphobicdesc"), false);
    TraitFactory.addTrait("Claustophobic", getText("UI_trait_claustro"), -4, getText("UI_trait_claustrodesc"), false);

    -- SNEAK & LIGHTFOOT
    TraitFactory.addTrait("Clumsy", getText("UI_trait_clumsy"), -4, getText("UI_trait_clumsydesc"), false);
    TraitFactory.addTrait("Graceful", getText("UI_trait_graceful"), 4, getText("UI_trait_gracefuldesc"), false);
    TraitFactory.addTrait("Inconspicuous", getText("UI_trait_Inconspicuous"), 4, getText("UI_trait_InconspicuousDesc"), false);
    TraitFactory.addTrait("Conspicuous", getText("UI_trait_Conspicuous"), -4, getText("UI_trait_ConspicuousDesc"), false);

    -- SIGHT & HEARING
    TraitFactory.addTrait("ShortSighted", getText("UI_trait_shortsigh"), -2, getText("UI_trait_shortsighdesc"), false);
    TraitFactory.addTrait("HardOfHearing", getText("UI_trait_hardhear"), -6, getText("UI_trait_hardheardesc"), false);
    TraitFactory.addTrait("Deaf", getText("UI_trait_deaf"), -12, getText("UI_trait_deafdesc"), false);
    TraitFactory.addTrait("KeenHearing", getText("UI_trait_keenhearing"), 6, getText("UI_trait_keenhearingdesc"), false);
    TraitFactory.addTrait("EagleEyed", getText("UI_trait_eagleeyed"), 4, getText("UI_trait_eagleeyeddesc"), false);

    -- LUCKY 
    TraitFactory.addTrait("Lucky", getText("UI_trait_lucky"), 3, getText("UI_trait_luckydesc"), false);
    TraitFactory.addTrait("Unlucky", getText("UI_trait_unlucky"), -3, getText("UI_trait_unluckydesc"), false);

    -- READING 
    TraitFactory.addTrait("FastReader", getText("UI_trait_FastReader"), 1, getText("UI_trait_FastReaderDesc"), false);
    TraitFactory.addTrait("SlowReader", getText("UI_trait_SlowReader"), -1, getText("UI_trait_SlowReaderDesc"), false);
    TraitFactory.addTrait("Illiterate", getText("UI_trait_Illiterate"), -12, getText("UI_trait_IlliterateDesc"), false);

    -- LEARNING 
    TraitFactory.addTrait("FastLearner", getText("UI_trait_FastLearner"), 6, getText("UI_trait_FastLearnerDesc"), false);
    TraitFactory.addTrait("SlowLearner", getText("UI_trait_SlowLearner"), -6, getText("UI_trait_SlowLearnerDesc"), false);
    TraitFactory.addTrait("Pacifist", getText("UI_trait_Pacifist"), -4, getText("UI_trait_PacifistDesc"), false);

    -- ITEMS MOVEMENTS & ORGANIZATION
    TraitFactory.addTrait("Organized", getText("UI_trait_Packmule"), 6, getText("UI_trait_PackmuleDesc"), false);
    TraitFactory.addTrait("Disorganized", getText("UI_trait_Disorganized"), -6, getText("UI_trait_DisorganizedDesc"), false);
    TraitFactory.addTrait("Dextrous", getText("UI_trait_Dexterous"), 6, getText("UI_trait_DexterousDesc"), false);
    TraitFactory.addTrait("AllThumbs", getText("UI_trait_AllThumbs"), -8, getText("UI_trait_AllThumbsDesc"), false);

    -- OTHER TRAITS
    TraitFactory.addTrait("SpeedDemon", getText("UI_trait_SpeedDemon"), 1, getText("UI_trait_SpeedDemonDesc"), false);
    TraitFactory.addTrait("SundayDriver", getText("UI_trait_SundayDriver"), -1, getText("UI_trait_SundayDriverDesc"), false);
    TraitFactory.addTrait("Nutritionist", getText("UI_trait_nutritionist"), 4, getText("UI_trait_nutritionistdesc"), false);
    TraitFactory.addTrait("Nutritionist2", getText("UI_trait_nutritionist"), 0, getText("UI_trait_nutritionistdesc"), true);
    TraitFactory.addTrait("Outdoorsman", getText("UI_trait_outdoorsman"), 6, getText("UI_trait_outdoorsmandesc"), false);
    TraitFactory.addTrait("NightVision", getText("UI_trait_NightVision"), 4, getText("UI_trait_NightVisionDesc"), false);
    TraitFactory.addTrait("Smoker", getText("UI_trait_Smoker"), -4, getText("UI_trait_SmokerDesc"), false);
    TraitFactory.addTrait("WeakStomach", getText("UI_trait_WeakStomach"), -3, getText("UI_trait_WeakStomachDesc"), false);
    TraitFactory.addTrait("IronGut", getText("UI_trait_IronGut"), 3, getText("UI_trait_IronGutDesc"), false);

    -- VANILLA TRAITS REMOVED FROM THE CHARACTER CREATION.
    local sleepOK = (isClient() or isServer()) and getServerOptions():getBoolean("SleepAllowed") and getServerOptions():getBoolean("SleepNeeded")
    TraitFactory.addTrait("LightEater", getText("UI_trait_lighteater"), 0, getText("UI_trait_lighteaterdesc"), true);
    TraitFactory.addTrait("HeartyAppitite", getText("UI_trait_heartyappetite"), 0, getText("UI_trait_heartyappetitedesc"), true);
    TraitFactory.addTrait("LowThirst", getText("UI_trait_LowThirst"), 0, getText("UI_trait_LowThirstDesc"), true);
    TraitFactory.addTrait("HighThirst", getText("UI_trait_HighThirst"), 0, getText("UI_trait_HighThirstDesc"), true);
    TraitFactory.addTrait("Resilient", getText("UI_trait_resilient"), 0, getText("UI_trait_resilientdesc"), true);
    TraitFactory.addTrait("ProneToIllness", getText("UI_trait_pronetoillness"), 0, getText("UI_trait_pronetoillnessdesc"), true);
    TraitFactory.addTrait("SlowHealer", getText("UI_trait_SlowHealer"), 0, getText("UI_trait_SlowHealerDesc"), true);
    TraitFactory.addTrait("FastHealer", getText("UI_trait_FastHealer"), 0, getText("UI_trait_FastHealerDesc"), true);
    TraitFactory.addTrait("Asthmatic", getText("UI_trait_Asthmatic"), 0, getText("UI_trait_AsthmaticDesc"), true);
    TraitFactory.addTrait("ThickSkinned", getText("UI_trait_thickskinned"), 0, getText("UI_trait_thickskinneddesc"), true);
    TraitFactory.addTrait("Thinskinned", getText("UI_trait_ThinSkinned"), 0, getText("UI_trait_ThinSkinnedDesc"), true);
    TraitFactory.addTrait("NeedsLessSleep", getText("UI_trait_LessSleep"), 0, getText("UI_trait_LessSleepDesc"), true, not sleepOK);
    TraitFactory.addTrait("NeedsMoreSleep", getText("UI_trait_MoreSleep"), 0, getText("UI_trait_MoreSleepDesc"), true, not sleepOK);
    TraitFactory.addTrait("Insomniac", getText("UI_trait_Insomniac"), 0, getText("UI_trait_InsomniacDesc"), true, not sleepOK);

    -- NEW TRAITS
    TraitFactory.addTrait("Flimsy", getText("UI_trait_Flimsy"), 0, getText("UI_trait_FlimsyDesc"), true);
    TraitFactory.addTrait("Frail", getText("UI_trait_Frail"), 0, getText("UI_trait_FrailDesc"), true);
    -- TraitFactory.addTrait("AddictedToCoffee", getText("UI_trait_AddictedToCoffee"), -4, getText("UI_trait_AddictedToCoffeeDesc"), false);
    TraitFactory.addTrait("Bloodlust", getText("UI_trait_Bloodlust"), 0, getText("UI_trait_BloodlustDesc"), true);
    local amateurElectrician = TraitFactory.addTrait("AmateurElectrician", getText("UI_trait_AmateurElectrician"), 1, getText("UI_trait_AmateurElectricianDesc"), false);
    amateurElectrician:getFreeRecipes():add("Generator");
    local amateurElectrician2 = TraitFactory.addTrait("AmateurElectrician2", getText("UI_trait_AmateurElectrician"), 0, getText("UI_trait_AmateurElectricianDesc"), true);
    amateurElectrician2:getFreeRecipes():add("Generator");
    TraitFactory.addTrait("Pluviophile", getText("UI_trait_Pluviophile"), 2, getText("UI_trait_PluviophileDesc"), false);
    TraitFactory.addTrait("Pluviophobia", getText("UI_trait_Pluviophobia"), -2, getText("UI_trait_PluviophobiaDesc"), false);
    TraitFactory.addTrait("Alcoholic", getText("UI_trait_Alcoholic"), -8, getText("UI_trait_AlcoholicDesc"), false);
    TraitFactory.addTrait("Anorexy", getText("UI_trait_Anorexy"), -10, getText("UI_trait_AnorexyDesc"), false);
    -- TraitFactory.addTrait("Bigorexia", getText("UI_trait_Bigorexia"), -8, getText("UI_trait_BigorexiaDesc"), false);
    TraitFactory.addTrait("Prodigy", getText("UI_trait_Prodigy"), 6, getText("UI_trait_ProdigyDesc"), false);
    TraitFactory.addTrait("PhysicallyActive", getText("UI_trait_PhysicallyActive"), 5, getText("UI_trait_PhysicallyActiveDesc"), false);
    TraitFactory.addTrait("PhysicallyActive2", getText("UI_trait_PhysicallyActive"), 0, getText("UI_trait_PhysicallyActiveDesc"), true);
    TraitFactory.addTrait("Sedentary", getText("UI_trait_Sedentary"), -7, getText("UI_trait_SedentaryDesc"), false);
    TraitFactory.addTrait("Nightmares", getText("UI_trait_Nightmares"), 0, getText("UI_trait_NightmaresDesc"), true, not sleepOK);
    --TraitFactory.addTrait("Fibromyalgia", getText("UI_trait_Fibromyalgia"), -10, getText("UI_trait_FibromyalgiaDesc"), false);
    TraitFactory.addTrait("NervousWreck", getText("UI_trait_NervousWreck"), -4, getText("UI_trait_NervousWreckDesc"), false);
    TraitFactory.addTrait("Melancholic", getText("UI_trait_Melancholic"), -4, getText("UI_trait_MelancholicDesc"), false);
    local handy2 = TraitFactory.addTrait("Handy2", getText("UI_trait_handy"), 0, getText("UI_trait_handydesc"), true);
    handy2:addXPBoost(Perks.Maintenance, 1);
    handy2:addXPBoost(Perks.Woodwork, 1);
    local herbalist2 = TraitFactory.addTrait("Herbalist2", getText("UI_trait_Herbalist"), 0, getText("UI_trait_HerbalistDesc"), true);
    herbalist2:getFreeRecipes():add("Herbalist");
    TraitFactory.addTrait("Dextrous2", getText("UI_trait_Dexterous"), 0, getText("UI_trait_DexterousDesc"), true);

    -- NEW TRAITS FROM MORE SIMPLE TRAITS
    if not getActivatedMods():contains("MoreSimpleTraits") then
        local sneaky = TraitFactory.addTrait("Sneaky", getText("UI_trait_sneaky"), 2, getText("UI_trait_sneakydesc"), false);
        sneaky:addXPBoost(Perks.Sneak, 1);
	    local lightfooted = TraitFactory.addTrait("Lightfooted", getText("UI_trait_lightfooted"), 2, getText("UI_trait_lightfooteddesc"), false);
        lightfooted:addXPBoost(Perks.Lightfoot, 1);
	    local nimble = TraitFactory.addTrait("Nimble", getText("UI_trait_nimble"), 3, getText("UI_trait_nimbledesc"), false);
        nimble:addXPBoost(Perks.Nimble, 1);
        local amforager = TraitFactory.addTrait("AMForager", getText("UI_trait_amforager"), 1, getText("UI_trait_amforagerdesc"), false);
        amforager:addXPBoost(Perks.PlantScavenging, 1);
	    local amtrapper = TraitFactory.addTrait("AMTrapper", getText("UI_trait_amtrapper"), 1, getText("UI_trait_amtrapperdesc"), false);
        amtrapper:addXPBoost(Perks.Trapping, 1);
        local amcook = TraitFactory.addTrait("AMCook", getText("UI_trait_amcook"), 1, getText("UI_trait_amcookdesc"), false);
        amcook:addXPBoost(Perks.Cooking, 1)	;
	    local amelectrician = TraitFactory.addTrait("AMElectrician", getText("UI_trait_amelectrician"), 1, getText("UI_trait_amelectriciandesc"), false);
        amelectrician:addXPBoost(Perks.Electricity, 1);
	    local ammechanic = TraitFactory.addTrait("AMMechanic", getText("UI_trait_ammechanic"), 2, getText("UI_trait_ammechanicdesc"), false);
        ammechanic:addXPBoost(Perks.Mechanics, 1);
	    local amcarpenter = TraitFactory.addTrait("AMCarpenter", getText("UI_trait_amcarpenter"), 1, getText("UI_trait_amcarpenterdesc"), false);
        amcarpenter:addXPBoost(Perks.Woodwork, 1);
	    local ammetalworker = TraitFactory.addTrait("AMMetalworker", getText("UI_trait_ammetalworker"), 2, getText("UI_trait_ammetalworkerdesc"), false);
        ammetalworker:addXPBoost(Perks.MetalWelding, 1);
        local durabile = TraitFactory.addTrait("Durabile", getText("UI_trait_durabile"), 3, getText("UI_trait_durabiledesc"), false);
        durabile:addXPBoost(Perks.Maintenance, 1);
        local shortbladefan = TraitFactory.addTrait("Shortbladefan", getText("UI_trait_shortbladefan"), 2, getText("UI_trait_shortbladefandesc"), false);
        shortbladefan:addXPBoost(Perks.SmallBlade, 1);
	    local shortbluntfan = TraitFactory.addTrait("Shortbluntfan", getText("UI_trait_shortbluntfan"), 3, getText("UI_trait_shortbluntfandesc"), false);
        shortbluntfan:addXPBoost(Perks.SmallBlunt, 1);
	    local cutter = TraitFactory.addTrait("Cutter", getText("UI_trait_cutter"), 4, getText("UI_trait_cutterdesc"), false);
        cutter:addXPBoost(Perks.Axe, 1);
        local spearman = TraitFactory.addTrait("Spearman", getText("UI_trait_spearman"), 5, getText("UI_trait_spearmandesc"), false);
        spearman:addXPBoost(Perks.Spear, 1);
        local swordsman = TraitFactory.addTrait("Swordsman", getText("UI_trait_swordsman"), 4, getText("UI_trait_swordsmandesc"), false);
        swordsman:addXPBoost(Perks.LongBlade, 1);
        local gunfan = TraitFactory.addTrait("Gunfan", getText("UI_trait_gunfan"), 4, getText("UI_trait_gunfandesc"), false);
        gunfan:addXPBoost(Perks.Aiming, 1);
        gunfan:addXPBoost(Perks.Reloading, 1);
    end

    -- NEW TRAITS EXCLUSIONS & NEW EXCLUSIONS
    -- VANILLA EXCLUSIONS
    TraitFactory.setMutualExclusive("SpeedDemon", "SundayDriver");
	TraitFactory.setMutualExclusive("Dextrous", "AllThumbs");
    TraitFactory.setMutualExclusive("Nutritionist", "Nutritionist2");
	TraitFactory.setMutualExclusive("FastHealer", "SlowHealer");
	TraitFactory.setMutualExclusive("FastLearner", "SlowLearner");
	TraitFactory.setMutualExclusive("FastReader", "SlowReader");
    TraitFactory.setMutualExclusive("Illiterate", "SlowReader");
    TraitFactory.setMutualExclusive("Illiterate", "FastReader");
	TraitFactory.setMutualExclusive("NeedsLessSleep", "NeedsMoreSleep");
	TraitFactory.setMutualExclusive("ThickSkinned", "Thinskinned");
	TraitFactory.setMutualExclusive("LowThirst", "HighThirst");
	TraitFactory.setMutualExclusive("Conspicuous", "Inconspicuous");
	TraitFactory.setMutualExclusive("Weak", "Strong");
	TraitFactory.setMutualExclusive("Weak", "Stout");
	TraitFactory.setMutualExclusive("Weak", "Feeble");
	TraitFactory.setMutualExclusive("Stout", "Feeble");
	TraitFactory.setMutualExclusive("Strong", "Feeble");
    TraitFactory.setMutualExclusive("Strong", "Stout");
    TraitFactory.setMutualExclusive("Overweight", "Obese");
    TraitFactory.setMutualExclusive("Overweight", "Underweight");
    TraitFactory.setMutualExclusive("Very Underweight", "Underweight");
    TraitFactory.setMutualExclusive("Very Underweight", "HeartyAppitite");
    TraitFactory.setMutualExclusive("Overweight", "Very Underweight");
    TraitFactory.setMutualExclusive("Overweight", "Emaciated");
    TraitFactory.setMutualExclusive("Obese", "Underweight");
    TraitFactory.setMutualExclusive("Obese", "Very Underweight");
    TraitFactory.setMutualExclusive("Obese", "Emaciated");
    TraitFactory.setMutualExclusive("Obese", "LightEater");
    TraitFactory.setMutualExclusive("Obese", "Fit");
    TraitFactory.setMutualExclusive("Athletic", "Overweight");
    TraitFactory.setMutualExclusive("Athletic", "Fit");
    TraitFactory.setMutualExclusive("Athletic", "Obese");
    TraitFactory.setMutualExclusive("Athletic", "Out of Shape");
    TraitFactory.setMutualExclusive("Athletic", "Unfit");
    TraitFactory.setMutualExclusive("Athletic", "Very Underweight");
    TraitFactory.setMutualExclusive("Fit", "Out of Shape");
    TraitFactory.setMutualExclusive("Fit", "Unfit");
    TraitFactory.setMutualExclusive("Fit", "Overweight");
    TraitFactory.setMutualExclusive("Unfit", "Out of Shape");
    TraitFactory.setMutualExclusive("Organized", "Disorganized");
    TraitFactory.setMutualExclusive("Resilient", "ProneToIllness");
    TraitFactory.setMutualExclusive("HardOfHearing", "KeenHearing");
    TraitFactory.setMutualExclusive("HeartyAppitite", "LightEater");
    TraitFactory.setMutualExclusive("Clumsy", "Graceful");
    TraitFactory.setMutualExclusive("Brave", "Cowardly");
    TraitFactory.setMutualExclusive("ShortSighted", "EagleEyed");
    TraitFactory.setMutualExclusive("Lucky", "Unlucky");
    TraitFactory.setMutualExclusive("Deaf", "HardOfHearing");
    TraitFactory.setMutualExclusive("Deaf", "KeenHearing");
    TraitFactory.setMutualExclusive("Desensitized", "Hemophobic");
    TraitFactory.setMutualExclusive("Desensitized", "Cowardly");
    TraitFactory.setMutualExclusive("Desensitized", "Brave");
    TraitFactory.setMutualExclusive("Desensitized", "Agoraphobic");
	TraitFactory.setMutualExclusive("Claustophobic", "Agoraphobic");
    TraitFactory.setMutualExclusive("Desensitized", "Claustophobic");
    TraitFactory.setMutualExclusive("Desensitized", "AdrenalineJunkie");
    TraitFactory.setMutualExclusive("IronGut", "WeakStomach");

    -- DYNAMIC TRAITS EXCLUSIONS
    -- TRAITS THAT CAN'T BE PICKED WITH "Obese" TRAIT.
    TraitFactory.setMutualExclusive("Obese", "Inconspicuous");
    TraitFactory.setMutualExclusive("Obese", "Graceful");

    -- TRAITS THAT CAN'T BE PICKED WITH "Very Underweight" TRAIT.
    TraitFactory.setMutualExclusive("Very Underweight", "Strong");
    TraitFactory.setMutualExclusive("Very Underweight", "Stout");
    TraitFactory.setMutualExclusive("Very Underweight", "Fit");

    -- TRAITS THAT CAN'T BE PICKED WITH "Underweight" TRAIT.
    TraitFactory.setMutualExclusive("Underweight", "Strong");
    TraitFactory.setMutualExclusive("Underweight", "Athletic");

    -- TRAITS THAT CAN'T BE PICKED WITH "Brave" TRAIT.
    TraitFactory.setMutualExclusive("Brave", "Agoraphobic");
    TraitFactory.setMutualExclusive("Brave", "Claustophobic");
    TraitFactory.setMutualExclusive("Brave", "Hemophobic");

    -- TRAITS THAT CAN'T BE PICKED WITH "Bloodlust" TRAIT.
    --[[ TraitFactory.setMutualExclusive("Bloodlust", "Cowardly");
    TraitFactory.setMutualExclusive("Bloodlust", "Pacifist");
    TraitFactory.setMutualExclusive("Bloodlust", "Hemophobic"); ]]

    -- "Pluviophile" && "Pluviophobia" EXCLUSION.
    TraitFactory.setMutualExclusive("Pluviophile", "Pluviophobia");

    -- TRAITS THAT CAN'T BE PICKED WITH "Anorexy" TRAIT.
    TraitFactory.setMutualExclusive("Anorexy", "Overweight");
    TraitFactory.setMutualExclusive("Anorexy", "Obese");
    TraitFactory.setMutualExclusive("Anorexy", "Strong");
    TraitFactory.setMutualExclusive("Anorexy", "Athletic");

    -- TRAITS THAT CAN'T BE PICKED WITH "Sedentary" TRAIT.
    TraitFactory.setMutualExclusive("Sedentary", "PhysicallyActive");
    TraitFactory.setMutualExclusive("Sedentary", "PhysicallyActive2");
    TraitFactory.setMutualExclusive("Sedentary", "Strong");
    TraitFactory.setMutualExclusive("Sedentary", "Athletic");
    TraitFactory.setMutualExclusive("Sedentary", "Fit");

    -- "PhysicallyActive" && "PhysicallyActive2" EXCLUSION.
    TraitFactory.setMutualExclusive("PhysicallyActive", "PhysicallyActive2");

    -- "Desensitized" && "Pacifist" EXCLUSION.
    TraitFactory.setMutualExclusive("Desensitized", "Pacifist");

    -- "Handy" && "Handy2" EXCLUSION.
    TraitFactory.setMutualExclusive("Handy", "Handy2");

    -- "Amateur Electrician" && "Amateur Electrician2" EXCLUSION.
    TraitFactory.setMutualExclusive("AmateurElectrician", "AmateurElectrician2");

    -- "Herbalist" && "Herbalist2" EXCLUSION.
    TraitFactory.setMutualExclusive("Herbalist", "Herbalist2");

    -- TRAITS THAT CAN'T BE PICKED WITH "Nightmares" TRAIT.
    TraitFactory.setMutualExclusive("Nightmares", "Brave");
    TraitFactory.setMutualExclusive("Nightmares", "Desensitized");

    -- "Pluviophobia" && "Outdoorsman" EXCLUSION.
    TraitFactory.setMutualExclusive("Outdoorsman", "Pluviophobia");

    -- Dextrous2 EXCLUSIONS.
    TraitFactory.setMutualExclusive("Dextrous2", "Dextrous");
    TraitFactory.setMutualExclusive("Dextrous2", "AllThumbs");

    -- MORE SIMPLE TRAITS EXCLUSIONS
    if not getActivatedMods():contains("MoreSimpleTraits") then
        -- Sneaky	
	    TraitFactory.setMutualExclusive("Sneaky", "Conspicuous");
	    -- Lightfooted
	    TraitFactory.setMutualExclusive("Lightfooted", "Clumsy");
    end

    local traitList = TraitFactory.getTraits()
    for i = 1, traitList:size() do
        local trait = traitList:get(i - 1)
        BaseGameCharacterDetails.SetTraitDescription(trait)
    end
end

---------------------------------
----- PROFESSIONS REBALANCE -----
---------------------------------
DTBaseGameCharacterDetails.DoProfessions = function()
    print("DT Logger: DTBaseGameCharacterDetails.DoProfessions function");

    -- SNAKE ALICE BACKPACK COMPATIBILITY
    if getActivatedMods():contains("AliceSPack") then
        print("DT Logger: AliceSPack detected, running DoTrait function");
        ABSBaseGameCharacterDetails.DoTraits();
    end
    -- SNAKE AMMO MAKER COMPATIBILITY
    if getActivatedMods():contains("AmmoMaker") then
        print("DT Logger: AmmoMaker detected, running DoTrait function");
        AMBaseGameCharacterDetails.DoTraits();
    end
    -- SNAKE LE GOURMET REVOLUTION COMPATIBILITY
    if getActivatedMods():contains("LeGourmetRevolution") then
        print("DT Logger: LeGourmetRevolution detected, running DoTrait function");
        LGBaseGameCharacterDetails.DoTraits();
    end
    -- SNAKE TABLE SAW COMPATIBILITY
    if getActivatedMods():contains("TableSaw") then
        print("DT Logger: TableSaw detected, running DoTrait function");
        TSBaseGameCharacterDetails.DoTraits();
    end
    -- SNAKE TALLER MECANICO COMPATIBILITY
    if getActivatedMods():contains("TallerMecanico") then
        print("DT Logger: TallerMecanico detected, running DoTrait function");
        PMRMBaseGameCharacterDetails.DoTraits();
    end
    -- SNAKE TABLE SAW COMPATIBILITY
    if getActivatedMods():contains("WPA") then
        print("DT Logger: WPA detected, running DoTrait function");
        WPABaseGameCharacterDetails.DoTraits();
    end
    
    -- PROFFESIONS REBALANCE AND REWORK

    -- FIRE OFFICER PROFESSION REBALANCE
    local fireofficer = ProfessionFactory.addProfession("fireofficer", getText("UI_prof_fireoff"), "profession_fireofficer2", -9);
    fireofficer:addFreeTrait("Axeman");
	fireofficer:addXPBoost(Perks.Sprinting, 1);
    fireofficer:addXPBoost(Perks.Strength, 1);
    fireofficer:addXPBoost(Perks.Fitness, 1);
	fireofficer:addXPBoost(Perks.Axe, 1);

    -- POLICE OFFICER PROFESSION REBALANCE
    local policeofficer = ProfessionFactory.addProfession("policeofficer", getText("UI_prof_policeoff"), "profession_policeofficer2", -6);
    policeofficer:addFreeTrait("NightOwl");
	policeofficer:addXPBoost(Perks.Aiming, 3);
	policeofficer:addXPBoost(Perks.Reloading, 2);
	policeofficer:addXPBoost(Perks.Nimble, 1);

    -- PARK RANGER PROFESSION REBALANCE
    if getActivatedMods():contains("LeGourmetRevolution") then
        local parkranger = ProfessionFactory.addProfession("parkranger", getText("UI_prof_parkranger"), "profession_parkranger2", -9);
        parkranger:addFreeTrait("Herbalist2");
	    parkranger:addXPBoost(Perks.Trapping, 2);
	    parkranger:addXPBoost(Perks.PlantScavenging, 2);
	    parkranger:addXPBoost(Perks.Woodwork, 1);
        parkranger:addXPBoost(Perks.Axe, 1);
        parkranger:addXPBoost(Perks.LongBlade, 1);
        parkranger:getFreeRecipes():add("Make Stick Trap");
        parkranger:getFreeRecipes():add("Make Snare Trap");
        parkranger:getFreeRecipes():add("Make Wooden Cage Trap");
        parkranger:getFreeRecipes():add("Make Trap Box");
        parkranger:getFreeRecipes():add("Make Cage Trap");
    else
        local parkranger = ProfessionFactory.addProfession("parkranger", getText("UI_prof_parkranger"), "profession_parkranger2", -7);
        parkranger:addFreeTrait("Herbalist2");
	    parkranger:addXPBoost(Perks.Trapping, 2);
	    parkranger:addXPBoost(Perks.PlantScavenging, 2);
	    parkranger:addXPBoost(Perks.Woodwork, 1);
        parkranger:addXPBoost(Perks.Axe, 1);
        parkranger:addXPBoost(Perks.LongBlade, 1);
        parkranger:getFreeRecipes():add("Make Stick Trap");
        parkranger:getFreeRecipes():add("Make Snare Trap");
        parkranger:getFreeRecipes():add("Make Wooden Cage Trap");
        parkranger:getFreeRecipes():add("Make Trap Box");
        parkranger:getFreeRecipes():add("Make Cage Trap");
    end

    -- CONSTRUCTION WORKER PROFESSION REBALANCE
    local constructionworker = ProfessionFactory.addProfession("constructionworker", getText("UI_prof_constructionworker"), "profession_constructionworker2", -2);
	constructionworker:addXPBoost(Perks.SmallBlunt, 3);
	constructionworker:addXPBoost(Perks.Woodwork, 3);

    -- SECURITY GUARD PROFESSION REBALANCE
    local securityguard = ProfessionFactory.addProfession("securityguard", getText("UI_prof_securityguard"), "profession_securityguard2", -2);
	securityguard:addXPBoost(Perks.Sprinting, 2);
	securityguard:addXPBoost(Perks.Aiming, 1);
    securityguard:addXPBoost(Perks.SmallBlunt, 1);
	securityguard:addFreeTrait("NightOwl");

    -- CARPENTER PROFESSION REBALANCE
    if getActivatedMods():contains("TableSaw") then
        local carpenter = ProfessionFactory.addProfession("carpenter", getText("UI_prof_Carpenter"), "profession_hammer2", -2);
	    carpenter:addXPBoost(Perks.Woodwork, 3);
	    carpenter:addXPBoost(Perks.SmallBlunt, 1);
        carpenter:addFreeTrait("Handy2");
    else
        local carpenter = ProfessionFactory.addProfession("carpenter", getText("UI_prof_Carpenter"), "profession_hammer2", 0);
	    carpenter:addXPBoost(Perks.Woodwork, 3);
	    carpenter:addXPBoost(Perks.SmallBlunt, 1);
        carpenter:addFreeTrait("Handy2");
    end

    -- BURGLAR PROFESSION REBALANCE
    if getActivatedMods():contains("WPA") then
        local burglar = ProfessionFactory.addProfession("burglar", getText("UI_prof_Burglar"), "profession_burglar2", -11);
	    burglar:addXPBoost(Perks.Nimble, 2);
	    burglar:addXPBoost(Perks.Sneak, 2);
	    burglar:addXPBoost(Perks.Lightfoot, 2);
	    burglar:addFreeTrait("Burglar");
    else
        local burglar = ProfessionFactory.addProfession("burglar", getText("UI_prof_Burglar"), "profession_burglar2", -9);
	    burglar:addXPBoost(Perks.Nimble, 2);
	    burglar:addXPBoost(Perks.Sneak, 2);
	    burglar:addXPBoost(Perks.Lightfoot, 2);
	    burglar:addFreeTrait("Burglar");
    end

    -- CHEF PROFESSION REBALANCE
    if getActivatedMods():contains("LeGourmetRevolution") then
        local chef = ProfessionFactory.addProfession("chef", getText("UI_prof_Chef"), "profession_chef2", -7);
	    chef:addXPBoost(Perks.Cooking, 4);
	    chef:addXPBoost(Perks.Maintenance, 1);
	    chef:addXPBoost(Perks.SmallBlade, 1);
        chef:addFreeTrait("Dextrous2");
        chef:getFreeRecipes():add("Make Cake Batter");
        chef:getFreeRecipes():add("Make Pie Dough");
        chef:getFreeRecipes():add("Make Bread Dough");
        chef:getFreeRecipes():add("Make Biscuits");
        chef:getFreeRecipes():add("Make Chocolate Cookie Dough");
        chef:getFreeRecipes():add("Make Chocolate Chip Cookie Dough");
        chef:getFreeRecipes():add("Make Oatmeal Cookie Dough");
        chef:getFreeRecipes():add("Make Shortbread Cookie Dough");
        chef:getFreeRecipes():add("Make Sugar Cookie Dough");
        chef:getFreeRecipes():add("Make Pizza");
    else
        local chef = ProfessionFactory.addProfession("chef", getText("UI_prof_Chef"), "profession_chef2", -3);
	    chef:addXPBoost(Perks.Cooking, 4);
	    chef:addXPBoost(Perks.Maintenance, 1);
	    chef:addXPBoost(Perks.SmallBlade, 1);
        chef:addFreeTrait("Dextrous2");
        chef:getFreeRecipes():add("Make Cake Batter");
        chef:getFreeRecipes():add("Make Pie Dough");
        chef:getFreeRecipes():add("Make Bread Dough");
        chef:getFreeRecipes():add("Make Biscuits");
        chef:getFreeRecipes():add("Make Chocolate Cookie Dough");
        chef:getFreeRecipes():add("Make Chocolate Chip Cookie Dough");
        chef:getFreeRecipes():add("Make Oatmeal Cookie Dough");
        chef:getFreeRecipes():add("Make Shortbread Cookie Dough");
        chef:getFreeRecipes():add("Make Sugar Cookie Dough");
        chef:getFreeRecipes():add("Make Pizza");
    end

    -- REPAIRMAN PROFESSION REBALANCE
    if getActivatedMods():contains("AmmoMaker") then
        local repairman = ProfessionFactory.addProfession("repairman", getText("UI_prof_Repairman"), "profession_repairman2", -5);
	    repairman:addXPBoost(Perks.Woodwork, 1);
	    repairman:addXPBoost(Perks.Maintenance, 3);
	    repairman:addXPBoost(Perks.SmallBlunt, 1);
    else
        local repairman = ProfessionFactory.addProfession("repairman", getText("UI_prof_Repairman"), "profession_repairman2", -3);
	    repairman:addXPBoost(Perks.Woodwork, 1);
	    repairman:addXPBoost(Perks.Maintenance, 3);
	    repairman:addXPBoost(Perks.SmallBlunt, 1);
    end

    -- FARMER PROFESSION REBALANCE
    if getActivatedMods():contains("LeGourmetRevolution") then
        local farmer = ProfessionFactory.addProfession("farmer", getText("UI_prof_Farmer"), "profession_farmer2", 1);
	    farmer:addXPBoost(Perks.Farming, 4);
        farmer:getFreeRecipes():add("Make Mildew Cure");
        farmer:getFreeRecipes():add("Make Flies Cure");
    else
        local farmer = ProfessionFactory.addProfession("farmer", getText("UI_prof_Farmer"), "profession_farmer2", 5);
	    farmer:addXPBoost(Perks.Farming, 4);
        farmer:getFreeRecipes():add("Make Mildew Cure");
        farmer:getFreeRecipes():add("Make Flies Cure");
    end

    -- FISHERMAN PROFESSION REBALANCE
    if getActivatedMods():contains("LeGourmetRevolution") then
        local fisherman = ProfessionFactory.addProfession("fisherman", getText("UI_prof_Fisherman"), "profession_fisher2", 1);
	    fisherman:addXPBoost(Perks.Fishing, 3);
	    fisherman:addXPBoost(Perks.PlantScavenging, 1);
        fisherman:getFreeRecipes():add("Make Fishing Rod");
        fisherman:getFreeRecipes():add("Fix Fishing Rod");
        fisherman:getFreeRecipes():add("Get Wire Back");
        fisherman:getFreeRecipes():add("Make Fishing Net");
    else
        local fisherman = ProfessionFactory.addProfession("fisherman", getText("UI_prof_Fisherman"), "profession_fisher2", 3);
	    fisherman:addXPBoost(Perks.Fishing, 3);
	    fisherman:addXPBoost(Perks.PlantScavenging, 1);
        fisherman:getFreeRecipes():add("Make Fishing Rod");
        fisherman:getFreeRecipes():add("Fix Fishing Rod");
        fisherman:getFreeRecipes():add("Get Wire Back");
        fisherman:getFreeRecipes():add("Make Fishing Net");
    end

    -- DOCTOR PROFESSION REBALANCE
    local doctor = ProfessionFactory.addProfession("doctor", getText("UI_prof_Doctor"), "profession_doctor2", 0);
	doctor:addXPBoost(Perks.Doctor, 5);
	doctor:addXPBoost(Perks.SmallBlade, 2);
    doctor:addFreeTrait("NightOwl");

    -- VETERAN PROFESSION REBALANCE
    if getActivatedMods():contains("AliceSPack") and getActivatedMods():contains("AmmoMaker") then
        local veteran = ProfessionFactory.addProfession("veteran", getText("UI_prof_Veteran"), "profession_veteran2", -12);
	    veteran:addFreeTrait("Desensitized");
	    veteran:addXPBoost(Perks.Aiming, 3);
	    veteran:addXPBoost(Perks.Reloading, 2);
    elseif getActivatedMods():contains("AliceSPack") or getActivatedMods():contains("AmmoMaker") then
        local veteran = ProfessionFactory.addProfession("veteran", getText("UI_prof_Veteran"), "profession_veteran2", -10);
	    veteran:addFreeTrait("Desensitized");
	    veteran:addXPBoost(Perks.Aiming, 3);
	    veteran:addXPBoost(Perks.Reloading, 2);
    else
        local veteran = ProfessionFactory.addProfession("veteran", getText("UI_prof_Veteran"), "profession_veteran2", -8);
	    veteran:addFreeTrait("Desensitized");
	    veteran:addXPBoost(Perks.Aiming, 3);
	    veteran:addXPBoost(Perks.Reloading, 2);
    end

    -- NURSE PROFESSION REBALANCE
    local nurse = ProfessionFactory.addProfession("nurse", getText("UI_prof_Nurse"), "profession_nurse", 0);
    nurse:addXPBoost(Perks.Doctor, 3);
    nurse:addXPBoost(Perks.Lightfoot, 1);
    nurse:addXPBoost(Perks.Sneak, 1);
    nurse:addFreeTrait("NightOwl");

    -- LUMBERBACK PROFESSION REBALANCE
    if getActivatedMods():contains("AliceSPack") then
        local lumberjack = ProfessionFactory.addProfession("lumberjack", getText("UI_prof_Lumberjack"), "profession_lumberjack", -8);
        lumberjack:addXPBoost(Perks.Axe, 2);
        lumberjack:addXPBoost(Perks.Strength, 1);
        lumberjack:addFreeTrait("Axeman");
    else
        local lumberjack = ProfessionFactory.addProfession("lumberjack", getText("UI_prof_Lumberjack"), "profession_lumberjack", -6);
        lumberjack:addXPBoost(Perks.Axe, 2);
        lumberjack:addXPBoost(Perks.Strength, 1);
        lumberjack:addFreeTrait("Axeman");
    end

    -- FITNESS INSTRUCTOR PROFESSION REBALANCE
    if getActivatedMods():contains("AliceSPack") then
        local fitnessInstructor = ProfessionFactory.addProfession("fitnessInstructor", getText("UI_prof_FitnessInstructor"), "profession_fitnessinstructor", -12);
        fitnessInstructor:addXPBoost(Perks.Fitness, 3);
        fitnessInstructor:addXPBoost(Perks.Sprinting, 2);
        fitnessInstructor:addFreeTrait("Nutritionist2");
        fitnessInstructor:addFreeTrait("PhysicallyActive2");
    else
        local fitnessInstructor = ProfessionFactory.addProfession("fitnessInstructor", getText("UI_prof_FitnessInstructor"), "profession_fitnessinstructor", -10);
        fitnessInstructor:addXPBoost(Perks.Fitness, 3);
        fitnessInstructor:addXPBoost(Perks.Sprinting, 2);
        fitnessInstructor:addFreeTrait("Nutritionist2");
        fitnessInstructor:addFreeTrait("PhysicallyActive2");
    end

    -- BURGER FLIPPER PROFESSION REBALANCE
    if getActivatedMods():contains("LeGourmetRevolution") then
        local burger = ProfessionFactory.addProfession("burgerflipper", getText("UI_prof_BurgerFlipper"), "profession_burgerflipper", -2);
        burger:addXPBoost(Perks.Cooking, 2);
        burger:addXPBoost(Perks.Maintenance, 1);
	    burger:addXPBoost(Perks.SmallBlade, 1);
        burger:addFreeTrait("Dextrous2");
        burger:getFreeRecipes():add("Make Cake Batter");
        burger:getFreeRecipes():add("Make Pie Dough");
        burger:getFreeRecipes():add("Make Bread Dough");
        burger:getFreeRecipes():add("Make Biscuits");
        burger:getFreeRecipes():add("Make Chocolate Cookie Dough");
        burger:getFreeRecipes():add("Make Chocolate Chip Cookie Dough");
        burger:getFreeRecipes():add("Make Oatmeal Cookie Dough");
        burger:getFreeRecipes():add("Make Shortbread Cookie Dough");
        burger:getFreeRecipes():add("Make Sugar Cookie Dough");
        burger:getFreeRecipes():add("Make Pizza");
    else    
        local burger = ProfessionFactory.addProfession("burgerflipper", getText("UI_prof_BurgerFlipper"), "profession_burgerflipper", 0);
        burger:addXPBoost(Perks.Cooking, 2);
        burger:addXPBoost(Perks.Maintenance, 1);
	    burger:addXPBoost(Perks.SmallBlade, 1);
        burger:addFreeTrait("Dextrous2");
        burger:getFreeRecipes():add("Make Cake Batter");
        burger:getFreeRecipes():add("Make Pie Dough");
        burger:getFreeRecipes():add("Make Bread Dough");
        burger:getFreeRecipes():add("Make Biscuits");
        burger:getFreeRecipes():add("Make Chocolate Cookie Dough");
        burger:getFreeRecipes():add("Make Chocolate Chip Cookie Dough");
        burger:getFreeRecipes():add("Make Oatmeal Cookie Dough");
        burger:getFreeRecipes():add("Make Shortbread Cookie Dough");
        burger:getFreeRecipes():add("Make Sugar Cookie Dough");
        burger:getFreeRecipes():add("Make Pizza");
    end

    -- ELECTRICIAN PROFESSION REBALANCE
    local electrician = ProfessionFactory.addProfession("electrician", getText("UI_prof_Electrician"), "profession_electrician", 2);
    electrician:addXPBoost(Perks.Electricity, 4);
    electrician:addFreeTrait("AmateurElectrician2");
    electrician:getFreeRecipes():add("Generator");
    electrician:getFreeRecipes():add("Make Remote Controller V1");
    electrician:getFreeRecipes():add("Make Remote Controller V2");
    electrician:getFreeRecipes():add("Make Remote Controller V3");
    electrician:getFreeRecipes():add("Make Remote Trigger");
    electrician:getFreeRecipes():add("Make Timer");
    electrician:getFreeRecipes():add("Craft Makeshift Radio");
    electrician:getFreeRecipes():add("Craft Makeshift HAM Radio");
    electrician:getFreeRecipes():add("Craft Makeshift Walkie Talkie");

    -- ENGINEER PROFESSION REBALANCE
    if getActivatedMods():contains("WPA") and getActivatedMods():contains("AmmoMaker") then
        local engineer = ProfessionFactory.addProfession("engineer", getText("UI_prof_Engineer"), "profession_engineer", -8);
        engineer:addXPBoost(Perks.Electricity, 1);
        engineer:addXPBoost(Perks.Woodwork, 1);
        engineer:addXPBoost(Perks.Mechanics, 1);
        engineer:addXPBoost(Perks.MetalWelding, 1);
        engineer:addFreeTrait("Burglar");
        engineer:getFreeRecipes():add("Make Aerosol bomb");
        engineer:getFreeRecipes():add("Make Flame bomb");
        engineer:getFreeRecipes():add("Make Pipe bomb");
        engineer:getFreeRecipes():add("Make Noise generator");
        engineer:getFreeRecipes():add("Make Smoke Bomb");
    elseif getActivatedMods():contains("WPA") or getActivatedMods():contains("AmmoMaker") then
        local engineer = ProfessionFactory.addProfession("engineer", getText("UI_prof_Engineer"), "profession_engineer", -6);
        engineer:addXPBoost(Perks.Electricity, 1);
        engineer:addXPBoost(Perks.Woodwork, 1);
        engineer:addXPBoost(Perks.Mechanics, 1);
        engineer:addXPBoost(Perks.MetalWelding, 1);
        engineer:addFreeTrait("Burglar");
        engineer:getFreeRecipes():add("Make Aerosol bomb");
        engineer:getFreeRecipes():add("Make Flame bomb");
        engineer:getFreeRecipes():add("Make Pipe bomb");
        engineer:getFreeRecipes():add("Make Noise generator");
        engineer:getFreeRecipes():add("Make Smoke Bomb");
    else
        local engineer = ProfessionFactory.addProfession("engineer", getText("UI_prof_Engineer"), "profession_engineer", -4);
        engineer:addXPBoost(Perks.Electricity, 1);
        engineer:addXPBoost(Perks.Woodwork, 1);
        engineer:addXPBoost(Perks.Mechanics, 1);
        engineer:addXPBoost(Perks.MetalWelding, 1);
        engineer:addFreeTrait("Burglar");
        engineer:getFreeRecipes():add("Make Aerosol bomb");
        engineer:getFreeRecipes():add("Make Flame bomb");
        engineer:getFreeRecipes():add("Make Pipe bomb");
        engineer:getFreeRecipes():add("Make Noise generator");
        engineer:getFreeRecipes():add("Make Smoke Bomb");
    end

    -- METALWORKER PROFESSION REBALANCE
    if getActivatedMods():contains("AmmoMaker") then
        local metalworker = ProfessionFactory.addProfession("metalworker", getText("UI_prof_MetalWorker"), "profession_metalworker", 0);
        metalworker:addXPBoost(Perks.MetalWelding, 4);
        metalworker:getFreeRecipes():add("Make Metal Walls");
        metalworker:getFreeRecipes():add("Make Metal Fences");
        metalworker:getFreeRecipes():add("Make Metal Containers");
        metalworker:getFreeRecipes():add("Make Metal Sheet");
        metalworker:getFreeRecipes():add("Make Small Metal Sheet");
        metalworker:getFreeRecipes():add("Make Metal Roof");
    else
        local metalworker = ProfessionFactory.addProfession("metalworker", getText("UI_prof_MetalWorker"), "profession_metalworker", 2);
        metalworker:addXPBoost(Perks.MetalWelding, 4);
        metalworker:getFreeRecipes():add("Make Metal Walls");
        metalworker:getFreeRecipes():add("Make Metal Fences");
        metalworker:getFreeRecipes():add("Make Metal Containers");
        metalworker:getFreeRecipes():add("Make Metal Sheet");
        metalworker:getFreeRecipes():add("Make Small Metal Sheet");
        metalworker:getFreeRecipes():add("Make Metal Roof");
    end

    -- MECHANICS PROFESSION REBALANCE
    local mechanics = ProfessionFactory.addProfession("mechanics", getText("UI_prof_Mechanics"), "profession_mechanic", -4);
	mechanics:addXPBoost(Perks.Mechanics, 3);
	mechanics:addXPBoost(Perks.MetalWelding, 1);
    mechanics:addFreeTrait("Burglar");
	mechanics:getFreeRecipes():add("Basic Mechanics");
	mechanics:getFreeRecipes():add("Intermediate Mechanics");
	mechanics:getFreeRecipes():add("Advanced Mechanics");

    -- SNAKE ALICE BACKPACK COMPATIBILITY
    if getActivatedMods():contains("AliceSPack") then
        print("DT Logger: AliceSPack detected, running DoProfessions function");
        ABSBaseGameCharacterDetails.DoProfessions();
    end
    -- SNAKE AMMO MAKER COMPATIBILITY
    if getActivatedMods():contains("AmmoMaker") then
        print("DT Logger: AmmoMaker detected, running DoProfessions function");
        AMBaseGameCharacterDetails.DoProfessions();
    end

    local profList = ProfessionFactory.getProfessions()
    for i = 1, profList:size() do
        local prof = profList:get(i - 1)
        BaseGameCharacterDetails.SetProfessionDescription(prof)
    end
end

----------------------------------------------
----- INITIALIZATION FOR A NEW CHARACTER -----
----------------------------------------------
DTBaseGameCharacterDetails.DoNewCharacterInitializations = function(playernum, character)
    --print("DT Logger: running DTBaseGameCharacterDetails.DoNewCharacterInitializations function");
    local player = getSpecificPlayer(playernum);

    -- TRAITS CHANGE
    if player:HasTrait("PhysicallyActive2") then
        player:getTraits():remove("PhysicallyActive2");
        player:getTraits():add("PhysicallyActive");
    end
    if player:HasTrait("Handy2") then
        player:getTraits():remove("Handy2");
        player:getTraits():add("Handy");
    end
    if player:HasTrait("Dextrous2") then
        player:getTraits():remove("Dextrous2");
        player:getTraits():add("Dextrous");
    end

    -- INITIALIZATION FOR KILLS PATH
    if player:getModData().DTKillsPath == nil then
        if player:HasTrait("Cowardly") then
            player:getModData().DTKillsPath = 1;
        elseif player:HasTrait("Brave") then
            player:getModData().DTKillsPath = 2;
        else
            player:getModData().DTKillsPath = 3;
        end
    end
    -- INITIALIZATION FOR KILLS SYSTEM
    if player:getModData().DTKillscheck2 == nil then
        player:getModData().DTKillscheck2 = 0;
    end
    -- INITIALIZATION FOR DEXTROUS/ALLTHUMBS
    if player:getModData().DTatdTraits == nil then
        if player:HasTrait("AllThumbs") then
            if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                player:getModData().DTatdTraits = -125000;
            elseif player:getDescriptor():getProfession() == "burglar" then
                player:getModData().DTatdTraits = -150000;
            elseif player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" then
                player:getModData().DTatdTraits = -175000;
            else
                player:getModData().DTatdTraits = -200000;
            end
        elseif player:HasTrait("Dextrous") then
            player:getModData().DTatdTraits = 200000;
        else
            if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                player:getModData().DTatdTraits = 75000;
            elseif player:getDescriptor():getProfession() == "burglar" then
                player:getModData().DTatdTraits = 50000;
            elseif player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" then
                player:getModData().DTatdTraits = 35000;
            else
                player:getModData().DTatdTraits = 0;
            end

        end
    end
    -- INITIALIZATION FOR ORGANIZED/DISORGANIZED TRAITS
    if player:getModData().DTdoTraits == nil then
        if player:HasTrait("Disorganized") then
            if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                player:getModData().DTdoTraits = -200000;
            elseif player:getDescriptor():getProfession() == "carpenter" or player:getDescriptor():getProfession() == "chef" or 
            player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" or 
            player:getDescriptor():getProfession() == "metalworker" or player:getDescriptor():getProfession() == "mechanics" then
                player:getModData().DTdoTraits = -250000;
            else
                player:getModData().DTdoTraits = -300000;
            end
        elseif player:HasTrait("Organized") then
            player:getModData().DTdoTraits = 300000;
        else
            if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                player:getModData().DTdoTraits = 100000;
            elseif player:getDescriptor():getProfession() == "carpenter" or player:getDescriptor():getProfession() == "chef" or 
            player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" or 
            player:getDescriptor():getProfession() == "metalworker" or player:getDescriptor():getProfession() == "mechanics" then
                player:getModData().DTdoTraits = 50000;
            else
                player:getModData().DTdoTraits = 0;
            end
        end
    end
    -- INITIALIZATION FOR OUTDOORSMAN TRAIT
    if player:getModData().DTOutdoorsCounter == nil then
        if player:HasTrait("Outdoorsman") then
            player:getModData().DTOutdoorsCounter = 600000;
        else
            if player:getDescriptor():getProfession() == "parkranger" then
                player:getModData().DTOutdoorsCounter = 200000;
            elseif player:getDescriptor():getProfession() == "farmer" or player:getDescriptor():getProfession() == "fisherman" then
                player:getModData().DTOutdoorsCounter = 100000;
            elseif player:getDescriptor():getProfession() == "lumberjack" then
                player:getModData().DTOutdoorsCounter = 50000;
            else
                player:getModData().DTOutdoorsCounter = 0;
            end
        end
    end
    -- INITIALIZATION FOR CATSEYES TRAIT
    if player:getModData().DTCatsEyesCounter == nil then
        if player:HasTrait("NightVision") then
            player:getModData().DTCatsEyesCounter = 150000;
        else
            if player:getDescriptor():getProfession() == "securityguard" then
                player:getModData().DTCatsEyesCounter = 75000;
            elseif player:getDescriptor():getProfession() == "burglar" then
                player:getModData().DTCatsEyesCounter = 50000;
            elseif player:getDescriptor():getProfession() == "fireofficer" or player:getDescriptor():getProfession() == "policeofficer" then
                player:getModData().DTCatsEyesCounter = 25000;
            else
                player:getModData().DTCatsEyesCounter = 0;
            end
        end
    end
    -- INITIALIZATION FOR RAIN TRAITS
    if player:getModData().DTRainTraits == nil then
        if player:HasTrait("Pluviophile") then
            player:getModData().DTRainTraits = 40000;
        elseif player:HasTrait("Pluviophobia") then
            player:getModData().DTRainTraits = -40000;
        else
            player:getModData().DTRainTraits = 0;
        end
    end
    -- INITIALIZATION FOR CLAUSTROPHOBIC AND AGORAPHOBIC TRAITS
    if player:getModData().DTagoraClaustroCounter == nil then
        player:getModData().DTagoraClaustroCounter = 0;
    end
    -- INITIALIZATION FOR SMOKER TRAIT
    if player:getModData().DTdaysSinceLastSmoke == nil then
        player:getModData().DTdaysSinceLastSmoke = 0;
    end
    -- INITIALIZATION FOR BLOODLUST TRAIT
    if player:getModData().DTKillscheck == nil then
        player:getModData().DTKillscheck = 0;
    end
    if player:getModData().DTtimesinceLastKill == nil then
        player:getModData().DTtimesinceLastKill = 0;
    end
    -- INITIALIZATION FOR ALCOHOLIC TRAIT
    if player:getModData().DThoursSinceLastDrink == nil then
        player:getModData().DThoursSinceLastDrink = 0;
    end
    if player:getModData().DTthresholdToObtainAlcoholic == nil then
        player:getModData().DTthresholdToObtainAlcoholic = 0;
    end
    -- INITIALIZATION FOR ANOREXIC TRAIT
    if player:getModData().DTthresholdToObtainLoseAnorexy == nil then
        if player:HasTrait("Anorexy") then
            player:getModData().DTthresholdToObtainLoseAnorexy = -720;
        else
            player:getModData().DTthresholdToObtainLoseAnorexy = 0;
        end
    end
    -- INITIALIZATION FOR PHYSICALLY ACTIVE/SEDENTARY TRAITS
    if player:getModData().DTObtainLoseActiveSedentary == nil then
        if player:HasTrait("PhysicallyActive") then
            player:getModData().DTObtainLoseActiveSedentary = 60000;
        elseif player:HasTrait("Sedentary") then
            player:getModData().DTObtainLoseActiveSedentary = -60000;
        else
            player:getModData().DTObtainLoseActiveSedentary = 0;
        end
    end
    -- INITIALIZATION FOR HARD OF HEARING AND KEEN HEARING TRAITS
    if player:getModData().DTKeenHardOfHearing == nil then
        local total = 0;
        -- AGILITY SKILLS
        total = total + player:getPerkLevel(Perks.Sneak);
        total = total + player:getPerkLevel(Perks.Lightfoot);
        total = total + player:getPerkLevel(Perks.Nimble);
        -- FIREARMS SKILLS
        total = total + player:getPerkLevel(Perks.Aiming);
        -- COMBAT SKILLS
        total = total + player:getPerkLevel(Perks.Axe);
        total = total + player:getPerkLevel(Perks.Blunt);
        total = total + player:getPerkLevel(Perks.SmallBlunt);
        total = total + player:getPerkLevel(Perks.LongBlade);
        total = total + player:getPerkLevel(Perks.SmallBlade);
        total = total + player:getPerkLevel(Perks.Spear);
        -- SURVIVALIST SKILLS
        total = total + player:getPerkLevel(Perks.PlantScavenging);
        -- MOD DATA = TOTAL
        player:getModData().DTKeenHardOfHearing = total;
        -- CHECKS IF THE PLAYER HAS THE NECESSARY TO REMOVE HARD OF HEARING OR OBTAIN KEEN HEARING
        if player:getModData().DTKeenHardOfHearing >= 30 and player:HasTrait("HardOfHearing") then
            player:getTraits():remove("HardOfHearing");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_hardhear"), false, HaloTextHelper.getColorGreen());
        end
        if player:getModData().DTKeenHardOfHearing >= 50 and not player:HasTrait("KeenHearing") and
            not player:HasTrait("Deaf") then
            player:getTraits():add("KeenHearing");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_keenhearing"), true,
                HaloTextHelper.getColorGreen());
        end
    end
    -- INITIALIZATION FOR SLOW LEARNER AND FAST LEARNER TRAITS
    if player:getModData().DTSlowFastLearner == nil then
        local total = 0;
        -- CRAFTING SKILLS
        total = total + player:getPerkLevel(Perks.Woodwork);
        total = total + player:getPerkLevel(Perks.Cooking);
        total = total + player:getPerkLevel(Perks.Farming);
        total = total + player:getPerkLevel(Perks.Doctor);
        total = total + player:getPerkLevel(Perks.Electricity);
        total = total + player:getPerkLevel(Perks.MetalWelding);
        total = total + player:getPerkLevel(Perks.Mechanics);
        total = total + player:getPerkLevel(Perks.Tailoring);
        -- SURVIVALIST SKILLS
        total = total + player:getPerkLevel(Perks.Fishing);
        total = total + player:getPerkLevel(Perks.Trapping);
        total = total + player:getPerkLevel(Perks.PlantScavenging);
        -- MOD DATA = TOTAL
        player:getModData().DTSlowFastLearner = total;
        -- CHECKS IF THE PLAYER HAS THE NECESSARY TO REMOVE SLOW LEARNER OR OBTAIN FAST LEARNER
        if player:getModData().DTSlowFastLearner >= 30 and player:HasTrait("SlowLearner") then
            player:getTraits():remove("SlowLearner");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_SlowLearner"), false,
                HaloTextHelper.getColorGreen());
        end
        if player:getModData().DTSlowFastLearner >= 50 and not player:HasTrait("FastLearner") then
            player:getTraits():add("FastLearner");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_FastLearner"), true,
                HaloTextHelper.getColorGreen());
        end
    end
    -- INITIALIZATION FOR WETNESS MOODLE
    if player:getModData().DTgenerateAColdChance == nil then
        player:getModData().DTgenerateAColdChance = 0;
    end
    -- INITIALIZATION FOR NERVOUS WRECK
    if player:getModData().DTisNervousWreck == nil then
        if player:HasTrait("NervousWreck") then
            player:getModData().DTisNervousWreck = true;
        else
            player:getModData().DTisNervousWreck = false;
        end
    end
    if player:getModData().DTPillsBeta == nil then
        player:getModData().DTPillsBeta = 0;
    end
    -- INITIALIZATION FOR MELANCHOLIC
    if player:getModData().DTisMelancholic == nil then
        if player:HasTrait("Melancholic") then
            player:getModData().DTisMelancholic = true;
        else
            player:getModData().DTisMelancholic = false;
        end
    end
    if player:getModData().DTPillsAntiDep == nil then
        player:getModData().DTPillsAntiDep = 0;
    end
    -- INITIALIZATION FOR OVERDOSE 
    if player:getModData().DTOverdose == nil then
        player:getModData().DTOverdose = 0;
    end
    -- INITIALIZATION FOR EMOTIONAL INTELLIGENCE
    if player:getModData().DTstressIntelligence == nil then
        player:getModData().DTstressIntelligence = false;
    end
    if player:getModData().DTunhappynessIntelligence == nil then
        player:getModData().DTunhappynessIntelligence = false;
    end
    if player:getModData().DTboredomIntelligence == nil then
        player:getModData().DTboredomIntelligence = false;
    end
    if player:getModData().DTPlantsKnowledge == nil then
        player:getModData().DTPlantsKnowledge = 0;
    end
end

----------------------------------------------------
----- INITIALIZATION FOR AN EXISTING CHARACTER -----
----------------------------------------------------
DTBaseGameCharacterDetails.DoExistingCharacterInitializations = function(player)
    -- SUPERB/SUBPAR SURVIVORS AND NPC MOD COMPATIBILITY
    if (player:getModData().DTKillsPath == nil or player:getModData().DTKillscheck2 == nil or
        player:getModData().DTatdTraits == nil or player:getModData().DTdoTraits == nil or
        player:getModData().DTOutdoorsCounter == nil or player:getModData().DTCatsEyesCounter == nil or
        player:getModData().DTRainTraits == nil or player:getModData().DTagoraClaustroCounter == nil or
        player:getModData().DTdaysSinceLastSmoke == nil or player:getModData().DTKillscheck == nil or
        player:getModData().DTtimesinceLastKill == nil or player:getModData().DThoursSinceLastDrink == nil or
        player:getModData().DTthresholdToObtainAlcoholic == nil or player:getModData().DTthresholdToObtainLoseAnorexy == nil or 
        player:getModData().DTObtainLoseActiveSedentary == nil or player:getModData().DTKeenHardOfHearing == nil or
        player:getModData().DTSlowFastLearner == nil or player:getModData().DTgenerateAColdChance == nil or 
        player:getModData().DTisNervousWreck == nil or player:getModData().DTisMelancholic == nil or 
        player:getModData().DTPillsBeta == nil or player:getModData().DTPillsAntiDep == nil or 
        player:getModData().DTOverdose == nil or player:getModData().DTstressIntelligence == nil or 
        player:getModData().DTunhappynessIntelligence == nil or player:getModData().DTboredomIntelligence == nil) then

        -- INITIALIZATION FOR KILLS PATH
        if player:getModData().DTKillsPath == nil then
            if player:HasTrait("Cowardly") then
                player:getModData().DTKillsPath = 1;
            elseif player:HasTrait("Brave") then
                player:getModData().DTKillsPath = 2;
            else
                player:getModData().DTKillsPath = 3;
            end
        end
        -- INITIALIZATION FOR KILLS SYSTEM
        if player:getModData().DTKillscheck2 == nil then
            player:getModData().DTKillscheck2 = 0;
        end
        -- INITIALIZATION FOR DEXTROUS/ALLTHUMBS
        if player:getModData().DTatdTraits == nil then
            if player:HasTrait("AllThumbs") then
                if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                    player:getModData().DTatdTraits = -125000;
                elseif player:getDescriptor():getProfession() == "burglar" then
                    player:getModData().DTatdTraits = -150000;
                elseif player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" then
                    player:getModData().DTatdTraits = -175000;
                else
                    player:getModData().DTatdTraits = -200000;
                end
            elseif player:HasTrait("Dextrous") then
                player:getModData().DTatdTraits = 200000;
            else
                if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                    player:getModData().DTatdTraits = 75000;
                elseif player:getDescriptor():getProfession() == "burglar" then
                    player:getModData().DTatdTraits = 50000;
                elseif player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" then
                    player:getModData().DTatdTraits = 35000;
                else
                    player:getModData().DTatdTraits = 0;
                end

            end
        end
        -- INITIALIZATION FOR ORGANIZED/DISORGANIZED TRAITS
        if player:getModData().DTdoTraits == nil then
            if player:HasTrait("Disorganized") then
                if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                    player:getModData().DTdoTraits = -200000;
                elseif player:getDescriptor():getProfession() == "carpenter" or player:getDescriptor():getProfession() == "chef" or 
                player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" or 
                player:getDescriptor():getProfession() == "metalworker" or player:getDescriptor():getProfession() == "mechanics" then
                    player:getModData().DTdoTraits = -250000;
                else
                    player:getModData().DTdoTraits = -300000;
                end
            elseif player:HasTrait("Organized") then
                player:getModData().DTdoTraits = 300000;
            else
                if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                    player:getModData().DTdoTraits = 100000;
                elseif player:getDescriptor():getProfession() == "carpenter" or player:getDescriptor():getProfession() == "chef" or 
                player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" or 
                player:getDescriptor():getProfession() == "metalworker" or player:getDescriptor():getProfession() == "mechanics" then
                    player:getModData().DTdoTraits = 50000;
                else
                    player:getModData().DTdoTraits = 0;
                end
            end
        end
        -- INITIALIZATION FOR OUTDOORSMAN TRAIT
        if player:getModData().DTOutdoorsCounter == nil then
            if player:HasTrait("Outdoorsman") then
                player:getModData().DTOutdoorsCounter = 600000;
            else
                if player:getDescriptor():getProfession() == "parkranger" then
                    player:getModData().DTOutdoorsCounter = 200000;
                elseif player:getDescriptor():getProfession() == "farmer" or player:getDescriptor():getProfession() == "fisherman" then
                    player:getModData().DTOutdoorsCounter = 100000;
                elseif player:getDescriptor():getProfession() == "lumberjack" then
                    player:getModData().DTOutdoorsCounter = 50000;
                else
                    player:getModData().DTOutdoorsCounter = 0;
                end
            end
        end
        -- INITIALIZATION FOR CATSEYES TRAIT
        if player:getModData().DTCatsEyesCounter == nil then
            if player:HasTrait("NightVision") then
                player:getModData().DTCatsEyesCounter = 150000;
            else
                if player:getDescriptor():getProfession() == "securityguard" then
                    player:getModData().DTCatsEyesCounter = 75000;
                elseif player:getDescriptor():getProfession() == "burglar" then
                    player:getModData().DTCatsEyesCounter = 50000;
                elseif player:getDescriptor():getProfession() == "fireofficer" or player:getDescriptor():getProfession() == "policeofficer" then
                    player:getModData().DTCatsEyesCounter = 25000;
                else
                    player:getModData().DTCatsEyesCounter = 0;
                end
            end
        end
        -- INITIALIZATION FOR RAIN TRAITS
        if player:getModData().DTRainTraits == nil then
            if player:HasTrait("Pluviophile") then
                player:getModData().DTRainTraits = 40000;
            elseif player:HasTrait("Pluviophobia") then
                player:getModData().DTRainTraits = -40000;
            else
                player:getModData().DTRainTraits = 0;
            end
        end
        -- INITIALIZATION FOR CLAUSTROPHOBIC AND AGORAPHOBIC TRAITS
        if player:getModData().DTagoraClaustroCounter == nil then
            player:getModData().DTagoraClaustroCounter = 0;
        end
        -- INITIALIZATION FOR SMOKER TRAIT
        if player:getModData().DTdaysSinceLastSmoke == nil then
            player:getModData().DTdaysSinceLastSmoke = 0;
        end
        -- INITIALIZATION FOR BLOODLUST TRAIT
        if player:getModData().DTKillscheck == nil then
            player:getModData().DTKillscheck = 0;
        end
        if player:getModData().DTtimesinceLastKill == nil then
            player:getModData().DTtimesinceLastKill = 0;
        end
        -- INITIALIZATION FOR ALCOHOLIC TRAIT
        if player:getModData().DThoursSinceLastDrink == nil then
            player:getModData().DThoursSinceLastDrink = 0;
        end
        if player:getModData().DTthresholdToObtainAlcoholic == nil then
            player:getModData().DTthresholdToObtainAlcoholic = 0;
        end
        -- INITIALIZATION FOR ANOREXIC TRAIT
        if player:getModData().DTthresholdToObtainLoseAnorexy == nil then
            if player:HasTrait("Anorexy") then
                player:getModData().DTthresholdToObtainLoseAnorexy = -720;
            else
                player:getModData().DTthresholdToObtainLoseAnorexy = 0;
            end
        end
        -- INITIALIZATION FOR PHYSICALLY ACTIVE/SEDENTARY TRAITS
        if player:getModData().DTObtainLoseActiveSedentary == nil then
            if player:HasTrait("PhysicallyActive") then
                player:getModData().DTObtainLoseActiveSedentary = 60000;
            elseif player:HasTrait("Sedentary") then
                player:getModData().DTObtainLoseActiveSedentary = -60000;
            else
                player:getModData().DTObtainLoseActiveSedentary = 0;
            end
        end
        -- INITIALIZATION FOR HARD OF HEARING AND KEEN HEARING TRAITS
        if player:getModData().DTKeenHardOfHearing == nil then
            local total = 0;
            -- AGILITY SKILLS
            total = total + player:getPerkLevel(Perks.Sneak);
            total = total + player:getPerkLevel(Perks.Lightfoot);
            total = total + player:getPerkLevel(Perks.Nimble);
            -- FIREARMS SKILLS
            total = total + player:getPerkLevel(Perks.Aiming);
            -- COMBAT SKILLS
            total = total + player:getPerkLevel(Perks.Axe);
            total = total + player:getPerkLevel(Perks.Blunt);
            total = total + player:getPerkLevel(Perks.SmallBlunt);
            total = total + player:getPerkLevel(Perks.LongBlade);
            total = total + player:getPerkLevel(Perks.SmallBlade);
            total = total + player:getPerkLevel(Perks.Spear);
            -- SURVIVALIST SKILLS
            total = total + player:getPerkLevel(Perks.PlantScavenging);
            -- MOD DATA = TOTAL
            player:getModData().DTKeenHardOfHearing = total;
            -- CHECKS IF THE PLAYER HAS THE NECESSARY TO REMOVE HARD OF HEARING OR OBTAIN KEEN HEARING
            if player:getModData().DTKeenHardOfHearing >= 30 and player:HasTrait("HardOfHearing") then
                player:getTraits():remove("HardOfHearing");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_hardhear"), false,
                    HaloTextHelper.getColorGreen());
            end
            if player:getModData().DTKeenHardOfHearing >= 50 and not player:HasTrait("KeenHearing") and
                not player:HasTrait("Deaf") then
                player:getTraits():add("KeenHearing");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_keenhearing"), true,
                    HaloTextHelper.getColorGreen());
            end
        end
        -- INITIALIZATION FOR SLOW LEARNER AND FAST LEARNER TRAITS
        if player:getModData().DTSlowFastLearner == nil then
            local total = 0;
            -- CRAFTING SKILLS
            total = total + player:getPerkLevel(Perks.Woodwork);
            total = total + player:getPerkLevel(Perks.Cooking);
            total = total + player:getPerkLevel(Perks.Farming);
            total = total + player:getPerkLevel(Perks.Doctor);
            total = total + player:getPerkLevel(Perks.Electricity);
            total = total + player:getPerkLevel(Perks.MetalWelding);
            total = total + player:getPerkLevel(Perks.Mechanics);
            total = total + player:getPerkLevel(Perks.Tailoring);
            -- SURVIVALIST SKILLS
            total = total + player:getPerkLevel(Perks.Fishing);
            total = total + player:getPerkLevel(Perks.Trapping);
            total = total + player:getPerkLevel(Perks.PlantScavenging);
            -- MOD DATA = TOTAL
            player:getModData().DTSlowFastLearner = total;
            -- CHECKS IF THE PLAYER HAS THE NECESSARY TO REMOVE SLOW LEARNER OR OBTAIN FAST LEARNER
            if player:getModData().DTSlowFastLearner >= 30 and player:HasTrait("SlowLearner") then
                player:getTraits():remove("SlowLearner");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_SlowLearner"), false,
                    HaloTextHelper.getColorGreen());
            end
            if player:getModData().DTSlowFastLearner >= 50 and not player:HasTrait("FastLearner") then
                player:getTraits():add("FastLearner");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_FastLearner"), true,
                    HaloTextHelper.getColorGreen());
            end
        end
        -- INITIALIZATION FOR WETNESS MOODLE
        if player:getModData().DTgenerateAColdChance == nil then
            player:getModData().DTgenerateAColdChance = 0;
        end
        -- INITIALIZATION FOR NERVOUS WRECK
        if player:getModData().DTisNervousWreck == nil then
            if player:HasTrait("NervousWreck") then
                player:getModData().DTisNervousWreck = true;
            else
                player:getModData().DTisNervousWreck = false;
            end
        end
        if player:getModData().DTPillsBeta == nil then
            player:getModData().DTPillsBeta = 0;
        end
        -- INITIALIZATION FOR MELANCHOLIC
        if player:getModData().DTisMelancholic == nil then
            if player:HasTrait("Melancholic") then
                player:getModData().DTisMelancholic = true;
            else
                player:getModData().DTisMelancholic = false;
            end
        end
        if player:getModData().DTPillsAntiDep == nil then
            player:getModData().DTPillsAntiDep = 0;
        end
        -- INITIALIZATION FOR OVERDOSE 
        if player:getModData().DTOverdose == nil then
            player:getModData().DTOverdose = 0;
        end
        -- INITIALIZATION FOR EMOTIONAL INTELLIGENCE
        if player:getModData().DTstressIntelligence == nil then
            player:getModData().DTstressIntelligence = false;
        end
        if player:getModData().DTunhappynessIntelligence == nil then
            player:getModData().DTunhappynessIntelligence = false;
        end
        if player:getModData().DTboredomIntelligence == nil then
            player:getModData().DTboredomIntelligence = false;
        end
        if player:getModData().DTPlantsKnowledge == nil then
            player:getModData().DTPlantsKnowledge = 0;
        end
    end
end

Events.OnGameBoot.Add(DTBaseGameCharacterDetails.DoTraits);
Events.OnGameBoot.Add(DTBaseGameCharacterDetails.DoProfessions);
Events.OnCreatePlayer.Add(DTBaseGameCharacterDetails.DoNewCharacterInitializations);
