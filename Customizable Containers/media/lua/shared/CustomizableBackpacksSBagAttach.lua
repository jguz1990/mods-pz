if getActivatedMods():contains("sleepingbagsandattachments") then
else return end


function getWeightReductionVars()
    if SandboxVars.CustomizableBackpacks.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("WeightReduction = 53")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("WeightReduction = 65")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("WeightReduction = 65")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("WeightReduction = 87")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("WeightReduction = 87")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("WeightReduction = 66")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("WeightReduction = 87")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("WeightReduction = 88")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("WeightReduction = 88")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("WeightReduction = 88")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("WeightReduction = 88")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("WeightReduction = 89")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("WeightReduction = 89")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("WeightReduction  = "..RandomWeightReduction)
            

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("WeightReduction  = "..RandomWeightReduction)
            

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 7 then	-- WeightReduction = 75	


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("WeightReduction = 100")


    end


    if SandboxVars.CustomizableBags.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("WeightReduction = 38")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("WeightReduction = 38")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("WeightReduction = 38")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("WeightReduction = 38")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("WeightReduction = 38")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("WeightReduction = 38")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("WeightReduction = 38")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("WeightReduction = 26")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("WeightReduction = 26")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("WeightReduction = 26")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("WeightReduction = 26")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("WeightReduction = 26")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("WeightReduction = 26")

        getScriptManager():getItem("Base.BigFAK"):DoParam("WeightReduction = 34")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("WeightReduction = 30")


    elseif SandboxVars.CustomizableBags.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Base.BigFAK"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("WeightReduction = 40")


    elseif SandboxVars.CustomizableBags.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Base.BigFAK"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("WeightReduction = 40")


    elseif SandboxVars.CustomizableBags.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.BigFAK"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("WeightReduction = 45")


    elseif SandboxVars.CustomizableBags.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.FirstAidKit"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.FirstAidKit1"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.FirstAidKit2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.FirstAidKit3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.FirstAidKit4"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.FirstAidKit5"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.FirstAidKit6"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Lunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Lunchbox2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.PistolCase1"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.PistolCase2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.PistolCase3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.RevolverCase1"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.RevolverCase2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.RevolverCase3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.BigFAK"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.FiendLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.FlashLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.DinoLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.XMenLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBags.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.FirstAidKit"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.FirstAidKit1"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.FirstAidKit2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.FirstAidKit3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.FirstAidKit4"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.FirstAidKit5"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.FirstAidKit6"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Lunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Lunchbox2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.PistolCase1"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.PistolCase2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.PistolCase3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.RevolverCase1"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.RevolverCase2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.RevolverCase3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.BigFAK"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.FiendLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.FlashLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.DinoLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.XMenLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBags.WeightReduction == 7 then	-- WeightReduction = 75	


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.BigFAK"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableBags.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.BigFAK"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableBags.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.BigFAK"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableBags.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.BigFAK"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableBags.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.BigFAK"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableBags.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.BigFAK"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableBags.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.BigFAK"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("WeightReduction = 100")


    end
end


function getCapacityVars()
    if SandboxVars.CustomizableBackpacks.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity = 17")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity = 21")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity = 21")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity = 22")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity = 27")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity = 27")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity = 27")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity = 27")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity = 28")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity = 28")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity = 18")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity = 29")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity = 26")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity = 28")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity = 35")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBackpacks.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBackpacks.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity = 19")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity = 28")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity = 34")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity = 34")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity = 34")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity = 34")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity = 35")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity = 23")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity = 33")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity = 41")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity = 41")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity = 41")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity = 41")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity = 42")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity = 42")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity = 26")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity = 39")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity = 47")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity = 47")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity = 47")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity = 47")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity = 49")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity = 49")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity = 44")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity = 54")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity = 54")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity = 54")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity = 54")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity = 56")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity = 56")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity = 45")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity = 60")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity = 66")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity = 81")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity = 81")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity = 81")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity = 81")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity = 84")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity = 84")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity = 100")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity = 110")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity = 135")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity = 135")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity = 135")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity = 135")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity = 140")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity = 140")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Capacity = 75")


    end


    if SandboxVars.CustomizableBags.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity = 3")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity = 3")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity = 3")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity = 3")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity = 3")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity = 3")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity = 3")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity = 3")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity = 3")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity = 3")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity = 3")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity = 3")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity = 3")


    elseif SandboxVars.CustomizableBags.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity = 4")


    elseif SandboxVars.CustomizableBags.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity = 5")


    elseif SandboxVars.CustomizableBags.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity = 5")


    elseif SandboxVars.CustomizableBags.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBags.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBags.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity = 5")


    elseif SandboxVars.CustomizableBags.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity = 6")


    elseif SandboxVars.CustomizableBags.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity = 7")


    elseif SandboxVars.CustomizableBags.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity = 8")


    elseif SandboxVars.CustomizableBags.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity = 21")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity = 21")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity = 21")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity = 21")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity = 21")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity = 21")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity = 21")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity = 12")


    elseif SandboxVars.CustomizableBags.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableBags.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableBags.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableBags.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableBags.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableBags.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableBags.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Capacity = 75")


    end
