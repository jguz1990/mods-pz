if getActivatedMods():contains("TheyKnew") then
else return end

function getWeightReductionVars()
	if SandboxVars.CustomizableBackpacks.WeightReduction == 1 then  -- WeightReduction = -25


		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("WeightReduction = 38")
		

	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("WeightReduction = 50")
		


	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced
		
		
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("WeightReduction = 87")


	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 4 then  -- WeightReduction = Balanced
		
		
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("WeightReduction = 88")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
            
            
    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 7 then	-- WeightReduction = 75	
		
		
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("WeightReduction = 75")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 8 then  -- WeightReduction = 80 
		
		
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("WeightReduction = 80")


	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 9 then  -- WeightReduction = 85 
		
		
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("WeightReduction = 85")
		
			
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 10 then  -- WeightReduction = 90 
		
		
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("WeightReduction = 90")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 11 then  -- WeightReduction = 95 
		
		
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("WeightReduction = 95")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 12 then  -- WeightReduction = 99 
		
		
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("WeightReduction = 99")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 13 then  -- WeightReduction = Weightless 
		
		
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("WeightReduction = 100")
		
		
	end
end


function getCapacityVars() 
	if SandboxVars.CustomizableBackpacks.Capacity == 1 then  -- Capacity = -25


		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity = 13")

	
    elseif SandboxVars.CustomizableBackpacks.Capacity == 2 then  -- Capacity = Vanilla


		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity = 17")


	elseif SandboxVars.CustomizableBackpacks.Capacity == 3 then  -- Capacity = Well Balanced
	
		
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity = 18")


	elseif SandboxVars.CustomizableBackpacks.Capacity == 4 then  -- Capacity = Balanced
	
		
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity = 20")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 5 then  -- Capacity = Random - Well Balanced
	
	
	    function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
            
            
    elseif SandboxVars.CustomizableBackpacks.Capacity == 6 then  -- Capacity = Random - Balanced
	
		
		function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
		
			
	elseif SandboxVars.CustomizableBackpacks.Capacity == 7 then  -- Capacity = +25
		
	
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity = 21")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 8 then  -- Capacity = +50
		
	
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity = 26")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 9 then  -- Capacity = +75
		
	
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity = 30")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 10 then  -- Capacity = 2x
		
	
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity = 34")


	elseif SandboxVars.CustomizableBackpacks.Capacity == 11 then  -- Capacity = 3x
		
	
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity = 51")


	elseif SandboxVars.CustomizableBackpacks.Capacity == 12 then  -- Capacity = 5x
		
	
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity = 85")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 13 then  -- Capacity = 20
		
	
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity = 20")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 14 then  -- Capacity = 25
		
	
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity = 25")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 15 then  -- Capacity = 30
		
	
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity = 30")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 16 then  -- Capacity = 40
		
	
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity = 40")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 17 then  -- Capacity = 50
		
	
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity = 50")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 18 then  -- Capacity = 75
		
	
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Capacity = 75")
		
	  
	end
end


function getWeightVars()
	if SandboxVars.CustomizableBackpacks.Weight == 1 then  -- Weight = Normal
		
		
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Weight = 1")
		

    elseif SandboxVars.CustomizableBackpacks.Weight == 2 then  -- Weight = -25


		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Weight = 0.75")


	elseif SandboxVars.CustomizableBackpacks.Weight == 3 then  -- Weight = -50


		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Weight = 0.5")
		
		
	elseif SandboxVars.CustomizableBackpacks.Weight == 4 then  -- Weight = -75

		
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Weight = 0.25")
		
		
	elseif SandboxVars.CustomizableBackpacks.Weight == 5 then  -- Weight = Weightless

		
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("Weight = 0")
		
		
	end
end

function getRunSpeedModifierVars()
	if SandboxVars.CustomizableBackpacks.RemoveRunSpeedModifier == true then
	else return end
	
	
		getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("RunSpeedModifier = 1.0")
		
		
	end
	
function getSatchelVars()
    if SandboxVars.CustomizableClothing.SatchelWearable == 1 then   -- Off
    

        getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("CanBeEquipped = Back")

        getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("CanBeEquipped = FannyPackBack")

        getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("BodyLocation = Nose")
    
        getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("ClothingItemExtra = MysteriousSatchel")
    
        getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("ClothingItemExtraOption = FannyPack_WearBack")


    elseif SandboxVars.CustomizableClothing.SatchelWearable == 2 then   -- Fanny Pack Slot
    
    
        getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("CanBeEquipped = FannyPackBack")

        getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("BodyLocation = Nose")
    
        getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("ClothingItemExtra = MysteriousSatchel")
    
        getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("ClothingItemExtraOption = FannyPack_WearBack")
    
    
    
    elseif SandboxVars.CustomizableClothing.SatchelWearable == 3 then   -- Ammo Strap Slot
    
    
        getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("CanBeEquipped = AmmoStrap")

        getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("BodyLocation = Nose")
    
        getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("ClothingItemExtra = MysteriousSatchel")
    
        getScriptManager():getItem("TheyKnew.MysteriousSatchel"):DoParam("ClothingItemExtraOption = FannyPack_WearBack")
    
    
    end
end


Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars) 
Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)
Events.OnGameStart.Add(getSatchelVars)
Events.OnInitWorld.Add(getSatchelVars)