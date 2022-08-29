if getActivatedMods():contains("Brita_2") then
else return end

function getWeightReductionVars()
    if SandboxVars.CustomizableBackpacks.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("WeightReduction = 64")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("WeightReduction = 64")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("WeightReduction = 64")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("WeightReduction = 85")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("WeightReduction = 88")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("WeightReduction = 86")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("WeightReduction = 89")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("WeightReduction = 86")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("WeightReduction = 92")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("WeightReduction = 91")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("WeightReduction = 88")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("WeightReduction = 87")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("WeightReduction = 90")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("WeightReduction = 92")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("WeightReduction = 91")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("WeightReduction = 93")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_SCBA"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_ZIP"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_SSO"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Savotta"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Bush"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Hunting"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bag_SCBA"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_ZIP"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_SSO"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Savotta"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Bush"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Hunting"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 7 then	-- WeightReduction = 75


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("WeightReduction = 75")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 8 then  -- WeightReduction = 80


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("WeightReduction = 80")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 9 then  -- WeightReduction = 85


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("WeightReduction = 85")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("WeightReduction = 90")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("WeightReduction = 90")

    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("WeightReduction = 95")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("WeightReduction = 99")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("WeightReduction = 100")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("WeightReduction = 100")


    end


    if SandboxVars.CustomizableChestRigs.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("WeightReduction = 68")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("WeightReduction = 68")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("WeightReduction = 68")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("WeightReduction = 68")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("WeightReduction = 68")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("WeightReduction = 68")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("WeightReduction = 68")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("WeightReduction = 68")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("WeightReduction = 68")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("WeightReduction = 68")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("WeightReduction = 68")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("WeightReduction = 68")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("WeightReduction = 92")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("WeightReduction = 92")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("WeightReduction = 92")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("WeightReduction = 92")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("WeightReduction = 92")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("WeightReduction = 92")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("WeightReduction = 92")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("WeightReduction = 92")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("WeightReduction = 92")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("WeightReduction = 92")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("WeightReduction = 92")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("WeightReduction = 92")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("WeightReduction = 94")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("WeightReduction = 94")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("WeightReduction = 94")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("WeightReduction = 94")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("WeightReduction = 94")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("WeightReduction = 94")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("WeightReduction = 94")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("WeightReduction = 94")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("WeightReduction = 94")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("WeightReduction = 94")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("WeightReduction = 94")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("WeightReduction = 94")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.Bag_D3M"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)

    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.Bag_D3M"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 7 then	-- WeightReduction = 75


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 8 then  -- WeightReduction = 80


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 9 then  -- WeightReduction = 85


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("WeightReduction = 100")


    end


    if SandboxVars.CustomizableFannyPacks.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("WeightReduction = 60")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("WeightReduction = 82")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("WeightReduction = 82")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("WeightReduction = 82")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("WeightReduction = 82")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 7 then	-- WeightReduction = 75


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 8 then  -- WeightReduction = 80


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 9 then  -- WeightReduction = 85


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("WeightReduction = 90")

    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("WeightReduction = 100")


    end
end


function getCapacityVars()
    if SandboxVars.CustomizableBackpacks.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity = 29")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity = 29")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity = 29")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity = 29")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity = 29")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity = 29")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity = 29")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity = 29")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity = 29")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity = 29")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity = 29")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity = 29")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity = 29")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity = 29")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity = 26")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity = 38")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity = 38")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity = 38")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity = 38")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity = 38")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity = 38")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity = 38")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity = 38")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity = 38")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity = 38")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity = 38")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity = 38")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity = 38")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity = 38")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity = 35")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity = 33")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity = 31")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity = 30")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity = 31")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity = 32")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity = 27")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity = 29")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity = 22")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity = 31")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity = 27")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity = 27")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity = 29")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity = 32")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity = 37")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity = 36")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity = 36")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity = 37")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity = 34")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity = 34")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity = 28")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity = 35")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity = 31")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity = 34")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBackpacks.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity  = "..RandomCapacity)
        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBackpacks.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity = 44")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity = 44")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity = 44")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity = 44")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity = 44")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity = 44")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity = 44")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity = 44")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity = 44")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity = 44")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity = 44")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity = 44")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity = 44")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity = 44")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity = 44")

    elseif SandboxVars.CustomizableBackpacks.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity = 52")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity = 52")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity = 52")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity = 52")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity = 52")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity = 52")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity = 52")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity = 52")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity = 52")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity = 52")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity = 52")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity = 52")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity = 52")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity = 52")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity = 52")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity = 61")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity = 61")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity = 61")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity = 61")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity = 61")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity = 61")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity = 61")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity = 61")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity = 61")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity = 61")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity = 61")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity = 61")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity = 61")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity = 61")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity = 61")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity = 70")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity = 70")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity = 70")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity = 70")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity = 70")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity = 70")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity = 70")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity = 70")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity = 70")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity = 70")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity = 70")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity = 70")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity = 70")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity = 70")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity = 70")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity = 105")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity = 105")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity = 105")

        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity = 105")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity = 105")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity = 105")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity = 105")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity = 105")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity = 105")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity = 105")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity = 105")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity = 105")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity = 105")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity = 105")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity = 105")

    elseif SandboxVars.CustomizableBackpacks.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity = 175")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity = 175")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity = 175")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity = 175")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity = 175")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity = 175")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity = 175")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity = 175")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity = 175")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity = 175")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity = 175")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity = 175")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity = 175")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity = 175")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity = 52")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity = 20")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity = 25")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity = 30")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity = 40")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity = 50")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Capacity = 75")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Capacity = 75")


    end


    if SandboxVars.CustomizableChestRigs.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity = 6")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity = 8")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity = 9")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity = 10")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 9)


            getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableChestRigs.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 13)


            getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity  = "..RandomCapacity)


        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableChestRigs.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity = 10")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity = 12")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity = 14")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity = 16")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity = 24")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity = 24")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity = 24")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity = 24")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity = 24")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity = 24")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity = 24")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity = 24")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity = 24")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity = 24")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity = 24")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity = 24")

    elseif SandboxVars.CustomizableChestRigs.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Capacity = 75")


    end


    if SandboxVars.CustomizableFannyPacks.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity = 3")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity = 3")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity = 3")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity = 3")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity = 4")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity = 4")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity = 5")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity = 5")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity = 5")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity = 6")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity = 7")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity = 8")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity = 12")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Capacity = 75")


    end
