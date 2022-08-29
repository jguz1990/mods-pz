if getActivatedMods():contains("UndeadSuvivor") then
else return end


function getWeightReductionVars()
	if SandboxVars.CustomizableBackpacks.WeightReduction == 1 then  -- WeightReduction = -25


		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("WeightReduction = 66")
	

	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("WeightReduction = 88")


	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced
		
		
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("WeightReduction = 90")


	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 4 then  -- WeightReduction = Balanced
		
		
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("WeightReduction = 95")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
            
            
    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 7 then	-- WeightReduction = 75	
		
		
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("WeightReduction = 75")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 8 then  -- WeightReduction = 80 
		
		
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("WeightReduction = 80")


	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 9 then  -- WeightReduction = 85 
		
		
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("WeightReduction = 85")
		
			
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 10 then  -- WeightReduction = 90 
		
		
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("WeightReduction = 90")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 11 then  -- WeightReduction = 95 
		
		
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("WeightReduction = 95")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 12 then  -- WeightReduction = 99 
		
		
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("WeightReduction = 99")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 13 then  -- WeightReduction = Weightless 
		
		
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("WeightReduction = 100")
		
		
	end
	
	
	if SandboxVars.CustomizableBags.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("WeightReduction = 22.5")


    elseif SandboxVars.CustomizableBags.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("WeightReduction = 30")


    elseif SandboxVars.CustomizableBags.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("WeightReduction = 80")
       

    elseif SandboxVars.CustomizableBags.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableBags.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            
            getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("WeightReduction  = "..RandomWeightReduction)


        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBags.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBags.WeightReduction == 7 then	-- WeightReduction = 75	


        getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableBags.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableBags.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableBags.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableBags.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableBags.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableBags.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("WeightReduction = 100")


    end
	
	
	if SandboxVars.CustomizableChestRigs.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("WeightReduction = 71")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("WeightReduction = 92")
       

    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            
            getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 7 then	-- WeightReduction = 75	


        getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("WeightReduction = 100")


    end
end


function getCapacityVars() 
	if SandboxVars.CustomizableBackpacks.Capacity == 1 then  -- Capacity = -25


		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity = 24")

	
    elseif SandboxVars.CustomizableBackpacks.Capacity == 2 then  -- Capacity = Vanilla


		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity = 32")
		

	elseif SandboxVars.CustomizableBackpacks.Capacity == 3 then  -- Capacity = Well Balanced
	
		
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity = 31")


	elseif SandboxVars.CustomizableBackpacks.Capacity == 4 then  -- Capacity = Balanced
	
		
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity = 32")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 5 then  -- Capacity = Random - Well Balanced
	
	
	    function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
            
            
    elseif SandboxVars.CustomizableBackpacks.Capacity == 6 then  -- Capacity = Random - Balanced
	
		
		function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
		
			
	elseif SandboxVars.CustomizableBackpacks.Capacity == 7 then  -- Capacity = +25
		
	
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity = 40")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 8 then  -- Capacity = +50
		
	
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity = 48")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 9 then  -- Capacity = +75
		
	
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity = 56")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 10 then  -- Capacity = 2x
		
	
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity = 64")


	elseif SandboxVars.CustomizableBackpacks.Capacity == 11 then  -- Capacity = 3x
		
	
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity = 96")


	elseif SandboxVars.CustomizableBackpacks.Capacity == 12 then  -- Capacity = 5x
		
	
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity = 32")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 13 then  -- Capacity = 20
		
	
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity = 20")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 14 then  -- Capacity = 25
		
	
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity = 25")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 15 then  -- Capacity = 30
		
	
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity = 30")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 16 then  -- Capacity = 40
		
	
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity = 40")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 17 then  -- Capacity = 50
		
	
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity = 50")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 18 then  -- Capacity = 75
		
	
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Capacity = 75")
		
	  
	end
	
	
	if SandboxVars.CustomizableBags.Capacity == 1 then  -- Capacity = -25


		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity = 7.5")

	
    elseif SandboxVars.CustomizableBags.Capacity == 2 then  -- Capacity = Vanilla


		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity = 12")
		

	elseif SandboxVars.CustomizableBags.Capacity == 3 then  -- Capacity = Well Balanced
	
		
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity = 15")


	elseif SandboxVars.CustomizableBags.Capacity == 4 then  -- Capacity = Balanced
	
		
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity = 19")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 5 then  -- Capacity = Random - Well Balanced
	
	
	    function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 9)


            getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
            
            
    elseif SandboxVars.CustomizableBags.Capacity == 6 then  -- Capacity = Random - Balanced
	
		
		function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 13)


            getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
		
			
	elseif SandboxVars.CustomizableBags.Capacity == 7 then  -- Capacity = +25
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity = 16")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 8 then  -- Capacity = +50
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity = 18")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 9 then  -- Capacity = +75
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity = 22")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 10 then  -- Capacity = 2x
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity = 24")


	elseif SandboxVars.CustomizableBags.Capacity == 11 then  -- Capacity = 3x
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity = 36")


	elseif SandboxVars.CustomizableBags.Capacity == 12 then  -- Capacity = 5x
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity = 60")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 13 then  -- Capacity = 20
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity = 20")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 14 then  -- Capacity = 25
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity = 25")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 15 then  -- Capacity = 30
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity = 30")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 16 then  -- Capacity = 40
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity = 40")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 17 then  -- Capacity = 50
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity = 50")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 18 then  -- Capacity = 75
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Capacity = 75")
		
	  
	end
	
	
	if SandboxVars.CustomizableChestRigs.Capacity == 1 then  -- Capacity = -25


		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity = 7.5")

	
    elseif SandboxVars.CustomizableChestRigs.Capacity == 2 then  -- Capacity = Vanilla


		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity = 10")
		

	elseif SandboxVars.CustomizableChestRigs.Capacity == 3 then  -- Capacity = Well Balanced
	
		
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity = 13")


	elseif SandboxVars.CustomizableChestRigs.Capacity == 4 then  -- Capacity = Balanced
	
		
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity = 15")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 5 then  -- Capacity = Random - Well Balanced
	
	
	    function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 9)


            getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
            
            
    elseif SandboxVars.CustomizableChestRigs.Capacity == 6 then  -- Capacity = Random - Balanced
	
		
		function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 13)


            getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
		
			
	elseif SandboxVars.CustomizableChestRigs.Capacity == 7 then  -- Capacity = +25
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity = 12.5")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 8 then  -- Capacity = +50
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity = 15")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 9 then  -- Capacity = +75
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity = 17.5")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 10 then  -- Capacity = 2x
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity = 20")


	elseif SandboxVars.CustomizableChestRigs.Capacity == 11 then  -- Capacity = 3x
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity = 30")


	elseif SandboxVars.CustomizableChestRigs.Capacity == 12 then  -- Capacity = 5x
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity = 50")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 13 then  -- Capacity = 20
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity = 20")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 14 then  -- Capacity = 25
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity = 25")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 15 then  -- Capacity = 30
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity = 30")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 16 then  -- Capacity = 40
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity = 40")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 17 then  -- Capacity = 50
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity = 50")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 18 then  -- Capacity = 75
		
	
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Capacity = 75")
		
	  
	end
