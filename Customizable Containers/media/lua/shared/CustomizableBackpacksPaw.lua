if getActivatedMods():contains("PLLoot") then
else return end

function getWeightReductionVars()
    if SandboxVars.CustomizableBackpacks.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Base.smallback"):DoParam("WeightReduction = 71")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("WeightReduction = 64")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Base.smallback"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Base.smallback"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("WeightReduction = 90")



    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Base.smallback"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.smallback"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.smallback"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 7 then	-- WeightReduction = 75 


        getScriptManager():getItem("Base.smallback"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("Base.smallback"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("Base.smallback"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Base.smallback"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Base.smallback"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Base.smallback"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Base.smallback"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("WeightReduction = 100")


    end


    if SandboxVars.CustomizableChestRigs.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Base.BeltRig"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Base.MVest"):DoParam("WeightReduction = 56")

        getScriptManager():getItem("Base.MVest2"):DoParam("WeightReduction = 56")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Base.BeltRig"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.MVest"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.MVest2"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Base.BeltRig"):DoParam("WeightReduction = 88")

        getScriptManager():getItem("Base.MVest"):DoParam("WeightReduction = 82")

        getScriptManager():getItem("Base.MVest2"):DoParam("WeightReduction = 82")



    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Base.BeltRig"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.MVest"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.MVest2"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.BeltRig"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.MVest"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.MVest2"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.BeltRig"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.MVest"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.MVest2"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 7 then	-- WeightReduction = 75 


        getScriptManager():getItem("Base.BeltRig"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.MVest"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.MVest2"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 8 then  -- WeightReduction = 80 

        getScriptManager():getItem("Base.BeltRig"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.MVest"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.MVest2"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 9 then  -- WeightReduction = 85 

        getScriptManager():getItem("Base.BeltRig"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.MVest"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.MVest2"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Base.BeltRig"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.MVest"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.MVest2"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Base.BeltRig"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.MVest"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.MVest2"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Base.BeltRig"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.MVest"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.MVest2"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Base.BeltRig"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.MVest"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.MVest2"):DoParam("WeightReduction = 100")


    end


    if SandboxVars.CustomizableFannyPacks.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("WeightReduction = 68")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("WeightReduction = 49")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("WeightReduction = 49")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("WeightReduction = 49")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("WeightReduction = 53")

        getScriptManager():getItem("Base.medbag"):DoParam("WeightReduction = 53")

        getScriptManager():getItem("Base.medbag2"):DoParam("WeightReduction = 53")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("WeightReduction = 65")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("WeightReduction = 65")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("WeightReduction = 65")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Base.medbag"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Base.medbag2"):DoParam("WeightReduction = 70")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.medbag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.medbag2"):DoParam("WeightReduction = 85")



    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.medbag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.medbag2"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.RogueWaistBag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.medbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.medbag2"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.RogueWaistBag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.medbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.medbag2"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 7 then	-- WeightReduction = 75 


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.medbag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.medbag2"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.medbag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.medbag2"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.medbag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.medbag2"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.medbag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.medbag2"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.medbag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.medbag2"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.medbag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.medbag2"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.medbag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.medbag2"):DoParam("WeightReduction = 100")


    end
end


function getCapacityVars()
    if SandboxVars.CustomizableBackpacks.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Base.smallback"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity = 9")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Base.smallback"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity = 12")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Base.smallback"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity = 12")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Base.smallback"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity = 14")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 9)


            getScriptManager():getItem("Base.smallback"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBackpacks.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 13)


            getScriptManager():getItem("Base.smallback"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBackpacks.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Base.smallback"):DoParam("Capacity = 13")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity = 15")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Base.smallback"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity = 18")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Base.smallback"):DoParam("Capacity = 18")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity = 21")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Base.smallback"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity = 24")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Base.smallback"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity = 36")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Base.smallback"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity = 60")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Base.smallback"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Base.smallback"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Base.smallback"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Base.smallback"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Base.smallback"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Base.smallback"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Capacity = 75")


    end


    if SandboxVars.CustomizableChestRigs.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity = 3")

        getScriptManager():getItem("Base.MVest"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.MVest2"):DoParam("Capacity = 4")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.MVest"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.MVest2"):DoParam("Capacity = 5")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.MVest"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.MVest2"):DoParam("Capacity = 6")



    elseif SandboxVars.CustomizableChestRigs.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.MVest"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.MVest2"):DoParam("Capacity = 6")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 9)


            getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.MVest"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.MVest2"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableChestRigs.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 13)


            getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.MVest"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.MVest2"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableChestRigs.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.MVest"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.MVest2"):DoParam("Capacity = 6")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.MVest"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.MVest2"):DoParam("Capacity = 8")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.MVest"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.MVest2"):DoParam("Capacity = 9")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.MVest"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.MVest2"):DoParam("Capacity = 10")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.MVest"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.MVest2"):DoParam("Capacity = 15")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.MVest"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.MVest2"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.MVest"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.MVest2"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.MVest"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.MVest2"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.MVest"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.MVest2"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.MVest"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.MVest2"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.MVest"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.MVest2"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Base.BeltRig"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.MVest"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.MVest2"):DoParam("Capacity = 75")


    end


    if SandboxVars.CustomizableFannyPacks.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.medbag"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.medbag2"):DoParam("Capacity = 4")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 2 then  -- Capacity = Vanilla

        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.medbag"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.medbag2"):DoParam("Capacity = 5")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.medbag"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.medbag2"):DoParam("Capacity = 6")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.medbag"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.medbag2"):DoParam("Capacity = 6")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 9)


            getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.medbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.medbag2"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 13)


            getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.medbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.medbag2"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.medbag"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.medbag2"):DoParam("Capacity = 6")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.medbag"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.medbag2"):DoParam("Capacity = 8")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.medbag"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.medbag2"):DoParam("Capacity = 9")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.medbag"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.medbag2"):DoParam("Capacity = 10")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity = 18")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity = 18")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity = 18")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity = 18")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity = 24")

        getScriptManager():getItem("Base.medbag"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.medbag2"):DoParam("Capacity = 15")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.medbag"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.medbag2"):DoParam("Capacity = 15")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.medbag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.medbag2"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 14 then  -- Capacity = 25

        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.medbag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.medbag2"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.medbag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.medbag2"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.medbag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.medbag2"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.medbag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.medbag2"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.medbag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.medbag2"):DoParam("Capacity = 75")


    end
end


function getWeightVars()
    if SandboxVars.CustomizableBackpacks.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Base.smallback"):DoParam("Weight = 0.7")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Weight = 1")


    elseif SandboxVars.CustomizableBackpacks.Weight == 2 then  -- Weight = -40


        getScriptManager():getItem("Base.smallback"):DoParam("Weight = 0.540")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Weight = 0.75")


    elseif SandboxVars.CustomizableBackpacks.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Base.smallback"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Weight = 0.5")




    elseif SandboxVars.CustomizableBackpacks.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Base.smallback"):DoParam("Weight = 0.18")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Weight = 0.25")


    elseif SandboxVars.CustomizableBackpacks.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Base.smallback"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("Weight = 0")


    end


    if SandboxVars.CustomizableChestRigs.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Base.BeltRig"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.MVest"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.MVest2"):DoParam("Weight = 0.5")


    elseif SandboxVars.CustomizableChestRigs.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("Base.BeltRig"):DoParam("Weight = 0.375")

        getScriptManager():getItem("Base.MVest"):DoParam("Weight = 0.375")

        getScriptManager():getItem("Base.MVest2"):DoParam("Weight = 0.375")


    elseif SandboxVars.CustomizableChestRigs.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Base.BeltRig"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.MVest"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.MVest2"):DoParam("Weight = 0.25")




    elseif SandboxVars.CustomizableChestRigs.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Base.BeltRig"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Base.MVest"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Base.MVest2"):DoParam("Weight = 0.13")


    elseif SandboxVars.CustomizableChestRigs.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Base.BeltRig"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.MVest"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.MVest2"):DoParam("Weight = 0")


    end


    if SandboxVars.CustomizableFannyPacks.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.medbag"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.medbag2"):DoParam("Weight = 0.5")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 2 then  -- Weight = -40


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Weight = 0.375")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Weight = 0.375")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Weight = 0.375")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Weight = 0.375")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Weight = 0.375")

        getScriptManager():getItem("Base.medbag"):DoParam("Weight = 0.375")

        getScriptManager():getItem("Base.medbag2"):DoParam("Weight = 0.375")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.medbag"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.medbag2"):DoParam("Weight = 0.25")




    elseif SandboxVars.CustomizableFannyPacks.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Base.medbag"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Base.medbag2"):DoParam("Weight = 0.13")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.RogueWaistBag"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.medbag"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.medbag2"):DoParam("Weight = 0")


    end
end

function getRunSpeedModifierVars()
	if SandboxVars.CustomizableBackpacks.RemoveRunSpeedModifier == true then
	else return end
	
	
		getScriptManager():getItem("Base.smallback"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.TacticalWaistBagBackMed"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.TacticalWaistBagFrontMed"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.RogueWaistBag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.medbag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.medbag2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.BeltRig"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_ParaMedic"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.MVest"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.MVest2"):DoParam("RunSpeedModifier = 1.0")	
		
		
	end

Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars) 
Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)



