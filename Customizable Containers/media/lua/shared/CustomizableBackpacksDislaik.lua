if getActivatedMods():contains("Dislaik'sClothingPack") then
else return end

function getWeightReductionVars()
	if SandboxVars.CustomizableFannyPacks.WeightReduction == 1 then  -- WeightReduction = -25


		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("WeightReduction = 45")
		

	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("WeightReduction = 60")
		


	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced
		
		
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("WeightReduction = 84")


	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 4 then  -- WeightReduction = Balanced
		
		
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("WeightReduction = 92")
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            
            getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
            
            
    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 7 then	-- WeightReduction = 75	
		
		
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("WeightReduction = 75")
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 8 then  -- WeightReduction = 80 
		
		
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("WeightReduction = 80")


	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 9 then  -- WeightReduction = 85 
		
		
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("WeightReduction = 85")
		
			
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 10 then  -- WeightReduction = 90 
		
		
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("WeightReduction = 90")
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 11 then  -- WeightReduction = 95 
		
		
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("WeightReduction = 95")
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 12 then  -- WeightReduction = 99 
		
		
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("WeightReduction = 99")
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 13 then  -- WeightReduction = Weightless 
		
		
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("WeightReduction = 100")
		
		
	end
end


function getCapacityVars() 
	if SandboxVars.CustomizableFannyPacks.Capacity == 1 then  -- Capacity = -25


		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity = 4")

	
    elseif SandboxVars.CustomizableFannyPacks.Capacity == 2 then  -- Capacity = Vanilla


		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity = 5")


	elseif SandboxVars.CustomizableFannyPacks.Capacity == 3 then  -- Capacity = Well Balanced
	
		
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity = 6")


	elseif SandboxVars.CustomizableFannyPacks.Capacity == 4 then  -- Capacity = Balanced
	
		
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity = 8")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 5 then  -- Capacity = Random - Well Balanced
	
	
	    function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 11)

            
            getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
            
            
    elseif SandboxVars.CustomizableFannyPacks.Capacity == 6 then  -- Capacity = Random - Balanced
	
		
		function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 13)


            getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
		
			
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 7 then  -- Capacity = +25
		
	
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity = 6")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 8 then  -- Capacity = +50
		
	
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity = 7.5")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 9 then  -- Capacity = +75
		
	
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity = 9")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 10 then  -- Capacity = 2x
		
	
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity = 10")


	elseif SandboxVars.CustomizableFannyPacks.Capacity == 11 then  -- Capacity = 3x
		
	
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity = 15")


	elseif SandboxVars.CustomizableFannyPacks.Capacity == 12 then  -- Capacity = 5x
		
	
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity = 25")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 13 then  -- Capacity = 20
		
	
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity = 20")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 14 then  -- Capacity = 25
		
	
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity = 25")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 15 then  -- Capacity = 30
		
	
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity = 30")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 16 then  -- Capacity = 40
		
	
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity = 40")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 17 then  -- Capacity = 50
		
	
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity = 50")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 18 then  -- Capacity = 75
		
	
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Capacity = 75")
		
	  
	end
end


function getWeightVars()
	if SandboxVars.CustomizableFannyPacks.Weight == 1 then  -- Weight = Normal
		
		
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Weight = 1")
		

    elseif SandboxVars.CustomizableFannyPacks.Weight == 2 then  -- Weight = -25


		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Weight = 0.75")


	elseif SandboxVars.CustomizableFannyPacks.Weight == 3 then  -- Weight = -50


		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Weight = 0.5")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Weight == 4 then  -- Weight = -75

		
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Weight = 0.25")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Weight == 5 then  -- Weight = Weightless

		
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("Weight = 0.0")
		
		
	end
end


function getRunSpeedModifierVars()
	if SandboxVars.CustomizableFannyPacks.RemoveRunSpeedModifier == true then
	else return end
	
	
		getScriptManager():getItem("Dislaik.UpperLegs_LegBag"):DoParam("RunSpeedModifier = 1.0")
		
		
	end


Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars) 
Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)