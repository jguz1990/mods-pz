if getActivatedMods():contains("Hydrocraft") then
else return end


function getWeightReductionVars()
    if SandboxVars.CustomizableBackpacks.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("WeightReduction = 68")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("WeightReduction = 62")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("WeightReduction = 56")

        getScriptManager():getItem("Hydrocraft.HCSpiffosorderbag"):DoParam("WeightReduction = 15")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("WeightReduction = 53")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("WeightReduction = 53")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("WeightReduction = 53")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("WeightReduction = 43")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("WeightReduction = 49")

       
    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("WeightReduction = 82")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCSpiffosorderbag"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("WeightReduction = 65")

        
    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("WeightReduction = 84")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCSpiffosorderbag"):DoParam("WeightReduction = 25")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("WeightReduction = 65")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("WeightReduction = 82")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("WeightReduction = 70")

        
    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("WeightReduction = 88")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCSpiffosorderbag"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("WeightReduction = 88")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("WeightReduction = 80")

        
    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCSpiffosorderbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            
        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCSpiffosorderbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("WeightReduction  = "..RandomWeightReduction)
            

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 7 then	-- WeightReduction = 75	


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCSpiffosorderbag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("WeightReduction = 75")

        
    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCSpiffosorderbag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCSpiffosorderbag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCSpiffosorderbag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCSpiffosorderbag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("WeightReduction = 95")

    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCSpiffosorderbag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCSpiffosorderbag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("WeightReduction = 100")


    end


    if SandboxVars.CustomizableBags.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("WeightReduction = 45")


    elseif SandboxVars.CustomizableBags.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("WeightReduction = 60")


    elseif SandboxVars.CustomizableBags.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("WeightReduction = 65")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("WeightReduction = 60")


    elseif SandboxVars.CustomizableBags.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("WeightReduction = 25")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("WeightReduction = 70")


    elseif SandboxVars.CustomizableBags.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("WeightReduction  = "..RandomWeightReduction)


        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBags.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("WeightReduction  = "..RandomWeightReduction)


        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableBags.WeightReduction == 7 then	-- WeightReduction = 75	


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableBags.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableBags.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableBags.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableBags.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableBags.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableBags.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("WeightReduction = 100")


    end


    if SandboxVars.CustomizableFannyPacks.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("WeightReduction = 35")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("WeightReduction = 50")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("WeightReduction = 88")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("WeightReduction = 88")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("WeightReduction = 88")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("WeightReduction = 88")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("WeightReduction  = "..RandomWeightReduction)


        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("WeightReduction  = "..RandomWeightReduction)


        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 7 then	-- WeightReduction = 75	


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableFannyPacks.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("WeightReduction = 100")


    end


    if SandboxVars.CustomizableContainers.WeightReduction == 1 then  -- WeightReduction = -25


        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("WeightReduction = 15")

        getScriptManager():getItem("Hydrocraft.HCSpiffosorderbag"):DoParam("WeightReduction = 15")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("WeightReduction = 52")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("WeightReduction = 49")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("WeightReduction = 8")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("WeightReduction = 8")


    elseif SandboxVars.CustomizableContainers.WeightReduction == 2 then  -- WeightReduction = Vanilla


        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("WeightReduction = 25")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCSpiffosorderbag"):DoParam("WeightReduction = 20")

       getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("WeightReduction = 69")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("WeightReduction = 10")

       getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("WeightReduction = 65")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("WeightReduction = 25")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("WeightReduction = 25")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("WeightReduction = 25")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("WeightReduction = 25")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("WeightReduction = 25")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("WeightReduction = 10")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("WeightReduction = 10")


    elseif SandboxVars.CustomizableContainers.WeightReduction == 3 then  -- WeightReduction = Well Balanced


        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("WeightReduction = 15")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("WeightReduction = 15")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("WeightReduction = 15")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("WeightReduction = 15")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("WeightReduction = 15")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("WeightReduction = 25")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("WeightReduction = 72")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("WeightReduction = 50")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("WeightReduction = 20")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("WeightReduction = 20")


    elseif SandboxVars.CustomizableContainers.WeightReduction == 4 then  -- WeightReduction = Balanced


        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("WeightReduction = 25")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("WeightReduction = 25")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("WeightReduction = 25")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("WeightReduction = 25")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("WeightReduction = 25")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("WeightReduction = 55")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("WeightReduction = 35")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("WeightReduction = 70")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("WeightReduction = 45")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("WeightReduction = 40")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("WeightReduction = 60")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("WeightReduction = 30")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("WeightReduction = 30")


    elseif SandboxVars.CustomizableContainers.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableContainers.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("WeightReduction  = "..RandomWeightReduction)

            getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            
        end
        Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
        Events.OnLoad.Add(CustomizableWeightReductionRandomizer)


    elseif SandboxVars.CustomizableContainers.WeightReduction == 7 then	-- WeightReduction = 75	


        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("WeightReduction = 75")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("WeightReduction = 75")


    elseif SandboxVars.CustomizableContainers.WeightReduction == 8 then  -- WeightReduction = 80 


        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("WeightReduction = 80")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("WeightReduction = 80")


    elseif SandboxVars.CustomizableContainers.WeightReduction == 9 then  -- WeightReduction = 85 


        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("WeightReduction = 85")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("WeightReduction = 85")


    elseif SandboxVars.CustomizableContainers.WeightReduction == 10 then  -- WeightReduction = 90 


        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("WeightReduction = 90")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("WeightReduction = 90")


    elseif SandboxVars.CustomizableContainers.WeightReduction == 11 then  -- WeightReduction = 95 


        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("WeightReduction = 95")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("WeightReduction = 95")


    elseif SandboxVars.CustomizableContainers.WeightReduction == 12 then  -- WeightReduction = 99 


        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("WeightReduction = 99")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("WeightReduction = 99")


    elseif SandboxVars.CustomizableContainers.WeightReduction == 13 then  -- WeightReduction = Weightless 


        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("WeightReduction = 100")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("WeightReduction = 100")


    end
