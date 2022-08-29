

function getWeightReductionVars()
	if SandboxVars.CustomizableBackpacks.WeightReduction == 1 then  -- WeightReduction = -25

		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("WeightReduction = 68")
		
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("WeightReduction = 71")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("WeightReduction = 71")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("WeightReduction = 71")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("WeightReduction = 68")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("WeightReduction = 68")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("WeightReduction = 68")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("WeightReduction = 68")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function SnakeClothingWeightReduction()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("WeightReduction = 71")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("WeightReduction = 71")
            
        end
        Events.OnLoad.Add(SnakeClothingWeightReduction)
		

	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 2 then  -- WeightReduction = Vanilla

		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("WeightReduction = 90")
		
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("WeightReduction = 95")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("WeightReduction = 95")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("WeightReduction = 95")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("WeightReduction = 90")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function SnakeClothingWeightReduction()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("WeightReduction = 95")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("WeightReduction = 95")
            
        end
        Events.OnLoad.Add(SnakeClothingWeightReduction)
	

	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("WeightReduction = 88")
		
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("WeightReduction = 89")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("WeightReduction = 89")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("WeightReduction = 88")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("WeightReduction = 88")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function SnakeClothingWeightReduction()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("WeightReduction = 87")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("WeightReduction = 87")
            
        end
        Events.OnLoad.Add(SnakeClothingWeightReduction)
		

	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 4 then  -- WeightReduction = Balanced
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("WeightReduction = 95")
		
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("WeightReduction = 97")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("WeightReduction = 97")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("WeightReduction = 97")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("WeightReduction = 96")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("WeightReduction = 96")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("WeightReduction = 95")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("WeightReduction = 95")

        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function SnakeClothingWeightReduction()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("WeightReduction = 94")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("WeightReduction = 94")
            
        end
        Events.OnLoad.Add(SnakeClothingWeightReduction)
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced

        
        function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            
                getScriptManager():getItem("AliceBP.AlicePack"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
                getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("WeightReduction  = "..RandomWeightReduction)
                
                getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("WeightReduction  = "..RandomWeightReduction)
                
                getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("WeightReduction  = "..RandomWeightReduction)
                
                getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("WeightReduction  = "..RandomWeightReduction)
                
                getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("WeightReduction  = "..RandomWeightReduction)
                
                getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("WeightReduction  = "..RandomWeightReduction)
                
                getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("WeightReduction  = "..RandomWeightReduction)

            end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
        end
        Events.OnInitWorld.Add(AliceSPackWeightReduction)
        
        
        function SnakeClothingWeightReduction()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            
                getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
                getScriptManager():getItem("Base.AlicePackDito"):DoParam("WeightReduction  = "..RandomWeightReduction)

            end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
        end
        Events.OnInitWorld.Add(SnakeClothingWeightReduction)
            
            
    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)

            
                getScriptManager():getItem("AliceBP.AlicePack"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
                getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("WeightReduction  = "..RandomWeightReduction)
                
                getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("WeightReduction  = "..RandomWeightReduction)
                
                getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("WeightReduction  = "..RandomWeightReduction)
                
                getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("WeightReduction  = "..RandomWeightReduction)
                
                getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("WeightReduction  = "..RandomWeightReduction)
                
                getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("WeightReduction  = "..RandomWeightReduction)
                
                getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("WeightReduction  = "..RandomWeightReduction)

            end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
        end
        Events.OnInitWorld.Add(AliceSPackWeightReduction)
        
        
        function SnakeClothingWeightReduction()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)

            
                getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
                getScriptManager():getItem("Base.AlicePackDito"):DoParam("WeightReduction  = "..RandomWeightReduction)

            end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
        end
        Events.OnInitWorld.Add(SnakeClothingWeightReduction)
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 7 then	-- WeightReduction = 75	
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("WeightReduction = 75")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("WeightReduction = 75")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("WeightReduction = 75")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("WeightReduction = 75")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("WeightReduction = 75")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("WeightReduction = 75")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("WeightReduction = 75")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("WeightReduction = 75")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function SnakeClothingWeightReduction()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("WeightReduction = 75")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("WeightReduction = 75")
            
        end
        Events.OnLoad.Add(SnakeClothingWeightReduction)
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 8 then  -- WeightReduction = 80 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("WeightReduction = 80")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("WeightReduction = 80")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("WeightReduction = 80")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("WeightReduction = 80")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("WeightReduction = 80")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("WeightReduction = 80")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("WeightReduction = 80")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("WeightReduction = 80")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function SnakeClothingWeightReduction()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("WeightReduction = 80")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("WeightReduction = 80")
            
        end
        Events.OnLoad.Add(SnakeClothingWeightReduction)


	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 9 then  -- WeightReduction = 85 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("WeightReduction = 85")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("WeightReduction = 85")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("WeightReduction = 85")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("WeightReduction = 85")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("WeightReduction = 85")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("WeightReduction = 85")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("WeightReduction = 85")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("WeightReduction = 85")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function SnakeClothingWeightReduction()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("WeightReduction = 85")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("WeightReduction = 85")
            
        end
        Events.OnLoad.Add(SnakeClothingWeightReduction)
		
			
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 10 then  -- WeightReduction = 90 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("WeightReduction = 90")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function SnakeClothingWeightReduction()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("WeightReduction = 90")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("WeightReduction = 90")
            
        end
        Events.OnLoad.Add(SnakeClothingWeightReduction)
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 11 then  -- WeightReduction = 95 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("WeightReduction = 95")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("WeightReduction = 95")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("WeightReduction = 95")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("WeightReduction = 95")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("WeightReduction = 95")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("WeightReduction = 95")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("WeightReduction = 95")
		
		    getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("WeightReduction = 95")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function SnakeClothingWeightReduction()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("WeightReduction = 95")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("WeightReduction = 95")
            
        end
        Events.OnLoad.Add(SnakeClothingWeightReduction)
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 12 then  -- WeightReduction = 99 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("WeightReduction = 99")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("WeightReduction = 99")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("WeightReduction = 99")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("WeightReduction = 99")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("WeightReduction = 99")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("WeightReduction = 99")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("WeightReduction = 99")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("WeightReduction = 99")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function SnakeClothingWeightReduction()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("WeightReduction = 99")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("WeightReduction = 99")
            
        end
        Events.OnLoad.Add(SnakeClothingWeightReduction)
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 13 then  -- WeightReduction = Weightless 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("WeightReduction = 100")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("WeightReduction = 100")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("WeightReduction = 100")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("WeightReduction = 100")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("WeightReduction = 100")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("WeightReduction = 100")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("WeightReduction = 100")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("WeightReduction = 100")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function SnakeClothingWeightReduction()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("WeightReduction = 100")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("WeightReduction = 100")
            
        end
        Events.OnLoad.Add(SnakeClothingWeightReduction)
		
		
	end
	
	
	if SandboxVars.CustomizableBags.WeightReduction == 1 then  -- WeightReduction = -25

        
        function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
		    getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("WeightReduction = 38")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function AmmoMakerWeightReduction()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("WeightReduction = 38")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("WeightReduction = 38")
        end
        Events.OnLoad.Add(AmmoMakerWeightReduction)
        
        function LeGourmetWeightReduction()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("WeightReduction = 38")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("WeightReduction = 45")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("WeightReduction = 53")
        end
        Events.OnLoad.Add(LeGourmetWeightReduction)
        
        
        function WPAWeightReduction()
            if getActivatedMods():contains("WPA") then
            else return end

            
		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("WeightReduction = 38")
        end
        Events.OnLoad.Add(WPAWeightReduction)
		

	elseif SandboxVars.CustomizableBags.WeightReduction == 2 then  -- WeightReduction = Vanilla

		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("WeightReduction = 50")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function AmmoMakerWeightReduction()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("WeightReduction = 50")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("WeightReduction = 50")
        end
        Events.OnLoad.Add(AmmoMakerWeightReduction)
        
        
        function LeGourmetWeightReduction()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("WeightReduction = 50")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("WeightReduction = 60")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("WeightReduction = 70")
        end
        Events.OnLoad.Add(LeGourmetWeightReduction)
        
        
        function WPAWeightReduction()
            if getActivatedMods():contains("WPA") then
            else return end

            
		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("WeightReduction = 50")
        end
        Events.OnLoad.Add(WPAWeightReduction)
	

	elseif SandboxVars.CustomizableBags.WeightReduction == 3 then  -- WeightReduction = Well Balanced
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("WeightReduction = 65")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function AmmoMakerWeightReduction()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("WeightReduction = 65")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("WeightReduction = 65")
        end
        Events.OnLoad.Add(AmmoMakerWeightReduction)
        
        
        function LeGourmetWeightReduction()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("WeightReduction = 65")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("WeightReduction = 75")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("WeightReduction = 85")
        end
        Events.OnLoad.Add(LeGourmetWeightReduction)
        
        
        function WPAWeightReduction()
            if getActivatedMods():contains("WPA") then
            else return end

            
		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("WeightReduction = 65")
        end
        Events.OnLoad.Add(WPAWeightReduction)


	elseif SandboxVars.CustomizableBags.WeightReduction == 4 then  -- WeightReduction = Balanced
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("WeightReduction = 75")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function AmmoMakerWeightReduction()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("WeightReduction = 75")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("WeightReduction = 75")
        end
        Events.OnLoad.Add(AmmoMakerWeightReduction)
        
        
        function LeGourmetWeightReduction()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("WeightReduction = 75")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("WeightReduction = 85")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("WeightReduction = 90")
        end
        Events.OnLoad.Add(LeGourmetWeightReduction)
        
        
        function WPAWeightReduction()
            if getActivatedMods():contains("WPA") then
            else return end

            
		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("WeightReduction = 75")
        end
        Events.OnLoad.Add(WPAWeightReduction)
		
		
	elseif SandboxVars.CustomizableBags.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced

        
        function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            
            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
        end
        Events.OnInitWorld.Add(AliceSPackWeightReduction)
        
        
        function AmmoMakerWeightReduction()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            
                getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("WeightReduction  = "..RandomWeightReduction)
                
                getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("WeightReduction  = "..RandomWeightReduction)
            end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
        end
        Events.OnInitWorld.Add(AmmoMakerWeightReduction)
        
        
        function LeGourmetWeightReduction()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            
                getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
                getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("WeightReduction  = "..RandomWeightReduction)
                
                getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
        end
        Events.OnInitWorld.Add(LeGourmetWeightReduction)
        
        
        function WPAWeightReduction()
            if getActivatedMods():contains("WPA") then
            else return end

            function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            
            getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("WeightReduction  = "..RandomWeightReduction)

            end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
        end
        Events.OnInitWorld.Add(WPAWeightReduction)
        
        
    elseif SandboxVars.CustomizableBags.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            
            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
        end
        Events.OnInitWorld.Add(AliceSPackWeightReduction)
        
        
        function AmmoMakerWeightReduction()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            
                getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("WeightReduction  = "..RandomWeightReduction)
                
                getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("WeightReduction  = "..RandomWeightReduction)

            end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
        end
        Events.OnInitWorld.Add(AmmoMakerWeightReduction)
        
        
        function LeGourmetWeightReduction()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            
                getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
                getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("WeightReduction  = "..RandomWeightReduction)
                
                getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
        end
        Events.OnInitWorld.Add(LeGourmetWeightReduction)
        
        
        function WPAWeightReduction()
            if getActivatedMods():contains("WPA") then
            else return end

            function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            
            getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("WeightReduction  = "..RandomWeightReduction)

            end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
        end
        Events.OnInitWorld.Add(WPAWeightReduction)
		
		
	elseif SandboxVars.CustomizableBags.WeightReduction == 7 then	-- WeightReduction = 75	
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("WeightReduction = 75")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function AmmoMakerWeightReduction()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("WeightReduction = 75")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("WeightReduction = 75")
        end
        Events.OnLoad.Add(AmmoMakerWeightReduction)
        
        
        function LeGourmetWeightReduction()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("WeightReduction = 75")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("WeightReduction = 75")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("WeightReduction = 75")
        end
        Events.OnLoad.Add(LeGourmetWeightReduction)
        
        
        function WPAWeightReduction()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("WeightReduction = 75")
        end
        Events.OnLoad.Add(WPAWeightReduction)
		
		
	elseif SandboxVars.CustomizableBags.WeightReduction == 8 then  -- WeightReduction = 80 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("WeightReduction = 80")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function AmmoMakerWeightReduction()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("WeightReduction = 80")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("WeightReduction = 80")
        end
        Events.OnLoad.Add(AmmoMakerWeightReduction)
        
        
        function LeGourmetWeightReduction()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("WeightReduction = 80")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("WeightReduction = 80")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("WeightReduction = 80")
        end
        Events.OnLoad.Add(LeGourmetWeightReduction)
        
        
        function WPAWeightReduction()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("WeightReduction = 80")
        end
        Events.OnLoad.Add(WPAWeightReduction)


	elseif SandboxVars.CustomizableBags.WeightReduction == 9 then  -- WeightReduction = 85 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("WeightReduction = 85")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function AmmoMakerWeightReduction()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("WeightReduction = 85")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("WeightReduction = 85")
        end
        Events.OnLoad.Add(AmmoMakerWeightReduction)
        
        
        function LeGourmetWeightReduction()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("WeightReduction = 85")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("WeightReduction = 85")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("WeightReduction = 85")
        end
        Events.OnLoad.Add(LeGourmetWeightReduction)
        
        
        function WPAWeightReduction()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("WeightReduction = 85")
        end
        Events.OnLoad.Add(WPAWeightReduction)
		
			
	elseif SandboxVars.CustomizableBags.WeightReduction == 10 then  -- WeightReduction = 90 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("WeightReduction = 90")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function AmmoMakerWeightReduction()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("WeightReduction = 90")
        end
        Events.OnLoad.Add(AmmoMakerWeightReduction)
        
        
        function LeGourmetWeightReduction()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("WeightReduction = 90")
        end
        Events.OnLoad.Add(LeGourmetWeightReduction)
        
        
        function WPAWeightReduction()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("WeightReduction = 90")
        end
        Events.OnLoad.Add(WPAWeightReduction)
		
		
	elseif SandboxVars.CustomizableBags.WeightReduction == 11 then  -- WeightReduction = 95 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("WeightReduction = 95")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function AmmoMakerWeightReduction()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("WeightReduction = 95")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("WeightReduction = 95")
        end
        Events.OnLoad.Add(AmmoMakerWeightReduction)
        
        
        function LeGourmetWeightReduction()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("WeightReduction = 95")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("WeightReduction = 95")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("WeightReduction = 95")
        end
        Events.OnLoad.Add(LeGourmetWeightReduction)
        
        
        function WPAWeightReduction()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("WeightReduction = 95")
        end
        Events.OnLoad.Add(WPAWeightReduction)
		
		
	elseif SandboxVars.CustomizableBags.WeightReduction == 12 then  -- WeightReduction = 99 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("WeightReduction = 99")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function AmmoMakerWeightReduction()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("WeightReduction = 99")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("WeightReduction = 99")
        end
        Events.OnLoad.Add(AmmoMakerWeightReduction)
        
        
        function LeGourmetWeightReduction()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("WeightReduction = 99")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("WeightReduction = 99")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("WeightReduction = 99")
        end
        Events.OnLoad.Add(LeGourmetWeightReduction)
        
        
        function WPAWeightReduction()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("WeightReduction = 99")
        end
        Events.OnLoad.Add(WPAWeightReduction)
		
		
	elseif SandboxVars.CustomizableBags.WeightReduction == 13 then  -- WeightReduction = Weightless 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("WeightReduction = 100")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
        
        
        function AmmoMakerWeightReduction()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("WeightReduction = 100")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("WeightReduction = 100")
        end
        Events.OnLoad.Add(AmmoMakerWeightReduction)
        
        
        function LeGourmetWeightReduction()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("WeightReduction = 100")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("WeightReduction = 100")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("WeightReduction = 100")
        end
        Events.OnLoad.Add(LeGourmetWeightReduction)
        
        
        function WPAWeightReduction()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("WeightReduction = 100")
        end
        Events.OnLoad.Add(WPAWeightReduction)
		
		
	end
	
	
	if SandboxVars.CustomizableFannyPacks.WeightReduction == 1 then  -- WeightReduction = -25

        
        function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("WeightReduction = 60")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("WeightReduction = 60")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
		

	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 2 then  -- WeightReduction = Vanilla

		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("WeightReduction = 80")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("WeightReduction = 80")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
	

	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("WeightReduction = 87")
		
		    getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("WeightReduction = 87")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)


	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 4 then  -- WeightReduction = Balanced
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("WeightReduction = 89")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("WeightReduction = 89")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced

        
        function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            
                getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
                getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
        end
        Events.OnInitWorld.Add(AliceSPackWeightReduction)
        
            
    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)

            
                getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
                getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
        end
        Events.OnInitWorld.Add(AliceSPackWeightReduction)
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 7 then	-- WeightReduction = 75	
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("WeightReduction = 75")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("WeightReduction = 75")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 8 then  -- WeightReduction = 80 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("WeightReduction = 80")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("WeightReduction = 80")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)


	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 9 then  -- WeightReduction = 85 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("WeightReduction = 85")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("WeightReduction = 85")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
		
			
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 10 then  -- WeightReduction = 90 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("WeightReduction = 90")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("WeightReduction = 90")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 11 then  -- WeightReduction = 95 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("WeightReduction = 95")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("WeightReduction = 95")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 12 then  -- WeightReduction = 99 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("WeightReduction = 99")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("WeightReduction = 99")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 13 then  -- WeightReduction = Weightless 
		
		
		function AliceSPackWeightReduction()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("WeightReduction = 100")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("WeightReduction = 100")
        end
        Events.OnLoad.Add(AliceSPackWeightReduction)
		
		
	end