end


function getWeightVars()
	if SandboxVars.CustomizableBackpacks.Weight == 1 then  -- Weight = Well Balanced
		
		
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Weight = 5")
		

    elseif SandboxVars.CustomizableBackpacks.Weight == 2 then  -- Weight = -25


		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Weight = 3.75")


	elseif SandboxVars.CustomizableBackpacks.Weight == 3 then  -- Weight = -50


		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Weight = 2.5")
		
		
	elseif SandboxVars.CustomizableBackpacks.Weight == 4 then  -- Weight = -75

		
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Weight = 1.13")
		
		
	elseif SandboxVars.CustomizableBackpacks.Weight == 5 then  -- Weight = Weightless

		
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("Weight = 0")
		
		
	end
	
	
	if SandboxVars.CustomizableBags.Weight == 1 then  -- Weight = Well Balanced
		
		
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Weight = 0.3")
		

    elseif SandboxVars.CustomizableBags.Weight == 2 then  -- Weight = -25


		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Weight = 0.225")


	elseif SandboxVars.CustomizableBags.Weight == 3 then  -- Weight = -50


		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Weight = 0.15")
		
		
	elseif SandboxVars.CustomizableBags.Weight == 4 then  -- Weight = -75

		
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Weight = 0.075")
		
		
	elseif SandboxVars.CustomizableBags.Weight == 5 then  -- Weight = Weightless

		
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("Weight = 0")
		
		
	end
	
	
	if SandboxVars.CustomizableChestRigs.Weight == 1 then  -- Weight = Well Balanced
		
		
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Weight = 1")
		

    elseif SandboxVars.CustomizableChestRigs.Weight == 2 then  -- Weight = -25


		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Weight = 0.75")


	elseif SandboxVars.CustomizableChestRigs.Weight == 3 then  -- Weight = -50


		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Weight = 0.5")
		
		
	elseif SandboxVars.CustomizableChestRigs.Weight == 4 then  -- Weight = -75

		
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Weight = 0.25")
		
		
	elseif SandboxVars.CustomizableChestRigs.Weight == 5 then  -- Weight = Weightless

		
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("Weight = 0")
		
		
	end
end

function getRunSpeedModifierVars()
	if SandboxVars.CustomizableBackpacks.RemoveRunSpeedModifier == true then
	else return end
	
	
		getScriptManager():getItem("UndeadSurvivor.NomadBackpack"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("UndeadSurvivor.PrepperBags"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("UndeadSurvivor.PrepperVestPacked"):DoParam("RunSpeedModifier = 1.0")
	
		
	end

Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars) 
Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)