end


function getCapacityVars()
    if SandboxVars.CustomizableBackpacks.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity = 26")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity = 12")

        
    elseif SandboxVars.CustomizableBackpacks.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity = 35")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity = 16")

        
    elseif SandboxVars.CustomizableBackpacks.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity = 22")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity = 21")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity = 17")

        
    elseif SandboxVars.CustomizableBackpacks.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity = 35")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity = 28")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity = 18")

        
    elseif SandboxVars.CustomizableBackpacks.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity  = "..RandomCapacity)

            
        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBackpacks.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity  = "..RandomCapacity)
            

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBackpacks.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity = 44")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity = 19")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity = 19")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity = 20")

        
    elseif SandboxVars.CustomizableBackpacks.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity = 53")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity = 36")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity = 23")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity = 23")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity = 24")

        
    elseif SandboxVars.CustomizableBackpacks.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity = 61")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity = 42")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity = 35")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity = 14")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity = 14")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity = 21")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity = 21")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity = 26")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity = 26")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity = 28")

        
    elseif SandboxVars.CustomizableBackpacks.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity = 70")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity = 48")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity = 32")

        
    elseif SandboxVars.CustomizableBackpacks.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity = 72")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity = 60")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity = 36")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity = 36")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity = 45")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity = 45")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity = 48")

        
    elseif SandboxVars.CustomizableBackpacks.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity = 120")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity = 60")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity = 60")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity = 80")

        
    elseif SandboxVars.CustomizableBackpacks.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity = 20")

        
    elseif SandboxVars.CustomizableBackpacks.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableBackpacks.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Capacity = 75")


    end


    if SandboxVars.CustomizableBags.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity = 7.5")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity = 7.5")


    elseif SandboxVars.CustomizableBags.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity = 10")


    elseif SandboxVars.CustomizableBags.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity = 17")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity = 11")


    elseif SandboxVars.CustomizableBags.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity = 21")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity = 14")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity = 13")


    elseif SandboxVars.CustomizableBags.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity  = "..RandomCapacity)


        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBags.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableBags.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity = 13")


    elseif SandboxVars.CustomizableBags.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity = 15")


    elseif SandboxVars.CustomizableBags.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 14")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity = 28")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity = 28")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity = 28")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity = 28")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity = 21")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity = 18")


    elseif SandboxVars.CustomizableBags.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity = 32")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity = 32")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity = 32")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity = 32")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableBags.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity = 48")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity = 48")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity = 48")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity = 48")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity = 36")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableBags.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity = 80")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity = 80")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity = 80")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity = 80")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity = 60")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableBags.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableBags.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableBags.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableBags.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableBags.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableBags.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Capacity = 75")


    end


    if SandboxVars.CustomizableFannyPacks.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity = 3")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity = 4")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity = 4")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity = 5")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity  = "..RandomCapacity)


        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity  = "..RandomCapacity)


        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity = 5")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity = 6")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity = 7")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity = 8")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity = 12")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableFannyPacks.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Capacity = 75")


    end


    if SandboxVars.CustomizableContainers.Capacity == 1 then  -- Capacity = -25


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity = 225")

        getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity = 225")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity = 225")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity = 7.5")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity = 143")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity = 135")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity = 128")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity = 120")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity = 113")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity = 7.5")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity = 7.5")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity = 19")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity = 7.5")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity = 7.5")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity = 7.5")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity = 1013")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity = 1013")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity = 1013")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity = 225")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity = 225")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity = 225")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity = 225")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity = 375")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity = 7.5")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity = 7.5")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity = 1.5")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity = 1.5")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity = 1.5")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity = 1.5")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity = 1.5")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity = 1.5")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity = 0.75")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity = 750")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity = 750")

        getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity = 53")

        getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity = 53")

        getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity = 225")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity = 300")


    elseif SandboxVars.CustomizableContainers.Capacity == 2 then  -- Capacity = Vanilla


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity = 27")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity = 27")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity = 27")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity = 27")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity = 27")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity = 27")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity = 27")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity = 27")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity = 27")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity = 27")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity = 27")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity = 190")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity = 180")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity = 170")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity = 160")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity = 32")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity = 32")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity = 1350")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity = 1350")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity = 1350")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity = 2")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity = 2")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity = 2")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity = 2")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity = 2")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity = 2")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity = 1")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity = 1000")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity = 1000")

        getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity = 70")

        getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity = 70")

        getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity = 400")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity = 400")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity = 400")


    elseif SandboxVars.CustomizableContainers.Capacity == 3 then  -- Capacity = Well Balanced


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity = 29")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity = 29")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity = 29")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity = 29")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity = 29")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity = 29")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity = 29")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity = 29")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity = 29")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity = 29")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity = 29")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity = 17")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity = 22")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity = 205")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity = 205")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity = 305")

        getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity = 305")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity = 305")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity = 205")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity = 195")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity = 185")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity = 205")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity = 165")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity = 155")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity = 27")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity = 22")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity = 22")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity = 34")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity = 34")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity = 17")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity = 1360")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity = 1360")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity = 1360")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity = 305")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity = 305")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity = 305")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity = 305")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity = 510")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity = 205")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity = 22")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity = 22")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity = 205")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity = 22")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity = 42")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity = 106")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity = 1010")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity = 1010")

        getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity = 110")

        getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity = 110")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity = 310")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity = 410")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity = 410")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity = 410")


    elseif SandboxVars.CustomizableContainers.Capacity == 4 then  -- Capacity = Balanced


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity = 31")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity = 31")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity = 31")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity = 31")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity = 31")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity = 31")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity = 31")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity = 31")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity = 31")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity = 31")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity = 31")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity = 55")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity = 55")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity = 215")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity = 225")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity = 325")

        getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity = 325")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity = 325")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity = 14")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity = 225")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity = 205")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity = 195")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity = 185")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity = 225")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity = 165")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity = 29")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity = 14")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity = 37")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity = 37")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity = 19")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity = 17")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity = 1380")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity = 1380")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity = 1380")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity = 325")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity = 325")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity = 325")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity = 325")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity = 55")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity = 525")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity = 55")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity = 225")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity = 55")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity = 55")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity = 55")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity = 55")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity = 55")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity = 55")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity = 225")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity = 2")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity = 55")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity = 45")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity = 55")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity = 55")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity = 52")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity = 55")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity = 116")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity = 55")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity = 1025")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity = 1025")

        getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity = 80")

        getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity = 80")

        getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity = 115")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity = 320")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity = 420")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity = 420")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity = 420")


    elseif SandboxVars.CustomizableContainers.Capacity == 5 then  -- Capacity = Random - Well Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableContainers.Capacity == 6 then  -- Capacity = Random - Balanced


        function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity  = "..RandomCapacity)

            getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity  = "..RandomCapacity)

        end
        Events.EveryHours.Add(CustomizableCapacityRandomizer)
        Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
        Events.OnLoad.Add(CustomizableCapacityRandomizer)


    elseif SandboxVars.CustomizableContainers.Capacity == 7 then  -- Capacity = +25


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity = 34")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity = 34")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity = 34")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity = 34")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity = 34")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity = 34")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity = 34")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity = 34")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity = 34")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity = 34")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity = 34")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity = 63")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity = 63")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity = 375")

        getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity = 375")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity = 375")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity = 238")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity = 225")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity = 213")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity = 188")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity = 19")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity = 31")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity = 19")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity = 1688")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity = 1688")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity = 1688")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity = 375")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity = 375")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity = 375")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity = 375")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity = 63")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity = 625")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity = 63")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity = 63")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity = 63")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity = 63")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity = 63")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity = 63")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity = 63")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity = 13")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity = 2")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity = 63")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity = 63")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity = 63")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity = 63")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity = 63")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity = 63")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity = 1250")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity = 1250")

        getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity = 375")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity = 500")


    elseif SandboxVars.CustomizableContainers.Capacity == 8 then  -- Capacity = +50


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity = 41")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity = 41")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity = 41")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity = 41")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity = 41")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity = 41")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity = 41")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity = 41")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity = 41")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity = 41")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity = 41")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity = 14")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity = 14")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity = 450")

        getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity = 450")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity = 450")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity = 285")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity = 270")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity = 255")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity = 240")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity = 225")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity = 23")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity = 38")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity = 48")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity = 48")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity = 23")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity = 2025")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity = 2025")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity = 2025")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity = 450")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity = 450")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity = 450")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity = 450")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity = 750")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity = 2")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity = 60")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity = 1500")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity = 1500")

        getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity = 105")

        getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity = 450")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity = 600")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity = 600")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity = 600")


    elseif SandboxVars.CustomizableContainers.Capacity == 9 then  -- Capacity = +75


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity = 47")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity = 47")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity = 47")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity = 47")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity = 47")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity = 47")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity = 47")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity = 47")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity = 47")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity = 47")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity = 47")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity = 28")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity = 35")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity = 350")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity = 350")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity = 525")

        getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity = 525")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity = 525")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity = 350")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity = 333")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity = 315")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity = 298")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity = 350")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity = 280")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity = 263")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity = 14")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity = 26")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 14")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 14")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity = 7")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity = 21")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity = 44")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity = 35")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity = 35")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity = 56")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity = 56")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity = 14")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity = 28")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity = 26")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity = 2363")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity = 2363")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity = 2363")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity = 525")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity = 525")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity = 525")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity = 525")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity = 14")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity = 11")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity = 875")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity = 350")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity = 35")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity = 35")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity = 350")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity = 2")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity = 35")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity = 70")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity = 9")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity = 88")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity = 1750")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity = 1750")

        getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity = 123")

        getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity = 123")

        getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity = 175")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity = 525")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity = 700")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity = 700")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity = 700")


    elseif SandboxVars.CustomizableContainers.Capacity == 10 then  -- Capacity = 2x


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity = 54")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity = 54")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity = 54")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity = 54")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity = 54")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity = 54")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity = 54")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity = 54")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity = 54")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity = 54")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity = 54")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity = 32")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity = 400")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity = 400")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity = 600")

        getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity = 600")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity = 600")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity = 400")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity = 380")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity = 360")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity = 340")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity = 400")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity = 320")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity = 8")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity = 64")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity = 64")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity = 32")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity = 2700")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity = 2700")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity = 2700")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity = 600")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity = 600")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity = 600")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity = 600")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity = 16")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity = 1000")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity = 400")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity = 400")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity = 4")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity = 2")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity = 80")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity = 2000")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity = 2000")

        getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity = 140")

        getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity = 140")

        getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity = 600")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity = 800")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity = 800")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity = 800")


    elseif SandboxVars.CustomizableContainers.Capacity == 11 then  -- Capacity = 3x


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity = 81")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity = 81")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity = 81")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity = 81")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity = 81")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity = 81")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity = 81")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity = 81")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity = 81")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity = 81")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity = 81")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity = 27")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity = 48")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity = 27")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity = 60")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity = 600")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity = 600")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity = 900")

        getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity = 900")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity = 900")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity = 600")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity = 570")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity = 540")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity = 510")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity = 600")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity = 480")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity = 450")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity = 45")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity = 12")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity = 36")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity = 60")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity = 60")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity = 96")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity = 96")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity = 48")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity = 45")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity = 4050")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity = 4050")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity = 4050")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity = 900")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity = 900")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity = 900")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity = 900")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity = 24")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity = 18")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity = 1500")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity = 600")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity = 60")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity = 60")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity = 600")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity = 6")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity = 3")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity = 60")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity = 120")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity = 15")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity = 150")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity = 3000")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity = 3000")

        getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity = 210")

        getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity = 210")

        getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity = 300")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity = 900")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity = 1200")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity = 1200")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity = 1200")


    elseif SandboxVars.CustomizableContainers.Capacity == 12 then  -- Capacity = 5x


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity = 135")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity = 135")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity = 135")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity = 135")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity = 135")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity = 135")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity = 135")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity = 135")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity = 135")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity = 135")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity = 135")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity = 45")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity = 80")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity = 45")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity = 1000")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity = 1000")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity = 1500")

        getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity = 1500")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity = 1500")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity = 1000")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity = 950")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity = 900")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity = 850")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity = 1000")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity = 800")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity = 750")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity = 60")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity = 125")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity = 160")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity = 160")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity = 80")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity = 6750")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity = 6750")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity = 6750")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity = 1500")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity = 1500")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity = 1500")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity = 1500")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity = 2500")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity = 1000")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity = 1000")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity = 10")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity = 5")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity = 100")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity = 200")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity = 250")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity = 5000")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity = 5000")

        getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity = 350")

        getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity = 350")

        getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity = 500")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity = 1500")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity = 2000")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity = 2000")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity = 2000")


    elseif SandboxVars.CustomizableContainers.Capacity == 13 then  -- Capacity = 20


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity = 20")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity = 20")


    elseif SandboxVars.CustomizableContainers.Capacity == 14 then  -- Capacity = 25


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity = 25")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity = 25")


    elseif SandboxVars.CustomizableContainers.Capacity == 15 then  -- Capacity = 30


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity = 30")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity = 30")


    elseif SandboxVars.CustomizableContainers.Capacity == 16 then  -- Capacity = 40


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity = 40")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity = 40")


    elseif SandboxVars.CustomizableContainers.Capacity == 17 then  -- Capacity = 50


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity = 50")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity = 50")


    elseif SandboxVars.CustomizableContainers.Capacity == 18 then  -- Capacity = 75


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWagonoxen"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredoxen"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCDonkeymalepack"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCDonkeyfemalepack"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCHorsemalesaddle"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCHorsefemalesaddle"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsemale"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsemale"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWagonhorsefemale"):DoParam("Capacity = 75")

        getScriptManager():getItem("Hydrocraft.HCWagoncoveredhorsefemale"):DoParam("Capacity = 75")


    end