end


function getCapacityVars() 
	if SandboxVars.CustomizableBackpacks.Capacity == 1 then  -- Capacity = -25

        
        function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity = 23")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity = 23")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity = 26")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity = 26")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity = 26")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity = 26")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity = 23")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity = 23")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity = 26")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity = 26")
            
        end
        Events.OnLoad.Add(SnakeClothingCapacity)

	
    elseif SandboxVars.CustomizableBackpacks.Capacity == 2 then  -- Capacity = Vanilla

        
        function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity = 34")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity = 34")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity = 34")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity = 34")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity = 30")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity = 35")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity = 35")
            
        end
        Events.OnLoad.Add(SnakeClothingCapacity)


	elseif SandboxVars.CustomizableBackpacks.Capacity == 3 then  -- Capacity = Well Balanced
	
		
		function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity = 32")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity = 32")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity = 33")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity = 33")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity = 30")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity = 29")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity = 29")
            
        end
        Events.OnLoad.Add(SnakeClothingCapacity)


	elseif SandboxVars.CustomizableBackpacks.Capacity == 4 then  -- Capacity = Balanced
	
		
		function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity = 35")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity = 35")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity = 37")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity = 37")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity = 38")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity = 38")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity = 35")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity = 35")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity = 35")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity = 35")
            
        end
        Events.OnLoad.Add(SnakeClothingCapacity)
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 5 then  -- Capacity = Random - Well Balanced
	
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)

            
                getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity  = "..RandomCapacity)
            
                getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity  = "..RandomCapacity)
                
                getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity  = "..RandomCapacity)
                
                getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity  = "..RandomCapacity)
                
                getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity  = "..RandomCapacity)
                
                getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity  = "..RandomCapacity)
                
                getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity  = "..RandomCapacity)
                
                getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity  = "..RandomCapacity)


            end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
        end
        Events.OnInitWorld.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)

            
                getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity  = "..RandomCapacity)
		
                getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity  = "..RandomCapacity)  
            end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
        end
        Events.OnInitWorld.Add(SnakeClothingCapacity)
            
            
    elseif SandboxVars.CustomizableBackpacks.Capacity == 6 then  -- Capacity = Random - Balanced
	
		
		function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)

            
                getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity  = "..RandomCapacity)
            
                getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity  = "..RandomCapacity)
                
                getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity  = "..RandomCapacity)
                
                getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity  = "..RandomCapacity)
                
                getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity  = "..RandomCapacity)
                
                getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity  = "..RandomCapacity)
                
                getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity  = "..RandomCapacity)
                
                getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity  = "..RandomCapacity)


            end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
        end
        Events.OnInitWorld.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)

            
                getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity  = "..RandomCapacity)
		
                getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity  = "..RandomCapacity)  
            end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
        end
        Events.OnInitWorld.Add(SnakeClothingCapacity)
            
		
			
	elseif SandboxVars.CustomizableBackpacks.Capacity == 7 then  -- Capacity = +25
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity = 38")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity = 43")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity = 43")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity = 43")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity = 43")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity = 43")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity = 38")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity = 38")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity = 44")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity = 44")
            
        end
        Events.OnLoad.Add(SnakeClothingCapacity)
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 8 then  -- Capacity = +50
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity = 45")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity = 45")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity = 51")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity = 51")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity = 51")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity = 51")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity = 45")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity = 45")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity = 53")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity = 53")
            
        end
        Events.OnLoad.Add(SnakeClothingCapacity)
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 9 then  -- Capacity = +75
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity = 53")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity = 53")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity = 60")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity = 60")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity = 60")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity = 60")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity = 53")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity = 53")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity = 61")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity = 61")
            
        end
        Events.OnLoad.Add(SnakeClothingCapacity)
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 10 then  -- Capacity = 2x
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity = 60")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity = 60")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity = 68")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity = 68")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity = 68")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity = 68")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity = 60")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity = 60")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity = 70")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity = 70")
            
        end
        Events.OnLoad.Add(SnakeClothingCapacity)


	elseif SandboxVars.CustomizableBackpacks.Capacity == 11 then  -- Capacity = 3x
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity = 90")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity = 90")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity = 102")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity = 102")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity = 102")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity = 102")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity = 90")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity = 90")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity = 105")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity = 105")
            
        end
        Events.OnLoad.Add(SnakeClothingCapacity)


	elseif SandboxVars.CustomizableBackpacks.Capacity == 12 then  -- Capacity = 5x
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity = 150")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity = 150")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity = 170")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity = 170")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity = 170")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity = 170")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity = 150")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity = 150")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity = 175")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity = 175")
            
        end
        Events.OnLoad.Add(SnakeClothingCapacity)
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 13 then  -- Capacity = 20
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity = 20")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity = 20")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity = 20")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity = 20")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity = 20")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity = 20")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity = 20")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity = 20")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity = 20")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity = 20")
            
        end
        Events.OnLoad.Add(SnakeClothingCapacity)
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 14 then  -- Capacity = 25
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity = 25")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity = 25")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity = 25")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity = 25")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity = 25")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity = 25")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity = 25")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity = 25")
            
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity = 25")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity = 25")
            
        end
        Events.OnLoad.Add(SnakeClothingCapacity)
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 15 then  -- Capacity = 30
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity = 30")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity = 30")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity = 30")
            
        end
        Events.OnLoad.Add(SnakeClothingCapacity)
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 16 then  -- Capacity = 40
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity = 40")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity = 40")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity = 40")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity = 40")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity = 40")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity = 40")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity = 40")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity = 40")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity = 40")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity = 40")
            
        end
        Events.OnLoad.Add(SnakeClothingCapacity)
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 17 then  -- Capacity = 50
		
		
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity = 50")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity = 50")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity = 50")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity = 50")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity = 50")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity = 50")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity = 50")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity = 50")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity = 50")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity = 50")
            
        end
        Events.OnLoad.Add(SnakeClothingCapacity)
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 18 then  -- Capacity = 75
		
		
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Capacity = 75")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Capacity = 75")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Capacity = 75")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Capacity = 75")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Capacity = 75")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Capacity = 75")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Capacity = 75")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Capacity = 75")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function SnakeClothingCapacity()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Capacity = 75")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Capacity = 75")
            
        end
        Events.OnLoad.Add(SnakeClothingCapacity)
		
	  
	end
	
	
	if SandboxVars.CustomizableBags.Capacity == 1 then  -- Capacity = -25

        
        function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity = 19")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity = 8")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity = 8")
        end
        Events.OnLoad.Add(AmmoMakerCapacity)
        
        
        function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity = 6")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity = 6")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity = 6")
        end
        Events.OnLoad.Add(LeGourmetCapacity)

	
    elseif SandboxVars.CustomizableBags.Capacity == 2 then  -- Capacity = Vanilla

        
        function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity = 25")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity = 10")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity = 10")
        end
        Events.OnLoad.Add(AmmoMakerCapacity)
        
        
        function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity = 8")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity = 8")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity = 8")
        end
        Events.OnLoad.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity = 9")
        end
        Events.OnLoad.Add(WPACapacity)


	elseif SandboxVars.CustomizableBags.Capacity == 3 then  -- Capacity = Well Balanced
	
		
		function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity = 26")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity = 12")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity = 12")
        end
        Events.OnLoad.Add(AmmoMakerCapacity)
        
        
        function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity = 9")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity = 9")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity = 9")
        end
        Events.OnLoad.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity = 12")
        end
        Events.OnLoad.Add(WPACapacity)


	elseif SandboxVars.CustomizableBags.Capacity == 4 then  -- Capacity = Balanced
	
		
		function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity = 28")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity = 14")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity = 14")
        end
        Events.OnLoad.Add(AmmoMakerCapacity)
        
        
        function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity = 11")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity = 11")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity = 11")
        end
        Events.OnLoad.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity = 14")
        end
        Events.OnLoad.Add(WPACapacity)
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 5 then  -- Capacity = Random - Well Balanced
	
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)

            
                getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity  = "..RandomCapacity)
        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
        end
        Events.OnInitWorld.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)

            
                getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity  = "..RandomCapacity)
                
                getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity  = "..RandomCapacity)
        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
        end
        Events.OnInitWorld.Add(AmmoMakerCapacity)
        
        
        function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)

            
                getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity  = "..RandomCapacity)
                
                getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity  = "..RandomCapacity)
                
                getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity  = "..RandomCapacity)
            end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
        end
        Events.OnInitWorld.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

            function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)

            
                getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity  = "..RandomCapacity)
            end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
        end
        Events.OnInitWorld.Add(WPACapacity)
	    
            
            
    elseif SandboxVars.CustomizableBags.Capacity == 6 then  -- Capacity = Random - Balanced
	
		
		function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)

            
                getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity  = "..RandomCapacity)
            

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
        end
        Events.OnInitWorld.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)

            
                getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity  = "..RandomCapacity)
                
                getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity  = "..RandomCapacity)
        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
        end
        Events.OnInitWorld.Add(AmmoMakerCapacity)
        
        
        function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)

            
            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity  = "..RandomCapacity)
        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
        end
        Events.OnInitWorld.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

            function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)

            
                getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity  = "..RandomCapacity)
            end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
        end
        Events.OnInitWorld.Add(WPACapacity)
		
			
	elseif SandboxVars.CustomizableBags.Capacity == 7 then  -- Capacity = +25
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity = 31")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity = 12.5")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity = 12.5")
        end
        Events.OnLoad.Add(AmmoMakerCapacity)
        
        
        function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity = 10")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity = 10")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity = 10")
        end
        Events.OnLoad.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity = 15")
        end
        Events.OnLoad.Add(WPACapacity)
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 8 then  -- Capacity = +50
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity = 38")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity = 15")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity = 15")
        end
        Events.OnLoad.Add(AmmoMakerCapacity)
		
		
		function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity = 12")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity = 12")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity = 12")
        end
        Events.OnLoad.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity = 18")
        end
        Events.OnLoad.Add(WPACapacity)
        
		
	elseif SandboxVars.CustomizableBags.Capacity == 9 then  -- Capacity = +75
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity = 44")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity = 17.5")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity = 17.5")
        end
        Events.OnLoad.Add(AmmoMakerCapacity)
        
        
        function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity = 14")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity = 14")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity = 14")
        end
        Events.OnLoad.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity = 21")
        end
        Events.OnLoad.Add(WPACapacity)
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 10 then  -- Capacity = 2x
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity = 50")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity = 20")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity = 20")
        end
        Events.OnLoad.Add(AmmoMakerCapacity)
        
        
        function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity = 16")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity = 16")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity = 16")
        end
        Events.OnLoad.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity = 24")
        end
        Events.OnLoad.Add(WPACapacity)


	elseif SandboxVars.CustomizableBags.Capacity == 11 then  -- Capacity = 3x
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity = 75")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity = 30")
        end
        Events.OnLoad.Add(AmmoMakerCapacity)
        
        
        function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity = 24")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity = 24")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity = 24")
        end
        Events.OnLoad.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity = 36")
        end
        Events.OnLoad.Add(WPACapacity)


	elseif SandboxVars.CustomizableBags.Capacity == 12 then  -- Capacity = 5x
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity = 125")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity = 50")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity = 50")
        end
        Events.OnLoad.Add(AmmoMakerCapacity)
        
        
        function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity = 40")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity = 40")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity = 40")
        end
        Events.OnLoad.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity = 48")
        end
        Events.OnLoad.Add(WPACapacity)
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 13 then  -- Capacity = 20
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity = 20")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity = 20")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity = 20")
        end
        Events.OnLoad.Add(AmmoMakerCapacity)
        
        
        function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity = 20")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity = 20")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity = 20")
        end
        Events.OnLoad.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity = 20")
        end
        Events.OnLoad.Add(WPACapacity)
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 14 then  -- Capacity = 25
		
		
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity = 25")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity = 25")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity = 25")
        end
        Events.OnLoad.Add(AmmoMakerCapacity)
        
        
        function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity = 25")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity = 25")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity = 25")
        end
        Events.OnLoad.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity = 25")
        end
        Events.OnLoad.Add(WPACapacity)
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 15 then  -- Capacity = 30
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity = 30")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity = 30")
        end
        Events.OnLoad.Add(AmmoMakerCapacity)
        
        
        function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity = 30")
        end
        Events.OnLoad.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity = 30")
        end
        Events.OnLoad.Add(WPACapacity)
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 16 then  -- Capacity = 40
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity = 40")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity = 40")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity = 40")
        end
        Events.OnLoad.Add(AmmoMakerCapacity)
        
        
        function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity = 40")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity = 40")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity = 40")
        end
        Events.OnLoad.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity = 40")
        end
        Events.OnLoad.Add(WPACapacity)
		
		
	elseif SandboxVars.CustomizableBags.Capacity == 17 then  -- Capacity = 50
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity = 50")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity = 50")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity = 50")
        end
        Events.OnLoad.Add(AmmoMakerCapacity)
		
		
		function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity = 50")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity = 50")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity = 50")
        end
        Events.OnLoad.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity = 50")
        end
        Events.OnLoad.Add(WPACapacity)
        
		
	elseif SandboxVars.CustomizableBags.Capacity == 18 then  -- Capacity = 75
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Capacity = 75")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
        
        
        function AmmoMakerCapacity()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Capacity = 75")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Capacity = 75")
        end
        Events.OnLoad.Add(AmmoMakerCapacity)
        
        
        function LeGourmetCapacity()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Capacity = 75")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Capacity = 75")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Capacity = 75")
        end
        Events.OnLoad.Add(LeGourmetCapacity)
        
        
        function WPACapacity()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Capacity = 75")
        end
        Events.OnLoad.Add(WPACapacity)
		
	  
	end
	
	
	if SandboxVars.CustomizableFannyPacks.Capacity == 1 then  -- Capacity = -25

        
        function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity = 3")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity = 3")
        end
        Events.OnLoad.Add(AliceSPackCapacity)

	
    elseif SandboxVars.CustomizableFannyPacks.Capacity == 2 then  -- Capacity = Vanilla

        
        function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity = 4")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity = 4")
        end
        Events.OnLoad.Add(AliceSPackCapacity)


	elseif SandboxVars.CustomizableFannyPacks.Capacity == 3 then  -- Capacity = Well Balanced
	
		function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity = 5")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity = 5")
        end
        Events.OnLoad.Add(AliceSPackCapacity)


	elseif SandboxVars.CustomizableFannyPacks.Capacity == 4 then  -- Capacity = Balanced
	
		
		function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity = 7")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity = 7")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 5 then  -- Capacity = Random - Well Balanced
	
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 9)

            
                getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity  = "..RandomCapacity)
            
                getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity  = "..RandomCapacity)
            
    
        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
        end
        Events.OnInitWorld.Add(AliceSPackCapacity)
	    
            
            
    elseif SandboxVars.CustomizableFannyPacks.Capacity == 6 then  -- Capacity = Random - Balanced
	
		
		function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 13)

            
                getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity  = "..RandomCapacity)
            
                getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity  = "..RandomCapacity)
            
    
        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
        end
        Events.OnInitWorld.Add(AliceSPackCapacity)
		
			
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 7 then  -- Capacity = +25
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity = 5")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity = 5")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 8 then  -- Capacity = +50
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity = 6")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity = 6")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 9 then  -- Capacity = +75
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity = 7")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity = 7")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 10 then  -- Capacity = 2x
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity = 8")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity = 8")
        end
        Events.OnLoad.Add(AliceSPackCapacity)


	elseif SandboxVars.CustomizableFannyPacks.Capacity == 11 then  -- Capacity = 3x
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity = 12")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity = 12")
        end
        Events.OnLoad.Add(AliceSPackCapacity)


	elseif SandboxVars.CustomizableFannyPacks.Capacity == 12 then  -- Capacity = 5x
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity = 20")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity = 20")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 13 then  -- Capacity = 20
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity = 20")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity = 20")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 14 then  -- Capacity = 25
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity = 25")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity = 25")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 15 then  -- Capacity = 30
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity = 30")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity = 30")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 16 then  -- Capacity = 40
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity = 40")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity = 40")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 17 then  -- Capacity = 50
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity = 50")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity = 50")
        end
        Events.OnLoad.Add(AliceSPackCapacity)
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 18 then  -- Capacity = 75
		
	    
	    function AliceSPackCapacity()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Capacity = 75")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Capacity = 75")   
        end
        Events.OnLoad.Add(AliceSPackCapacity)
		
	  
	end
