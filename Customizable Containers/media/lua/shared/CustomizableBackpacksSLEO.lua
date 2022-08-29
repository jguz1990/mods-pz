if getActivatedMods():contains("SLEO") then
else return end

function getWeightReductionVars()
    if SandboxVars.CustomizableBackpacks.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("WeightReduction = 49")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("WeightReduction = 49")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("WeightReduction = 34")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("WeightReduction = 34")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("WeightReduction = 65")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("WeightReduction = 65")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("WeightReduction = 45")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("WeightReduction = 60")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("WeightReduction = 70")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 7 then	-- WeightReduction = 75	


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("WeightReduction = 100")


    end


    if SandboxVars.CustomizableFannyPacks.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("WeightReduction = 23")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("WeightReduction = 23")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("WeightReduction = 23")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("WeightReduction = 23")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("WeightReduction = 30")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("WeightReduction = 30")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("WeightReduction = 30")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("WeightReduction = 55")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("WeightReduction = 55")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("WeightReduction = 55")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("WeightReduction = 65")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("WeightReduction = 65")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("WeightReduction = 65")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("WeightReduction = 65")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 7 then	-- WeightReduction = 75	


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("WeightReduction = 75")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("WeightReduction = 75")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("WeightReduction = 80")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("WeightReduction = 80")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("WeightReduction = 85")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("WeightReduction = 85")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("WeightReduction = 90")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("WeightReduction = 90")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("WeightReduction = 95")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("WeightReduction = 95")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("WeightReduction = 99")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("WeightReduction = 99")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("WeightReduction = 100")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("WeightReduction = 100")
        
        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("WeightReduction = 100")


    end
end


function getCapacityVars()
    if SandboxVars.CustomizableBackpacks.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity = 14")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity = 14")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity = 11")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity = 11")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity = 18")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity = 18")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity = 14")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity = 14")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity = 28")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity = 28")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity = 16")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity = 16")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity = 23")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity = 23")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity = 17")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity = 17")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBackpacks.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBackpacks.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity = 23")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity = 23")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity = 18")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity = 18")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity = 27")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity = 27")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity = 21")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity = 21")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity = 32")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity = 32")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity = 25")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity = 36")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity = 36")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity = 28")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity = 28")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity = 54")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity = 54")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity = 42")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity = 42")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity = 90")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity = 90")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity = 70")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity = 70")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity = 20")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity = 20")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity = 20")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity = 25")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity = 25")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity = 25")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity = 30")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity = 30")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity = 30")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity = 40")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity = 40")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity = 40")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity = 50")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity = 50")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity = 50")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Capacity = 75")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Capacity = 75")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Capacity = 75")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Capacity = 75")


    end


    if SandboxVars.CustomizableFannyPacks.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity = 2.5")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity = 2.5")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity = 2.5")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity = 2.5")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity = 3")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity = 3")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity = 3")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity = 3")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity = 4")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity = 4")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity = 4")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity = 4")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity = 5")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity = 5")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity = 5")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity = 5")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity = 4")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity = 4")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity = 4")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity = 4")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity = 5")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity = 5")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity = 5")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity = 5")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity = 6")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity = 6")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity = 6")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity = 6")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity = 6")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity = 6")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity = 6")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity = 6")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity = 9")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity = 9")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity = 9")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity = 9")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity = 15")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity = 15")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity = 15")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity = 15")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity = 20")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity = 20")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity = 20")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity = 25")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity = 25")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity = 25")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity = 30")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity = 30")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity = 30")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity = 40")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity = 40")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity = 40")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity = 50")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity = 50")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity = 50")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Capacity = 75")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Capacity = 75")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Capacity = 75")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Capacity = 75")


    end
end


function getWeightVars()
    if SandboxVars.CustomizableBackpacks.Weight == 1 then  -- Weight = Normal


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Weight = 1")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Weight = 1")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Weight = 1")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Weight = 1")




    elseif SandboxVars.CustomizableBackpacks.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Weight = 0.75")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Weight = 0.75")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Weight = 0.75")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Weight = 0.75")


    elseif SandboxVars.CustomizableBackpacks.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Weight = 0.5")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Weight = 0.5")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Weight = 0.5")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Weight = 0.5")


    elseif SandboxVars.CustomizableBackpacks.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Weight = 0.25")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Weight = 0.25")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Weight = 0.25")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Weight = 0.25")


    elseif SandboxVars.CustomizableBackpacks.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("Weight = 0")

        getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("Weight = 0")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("Weight = 0")

        getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("Weight = 0")


    end


    if SandboxVars.CustomizableFannyPacks.Weight == 1 then  -- Weight = Normal


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Weight = 0.2")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Weight = 0.2")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Weight = 0.2")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Weight = 0.2")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Weight = 0.15")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Weight = 0.15")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Weight = 0.15")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Weight = 0.15")
        

    elseif SandboxVars.CustomizableFannyPacks.Weight == 3 then  -- Weight = -50


       getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Weight = 0.1")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Weight = 0.1")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Weight = 0.1")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Weight = 0.1")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Weight = 0.05")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Weight = 0.05")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Weight = 0.05")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Weight = 0.05")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("Weight = 0")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("Weight = 0")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("Weight = 0")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("Weight = 0")


    end
end

function getRunSpeedModifierVars()
	if SandboxVars.CustomizableBackpacks.RemoveRunSpeedModifier == true then
	else return end
	
	
		getScriptManager():getItem("SLEOClothing.Bag_DuffelPolice"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("SLEOClothing.Bag_DuffelSheriff"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("SLEOClothing.Bag_PoliceUtilityBagGreen"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("SLEOClothing.BlackLegPouch_RLeg"):DoParam("RunSpeedModifier = 1.0")

        getScriptManager():getItem("SLEOClothing.BlackLegPouch_LLeg"):DoParam("RunSpeedModifier = 1.0")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_RLeg"):DoParam("RunSpeedModifier = 1.0")

        getScriptManager():getItem("SLEOClothing.GreenLegPouch_LLeg"):DoParam("RunSpeedModifier = 1.0")
		
		
	end

	
Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars) 
Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)



