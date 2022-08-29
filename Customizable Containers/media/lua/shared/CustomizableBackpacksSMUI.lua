if getActivatedMods():contains("SMUI") then
else return end

function getWeightReductionVars()
	if SandboxVars.CustomizableBackpacks.WeightReduction == 1 then  -- WeightReduction = -25


		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("WeightReduction = 38")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("WeightReduction = 56")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("WeightReduction = 23")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("WeightReduction = 53")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("WeightReduction = 53")
	

	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 2 then  -- WeightReduction = Vanilla
	

		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("WeightReduction = 50")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("WeightReduction = 30")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("WeightReduction = 70")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("WeightReduction = 70")


	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced
		
		
		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("WeightReduction = 65")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("WeightReduction = 82")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("WeightReduction = 85")


	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 4 then  -- WeightReduction = Balanced
		
		
		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("WeightReduction = 86")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("WeightReduction = 90")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("WeightReduction  = "..RandomWeightReduction)
		    
		    getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
            
            
    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("WeightReduction  = "..RandomWeightReduction)
		    
		    getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 7 then	-- WeightReduction = 75
		
		
		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("WeightReduction = 75")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 8 then  -- WeightReduction = 80
		
		
		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("WeightReduction = 80")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 9 then  -- WeightReduction = 85
		
		
		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("WeightReduction = 85")
		
			
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 10 then  -- WeightReduction = 90 
		
		
		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("WeightReduction = 90")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 11 then  -- WeightReduction = 95 
		
		
		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("WeightReduction = 95")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 12 then  -- WeightReduction = 99 
		
		
		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("WeightReduction = 99")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 13 then  -- WeightReduction = Weightless 
		
		
		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("WeightReduction = 100")
		
		
	end
	
	
	if SandboxVars.CustomizableChestRigs.WeightReduction == 1 then  -- WeightReduction = -25


		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("WeightReduction = 30")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("WeightReduction = 30")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("WeightReduction = 45")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("WeightReduction = 45")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("WeightReduction = 30")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("WeightReduction = 30")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("WeightReduction = 45")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("WeightReduction = 45")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("WeightReduction = 75")
		

	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 2 then  -- WeightReduction = Vanilla


		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("WeightReduction = 40")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("WeightReduction = 40")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("WeightReduction = 60")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("WeightReduction = 60")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("WeightReduction = 40")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("WeightReduction = 40")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("WeightReduction = 60")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("WeightReduction = 60")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("WeightReduction = 90")
		

	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 3 then  -- WeightReduction = Well Balanced
		
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("WeightReduction = 50")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("WeightReduction = 50")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("WeightReduction = 70")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("WeightReduction = 70")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("WeightReduction = 50")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("WeightReduction = 50")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("WeightReduction = 70")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("WeightReduction = 70")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("WeightReduction = 82")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("WeightReduction = 82")


	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 4 then  -- WeightReduction = Balanced
		
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("WeightReduction = 55")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("WeightReduction = 55")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("WeightReduction = 55")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("WeightReduction = 55")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("WeightReduction = 90")
		
		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
            getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
            
            
    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
            getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
		
		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 7 then	-- WeightReduction = 75	
		
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("WeightReduction = 75")
		
		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 8 then  -- WeightReduction = 80 
		
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("WeightReduction = 80")


	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 9 then  -- WeightReduction = 85 
		
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("WeightReduction = 85")
		
			
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 10 then  -- WeightReduction = 90 
		
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("WeightReduction = 90")
		
		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 11 then  -- WeightReduction = 95 
		
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("WeightReduction = 95")
		
		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 12 then  -- WeightReduction = 99 
		
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("WeightReduction = 99")
		
		
	elseif SandboxVars.CustomizableChestRigs.WeightReduction == 13 then  -- WeightReduction = Weightless 
		
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("WeightReduction = 100")
		
		
	end
	
	
	if SandboxVars.CustomizableFannyPacks.WeightReduction == 1 then  -- WeightReduction = -25


		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("WeightReduction = 23")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("WeightReduction = 23")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("WeightReduction = 75")
		

	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("WeightReduction = 30")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("WeightReduction = 30")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("WeightReduction = 100")
		

	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced
		
		
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("WeightReduction = 88")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("WeightReduction = 88")


	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 4 then  -- WeightReduction = Balanced
		
		
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("WeightReduction = 92")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("WeightReduction = 92")
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("WeightReduction  = "..RandomWeightReduction)
		    
		    getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("WeightReduction  = "..RandomWeightReduction)


        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
            
            
    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("WeightReduction  = "..RandomWeightReduction)
		    
		    getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
		    getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("WeightReduction  = "..RandomWeightReduction)
        
        
        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 7 then	-- WeightReduction = 75	
		
		
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("WeightReduction = 75")
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 8 then  -- WeightReduction = 80 
		
		
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("WeightReduction = 80")


	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 9 then  -- WeightReduction = 85 
		
		
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("WeightReduction = 85")
		
			
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 10 then  -- WeightReduction = 90 
		
		
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("WeightReduction = 90")
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 11 then  -- WeightReduction = 95 
		
		
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("WeightReduction = 95")
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 12 then  -- WeightReduction = 99 
		
		
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("WeightReduction = 99")
		
		
	elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 13 then  -- WeightReduction = Weightless 
		
		
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("WeightReduction = 100")
		
		
	end