end


function getWeightVars()
	if SandboxVars.CustomizableBackpacks.Weight == 1 then  -- Weight = Normal
		
		
		function AliceSPackWeight()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Weight = 1")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Weight = 1.4")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Weight = 1.1")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Weight = 1.1")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Weight = 1")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Weight = 1")
        end
        Events.OnLoad.Add(AliceSPackWeight)
        
        
        function SnakeClothingWeight()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Weight = 1")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Weight = 1")
            
        end
        Events.OnLoad.Add(SnakeClothingWeight)
		

    elseif SandboxVars.CustomizableBackpacks.Weight == 2 then  -- Weight = -25

        
        function AliceSPackWeight()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Weight = 1.05")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Weight = 1.13")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Weight = 1.13")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Weight = 0.825")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Weight = 0.825")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Weight = 0.75")
        end
        Events.OnLoad.Add(AliceSPackWeight)
        
        
        function SnakeClothingWeight()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Weight = 0.75")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Weight = 0.75")
            
        end
        Events.OnLoad.Add(SnakeClothingWeight)


	elseif SandboxVars.CustomizableBackpacks.Weight == 3 then  -- Weight = -50

        
        function AliceSPackWeight()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Weight = 0.7")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Weight =0.75")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Weight = 0.55")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Weight = 0.55")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Weight = 0.5")
        end
        Events.OnLoad.Add(AliceSPackWeight)
        
        
        function SnakeClothingWeight()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Weight = 0.5")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Weight = 0.5")
            
        end
        Events.OnLoad.Add(SnakeClothingWeight)
		
		
	elseif SandboxVars.CustomizableBackpacks.Weight == 4 then  -- Weight = -75

		
		function AliceSPackWeight()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Weight = 0.35")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Weight = 0.375")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Weight = 0.375")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Weight = 0.275")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Weight = 0.275")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Weight = 0.25")
        end
        Events.OnLoad.Add(AliceSPackWeight)
        
        
        function SnakeClothingWeight()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Weight = 0.25")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Weight = 0.25")
            
        end
        Events.OnLoad.Add(SnakeClothingWeight)
		
		
	elseif SandboxVars.CustomizableBackpacks.Weight == 5 then  -- Weight = Weightless

		
		function AliceSPackWeight()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(AliceSPackWeight)
        
        
        function SnakeClothingWeight()
            if getActivatedMods():contains("SnakeClothingMod") then
            else return end

            getScriptManager():getItem("Base.Bag_BigSpiffoBackpack"):DoParam("Weight = 0.0")
		
            getScriptManager():getItem("Base.AlicePackDito"):DoParam("Weight = 0.0")
            
        end
        Events.OnLoad.Add(SnakeClothingWeight)
		
		
	end
	
	
	if SandboxVars.CustomizableBags.Weight == 1 then  -- Weight = Normal
		
		
		function AliceSPackWeight()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Weight = 5")
        end
        Events.OnLoad.Add(AliceSPackWeight)
        
        
        function AmmoMakerWeight()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Weight = 1")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Weight = 1")
        end
        Events.OnLoad.Add(AmmoMakerWeight)
        
        
        function LeGourmetWeight()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Weight = 1")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Weight = 2")
        end
        Events.OnLoad.Add(LeGourmetWeight)
        
        
        function WPAWeight()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Weight = 1")
        end
        Events.OnLoad.Add(WPAWeight)
		

    elseif SandboxVars.CustomizableBags.Weight == 2 then  -- Weight = -25

        
        function AliceSPackWeight()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Weight = 3.75")
        end
        Events.OnLoad.Add(AliceSPackWeight)
        
        
        function AmmoMakerWeight()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Weight = 0.75")
        end
        Events.OnLoad.Add(AmmoMakerWeight)
        
        
        function LeGourmetWeight()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Weight = 1.13")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Weight = 1.5")
        end
        Events.OnLoad.Add(LeGourmetWeight)
        
        
        function WPAWeight()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Weight = 0.75")
        end
        Events.OnLoad.Add(WPAWeight)


	elseif SandboxVars.CustomizableBags.Weight == 3 then  -- Weight = -50

        
        function AliceSPackWeight()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Weight = 2.5")
        end
        Events.OnLoad.Add(AliceSPackWeight)
        
        
        function AmmoMakerWeight()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Weight = 0.5")
        end
        Events.OnLoad.Add(AmmoMakerWeight)
        
        
        function LeGourmetWeight()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Weight = 1")
        end
        Events.OnLoad.Add(LeGourmetWeight)
        
        
        function WPAWeight()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Weight = 0.5")
        end
        Events.OnLoad.Add(WPAWeight)
		
		
	elseif SandboxVars.CustomizableBags.Weight == 4 then  -- Weight = -75

		
		function AliceSPackWeight()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Weight = 1.25")
        end
        Events.OnLoad.Add(AliceSPackWeight)
        
        
        function AmmoMakerWeight()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Weight = 0.25")
        end
        Events.OnLoad.Add(AmmoMakerWeight)
        
        
        function LeGourmetWeight()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Weight = 0.375")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Weight = 0.5")
        end
        Events.OnLoad.Add(LeGourmetWeight)
        
        
        function WPAWeight()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Weight = 0.25")
        end
        Events.OnLoad.Add(WPAWeight)
		
		
	elseif SandboxVars.CustomizableBags.Weight == 5 then  -- Weight = Weightless


		function AliceSPackWeight()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(AliceSPackWeight)
        
        
        function AmmoMakerWeight()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(AmmoMakerWeight)
        
        
        function LeGourmetWeight()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(LeGourmetWeight)
        
        
        function WPAWeight()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(WPAWeight)
		
		
	end
	
	
	if SandboxVars.CustomizableFannyPacks.Weight == 1 then  -- Weight = Normal
		
		
		function AliceSPackWeight()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Weight = 0.1")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Weight = 0.1")
        end
        Events.OnLoad.Add(AliceSPackWeight)
		

    elseif SandboxVars.CustomizableFannyPacks.Weight == 2 then  -- Weight = -25

        
        function AliceSPackWeight()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Weight = 0.075")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Weight = 0.075")
        end
        Events.OnLoad.Add(AliceSPackWeight)


	elseif SandboxVars.CustomizableFannyPacks.Weight == 3 then  -- Weight = -50

        
        function AliceSPackWeight()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Weight = 0.05")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Weight = 0.05")
        end
        Events.OnLoad.Add(AliceSPackWeight)
		
		
	elseif SandboxVars.CustomizableFannyPacks.Weight == 4 then  -- Weight = -75

		
		function AliceSPackWeight()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Weight = 0.025")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Weight = 0.025")
        end
        Events.OnLoad.Add(AliceSPackWeight)
		
		
	elseif SandboxVars.CustomizableFannyPacks.Weight == 5 then  -- Weight = Weightless

		
		function AliceSPackWeight()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(AliceSPackWeight)
		
		
	end
