if getActivatedMods():contains("ClothesBoxRedux") then
else return end

function getWeightReductionVars()
    if SandboxVars.CustomizableBackpacks.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("WeightReduction = 68")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("WeightReduction = 53")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("WeightReduction = 53")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("WeightReduction = 53")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("WeightReduction = 41")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("WeightReduction = 41")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("WeightReduction = 53")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("WeightReduction = 53")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("WeightReduction = 23")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("WeightReduction = 23")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("WeightReduction = 30")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("WeightReduction = 65")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("WeightReduction = 65")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("WeightReduction = 92")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("WeightReduction = 94")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_HR"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_ANAT"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_HR"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_ANAT"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 7 then	-- WeightReduction = 75	


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("WeightReduction = 100")


    end


    if SandboxVars.CustomizableChestRigs.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("WeightReduction = 23")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("WeightReduction = 30")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("WeightReduction = 82")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("WeightReduction = 40")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("WeightReduction = 84")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("WeightReduction = 45")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(45, 90)


            getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 92)


            getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 7 then	-- WeightReduction = 75	


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableChestRigs.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("WeightReduction = 100")


    end


    if SandboxVars.CustomizableBags.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("WeightReduction = 41")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("WeightReduction = 41")


    elseif SandboxVars.CustomizableBags.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("WeightReduction = 55")


    elseif SandboxVars.CustomizableBags.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("WeightReduction = 65")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("WeightReduction = 65")


    elseif SandboxVars.CustomizableBags.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("WeightReduction = 70")


    elseif SandboxVars.CustomizableBags.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBags.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBags.WeightReduction == 7 then	-- WeightReduction = 75	


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableBags.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableBags.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableBags.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableBags.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableBags.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableBags.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("WeightReduction = 100")


    end


    if SandboxVars.CustomizableFannyPacks.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("WeightReduction = 38")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("WeightReduction = 30")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("WeightReduction = 40")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("WeightReduction = 50")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("WeightReduction = 65")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("WeightReduction = 55")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 7 then	-- WeightReduction = 75	


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("WeightReduction = 100")


    end
end


function getCapacityVars()
    if SandboxVars.CustomizableBackpacks.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity = 23")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity = 46")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity = 23")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity = 23")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity = 60")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity = 60")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity = 13")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity = 13")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity = 13")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity = 13")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity = 33")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity = 68")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity = 19")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity = 19")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity = 34")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity = 34")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBackpacks.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBackpacks.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity = 38")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity = 19")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity = 19")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity = 38")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity = 38")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity = 17")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity = 17")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity = 45")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity = 90")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity = 23")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity = 23")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity = 18")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity = 18")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity = 45")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity = 45")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity = 19")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity = 19")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity = 53")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity = 105")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity = 26")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity = 26")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity = 21")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity = 21")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity = 53")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity = 53")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity = 22")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity = 22")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity = 60")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity = 120")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity = 18")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity = 18")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity = 24")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity = 24")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity = 60")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity = 60")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity = 33")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity = 33")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity = 90")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity = 180")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity = 45")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity = 45")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity = 27")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity = 27")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity = 36")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity = 36")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity = 90")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity = 90")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity = 55")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity = 55")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity = 150")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity = 300")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity = 45")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity = 45")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity = 60")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity = 60")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity = 150")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity = 150")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Capacity = 75")


    end


    if SandboxVars.CustomizableChestRigs.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity = 11")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity = 15")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity = 16")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity = 18")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity  = "..RandomCapacity)


        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableChestRigs.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity  = "..RandomCapacity)


        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableChestRigs.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity = 19")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity = 23")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity = 26")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity = 24")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity = 45")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity = 75")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableChestRigs.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Capacity = 75")


    end


    if SandboxVars.CustomizableBags.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 11")


    elseif SandboxVars.CustomizableBags.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity = 15")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 15")


    elseif SandboxVars.CustomizableBags.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 16")


    elseif SandboxVars.CustomizableBags.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity = 13")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity = 13")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity = 18")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 18")


    elseif SandboxVars.CustomizableBags.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBags.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBags.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity = 19")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 19")


    elseif SandboxVars.CustomizableBags.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity = 17")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity = 17")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity = 23")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 23")


    elseif SandboxVars.CustomizableBags.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity = 19")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity = 19")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity = 26")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 26")


    elseif SandboxVars.CustomizableBags.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity = 22")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity = 22")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableBags.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity = 33")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity = 33")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity = 45")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 45")


    elseif SandboxVars.CustomizableBags.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity = 55")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity = 55")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 75")


    elseif SandboxVars.CustomizableBags.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableBags.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableBags.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableBags.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableBags.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableBags.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Capacity = 75")


    end


    if SandboxVars.CustomizableFannyPacks.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity = 5")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity = 7")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 18")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity = 6")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity = 9")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 19")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity = 7")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity = 10")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity = 10")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 21")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity = 11")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 23")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity = 8")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity = 11")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 26")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity = 9")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity = 14")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity = 14")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 32")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity = 11")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity = 16")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity = 16")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 36")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity = 12")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity = 18")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity = 18")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 54")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity = 18")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity = 18")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity = 27")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity = 27")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 90")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity = 45")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity = 45")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity = 20")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity = 25")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity = 30")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity = 40")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity = 50")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Capacity = 75")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Capacity = 75")


    end