end


function getCapacityVars()
    if SandboxVars.CustomizableBackpacks.Capacity == 1 then  -- Capacity = -25


		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity = 11")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity = 13")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity = 2.25")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity = 26")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity = 26")
	

	elseif SandboxVars.CustomizableBackpacks.Capacity == 2 then  -- Capacity = Vanilla

	
		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity = 17")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity = 3")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity = 35")
	

	elseif SandboxVars.CustomizableBackpacks.Capacity == 3 then  -- Capacity = Well Balanced


		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity = 17")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity = 33")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity = 33")
	

	elseif SandboxVars.CustomizableBackpacks.Capacity == 4 then  -- Capacity = Balanced
	
		
		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity = 22")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity = 39")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity = 39")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 5 then  -- Capacity = Random - Well Balanced
	
	
	    function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity  = "..RandomCapacity)
		    
		    getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
            
            
    elseif SandboxVars.CustomizableBackpacks.Capacity == 6 then  -- Capacity = Random - Balanced
	
		
		function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity  = "..RandomCapacity)
		    
		    getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
		
			
	elseif SandboxVars.CustomizableBackpacks.Capacity == 7 then  -- Capacity = +25
		
        
        getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity = 19")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity = 21")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity = 44")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity = 4")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 8 then  -- Capacity = +50
		

		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity = 23")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity = 26")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity = 4.5")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity = 53")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity = 53")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 9 then  -- Capacity = +75
		

		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity = 26")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity = 61")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity = 61")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 10 then  -- Capacity = 2x
		

		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity = 34")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity = 70")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity = 70")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 11 then  -- Capacity = 3x
		

		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity = 45")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity = 51")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity = 105")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity = 105")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 12 then  -- Capacity = 5x
		

		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity = 85")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity = 175")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity = 175")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 13 then  -- Capacity = 20
		

		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity = 20")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 14 then  -- Capacity = 25
		

		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity = 25")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 15 then  -- Capacity = 30
		

		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity = 30")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 16 then  -- Capacity = 40
		

		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity = 40")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 17 then  -- Capacity = 50
		

		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity = 50")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 18 then  -- Capacity = 75
		

		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Capacity = 75")
		
		
	end

 
	if SandboxVars.CustomizableChestRigs.Capacity == 1 then  -- Capacity = -25


		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity = 7")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity = 7")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity = 3")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity = 3")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity = 7")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity = 7")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity = 5")

	
    elseif SandboxVars.CustomizableChestRigs.Capacity == 2 then  -- Capacity = Vanilla


		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity = 4")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity = 6")


	elseif SandboxVars.CustomizableChestRigs.Capacity == 3 then  -- Capacity = Well Balanced
	
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity = 7")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity = 7")


	elseif SandboxVars.CustomizableChestRigs.Capacity == 4 then  -- Capacity = Balanced
	
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity = 7")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity = 7")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity = 9")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 5 then  -- Capacity = Random - Well Balanced
	
	
	    function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 9)


            getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity  = "..RandomCapacity)
		    
		    getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity  = "..RandomCapacity)
		
            getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
            
            
    elseif SandboxVars.CustomizableChestRigs.Capacity == 6 then  -- Capacity = Random - Balanced
	
		
		function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 13)


            getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity  = "..RandomCapacity)
		    
		    getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity  = "..RandomCapacity)
		
            getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
		
			
	elseif SandboxVars.CustomizableChestRigs.Capacity == 7 then  -- Capacity = +25
		
	
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity = 5")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity = 8")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 8 then  -- Capacity = +50
		
	
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity = 9")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 9 then  -- Capacity = +75
		
	
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity = 14")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity = 14")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity = 7")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity = 7")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity = 14")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity = 14")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity = 11")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity = 11")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 10 then  -- Capacity = 2x
		
	
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity = 16")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity = 16")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity = 16")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity = 16")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity = 12")


	elseif SandboxVars.CustomizableChestRigs.Capacity == 11 then  -- Capacity = 3x
		
	
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity = 24")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity = 24")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity = 24")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity = 24")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity = 18")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity = 18")


	elseif SandboxVars.CustomizableChestRigs.Capacity == 12 then  -- Capacity = 5x
		
	
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity = 30")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 13 then  -- Capacity = 20
		
	
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity = 20")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 14 then  -- Capacity = 25
		
	
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity = 25")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 15 then  -- Capacity = 30
		
	
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity = 30")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 16 then  -- Capacity = 40
		
	
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity = 40")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 17 then  -- Capacity = 50
		
	
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity = 50")
		
		
	elseif SandboxVars.CustomizableChestRigs.Capacity == 18 then  -- Capacity = 75
		
	
		getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Capacity = 75")
		
	  
	end
	
	
	if SandboxVars.CustomizableFannyPacks.Capacity == 1 then  -- Capacity = -25


		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity = 6")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity = 6")

	
    elseif SandboxVars.CustomizableFannyPacks.Capacity == 2 then  -- Capacity = Vanilla


		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity = 8")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity = 8")


	elseif SandboxVars.CustomizableFannyPacks.Capacity == 3 then  -- Capacity = Well Balanced
	
		
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity = 9")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity = 9")


	elseif SandboxVars.CustomizableFannyPacks.Capacity == 4 then  -- Capacity = Balanced
	
		
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity = 10")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 5 then  -- Capacity = Random - Well Balanced
	
	
	    function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 9)


            getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity  = "..RandomCapacity)
		    
		    getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
            
            
    elseif SandboxVars.CustomizableFannyPacks.Capacity == 6 then  -- Capacity = Random - Balanced
	
		
		function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 13)


            getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity  = "..RandomCapacity)
		    
		    getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity  = "..RandomCapacity)
		
		    getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
		
			
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 7 then  -- Capacity = +25
		
	
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity = 10")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 8 then  -- Capacity = +50
		
	
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity = 12")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 9 then  -- Capacity = +75
		
	
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity = 14")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity = 14")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity = 14")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity = 14")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 10 then  -- Capacity = 2x
		
	
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity = 16")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity = 16")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity = 16")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity = 16")


	elseif SandboxVars.CustomizableFannyPacks.Capacity == 11 then  -- Capacity = 3x
		
	
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity = 24")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity = 24")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity = 24")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity = 24")


	elseif SandboxVars.CustomizableFannyPacks.Capacity == 12 then  -- Capacity = 5x
		
	
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity = 40")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 13 then  -- Capacity = 20
		
	
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity = 20")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 14 then  -- Capacity = 25
		
	
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity = 25")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 15 then  -- Capacity = 30
		
	
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity = 30")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 16 then  -- Capacity = 40
		
	
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity = 40")
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 17 then  -- Capacity = 50
		
	
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity = 50")
		
		
	elseif SandboxVars.CustomizableFannyPacks.Capacity == 18 then  -- Capacity = 75
		
	
		getScriptManager():getItem("SMUIClothing.PistolBeltPouches"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.PistolBeltBag"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBag"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("SMUIClothing.LBV88WebbingBagTightened"):DoParam("Capacity = 75")
		
	  
	end
end


function getWeightVars()
    if SandboxVars.CustomizableBackpacks.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Weight = 0.5")

        getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Weight = 0.5")

        getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Weight = 0.5")
        
        getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Weight = 3.5")

        getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Weight = 3.5")


    elseif SandboxVars.CustomizableBackpacks.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Weight = 0.375")

        getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Weight = 0.375")

        getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Weight = 0.375")
        
        getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Weight = 2.6")

        getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Weight = 2.6")


    elseif SandboxVars.CustomizableBackpacks.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Weight = 0.25")

        getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Weight = 0.25")

        getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Weight = 0.25")
        
        getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Weight = 1.75")

        getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Weight = 1.75")


    elseif SandboxVars.CustomizableBackpacks.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Weight = 0.13")

        getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Weight = 0.13")

        getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Weight = 0.875")

        getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Weight = 0.875")


    elseif SandboxVars.CustomizableBackpacks.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("Weight = 0")

        getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("Weight = 0")

        getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("Weight = 0")
        
        getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Weight = 0")

        getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Weight = 0")


    end


    if SandboxVars.CustomizableChestRigs.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Weight = 1.0")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Weight = 1.0")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Weight = 1.0")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Weight = 1.0")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Weight = 1.0")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Weight = 1.0")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Weight = 1.0")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Weight = 1.0")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Weight = 1")

        getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Weight = 1")


    elseif SandboxVars.CustomizableChestRigs.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Weight = 0.75")

        getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Weight = 0.75")


    elseif SandboxVars.CustomizableChestRigs.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Weight = 0.5")

        getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Weight = 0.5")


    elseif SandboxVars.CustomizableChestRigs.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Weight = 0.25")

        getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Weight = 0.25")


    elseif SandboxVars.CustomizableChestRigs.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("SMUIClothing.MilitaryWebbing"):DoParam("Weight = 0")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingTightened"):DoParam("Weight = 0")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBag"):DoParam("Weight = 0")
		
		getScriptManager():getItem("SMUIClothing.MilitaryWebbingBagTightened"):DoParam("Weight = 0")
		
		getScriptManager():getItem("SMUIClothing.M1956Webbing"):DoParam("Weight = 0")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingTightened"):DoParam("Weight = 0")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBag"):DoParam("Weight = 0")
		
		getScriptManager():getItem("SMUIClothing.M1956WebbingBagTightened"):DoParam("Weight = 0")
		
		getScriptManager():getItem("SMUIClothing.LBV88Webbing"):DoParam("Weight = 0")

        getScriptManager():getItem("SMUIClothing.LBV88WebbingTightened"):DoParam("Weight = 0")


    end
end
	
	
function getRunSpeedModifierVars()
	if SandboxVars.CustomizableBackpacks.RemoveRunSpeedModifier == true then
	else return end
	
	
		getScriptManager():getItem("SMUIClothing.Bag_MilitaryMedicalBag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("SMUIClothing.Bag_CFP90PatrolPack"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("SMUIClothing.GasMaskBag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPack"):DoParam("Weight = 1.0")

        getScriptManager():getItem("SMUIClothing.Bag_LargeALICEPackWoodland"):DoParam("Weight = 1.0")
		
		
	end


Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars)
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars)
Events.OnSpawnRegionsLoaded.Add(getWeightVars) 
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)