end


function getWeightVars()
    if SandboxVars.CustomizableBackpacks.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Weight = 2")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Weight = 2")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Weight = 2")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Weight = 2")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Weight = 2")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Weight = 2")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Weight = 2")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Weight = 2")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Weight = 2")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Weight = 2")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Weight = 3")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Weight = 3")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Weight = 3")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Weight = 3")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Weight = 2")


    elseif SandboxVars.CustomizableBackpacks.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Weight = 1.5")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Weight = 2.25")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Weight = 2.25")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Weight = 2.25")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Weight = 2.25")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Weight = 1.5")


    elseif SandboxVars.CustomizableBackpacks.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Weight = 1")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Weight = 1")




    elseif SandboxVars.CustomizableBackpacks.Weight == 4 then  -- Weight = -75

        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Weight = 0.5")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Weight = 0.5")


    elseif SandboxVars.CustomizableBackpacks.Weight == 5 then  -- Weight = Weightless

        getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("Weight = 0")
        
        getScriptManager():getItem("Base.Bag_SCBA"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_ZIP"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_SSO"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_Savotta"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_Bush"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_Hunting"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("Weight = 0")
        

    end


    if SandboxVars.CustomizableChestRigs.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Weight = 1")


    elseif SandboxVars.CustomizableChestRigs.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Weight = 0.75")


    elseif SandboxVars.CustomizableChestRigs.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Weight = 0.5")


    elseif SandboxVars.CustomizableChestRigs.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Weight = 0.25")


    elseif SandboxVars.CustomizableChestRigs.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Base.Bag_D3M"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("Weight = 0")


    end


    if SandboxVars.CustomizableFannyPacks.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Weight = 0.5")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Weight = 0.375")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Weight = 0.375")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Weight = 0.375")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Weight = 0.375")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Weight = 0.25")




    elseif SandboxVars.CustomizableFannyPacks.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Weight = 0.13")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("Weight = 0")


    end
end

function getRunSpeedModifierVars()
	if SandboxVars.CustomizableBackpacks.RemoveRunSpeedModifier == true then
	else return end
	
	
		getScriptManager():getItem("Base.Bag_Sniper_Pack"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_ARVN_Rucksack"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_ST53_Set"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_ZIP"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_SSO"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_Savotta"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_Bush"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_Hunting"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_Radio_Pack"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_Tactical_Belt_Front"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_Tactical_Belt_Back"):DoParam("RunSpeedModifier = 1.0")

		getScriptManager():getItem("Base.Bag_Duty_Belt_Front"):DoParam("RunSpeedModifier = 1.0")

		getScriptManager():getItem("Base.Bag_Duty_Belt_Back"):DoParam("RunSpeedModifier = 1.0")

		getScriptManager():getItem("Base.Bag_D3M"):DoParam("RunSpeedModifier = 1.0")

		getScriptManager():getItem("Base.Bag_D3M_Loose"):DoParam("RunSpeedModifier = 1.0")

		getScriptManager():getItem("Base.Bag_Blackhawk"):DoParam("RunSpeedModifier = 1.0")

		getScriptManager():getItem("Base.Bag_Blackhawk_Loose"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_Smersh_Vest"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_Smersh_Vest_Loose"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_Tactical_Alice"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_Cat_Pack"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_Robbie_Pack"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_M2A1_Pack"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_Juggernaut_Bag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_X_Vest"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_X_Vest_Loose"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_SKS_Vest"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_SKS_Vest_Loose"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_AK_Vest"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bag_AK_Vest_Loose"):DoParam("RunSpeedModifier = 1.0")
		
		
	end


Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars) 
Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)