end


function getWeightVars()
    if SandboxVars.CustomizableBackpacks.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Weight = 1.4")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Weight = 2.1")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Weight = 0.8")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Weight = 0.8")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Weight = 1")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Weight = 1")


    elseif SandboxVars.CustomizableBackpacks.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Weight = 0.225")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Weight = 0.225")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Weight = 1.05")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Weight = 1.575")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Weight = 0.6")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Weight = 0.6")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Weight = 0.225")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Weight = 0.225")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Weight = 0.75")


    elseif SandboxVars.CustomizableBackpacks.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Weight = 0.7")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Weight = 1.05")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Weight = 0.4")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Weight = 0.4")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Weight = 0.5")


    elseif SandboxVars.CustomizableBackpacks.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Weight = 0.525")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Weight = 0.25")


    elseif SandboxVars.CustomizableBackpacks.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_HR"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_ANAT"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("Weight = 0")


    end


    if SandboxVars.CustomizableChestRigs.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Weight = 0.3")


    elseif SandboxVars.CustomizableChestRigs.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Weight = 0.225")


    elseif SandboxVars.CustomizableChestRigs.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Weight = 0.15")


    elseif SandboxVars.CustomizableChestRigs.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Weight = 0.075")

    elseif SandboxVars.CustomizableChestRigs.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("Weight = 0")


    end


    if SandboxVars.CustomizableBags.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Weight = 0.9")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Weight = 0.9")


    elseif SandboxVars.CustomizableBags.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Weight = 0.225")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Weight = 0.225")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Weight = 0.675")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Weight = 0.675")


    elseif SandboxVars.CustomizableBags.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Weight = 0.45")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Weight = 0.45")


    elseif SandboxVars.CustomizableBags.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Weight = 0.225")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Weight = 0.225")


    elseif SandboxVars.CustomizableBags.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("Weight = 0")


    end


    if SandboxVars.CustomizableFannyPacks.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Weight = 0.7")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Weight = 0.1")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Weight = 0.525")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Weight = 0.075")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Weight = 0.05")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Weight = 0.175")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Weight = 0.025")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Weight = 0.025")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Weight = 0.025")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Weight = 0.025")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("Weight = 0")

        getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("Weight = 0")


    end
end

function getRunSpeedModifierVars()
	if SandboxVars.CustomizableBackpacks.RemoveRunSpeedModifier == true then
	else return end
	
		
		getScriptManager():getItem("Base.CBX_Ras_army"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Ras_ohota"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_1_L"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_1_R"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_1M_L"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_1M_R"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_2_L"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_2_R"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_HR"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_ANAT"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_3_L"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_3_R"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_4_L"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_4_R"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_5_L"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_5_R"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_6"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_7_L"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_7_R"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_8P"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_Sumk_8"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_RUKSAK1"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CBX_RUKSAK2"):DoParam("RunSpeedModifier = 1.0")
		
		
	end

	
Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars) 
Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)



