if getActivatedMods():contains("Better Belts") then
else return end

function getWeightReductionVars()
	if SandboxVars.CustomizableBags.WeightReduction == 1 then  -- WeightReduction = -25


		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("WeightReduction = 38")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("WeightReduction = 8")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("WeightReduction = 41")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("WeightReduction = 60")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("WeightReduction = 30")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("WeightReduction = 30")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("WeightReduction = 38")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("WeightReduction = 26")


	elseif SandboxVars.CustomizableBags.WeightReduction == 2 then  -- WeightReduction = Vanilla


		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("WeightReduction = 50")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("WeightReduction = 10")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("WeightReduction = 55")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("WeightReduction = 60")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("WeightReduction = 40")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("WeightReduction = 40")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("WeightReduction = 50")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("WeightReduction = 35")


	elseif SandboxVars.CustomizableBags.WeightReduction == 3 then  -- WeightReduction = Well Balanced
		
		
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("WeightReduction = 60")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("WeightReduction = 15")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("WeightReduction = 65")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("WeightReduction = 70")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("WeightReduction = 45")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("WeightReduction = 45")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("WeightReduction = 60")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("WeightReduction = 45")
		
		


	elseif SandboxVars.CustomizableBags.WeightReduction == 4 then  -- WeightReduction = Balanced
		
		
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("WeightReduction = 65")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("WeightReduction = 20")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("WeightReduction = 70")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("WeightReduction = 50")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("WeightReduction = 50")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("WeightReduction = 65")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("WeightReduction = 50")
		
		
	elseif SandboxVars.CustomizableBags.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.FirstAidKitB"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
            getScriptManager():getItem("Base.AFAK"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.AFAKB"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.ToolBoxB"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.LunchboxB"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Lunchbox2B"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.QuiverB"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.PistolCase1B"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
            
    
    elseif SandboxVars.CustomizableBags.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.FirstAidKitB"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
            getScriptManager():getItem("Base.AFAK"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.AFAKB"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.ToolBoxB"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.LunchboxB"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Lunchbox2B"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.QuiverB"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.PistolCase1B"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
		
		
	elseif SandboxVars.CustomizableBags.WeightReduction == 7 then	-- WeightReduction = 75	
		
		
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("WeightReduction = 75")
		
		
	elseif SandboxVars.CustomizableBags.WeightReduction == 8 then  -- WeightReduction = 80 
		
		
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("WeightReduction = 80")	
		
		
	elseif SandboxVars.CustomizableBags.WeightReduction == 9 then  -- WeightReduction = 85 
		
		
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("WeightReduction = 85")	
		
			
	elseif SandboxVars.CustomizableBags.WeightReduction == 10 then  -- WeightReduction = 90 
		
		
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("WeightReduction = 90")
		
		
	elseif SandboxVars.CustomizableBags.WeightReduction == 11 then  -- WeightReduction = 95 
		
		
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("WeightReduction = 95")
		
		
	elseif SandboxVars.CustomizableBags.WeightReduction == 12 then  -- WeightReduction = 99 
		
		
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("WeightReduction = 99")
		
		
	elseif SandboxVars.CustomizableBags.WeightReduction == 13 then  -- WeightReduction = Weightless 
		
		
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("WeightReduction = 100")
		
		
	end
end


function getCapacityVars() 
	if SandboxVars.CustomizableBags.Capacity == 1 then  -- Capacity = -25


		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity = 3")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity = 5")


	elseif SandboxVars.CustomizableBags.Capacity == 2 then  -- Capacity = Vanilla


		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity = 7")


	elseif SandboxVars.CustomizableBags.Capacity == 3 then  -- Capacity = Well Balanced
	
		
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Capacity = 11")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity = 11")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity = 8")
		
		


	elseif SandboxVars.CustomizableBags.Capacity == 4 then  -- Capacity = Balanced
	
		
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity = 7")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity = 5")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 5 then  -- Capacity = Random - Well Balanced
	
	
	    function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity  = "..RandomCapacity)
		
            getScriptManager():getItem("Base.AFAK"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
            
            
    elseif SandboxVars.CustomizableBags.Capacity == 6 then  -- Capacity = Random - Balanced
	
		
		function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity  = "..RandomCapacity)
		
            getScriptManager():getItem("Base.AFAK"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
		
			
	elseif SandboxVars.CustomizableBags.Capacity == 7 then  -- Capacity = +25
		
	
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity = 5")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 8 then  -- Capacity = +50
		
	
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity = 8")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 9 then  -- Capacity = +75
		
	
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Capacity = 18")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity = 18")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity = 14")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity = 9")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 10 then  -- Capacity = 2x
		
	
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity = 16")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity = 10")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 11 then  -- Capacity = 3x
		
	
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity = 24")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity = 15")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 12 then  -- Capacity = 5x
		
	
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity = 25")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 13 then  -- Capacity = 20
		
	
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity = 20")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 14 then  -- Capacity = 25
		
	
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity = 25")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 15 then  -- Capacity = 30
		
	
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity = 30")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 16 then  -- Capacity = 40
		
	
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity = 40")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 17 then  -- Capacity = 50
		
	
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity = 50")
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 18 then  -- Capacity = 75
		
	
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Capacity = 75")
		
	  
	end
end


function getWeightVars()
	if SandboxVars.CustomizableBags.Weight == 1 then  -- Weight = Well Balanced
		
		
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Weight = 1.1")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Weight = 1.1")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Weight = 1.1")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Weight = 2.1")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Weight = 1.1")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Weight = 1.1")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Weight = 1.1")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Weight = 1.1")
		
		
		

    elseif SandboxVars.CustomizableBags.Weight == 2 then  -- Weight = -25


		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Weight = 1.5")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Weight = 0.75")


	elseif SandboxVars.CustomizableBags.Weight == 3 then  -- Weight = -50


		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Weight = 1")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Weight = 0.5")
		
		
	elseif SandboxVars.CustomizableBags.Weight == 4 then  -- Weight = -75

		
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Weight = 0.25")
		
		
	elseif SandboxVars.CustomizableBags.Weight == 5 then  -- Weight = Weightless

		
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("Weight = 0")
		
		
	end
end

function getRunSpeedModifierVars() -- Useless here
	if SandboxVars.CustomizableBackpacks.RemoveRunSpeedModifier == true then
	else return end
	
	
		getScriptManager():getItem("Base.FirstAidKitB"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.AFAK"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.AFAKB"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.ToolBoxB"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.LunchboxB"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Lunchbox2B"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.QuiverB"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.PistolCase1B"):DoParam("RunSpeedModifier = 1.0")
		
		
	end

Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars) 
Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)



