if getActivatedMods():contains("backpackattachments") then
else return end

function getWeightReductionVars()
	if SandboxVars.CustomizableBackpacks.WeightReduction == 1 then  -- WeightReduction = -25


		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("WeightReduction = 45")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("WeightReduction = 53")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("WeightReduction = 53")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("WeightReduction = 60")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("WeightReduction = 60")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("WeightReduction = 64")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("WeightReduction = 64")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("WeightReduction = 64")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("WeightReduction = 64")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("WeightReduction = 64")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("WeightReduction = 64")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("WeightReduction = 65")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("WeightReduction = 65")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("WeightReduction = 65")


	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("WeightReduction = 60")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("WeightReduction = 70")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("WeightReduction = 70")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("WeightReduction = 87")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("WeightReduction = 87")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("WeightReduction = 87")


	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced
		
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("WeightReduction = 87")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("WeightReduction = 87")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("WeightReduction = 88")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("WeightReduction = 88")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("WeightReduction = 88")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("WeightReduction = 88")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("WeightReduction = 88")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("WeightReduction = 88")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("WeightReduction = 89")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("WeightReduction = 89")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("WeightReduction = 89")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 4 then  -- WeightReduction = Balanced  
		
		
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("WeightReduction = 70")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("WeightReduction = 95")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
            
    
    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
		    Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
            
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 7 then	-- WeightReduction = 75
		
		
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("WeightReduction = 75")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 8 then  -- WeightReduction = 80
		
		
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("WeightReduction = 80")	
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 9 then  -- WeightReduction = 85
		
		
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("WeightReduction = 85")	
		
			
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 10 then  -- WeightReduction = 90  
		
		
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("WeightReduction = 90")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 11 then  -- WeightReduction = 95  
		
		
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("WeightReduction = 95")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 12 then  -- WeightReduction = 99  
		
		
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("WeightReduction = 99")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 13 then  -- WeightReduction = Weightless  
		
		
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("WeightReduction = 100")
		
		
	end
end


function getCapacityVars() 
	if SandboxVars.CustomizableBackpacks.Capacity == 1 then  -- Capacity = -25


		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity = 11")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity = 17")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity = 17")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity = 21")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity = 21")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity = 21")
	

	elseif SandboxVars.CustomizableBackpacks.Capacity == 2 then  -- Capacity = Vanilla


		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity = 22")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity = 22")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity = 27")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity = 27")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity = 27")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity = 27")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity = 27")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity = 27")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity = 28")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity = 28")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity = 28")


	elseif SandboxVars.CustomizableBackpacks.Capacity == 3 then  -- Capacity = Well Balanced
	
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity = 29")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity = 29")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity = 30")
		
		


	elseif SandboxVars.CustomizableBackpacks.Capacity == 4 then  -- Capacity = Balanced
	
		
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity = 26")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity = 26")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity = 28")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity = 28")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity = 35")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 5 then  -- Capacity = Random - Well Balanced
	
	
	    function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
            
            
    elseif SandboxVars.CustomizableBackpacks.Capacity == 6 then  -- Capacity = Random - Balanced
	
		
		function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
		
			
	elseif SandboxVars.CustomizableBackpacks.Capacity == 7 then  -- Capacity = +25
		
	
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity = 19")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity = 28")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity = 28")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity = 34")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity = 34")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity = 34")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity = 34")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity = 34")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity = 34")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity = 35")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 8 then  -- Capacity = +50
		
	
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity = 23")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity = 33")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity = 33")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity = 41")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity = 41")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity = 41")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity = 41")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity = 41")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity = 41")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity = 42")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity = 42")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity = 42")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 9 then  -- Capacity = +75
		
	
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity = 26")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity = 39")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity = 39")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity = 47")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity = 47")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity = 47")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity = 47")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity = 47")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity = 47")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity = 49")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity = 49")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity = 49")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 10 then  -- Capacity = 2x
		
	
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity = 44")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity = 44")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity = 54")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity = 54")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity = 54")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity = 54")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity = 54")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity = 54")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity = 56")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity = 56")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity = 56")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 11 then  -- Capacity = 3x
		
	
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity = 45")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity = 66")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity = 66")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity = 81")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity = 81")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity = 81")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity = 81")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity = 81")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity = 81")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity = 82")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity = 82")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity = 82")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 12 then  -- Capacity = 5x
		
	
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity = 100")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity = 100")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity = 110")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity = 110")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity = 135")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity = 135")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity = 135")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity = 135")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity = 135")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity = 135")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity = 140")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity = 140")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity = 140")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 13 then  -- Capacity = 20
		
	
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity = 20")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 14 then  -- Capacity = 25
		
	
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity = 25")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 15 then  -- Capacity = 30
		
	
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity = 30")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 16 then  -- Capacity = 40
		
	
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity = 40")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 17 then  -- Capacity = 50
		
	
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity = 50")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 18 then  -- Capacity = 75
		
	
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Capacity = 75")
		
		
	end
end


function getWeightVars()
	if SandboxVars.CustomizableBackpacks.Weight == 1 then  -- Weight = Well Balanced
		
		
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Weight = 1")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Weight = 1.2")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Weight = 1.5")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Weight = 1.5")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Weight = 2")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Weight = 2")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Weight = 2")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Weight = 2")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Weight = 2")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Weight = 2")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Weight = 2")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Weight = 2")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Weight = 2")
		
		

    elseif SandboxVars.CustomizableBackpacks.Weight == 2 then  -- Weight = -25
	

		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Weight = 0.9")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Weight = 0.9")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Weight = 1.13")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Weight = 1.13")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Weight = 1.5")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Weight = 1.5")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Weight = 1.5")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Weight = 1.5")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Weight = 1.5")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Weight = 1.5")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Weight = 1.5")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Weight = 1.5")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Weight = 1.5")
		
		


	elseif SandboxVars.CustomizableBackpacks.Weight == 3 then  -- Weight = -50


		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Weight = 0.6")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Weight = 0.6")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Weight = 1")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Weight = 1")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Weight = 1")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Weight = 1")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Weight = 1")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Weight = 1")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Weight = 1")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Weight = 1")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Weight = 1")
		
		
		
		
	elseif SandboxVars.CustomizableBackpacks.Weight == 4 then  -- Weight = -75

		
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Weight = 0.3")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Weight = 0.3")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Weight = 0.38")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Weight = 0.38")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Weight = 0.5")
		
		
		
		
	elseif SandboxVars.CustomizableBackpacks.Weight == 5 then  -- Weight = Weightless

		
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("Weight = 0")
		
		
		
		
	end
end


function getRunSpeedModifierVars()
	if SandboxVars.CustomizableBackpacks.RemoveRunSpeedModifier == true then
	else return end
	
	
		getScriptManager():getItem("Base.Bag_Schoolbag_WithAttachment"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_WithAttachment"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_NormalHikingBag_With2Attachments"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_WithAttachment"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_BigHikingBag_With2Attachments"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_WithAttachment"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With2Attachments"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_SurvivorBag_With3Attachments"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_WithAttachment"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With2Attachments"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_With3Attachments"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_WithAttachment"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With2Attachments"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_ALICEpack_Army_With3Attachments"):DoParam("RunSpeedModifier = 1.0")
		
		
	end

	
Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars) 
Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)