end

function getRunSpeedModifierVars()
	if SandboxVars.CustomizableBackpacks.RemoveRunSpeedModifier == true then
	else return end
	
	    
	    function AliceSPackRun()
            if getActivatedMods():contains("AliceSPack") then
            else return end

            
            getScriptManager():getItem("AliceBP.AlicePack"):DoParam("RunSpeedModifier = 1.0")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack1"):DoParam("RunSpeedModifier = 1.0")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2"):DoParam("RunSpeedModifier = 1.0")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack2b"):DoParam("RunSpeedModifier = 1.0")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3"):DoParam("RunSpeedModifier = 1.0")
            
            getScriptManager():getItem("AliceBP.UpgradedAlicePack3b"):DoParam("RunSpeedModifier = 1.0")
            
            getScriptManager():getItem("AliceBP.AlicePackUrban"):DoParam("RunSpeedModifier = 1.0")
            
            getScriptManager():getItem("AliceBP.AlicePackDesert"):DoParam("RunSpeedModifier = 1.0")
            
            getScriptManager():getItem("AliceBP.BoxMRE3"):DoParam("RunSpeedModifier = 1.0")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch1"):DoParam("RunSpeedModifier = 1.0")
            
            getScriptManager():getItem("AliceBP.MilitiaPouch2"):DoParam("RunSpeedModifier = 1.0")
        end
        Events.OnLoad.Add(AliceSPackRun)
        
        
        function AmmoMakerRun()
            if getActivatedMods():contains("AmmoMaker") then
            else return end

            getScriptManager():getItem("AmmoMaker.ToolBoxKit"):DoParam("RunSpeedModifier = 1.0")
            
            getScriptManager():getItem("AmmoMaker.AmmoBriefcase"):DoParam("RunSpeedModifier = 1.0")
        end
        Events.OnLoad.Add(AmmoMakerRun)
        
        
        function LeGourmetRun()
            if getActivatedMods():contains("LeGourmetRevolution") then
            else return end

            getScriptManager():getItem("AdvancedFishing.FishingBox"):DoParam("RunSpeedModifier = 1.0")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox2"):DoParam("RunSpeedModifier = 1.0")
            
            getScriptManager():getItem("AdvancedFishing.FishingBox3"):DoParam("RunSpeedModifier = 1.0")
        end
        Events.OnLoad.Add(LeGourmetRun)
        
        
        function WPARun()
            if getActivatedMods():contains("WPA") then
            else return end

		    getScriptManager():getItem("WPA.BlackBriefcase"):DoParam("RunSpeedModifier = 1.0")
        end
        Events.OnLoad.Add(WPARun)
		
		
	end


Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars) 
Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)
Events.OnGameStart.Add(getWeightReductionVars) --  Needed for Randomized Options
Events.OnGameStart.Add(getCapacityVars) --  Needed for Randomized Options