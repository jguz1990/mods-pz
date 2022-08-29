if getActivatedMods():contains("Swatpack") then
else return end


function getWeightReductionVars()
    if SandboxVars.CustomizableBackpacks.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("WeightReduction = 68")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("WeightReduction = 92")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 7 then	-- WeightReduction = 75	


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("WeightReduction = 100")


    end


    if SandboxVars.CustomizableFannyPacks.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Base.SWATPouch"):DoParam("WeightReduction = 71")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Base.SWATPouch"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Base.SWATPouch"):DoParam("WeightReduction = 95")

    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Base.SWATPouch"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.SWATPouch"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.SWATPouch"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 7 then	-- WeightReduction = 75	


        getScriptManager():getItem("Base.SWATPouch"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("Base.SWATPouch"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("Base.SWATPouch"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Base.SWATPouch"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Base.SWATPouch"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Base.SWATPouch"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Base.SWATPouch"):DoParam("WeightReduction = 100")


    end
end


function getCapacityVars()
    if SandboxVars.CustomizableBackpacks.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity = 26")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity = 17")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity = 22")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity = 37")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity = 24")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBackpacks.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBackpacks.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity = 44")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity = 28")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity = 52")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity = 33")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity = 61")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity = 39")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity = 70")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity = 44")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity = 105")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity = 66")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity = 175")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity = 110")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Capacity = 75")


    end


    if SandboxVars.CustomizableFannyPacks.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity = 3")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity = 4")
        

    elseif SandboxVars.CustomizableFannyPacks.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity = 5")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity = 5")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity = 5")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity = 6")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity = 7")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity = 8")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity = 12")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity = 40")

    elseif SandboxVars.CustomizableFannyPacks.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Capacity = 75")


    end
end


function getWeightVars()
    if SandboxVars.CustomizableBackpacks.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Weight = 3")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Weight = 2")


    elseif SandboxVars.CustomizableBackpacks.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Weight = 2.25")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Weight = 1.5")


    elseif SandboxVars.CustomizableBackpacks.Weight == 3 then  -- Weight = -50

        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Weight = 1")


    elseif SandboxVars.CustomizableBackpacks.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Weight = 0.5")


    elseif SandboxVars.CustomizableBackpacks.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("Weight = 0")


    end


    if SandboxVars.CustomizableFannyPacks.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Weight = 0.5")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Weight = 0.375")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Weight = 0.25")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Weight = 0.13")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Base.SWATPouch"):DoParam("Weight = 0")


    end
end

function getRunSpeedModifierVars()
	if SandboxVars.CustomizableBackpacks.RemoveRunSpeedModifier == true then
	else return end
	
	
		getScriptManager():getItem("Base.SWATPouch"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_BigSwatBag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_PoliceBag"):DoParam("RunSpeedModifier = 1.0")
	
		
	end

Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars) 
Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)



