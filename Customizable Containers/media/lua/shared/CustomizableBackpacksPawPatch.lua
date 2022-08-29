if getActivatedMods():contains("PLLoot_Patch") then
else return end


function getWeightReductionVars()
	if SandboxVars.CustomizableChestRigs.WeightReduction == 1 then  -- WeightReduction = -25
	
	
		getScriptManager():getItem("Base.MVest_Black"):DoParam("WeightReduction = 56")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("WeightReduction = 56")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("WeightReduction = 56")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("WeightReduction = 56")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("WeightReduction = 49")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("WeightReduction = 49")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("WeightReduction = 49")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("WeightReduction = 49")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("WeightReduction = 53")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("WeightReduction = 53")
	
	
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 2 then  -- WeightReduction = Vanilla
	
	
		getScriptManager():getItem("Base.MVest_Black"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("WeightReduction = 65")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("WeightReduction = 65")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("WeightReduction = 65")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("WeightReduction = 65")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("WeightReduction = 70")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("WeightReduction = 70")
	
	
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 3 then  -- WeightReduction = Well Balanced

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("WeightReduction = 82")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("WeightReduction = 82")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("WeightReduction = 82")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("WeightReduction = 82")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("WeightReduction = 85")


	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 4 then  -- WeightReduction = Balanced

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("WeightReduction = 85")
		
	
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.MVest_Black"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
            getScriptManager():getItem("Base.MVest2_Black"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.MVest_Military"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.MVest2_Military"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
            
            
    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.MVest_Black"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
            getScriptManager():getItem("Base.MVest2_Black"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.MVest_Military"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.MVest2_Military"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
		
		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 5 then	-- WeightReduction = 75 

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("WeightReduction = 75")

		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 6 then  -- WeightReduction = 80 
		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("WeightReduction = 80")


	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 7 then  -- WeightReduction = 85 
		
			
		getScriptManager():getItem("Base.MVest_Black"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("WeightReduction = 85")
		
			
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 8 then  -- WeightReduction = 90 

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("WeightReduction = 90")
		
		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 9 then  -- WeightReduction = 95 

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("WeightReduction = 95")
		
		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 10 then  -- WeightReduction = 99 

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("WeightReduction = 99")
		
		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 11 then  -- WeightReduction = Weightless 

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("WeightReduction = 100")
		
		
	end
end


function getCapacityVars() 
	if SandboxVars.CustomizableChestRigs.Capacity == 1 then  -- Capacity = -25
	
	
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity = 5")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity = 6")
	
	
	elseif SandboxVars.CustomizableChestRigs.Capacity == 2 then  -- Capacity = Vanilla
	
	
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity = 6")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity = 8")			
	
	
	elseif SandboxVars.CustomizableChestRigs.Capacity == 3 then  -- Capacity = Well Balanced
	
		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity = 7")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity = 7")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity = 7")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity = 7")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity = 9")
	
	
	elseif SandboxVars.CustomizableChestRigs.Capacity == 4 then  -- Capacity = Balanced
	
			
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity = 8")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity = 10")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 5 then  -- Capacity = Random - Well Balanced
	
	
	    function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 9)


            getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity  = "..RandomCapacity)
		
            getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity  = "..RandomCapacity)	
            
            getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
            
            
    elseif SandboxVars.CustomizableChestRigs.Capacity == 6 then  -- Capacity = Random - Balanced
	
		
		function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 13)


            getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity  = "..RandomCapacity)
		
            getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity  = "..RandomCapacity)	
            
            getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
		
			
	elseif SandboxVars.CustomizableChestRigs.Capacity == 7 then  -- Capacity = +25

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity = 8")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity = 10")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 8 then  -- Capacity = +50

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity = 9")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity = 12")

	
	elseif SandboxVars.CustomizableChestRigs.Capacity == 9 then  -- Capacity = +75

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity = 11")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity = 11")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity = 11")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity = 11")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity = 14")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity = 14")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 10 then  -- Capacity = 2x

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity = 12")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity = 16")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity = 16")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 11 then  -- Capacity = 3x

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity = 18")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity = 18")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity = 18")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity = 18")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity = 24")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity = 24")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 12 then  -- Capacity = 5x

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity = 30")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity = 40")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 13 then  -- Capacity = 20

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity = 20")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity = 20")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 14 then  -- Capacity = 25

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity = 25")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity = 25")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 15 then  -- Capacity = 30

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity = 30")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity = 30")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 16 then  -- Capacity = 40

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity = 40")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity = 40")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 17 then  -- Capacity = 50

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity = 50")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity = 50")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 18 then  -- Capacity = 75

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Capacity = 75")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Capacity = 75")
		
	  
	end
end


function getWeightVars()
	if SandboxVars.CustomizableChestRigs.Weight == 1 then  -- Weight = Well Balanced

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Weight = 0.5")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Weight = 0.5")
		
		
	elseif SandboxVars.CustomizableChestRigs.Weight == 2 then  -- Weight = -25

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Weight = 0.375")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Weight = 0.375")


	elseif SandboxVars.CustomizableChestRigs.Weight == 3 then  -- Weight = -50

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Weight = 0.25")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Weight = 0.25")
		
		
	elseif SandboxVars.CustomizableChestRigs.Weight == 4 then  -- Weight = -75

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Weight = 0.13")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Weight = 0.13")
		
		
	elseif SandboxVars.CustomizableChestRigs.Weight == 5 then  -- Weight = Weightless

		
		getScriptManager():getItem("Base.MVest_Black"):DoParam("Weight = 0.0")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("Weight = 0.0")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("Weight = 0.0")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("Weight = 0.0")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("Weight = 0.0")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("Weight = 0.0")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("Weight = 0.0")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("Weight = 0.0")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("Weight = 0.0")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("Weight = 0.0")
		
		
	end
end

function getRunSpeedModifierVars()
	if SandboxVars.CustomizableBackpacks.RemoveRunSpeedModifier == true then
	else return end
	
	
		getScriptManager():getItem("Base.MVest_Black"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.MVest2_Black"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.MVest_Military"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.MVest2_Military"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Black"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Black"):DoParam("RunSpeedModifier = 1.0")	
		
		getScriptManager():getItem("Base.TacticalWaistBagBack_Military"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.TacticalWaistBagFront_Military"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.RogueWaistBag_Black"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.RogueWaistBag_Military"):DoParam("RunSpeedModifier = 1.0")
		
		
	end

Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars) 
Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)