end


function getWeightVars()
    if SandboxVars.CustomizableBackpacks.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Weight = 1.2")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Weight = 2")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Weight = 2")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Weight = 2")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Weight = 2")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Weight = 2")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Weight = 2")


    elseif SandboxVars.CustomizableBackpacks.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Weight = 0.9")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Weight = 1.13")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Weight = 1.5")


    elseif SandboxVars.CustomizableBackpacks.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Weight = 0.6")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Weight = 1")


    elseif SandboxVars.CustomizableBackpacks.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Weight = 0.375")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Weight = 0.175")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Weight = 0.175")


    elseif SandboxVars.CustomizableBackpacks.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("Weight = 0")


    end


    if SandboxVars.CustomizableBags.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Weight = 0.7")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Weight = 0.7")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Weight = 0.7")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Weight = 0.7")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Weight = 0.7")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Weight = 0.7")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Weight = 0.7")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Weight = 1.1")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Weight = 1.1")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Weight = 1.1")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Weight = 1.1")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Weight = 1.1")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Weight = 1.1")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Weight = 0.3")


    elseif SandboxVars.CustomizableBags.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Weight = 0.525")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Weight = 0.525")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Weight = 0.525")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Weight = 0.525")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Weight = 0.525")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Weight = 0.525")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Weight = 0.525")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Weight = 0.23")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Weight = 0.23")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Weight = 0.825")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Weight = 0.825")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Weight = 0.825")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Weight = 0.825")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Weight = 0.825")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Weight = 0.825")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Weight = 0.375")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Weight = 0.23")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Weight = 0.23")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Weight = 0.23")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Weight = 0.23")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Weight = 0.23")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Weight = 0.23")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Weight = 0.23")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Weight = 0.23")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Weight = 0.23")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Weight = 0.23")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Weight = 0.23")


    elseif SandboxVars.CustomizableBags.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Weight = 0.55")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Weight = 0.55")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Weight = 0.55")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Weight = 0.55")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Weight = 0.55")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Weight = 0.55")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Weight = 0.15")


    elseif SandboxVars.CustomizableBags.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Weight = 0.175")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Weight = 0.175")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Weight = 0.175")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Weight = 0.175")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Weight = 0.175")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Weight = 0.175")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Weight = 0.175")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Weight = 0.275")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Weight = 0.275")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Weight = 0.275")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Weight = 0.275")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Weight = 0.275")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Weight = 0.275")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Weight = 0.075")


    elseif SandboxVars.CustomizableBags.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Base.FirstAidKit"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.FirstAidKit1"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.FirstAidKit2"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.FirstAidKit3"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.FirstAidKit4"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.FirstAidKit5"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.FirstAidKit6"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Lunchbox"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Lunchbox2"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.PistolCase1"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.PistolCase2"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.PistolCase3"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.RevolverCase1"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.RevolverCase2"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.RevolverCase3"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.BigFAK"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.FiendLunchbox"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.FlashLunchbox"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("Weight = 0.")

        getScriptManager():getItem("Base.DinoLunchbox"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.XMenLunchbox"):DoParam("Weight = 0")


    end
end

function getRunSpeedModifierVars()
	if SandboxVars.CustomizableBackpacks.RemoveRunSpeedModifier == true then
	else return end
	
	
		getScriptManager():getItem("Base.Bag_Schoolbag_Tier2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_Tier2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_Tier2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_Tier2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_Tier3"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Tier2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Tier3"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_Tier3"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.FirstAidKit"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.FirstAidKit1"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.FirstAidKit2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.FirstAidKit3"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.FirstAidKit4"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.FirstAidKit5"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.FirstAidKit6"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Lunchbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Lunchbox2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.PistolCase1"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.PistolCase2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.PistolCase3"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.RevolverCase1"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.RevolverCase2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.RevolverCase3"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.BigFAK"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.FiendLunchbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.FlashLunchbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.BatmanLunchbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.DinoLunchbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.NightmareLunchbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.GargoylesLunchbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.MermaidLunchbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.RainbowLunchbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.SpiffoLunchbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.SpideyLunchbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.XMenLunchbox"):DoParam("RunSpeedModifier = 1.0")
	
		
	end

Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars) 
Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)