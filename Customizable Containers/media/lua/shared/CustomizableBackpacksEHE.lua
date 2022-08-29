if getActivatedMods():contains("ExpandedHelicopterEvents") then
else return end


function getWeightReductionVars()
	if SandboxVars.CustomizableChestRigs.WeightReduction == 1 then  -- WeightReduction = -25


		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("WeightReduction = 45") -- These are fabricated
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("WeightReduction = 45") -- These are fabricated
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("WeightReduction = 45") -- These are fabricated
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("WeightReduction = 45") -- These are fabricated
		

	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 2 then  -- WeightReduction = Vanilla


		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("WeightReduction = 60") -- These are fabricated
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("WeightReduction = 60") -- These are fabricated
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("WeightReduction = 60") -- These are fabricated
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("WeightReduction = 60") -- These are fabricated
		

	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 3 then  -- WeightReduction = Well Balanced
		
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("WeightReduction = 92")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("WeightReduction = 92")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("WeightReduction = 92")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("WeightReduction = 92")


	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 4 then  -- WeightReduction = Balanced
		
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("WeightReduction = 94")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("WeightReduction = 94")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("WeightReduction = 94")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("WeightReduction = 94")
		
		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            
            getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
            getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("WeightReduction  = "..RandomWeightReduction)
        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
            
            
    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
            getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
		
		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 7 then	-- WeightReduction = 75	
		
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("WeightReduction = 75")
		
		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 8 then  -- WeightReduction = 80 
		
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("WeightReduction = 80")


	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 9 then  -- WeightReduction = 85 
		
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("WeightReduction = 85")
		
			
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 10 then  -- WeightReduction = 90 
		
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("WeightReduction = 90")
		
		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 11 then  -- WeightReduction = 95 
		
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("WeightReduction = 95")
		
		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 12 then  -- WeightReduction = 99 
		
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("WeightReduction = 99")
		
		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 13 then  -- WeightReduction = Weightless 
		
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("WeightReduction = 100")
		
		
	end
end	

function getCapacityVars() 
	if SandboxVars.CustomizableChestRigs.Capacity == 1 then  -- Capacity = -25


		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity = 2.25")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity = 2.25")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity = 2.25")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity = 2.25")

	
    elseif SandboxVars.CustomizableChestRigs.Capacity == 2 then  -- Capacity = Vanilla


		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity = 3")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity = 3")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity = 3")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity = 3")
		

	elseif SandboxVars.CustomizableChestRigs.Capacity == 3 then  -- Capacity = Well Balanced
	
	
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity = 3")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity = 3")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity = 3")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity = 3")


	elseif SandboxVars.CustomizableChestRigs.Capacity == 4 then  -- Capacity = Balanced
	
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity = 4")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 5 then  -- Capacity = Random - Well Balanced
	
	
	    function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 10)

            
            getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity  = "..RandomCapacity)

        end
            EHEnts.EHEryHours.Add(CustomizableCapacityRandomizer)
            EHEnts.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            EHEnts.OnLoad.Add(CustomizableCapacityRandomizer)
            
            
    elseif SandboxVars.CustomizableChestRigs.Capacity == 6 then  -- Capacity = Random - Balanced
	
		
		function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 13)


            getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity  = "..RandomCapacity)

        end
            EHEnts.EHEryHours.Add(CustomizableCapacityRandomizer)
            EHEnts.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            EHEnts.OnLoad.Add(CustomizableCapacityRandomizer)
		
			
	elseif SandboxVars.CustomizableChestRigs.Capacity == 7 then  -- Capacity = +25
		
	
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity = 4")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 8 then  -- Capacity = +50
		
	
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity = 5")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 9 then  -- Capacity = +75
		
	
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity = 5")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 10 then  -- Capacity = 2x
		
	
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity = 6")


	elseif SandboxVars.CustomizableChestRigs.Capacity == 11 then  -- Capacity = 3x
		
	
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity = 9")


	elseif SandboxVars.CustomizableChestRigs.Capacity == 12 then  -- Capacity = 5x
		
	
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity = 15")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 13 then  -- Capacity = 20
		
	
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity = 20")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 14 then  -- Capacity = 25
		
	
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity = 25")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 15 then  -- Capacity = 30
		
	
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity = 30")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 16 then  -- Capacity = 40
		
	
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity = 40")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 17 then  -- Capacity = 50
		
	
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity = 50")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 18 then  -- Capacity = 75
		
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVest"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("EHE.Vest_PilotSurvivalVestTightened"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVest"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("EHE.Vest_BlackPilotSurvivalVestTightened"):DoParam("Capacity = 75")
	  
	end
end


Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnLoad.Add(getCapacityVars)
Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars) 
Events.OnLoad.Add(getWeightReductionVars)