end


function getWeightVars()
    if SandboxVars.CustomizableBackpacks.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Weight = 0.8")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Weight = 0.7")

        
    elseif SandboxVars.CustomizableBackpacks.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Weight = 0.6")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Weight = 1.13")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Weight = 0.53")

        
    elseif SandboxVars.CustomizableBackpacks.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Weight = 0.4")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Weight = 0.35")

        
    elseif SandboxVars.CustomizableBackpacks.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Weight = 0.375")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Weight = 0.175")

        
    elseif SandboxVars.CustomizableBackpacks.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("Weight = 0.0")

        
    end


    if SandboxVars.CustomizableBags.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Weight = 0.4")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Weight = 1")


    elseif SandboxVars.CustomizableBags.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Weight = 0.75")


    elseif SandboxVars.CustomizableBags.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Weight = 0.5")


    elseif SandboxVars.CustomizableBags.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Weight = 0.025")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Weight = 0.025")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Weight = 0.25")


    elseif SandboxVars.CustomizableBags.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("Weight = 0.0")


    end


    if SandboxVars.CustomizableFannyPacks.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Weight = 0.2")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Weight = 0.15")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Weight = 0.1")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Weight = 0.05")


    elseif SandboxVars.CustomizableFannyPacks.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("Weight = 0.0")


    end


    if SandboxVars.CustomizableContainers.Weight == 1 then  -- Weight = Well Balanced


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Weight = 4")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Weight = 4")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Weight = 4")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Weight = 4")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Weight = 4")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Weight = 4")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Weight = 4")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Weight = 4")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Weight = 4")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Weight = 4")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Weight = 4")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Weight = 20")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Weight = 10000")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Weight = 20")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Weight = 20")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Weight = 20")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Weight = 15")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Weight = 7")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Weight = 20")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Weight = 6")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Weight = 1.2")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Weight = 0.8")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Weight = 0.6")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Weight = 0.8")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Weight = 0.4")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Weight = 4")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Weight = 45")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Weight = 45")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Weight = 50")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Weight = 10000")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Weight = 30")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Weight = 30")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Weight = 12")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Weight = 10000")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Weight = 10000")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Weight = 10000")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Weight = 20")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Weight = 0.4")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Weight = 15")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Weight = 3")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Weight = 6")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Weight = 0.6")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Weight = 0.6")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Weight = 0.6")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Weight = 0.6")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Weight = 1000")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Weight = 1000")


    elseif SandboxVars.CustomizableContainers.Weight == 2 then  -- Weight = -25


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Weight = 3")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Weight = 3")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Weight = 3")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Weight = 3")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Weight = 3")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Weight = 3")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Weight = 3")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Weight = 3")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Weight = 3")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Weight = 3")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Weight = 3")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Weight = 4")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Weight = 7.5")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Weight = 7.5")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Weight = 15")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Weight = 7.5")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Weight = 7500")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Weight = 15")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Weight = 15")

       getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Weight = 15")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Weight = 11")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Weight = 7.5")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Weight = 5.25")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Weight = 15")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Weight = 4")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Weight = 0.9")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Weight = 0.6")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Weight = 0.6")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Weight = 7.5")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Weight = 0.15")

       getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Weight = 3")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Weight = 1.13")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Weight = 34")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Weight = 34")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Weight = 38")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Weight = 7.5")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Weight = 7.5")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Weight = 7.5")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Weight = 7.5")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Weight = 7.5")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Weight = 7500")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Weight = 3.5")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Weight = 22.5")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Weight = 22.5")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Weight = 9")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Weight = 7500")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Weight = 7500")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Weight = 7500")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Weight = 15")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Weight = 11.3")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Weight = 0.35")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Weight = 7.5")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Weight = 2.25")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Weight = 7.5")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Weight = 750")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Weight = 750")


    elseif SandboxVars.CustomizableContainers.Weight == 3 then  -- Weight = -50


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Weight = 2.5")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Weight = 5000")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Weight = 7.5")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Weight = 3.5")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Weight = 3")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Weight = 2.5")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Weight = 0.6")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Weight = 0.4")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Weight = 0.4")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Weight = 22.5")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Weight = 22.5")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Weight = 25")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Weight = 5000")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Weight = 2.5")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Weight = 15")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Weight = 15")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Weight = 6")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Weight = 5000")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Weight = 5000")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Weight = 5000")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Weight = 10")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Weight = 7.5")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Weight = 3")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Weight = 500")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Weight = 500")


    elseif SandboxVars.CustomizableContainers.Weight == 4 then  -- Weight = -75


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Weight = 2")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Weight = 1.25")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Weight = 2.5")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Weight = 2.5")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Weight = 2.5")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Weight = 2500")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Weight = 0.025")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Weight = 3.75")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Weight = 2.5")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Weight = 1.75")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Weight = 1.25")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Weight = 0.025")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Weight = 0.025")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Weight = 0.3")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Weight = 0.2")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Weight = 2.5")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Weight = 0.5")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Weight = 1")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Weight = 0.025")

       getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Weight = 0.375")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Weight = 11.25")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Weight = 11.25")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Weight = 12.5")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Weight = 2.5")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Weight = 2.5")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Weight = 2.5")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Weight = 2.5")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Weight = 2.5")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Weight = 0.025")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Weight = 2500")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Weight = 1.13")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Weight = 7.5")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Weight = 7.5")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Weight = 3")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Weight = 2500")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Weight = 2500")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Weight = 2500")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Weight = 5")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Weight = 0.1")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Weight = 3.75")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Weight = 0.25")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Weight = 0.13")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Weight = 2.5")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Weight = 0.75")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Weight = 1.5")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Weight = 0.15")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Weight = 2.5")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Weight = 250")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Weight = 250")


    elseif SandboxVars.CustomizableContainers.Weight == 5 then  -- Weight = Weightless


        getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("Weight = 0.0")

       getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("Weight = 0.0")


    end
end

function getRunSpeedModifierVars()
	if SandboxVars.CustomizableBackpacks.RemoveRunSpeedModifier == true then
	else return end
	
	
		getScriptManager():getItem("Hydrocraft.HCBarrelmetalempty"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCBarrelblueempty"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelempty"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCAmmoniabarrelblueempty"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelempty"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCMethylaminbarrelblueempty"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCPhenylbarrelempty"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCPhenylbarrelblueempty"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelempty"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCSulfuricacidbarrelblueempty"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCGasolinebarrelempty"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCWickerbasket"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCBirchbarkbasket"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCStrawbasket"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCBirchbarkcup"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCClothhamper"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCWorkbench"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCCarpenterbench"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCWoodenwheelbarrow"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCHuntingblind"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCHuntingblind2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCWagon"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCWagoncovered"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCAlicepack3"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCCampingpack"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCClimbingpack"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCPrepperbag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCWheelbarrow"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCPallettruck"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCPushcart"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCHanddolly"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCForklift"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCShoppingcart"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCToywagon"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCPaperbag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCPaperlunchbag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCFannypackblue"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCFannypackyellow"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCFannypackred"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCFannypackgreen"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCBriefcase"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCDuralumincase"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCMessengerbag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCPizzadeliverybag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCMailbag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCSatchel"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCClothtotebag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCMedicalbag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCMedicalbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCGolfbag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCCosmeticcase"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCLunchbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCSeedbag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCShoebox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCToolbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCWoodentoolbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCMetalbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCFishingbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCFishingbasket"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCWoodencrate"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCToychest"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCWardrobe"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCPlasticbin"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCPlasticbin2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCCardboardbox"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCLeatherbag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCSuitcase"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCLuggage"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCLuggage2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCTrunk"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCChest"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCCooler"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCIcechest"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCPillowcase"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCImprovisedbackpack"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCImprovisedhandbag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCBindle"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCShoulderpole"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCShipcrate1"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCShipcrate2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCShipcrate3"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCShipcrate4"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCShipcrate5"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCShipcrate6"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCShipcrate7"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCDistillery2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCElectornicsbench2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCSteamCharger2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCGardenbench"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCStocking"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCCandybucket"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCSteamhammer2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCFurnace2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCFurnacearc2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCJunkyardlargefull2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCSled"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCLab2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCLabbig2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.MetalSafe"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.MetalSafeClosed"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.MetalSafeClosedInner"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.MetalSafeCombo"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.MetalSafeComboClosed"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.MetalSafeComboClosedInner"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCMedicallab2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCBodybag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCSmelter2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCBlastfurnace2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCAnvil2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCAnvillead2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCDarkmine3B"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCMinecart"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCPiggybankopen"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCWallet"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCWallet2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCWallet3"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCWallet4"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCGuitarcase"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCHorsesaddle"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCAnimalcage"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCBirdcage"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCAnimalcagesmall"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCPhotobench"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCClayurn"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCClayurnlarge"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCTentsleepin"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCTent2sleepin"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCTent3sleepin"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCTent4sleepin"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCAnvilstone2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCTailoringbench2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCTaxidermyworkbench"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCHelicopterL"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Hydrocraft.HCHelicopterR"):DoParam("RunSpeedModifier = 1.0")
	
		
	end

Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars) 
Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)