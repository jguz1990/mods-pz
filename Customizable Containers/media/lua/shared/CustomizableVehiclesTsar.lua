

function getVehicleCapacityVars()
    if SandboxVars.CustomizableVehicles.Capacity == 1 then  -- Off
        do return end


    elseif SandboxVars.CustomizableVehicles.Capacity == 2 then  -- Well Balanced


        function TsaramclubCapacity()
            if getActivatedMods():contains("amclub") then
            else return end

            getScriptManager():getItem("Autotsar.ATAMotoBagBMW1"):DoParam("MaxCapacity = 17")

            getScriptManager():getItem("Autotsar.ATAMotoBagBMW2"):DoParam("MaxCapacity = 20")

            getScriptManager():getItem("Autotsar.ATAMotoBMWOldTire"):DoParam("MaxCapacity = 35")

            getScriptManager():getItem("Autotsar.ATAMotoBMWNormalTire"):DoParam("MaxCapacity = 40")

            getScriptManager():getItem("Autotsar.ATAMotoBMWModernTire"):DoParam("MaxCapacity = 45")

            getScriptManager():getItem("Autotsar.ATAMotoBMWGasTank"):DoParam("MaxCapacity = 44")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyBag"):DoParam("MaxCapacity = 10")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyOldTire"):DoParam("MaxCapacity = 35")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyNormalTire"):DoParam("MaxCapacity = 40")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyModernTire"):DoParam("MaxCapacity = 45")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyGasTank"):DoParam("MaxCapacity = 48")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyHolster"):DoParam("MaxCapacity = 10")
        end
        Events.OnLoad.Add(TsaramclubCapacity)
        
        
        function TsarYachtCapacity()
            if getActivatedMods():contains("AquatsarYachtClub") then
            else return end

            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat1"):DoParam("MaxCapacity = 25")

            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat2"):DoParam("MaxCapacity = 25")
            
            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat3"):DoParam("MaxCapacity = 25")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal1"):DoParam("MaxCapacity = 40")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal2"):DoParam("MaxCapacity = 40")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal3"):DoParam("MaxCapacity = 40")
        end
        Events.OnLoad.Add(TsarYachtCapacity)
        
        
        function TsarBusCapacity()
            if getActivatedMods():contains("ATA_Bus") then
            else return end

            getScriptManager():getItem("Autotsar.ATA_Bus_Roof_Rack"):DoParam("MaxCapacity = 100")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Roof_Box_Item"):DoParam("MaxCapacity = 50")
        end
        Events.OnLoad.Add(TsarBusCapacity)
        
        
        function TsarDadgeCapacity()
            if getActivatedMods():contains("ATA_Dadge") then
            else return end

            getScriptManager():getItem("Autotsar.ATADodgeRoofRackItem"):DoParam("MaxCapacity = 40")
            
            getScriptManager():getItem("Autotsar.ATADodgeWindowRackItem"):DoParam("MaxCapacity = 35")
        end
        Events.OnLoad.Add(TsarDadgeCapacity)
        
        
        function TsarJeepCapacity()
            if getActivatedMods():contains("ATA_Jeep") then
            else return end

            getScriptManager():getItem("Autotsar.ATAJeepInteractiveTrunkRoofRackItem"):DoParam("MaxCapacity = 80")
            
            getScriptManager():getItem("Autotsar.ATAJeepInteractiveTrunkWheelRackItem"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Autotsar.ATAJeepRoofTentItem"):DoParam("MaxCapacity = 35")
        end
        Events.OnLoad.Add(TsarJeepCapacity)
        
        
        function TsarMustangCapacity()
            if getActivatedMods():contains("ATA_Mustang") then
            else return end

            getScriptManager():getItem("Autotsar.ATAMustangRoofRackItem"):DoParam("MaxCapacity = 65")
        end
        Events.OnLoad.Add(TsarMustangCapacity)
        
        
        function TsarTrailersCapacity()
            if getActivatedMods():contains("autotsartrailers") then
            else return end

            getScriptManager():getItem("Autotsar.TrailerFirstTrunk"):DoParam("MaxCapacity = 520")
            
            getScriptManager():getItem("Autotsar.TrailerSecondTrunk"):DoParam("MaxCapacity = 520")
        end
        Events.OnLoad.Add(TsarTrailersCapacity)
        
        
        function TsarTrolleyCapacity()
            if getActivatedMods():contains("TMC_Trolley") then
            else return end

            getScriptManager():getItem("TMC.TrolleyContainer"):DoParam("Capacity = 60")
            
            getScriptManager():getItem("TMC.TrolleyContainer2"):DoParam("Capacity = 60")
            
            getScriptManager():getItem("TMC.CartContainer"):DoParam("Capacity = 60")
            
            getScriptManager():getItem("TMC.CartContainer2"):DoParam("Capacity = 60")
        end
        Events.OnLoad.Add(TsarTrolleyCapacity)
        
        
        function TsarLutonCapacity()
            if getActivatedMods():contains("ATA_Luton") then
            else return end

            
            getScriptManager():getItem("Autotsar.ATALutonInteractiveTrunkRoofRackItem"):DoParam("MaxCapacity = 210")
        end
        Events.OnLoad.Add(TsarLutonCapacity)
        
        
        function TsarVanDeRumbaCapacity()
            if getActivatedMods():contains("ATA_VanDeRumba") then
            else return end

            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaInteractiveTrunkRoofRackItem "):DoParam("MaxCapacity = 220")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbRoofBoxItem"):DoParam("MaxCapacity = 50")
        end
        Events.OnLoad.Add(TsarVanDeRumbaCapacity)


    elseif SandboxVars.CustomizableVehicles.Capacity == 3 then  -- Balanced


        function TsaramclubCapacity()
            if getActivatedMods():contains("amclub") then
            else return end

            getScriptManager():getItem("Autotsar.ATAMotoBagBMW1"):DoParam("MaxCapacity = 22")

            getScriptManager():getItem("Autotsar.ATAMotoBagBMW2"):DoParam("MaxCapacity = 25")

            getScriptManager():getItem("Autotsar.ATAMotoBMWOldTire"):DoParam("MaxCapacity = 40")

            getScriptManager():getItem("Autotsar.ATAMotoBMWNormalTire"):DoParam("MaxCapacity = 45")

            getScriptManager():getItem("Autotsar.ATAMotoBMWModernTire"):DoParam("MaxCapacity = 50")

            getScriptManager():getItem("Autotsar.ATAMotoBMWGasTank"):DoParam("MaxCapacity = 49")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyBag"):DoParam("MaxCapacity = 15")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyOldTire"):DoParam("MaxCapacity = 40")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyNormalTire"):DoParam("MaxCapacity = 45")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyModernTire"):DoParam("MaxCapacity = 50")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyGasTank"):DoParam("MaxCapacity = 53")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyHolster"):DoParam("MaxCapacity = 15")
        end
        Events.OnLoad.Add(TsaramclubCapacity)
        
        
        function TsarYachtCapacity()
            if getActivatedMods():contains("AquatsarYachtClub") then
            else return end

            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat1"):DoParam("MaxCapacity = 30")

            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat2"):DoParam("MaxCapacity = 30")
            
            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat3"):DoParam("MaxCapacity = 30")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal1"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal2"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal3"):DoParam("MaxCapacity = 45")
        end
        Events.OnLoad.Add(TsarYachtCapacity)
        
        
        function TsarBusCapacity()
            if getActivatedMods():contains("ATA_Bus") then
            else return end

            getScriptManager():getItem("Autotsar.ATA_Bus_Roof_Rack"):DoParam("MaxCapacity = 110")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Roof_Box_Item"):DoParam("MaxCapacity = 55")
        end
        Events.OnLoad.Add(TsarBusCapacity)
        
        
        function TsarDadgeCapacity()
            if getActivatedMods():contains("ATA_Dadge") then
            else return end

            getScriptManager():getItem("Autotsar.ATADodgeRoofRackItem"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Autotsar.ATADodgeWindowRackItem"):DoParam("MaxCapacity = 40")
        end
        Events.OnLoad.Add(TsarDadgeCapacity)
        
        
        function TsarJeepCapacity()
            if getActivatedMods():contains("ATA_Jeep") then
            else return end

            getScriptManager():getItem("Autotsar.ATAJeepInteractiveTrunkRoofRackItem"):DoParam("MaxCapacity = 85")
            
            getScriptManager():getItem("Autotsar.ATAJeepInteractiveTrunkWheelRackItem"):DoParam("MaxCapacity = 55")
            
            getScriptManager():getItem("Autotsar.ATAJeepRoofTentItem"):DoParam("MaxCapacity = 50")
        end
        Events.OnLoad.Add(TsarJeepCapacity)
        
        
        function TsarMustangCapacity()
            if getActivatedMods():contains("ATA_Mustang") then
            else return end

            getScriptManager():getItem("Autotsar.ATAMustangRoofRackItem"):DoParam("MaxCapacity = 75")
        end
        Events.OnLoad.Add(TsarMustangCapacity)
        
        
        function TsarTrailersCapacity()
            if getActivatedMods():contains("autotsartrailers") then
            else return end

            getScriptManager():getItem("Autotsar.TrailerFirstTrunk"):DoParam("MaxCapacity = 550")
            
            getScriptManager():getItem("Autotsar.TrailerSecondTrunk"):DoParam("MaxCapacity = 550")
        end
        Events.OnLoad.Add(TsarTrailersCapacity)
        
        
        function TsarTrolleyCapacity()
            if getActivatedMods():contains("TMC_Trolley") then
            else return end

            getScriptManager():getItem("TMC.TrolleyContainer"):DoParam("Capacity = 75")
            
            getScriptManager():getItem("TMC.TrolleyContainer2"):DoParam("Capacity = 75")
            
            getScriptManager():getItem("TMC.CartContainer"):DoParam("Capacity = 75")
            
            getScriptManager():getItem("TMC.CartContainer2"):DoParam("Capacity = 75")
        end
        Events.OnLoad.Add(TsarTrolleyCapacity)
        
        
        function TsarLutonCapacity()
            if getActivatedMods():contains("ATA_Luton") then
            else return end

            
            getScriptManager():getItem("Autotsar.ATALutonInteractiveTrunkRoofRackItem"):DoParam("MaxCapacity = 225")
        end
        Events.OnLoad.Add(TsarLutonCapacity)
        
        
        function TsarVanDeRumbaCapacity()
            if getActivatedMods():contains("ATA_VanDeRumba") then
            else return end

            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaInteractiveTrunkRoofRackItem "):DoParam("MaxCapacity = 250")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbRoofBoxItem"):DoParam("MaxCapacity = 60")
        end
        Events.OnLoad.Add(TsarVanDeRumbaCapacity)


    elseif SandboxVars.CustomizableVehicles.Capacity == 4 then  -- Boosted


        function TsaramclubCapacity()
            if getActivatedMods():contains("amclub") then
            else return end

            getScriptManager():getItem("Autotsar.ATAMotoBagBMW1"):DoParam("MaxCapacity = 32")

            getScriptManager():getItem("Autotsar.ATAMotoBagBMW2"):DoParam("MaxCapacity = 35")

            getScriptManager():getItem("Autotsar.ATAMotoBMWOldTire"):DoParam("MaxCapacity = 50")

            getScriptManager():getItem("Autotsar.ATAMotoBMWNormalTire"):DoParam("MaxCapacity = 55")

            getScriptManager():getItem("Autotsar.ATAMotoBMWModernTire"):DoParam("MaxCapacity = 60")

            getScriptManager():getItem("Autotsar.ATAMotoBMWGasTank"):DoParam("MaxCapacity = 59")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyBag"):DoParam("MaxCapacity = 25")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyOldTire"):DoParam("MaxCapacity = 50")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyNormalTire"):DoParam("MaxCapacity = 55")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyModernTire"):DoParam("MaxCapacity = 60")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyGasTank"):DoParam("MaxCapacity = 63")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyHolster"):DoParam("MaxCapacity = 25")
        end
        Events.OnLoad.Add(TsaramclubCapacity)
        
        
        function TsarYachtCapacity()
            if getActivatedMods():contains("AquatsarYachtClub") then
            else return end

            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat1"):DoParam("MaxCapacity = 50")

            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat2"):DoParam("MaxCapacity = 50")
            
            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat3"):DoParam("MaxCapacity = 50")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal1"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal2"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal3"):DoParam("MaxCapacity = 65")
        end
        Events.OnLoad.Add(TsarYachtCapacity)
        
        
        function TsarBusCapacity()
            if getActivatedMods():contains("ATA_Bus") then
            else return end

            getScriptManager():getItem("Autotsar.ATA_Bus_Roof_Rack"):DoParam("MaxCapacity = 120")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Roof_Box_Item"):DoParam("MaxCapacity = 65")
        end
        Events.OnLoad.Add(TsarBusCapacity)
        
        
        function TsarDadgeCapacity()
            if getActivatedMods():contains("ATA_Dadge") then
            else return end

            getScriptManager():getItem("Autotsar.ATADodgeRoofRackItem"):DoParam("MaxCapacity = 60")
            
            getScriptManager():getItem("Autotsar.ATADodgeWindowRackItem"):DoParam("MaxCapacity = 65")
        end
        Events.OnLoad.Add(TsarDadgeCapacity)
        
        
        function TsarJeepCapacity()
            if getActivatedMods():contains("ATA_Jeep") then
            else return end

            getScriptManager():getItem("Autotsar.ATAJeepInteractiveTrunkRoofRackItem"):DoParam("MaxCapacity = 90")
            
            getScriptManager():getItem("Autotsar.ATAJeepInteractiveTrunkWheelRackItem"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Autotsar.ATAJeepRoofTentItem"):DoParam("MaxCapacity = 60")
        end
        Events.OnLoad.Add(TsarJeepCapacity)
        
        
        function TsarMustangCapacity()
            if getActivatedMods():contains("ATA_Mustang") then
            else return end

            getScriptManager():getItem("Autotsar.ATAMustangRoofRackItem"):DoParam("MaxCapacity = 90")
        end
        Events.OnLoad.Add(TsarMustangCapacity)
        
        
        function TsarTrailersCapacity()
            if getActivatedMods():contains("autotsartrailers") then
            else return end

            getScriptManager():getItem("Autotsar.TrailerFirstTrunk"):DoParam("MaxCapacity = 575")
            
            getScriptManager():getItem("Autotsar.TrailerSecondTrunk"):DoParam("MaxCapacity = 575")
        end
        Events.OnLoad.Add(TsarTrailersCapacity)
        
        
        function TsarTrolleyCapacity()
            if getActivatedMods():contains("TMC_Trolley") then
            else return end

            getScriptManager():getItem("TMC.TrolleyContainer"):DoParam("Capacity = 90")
            
            getScriptManager():getItem("TMC.TrolleyContainer2"):DoParam("Capacity = 90")
            
            getScriptManager():getItem("TMC.CartContainer"):DoParam("Capacity = 90")
            
            getScriptManager():getItem("TMC.CartContainer2"):DoParam("Capacity = 90")
        end
        Events.OnLoad.Add(TsarTrolleyCapacity)
        
        
        function TsarLutonCapacity()
            if getActivatedMods():contains("ATA_Luton") then
            else return end

            
            getScriptManager():getItem("Autotsar.ATALutonInteractiveTrunkRoofRackItem"):DoParam("MaxCapacity = 250")
        end
        Events.OnLoad.Add(TsarLutonCapacity)
        
        
        function TsarVanDeRumbaCapacity()
            if getActivatedMods():contains("ATA_VanDeRumba") then
            else return end

            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaInteractiveTrunkRoofRackItem "):DoParam("MaxCapacity = 290")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbRoofBoxItem"):DoParam("MaxCapacity = 80")
        end
        Events.OnLoad.Add(TsarVanDeRumbaCapacity)


    elseif SandboxVars.CustomizableVehicles.Capacity == 5 then  -- 300


        function TsaramclubCapacity()
            if getActivatedMods():contains("amclub") then
            else return end

            getScriptManager():getItem("Autotsar.ATAMotoBagBMW1"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Autotsar.ATAMotoBagBMW2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Autotsar.ATAMotoBMWOldTire"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Autotsar.ATAMotoBMWNormalTire"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Autotsar.ATAMotoBMWModernTire"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Autotsar.ATAMotoBMWGasTank"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyBag"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyOldTire"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyNormalTire"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyModernTire"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyGasTank"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Autotsar.ATAMotoHarleyHolster"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(TsaramclubCapacity)
        
        
        function TsarYachtCapacity()
            if getActivatedMods():contains("AquatsarYachtClub") then
            else return end

            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat1"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat3"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal1"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal3"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(TsarYachtCapacity)
        
        
        function TsarBusCapacity()
            if getActivatedMods():contains("ATA_Bus") then
            else return end

            getScriptManager():getItem("Autotsar.ATA_Bus_Roof_Rack"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Roof_Box_Item"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(TsarBusCapacity)
        
        
        function TsarDadgeCapacity()
            if getActivatedMods():contains("ATA_Dadge") then
            else return end

            getScriptManager():getItem("Autotsar.ATADodgeRoofRackItem"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Autotsar.ATADodgeWindowRackItem"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(TsarDadgeCapacity)
        
        
        function TsarJeepCapacity()
            if getActivatedMods():contains("ATA_Jeep") then
            else return end

            getScriptManager():getItem("Autotsar.ATAJeepInteractiveTrunkRoofRackItem"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Autotsar.ATAJeepInteractiveTrunkWheelRackItem"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Autotsar.ATAJeepRoofTentItem"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(TsarJeepCapacity)
        
        
        function TsarMustangCapacity()
            if getActivatedMods():contains("ATA_Mustang") then
            else return end

            getScriptManager():getItem("Autotsar.ATAMustangRoofRackItem"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(TsarMustangCapacity)
        
        
        function TsarTrailersCapacity()
            if getActivatedMods():contains("autotsartrailers") then
            else return end

            getScriptManager():getItem("Autotsar.TrailerFirstTrunk"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Autotsar.TrailerSecondTrunk"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(TsarTrailersCapacity)
        
        
        function TsarTrolleyCapacity()
            if getActivatedMods():contains("TMC_Trolley") then
            else return end

            getScriptManager():getItem("TMC.TrolleyContainer"):DoParam("Capacity = 300")
            
            getScriptManager():getItem("TMC.TrolleyContainer2"):DoParam("Capacity = 300")
            
            getScriptManager():getItem("TMC.CartContainer"):DoParam("Capacity = 300")
            
            getScriptManager():getItem("TMC.CartContainer2"):DoParam("Capacity = 300")
        end
        Events.OnLoad.Add(TsarTrolleyCapacity)
        
        
        function TsarLutonCapacity()
            if getActivatedMods():contains("ATA_Luton") then
            else return end

            
            getScriptManager():getItem("Autotsar.ATALutonInteractiveTrunkRoofRackItem"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(TsarLutonCapacity)
        
        
        function TsarVanDeRumbaCapacity()
            if getActivatedMods():contains("ATA_VanDeRumba") then
            else return end

            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaInteractiveTrunkRoofRackItem "):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbRoofBoxItem"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(TsarVanDeRumbaCapacity)


    end
end

function getVehicleWeightVars()
    if SandboxVars.CustomizableVehicles.Weight == 1 then  -- Normal
            do return end


    elseif SandboxVars.CustomizableVehicles.Weight == 2 then  -- -25


        function TsarAgroWeight()
            if getActivatedMods():contains("agrotsar") then
            else return end

            getScriptManager():getItem("Agrotsar.ASeederTankSmall"):DoParam("Weight = 4.5")

            getScriptManager():getItem("Agrotsar.ASeederTankMedium"):DoParam("Weight = 5")

            getScriptManager():getItem("Agrotsar.ASeederTankLarge"):DoParam("Weight = 6")

            getScriptManager():getItem("Agrotsar.ASeederPlate"):DoParam("Weight = 0.75")

            getScriptManager():getItem("Agrotsar.APlowshare"):DoParam("Weight = 0.75")
        end
        Events.OnLoad.Add(TsarAgroWeight)
        
        
        function TsaramclubWeight()
            if getActivatedMods():contains("amclub") then
            else return end

            getScriptManager():getItem("Autotsar.ATAMotoBagBMW1"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("Autotsar.ATAMotoBagBMW2"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWCustomMuffler"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWClassicMuffler"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWOldTire"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWNormalTire"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWModernTire"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWGasTank"):DoParam("Weight = 9")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWSeat"):DoParam("Weight = 7")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWSeatCustom"):DoParam("Weight = 4.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyBag"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyMuffler"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyOldTire"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyNormalTire"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyModernTire"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyGasTank"):DoParam("Weight = 9")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyHolster"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleySeat"):DoParam("Weight = 4.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoQuadSeat"):DoParam("Weight = 4.5")
        end
        Events.OnLoad.Add(TsaramclubWeight)
        
        
        function TsarYachtWeight()
            if getActivatedMods():contains("AquatsarYachtClub") then
            else return end

            getScriptManager():getItem("Aquatsar.BoatPropeller"):DoParam("Weight = 15")

            getScriptManager():getItem("Aquatsar.ManualStarter"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("Aquatsar.Sails"):DoParam("Weight = 15")
            
            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat1"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat2"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat3"):DoParam("Weight = 11")

            getScriptManager():getItem("Aquatsar.AirBagNormal1"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal2"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal3"):DoParam("Weight = 11")
        end
        Events.OnLoad.Add(TsarYachtWeight)
        
        
        function TsarBusWeight()
            if getActivatedMods():contains("ATA_Bus") then
            else return end

            getScriptManager():getItem("Autotsar.ATA_Bus_Roof_Rack"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Roof_Box_Item"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Kengur_1_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Kengur_2_Item"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Kengur_3_Item"):DoParam("Weight = 15")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_door_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_door_rear_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_wheels_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_windows_front_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_windows_right_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_windows_left_Item"):DoParam("Weight = 7.5")
        end
        Events.OnLoad.Add(TsarBusWeight)
        
        
        function TsarDadgeWeight()
            if getActivatedMods():contains("ATA_Dadge") then
            else return end

            getScriptManager():getItem("Autotsar.ATADodgeRoofRackItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATADodgeWindowRackItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATADodgeBullbar1Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATADodgeBullbar2Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATADodgeBullbar3Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATADodgeProtectionWindowSideItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATADodgeProtectionWindowFrontItem"):DoParam("Weight = 7.5")
        end
        Events.OnLoad.Add(TsarDadgeWeight)
        
        
        function TsarJeepWeight()
            if getActivatedMods():contains("ATA_Jeep") then
            else return end

            getScriptManager():getItem("Autotsar.ATAJeepBumper1Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepBumper2Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepBumper3Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepBumper4Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepProtectionWindowItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepProtectionWindowFrontItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepProtectionWindowRearItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepRoofBaseItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepInteractiveTrunkRoofRackItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepInteractiveTrunkWheelRackItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepRoofTentItem"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Autotsar.ATAJeepSnorkelItem"):DoParam("Weight = 1.5")
        end
        Events.OnLoad.Add(TsarJeepWeight)
        
        
        function TsarMustangWeight()
            if getActivatedMods():contains("ATA_Mustang") then
            else return end

            getScriptManager():getItem("Autotsar.ATAMustangBullbar1Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangBullbar2Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangBullbar3Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangHood2Item3"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Autotsar.ATAMustangHood3Item3"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Autotsar.ATAMustangHood4Item3"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Autotsar.ATAMustangFendersWideItem"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangSkirtsSideItem"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangSpoilerFrontItem"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangSpoilerRear1Item"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangSpoilerRear2Item"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangProtectionWindowLeftItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangProtectionWindowRightItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangProtectionWindowFrontItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangProtectionWindowRearItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangRoofRackItem"):DoParam("Weight = 7.5")
        end
        Events.OnLoad.Add(TsarMustangWeight)
        
        
        function TsarPetyarWeight()
            if getActivatedMods():contains("ATA_Petyarbuilt") then
            else return end

            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionSleeperItem"):DoParam("Weight = 15")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionRearWheelsItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionGasTankItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionSideItem"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionSideFrontItem"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionSideTopItem"):DoParam("Weight = 7.5")
        end
        Events.OnLoad.Add(TsarPetyarWeight)
        
        
        function TsarTrailersWeight()
            if getActivatedMods():contains("autotsartrailers") then
            else return end

            getScriptManager():getItem("Autotsar.TrailerFirstTrunk"):DoParam("Weight = 37.5")
            
            getScriptManager():getItem("Autotsar.TrailerSecondTrunk"):DoParam("Weight = 37.5")
        end
        Events.OnLoad.Add(TsarTrailersWeight)
        
        
        function TsarTrolleyWeight()
            if getActivatedMods():contains("TMC_Trolley") then
            else return end

            getScriptManager():getItem("TMC.TrolleyContainer"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("TMC.TrolleyContainer2"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("TMC.CartContainer"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("TMC.CartContainer2"):DoParam("Weight = 0.75")
        end
        Events.OnLoad.Add(TsarTrolleyWeight)
        
        
        function TsarLutonCapacity()
            if getActivatedMods():contains("ATA_Luton") then
            else return end

            
            getScriptManager():getItem("Autotsar.ATALutonProtectionSideFrontItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATALutonProtectionHoodItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATALutonProtectionWindowFrontSideItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATALutonProtectionWindowFrontItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATALutonInteractiveTrunkRoofRackItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATALutonLadderItem"):DoParam("Weight = 7.5")
        end
        Events.OnLoad.Add(TsarLutonCapacity)
        
        
        function TsarVanDeRumbaWeight()
            if getActivatedMods():contains("ATA_VanDeRumba") then
            else return end

            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaBullbar1Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaBullbar2Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaBullbar3Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaProtectionHoodItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaProtectionWindowFrontItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaProtectionWindowFrontSideItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaProtectionWindowRearItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaInteractiveTrunkRoofRackItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaLadderItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaRoofBaseItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbRoofBoxItem"):DoParam("Weight = 11")
        end
        Events.OnLoad.Add(TsarVanDeRumbaWeight)

            
    elseif SandboxVars.CustomizableVehicles.Weight == 3 then  --  50


        function TsarAgroWeight()
            if getActivatedMods():contains("agrotsar") then
            else return end

            getScriptManager():getItem("Agrotsar.ASeederTankSmall"):DoParam("Weight = 3")

            getScriptManager():getItem("Agrotsar.ASeederTankMedium"):DoParam("Weight = 3.5")

            getScriptManager():getItem("Agrotsar.ASeederTankLarge"):DoParam("Weight = 4")

            getScriptManager():getItem("Agrotsar.ASeederPlate"):DoParam("Weight = 0.5")

            getScriptManager():getItem("Agrotsar.APlowshare"):DoParam("Weight = 0.5")
        end
        Events.OnLoad.Add(TsarAgroWeight)
        
        
        function TsaramclubWeight()
            if getActivatedMods():contains("amclub") then
            else return end

            getScriptManager():getItem("Autotsar.ATAMotoBagBMW1"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoBagBMW2"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWCustomMuffler"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWClassicMuffler"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWOldTire"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWNormalTire"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWModernTire"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWGasTank"):DoParam("Weight = 5.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWSeat"):DoParam("Weight = 4.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWSeatCustom"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyBag"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyMuffler"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyOldTire"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyNormalTire"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyModernTire"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyGasTank"):DoParam("Weight = 5.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyHolster"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleySeat"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Autotsar.ATAMotoQuadSeat"):DoParam("Weight = 3")
        end
        Events.OnLoad.Add(TsaramclubWeight)
        
        
        function TsarYachtWeight()
            if getActivatedMods():contains("AquatsarYachtClub") then
            else return end

            getScriptManager():getItem("Aquatsar.BoatPropeller"):DoParam("Weight = 10")

            getScriptManager():getItem("Aquatsar.ManualStarter"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Aquatsar.Sails"):DoParam("Weight = 10")
            
            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat1"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat3"):DoParam("Weight = 7.5")

            getScriptManager():getItem("Aquatsar.AirBagNormal1"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal3"):DoParam("Weight = 7.5")
        end
        Events.OnLoad.Add(TsarYachtWeight)
        
        
        function TsarBusWeight()
            if getActivatedMods():contains("ATA_Bus") then
            else return end

            getScriptManager():getItem("Autotsar.ATA_Bus_Roof_Rack"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Roof_Box_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Kengur_1_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Kengur_2_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Kengur_3_Item"):DoParam("Weight = 10")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_door_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_door_rear_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_wheels_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_windows_front_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_windows_right_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_windows_left_Item"):DoParam("Weight = 5")
        end
        Events.OnLoad.Add(TsarBusWeight)
        
        
        function TsarDadgeWeight()
            if getActivatedMods():contains("ATA_Dadge") then
            else return end

            getScriptManager():getItem("Autotsar.ATADodgeRoofRackItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATADodgeWindowRackItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATADodgeBullbar1Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATADodgeBullbar2Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATADodgeBullbar3Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATADodgeProtectionWindowSideItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATADodgeProtectionWindowFrontItem"):DoParam("Weight = 5")
        end
        Events.OnLoad.Add(TsarDadgeWeight)
        
        
        function TsarJeepWeight()
            if getActivatedMods():contains("ATA_Jeep") then
            else return end

            getScriptManager():getItem("Autotsar.ATAJeepBumper1Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAJeepBumper2Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAJeepBumper3Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAJeepBumper4Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAJeepProtectionWindowItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAJeepProtectionWindowFrontItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAJeepProtectionWindowRearItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAJeepRoofBaseItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAJeepInteractiveTrunkRoofRackItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAJeepInteractiveTrunkWheelRackItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAJeepRoofTentItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepSnorkelItem"):DoParam("Weight = 1")
        end
        Events.OnLoad.Add(TsarJeepWeight)
        
        
        function TsarMustangWeight()
            if getActivatedMods():contains("ATA_Mustang") then
            else return end

            getScriptManager():getItem("Autotsar.ATAMustangBullbar1Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAMustangBullbar2Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAMustangBullbar3Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAMustangHood2Item3"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangHood3Item3"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangHood4Item3"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangFendersWideItem"):DoParam("Weight = 1")
            
            getScriptManager():getItem("Autotsar.ATAMustangSkirtsSideItem"):DoParam("Weight = 1")
            
            getScriptManager():getItem("Autotsar.ATAMustangSpoilerFrontItem"):DoParam("Weight = 1")
            
            getScriptManager():getItem("Autotsar.ATAMustangSpoilerRear1Item"):DoParam("Weight = 1")
            
            getScriptManager():getItem("Autotsar.ATAMustangSpoilerRear2Item"):DoParam("Weight = 1")
            
            getScriptManager():getItem("Autotsar.ATAMustangProtectionWindowLeftItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAMustangProtectionWindowRightItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAMustangProtectionWindowFrontItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAMustangProtectionWindowRearItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAMustangRoofRackItem"):DoParam("Weight = 5")
        end
        Events.OnLoad.Add(TsarMustangWeight)
        
        
        function TsarPetyarWeight()
            if getActivatedMods():contains("ATA_Petyarbuilt") then
            else return end

            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionSleeperItem"):DoParam("Weight = 10")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionRearWheelsItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionGasTankItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionSideItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionSideFrontItem"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionSideTopItem"):DoParam("Weight = 5")
        end
        Events.OnLoad.Add(TsarPetyarWeight)
        
        
        function TsarTrailersWeight()
            if getActivatedMods():contains("autotsartrailers") then
            else return end

            getScriptManager():getItem("Autotsar.TrailerFirstTrunk"):DoParam("Weight = 25")
            
            getScriptManager():getItem("Autotsar.TrailerSecondTrunk"):DoParam("Weight = 25")
        end
        Events.OnLoad.Add(TsarTrailersWeight)
        
        
        function TsarTrolleyWeight()
            if getActivatedMods():contains("TMC_Trolley") then
            else return end

            getScriptManager():getItem("TMC.TrolleyContainer"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("TMC.TrolleyContainer2"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("TMC.CartContainer"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("TMC.CartContainer2"):DoParam("Weight = 0.5")
        end
        Events.OnLoad.Add(TsarTrolleyWeight)
        
        
        function TsarLutonCapacity()
            if getActivatedMods():contains("ATA_Luton") then
            else return end

            
            getScriptManager():getItem("Autotsar.ATALutonProtectionSideFrontItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATALutonProtectionHoodItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATALutonProtectionWindowFrontSideItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATALutonProtectionWindowFrontItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATALutonInteractiveTrunkRoofRackItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATALutonLadderItem"):DoParam("Weight = 5")
        end
        Events.OnLoad.Add(TsarLutonCapacity)
        
        
        function TsarVanDeRumbaWeight()
            if getActivatedMods():contains("ATA_VanDeRumba") then
            else return end

            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaBullbar1Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaBullbar2Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaBullbar3Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaProtectionHoodItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaProtectionWindowFrontItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaProtectionWindowFrontSideItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaProtectionWindowRearItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaInteractiveTrunkRoofRackItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaLadderItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaRoofBaseItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbRoofBoxItem"):DoParam("Weight = 7.5")
        end
        Events.OnLoad.Add(TsarVanDeRumbaWeight)
            
            
    elseif SandboxVars.CustomizableVehicles.Weight == 4 then  --  75


        function TsarAgroWeight()
            if getActivatedMods():contains("agrotsar") then
            else return end

            getScriptManager():getItem("Agrotsar.ASeederTankSmall"):DoParam("Weight = 1.5")

            getScriptManager():getItem("Agrotsar.ASeederTankMedium"):DoParam("Weight = 1.75")

            getScriptManager():getItem("Agrotsar.ASeederTankLarge"):DoParam("Weight = 2")

            getScriptManager():getItem("Agrotsar.ASeederPlate"):DoParam("Weight = 0.25")

            getScriptManager():getItem("Agrotsar.APlowshare"):DoParam("Weight = 0.25")
        end
        Events.OnLoad.Add(TsarAgroWeight)
        
        
        function TsaramclubWeight()
            if getActivatedMods():contains("amclub") then
            else return end

            getScriptManager():getItem("Autotsar.ATAMotoBagBMW1"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("Autotsar.ATAMotoBagBMW2"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWCustomMuffler"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWClassicMuffler"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWOldTire"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWNormalTire"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWModernTire"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWGasTank"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWSeat"):DoParam("Weight = 2")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWSeatCustom"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyBag"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyMuffler"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyOldTire"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyNormalTire"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyModernTire"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyGasTank"):DoParam("Weight = 2.75")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyHolster"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleySeat"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("Autotsar.ATAMotoQuadSeat"):DoParam("Weight = 1.5")
        end
        Events.OnLoad.Add(TsaramclubWeight)
        
        
        function TsarYachtWeight()
            if getActivatedMods():contains("AquatsarYachtClub") then
            else return end

            getScriptManager():getItem("Aquatsar.BoatPropeller"):DoParam("Weight = 5")

            getScriptManager():getItem("Aquatsar.ManualStarter"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("Aquatsar.Sails"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat1"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat2"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat3"):DoParam("Weight = 3.75")

            getScriptManager():getItem("Aquatsar.AirBagNormal1"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal2"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal3"):DoParam("Weight = 3.75")
        end
        Events.OnLoad.Add(TsarYachtWeight)
        
        
        function TsarBusWeight()
            if getActivatedMods():contains("ATA_Bus") then
            else return end

            getScriptManager():getItem("Autotsar.ATA_Bus_Roof_Rack"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Roof_Box_Item"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Kengur_1_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Kengur_2_Item"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Kengur_3_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_door_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_door_rear_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_wheels_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_windows_front_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_windows_right_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_windows_left_Item"):DoParam("Weight = 2.5")
        end
        Events.OnLoad.Add(TsarBusWeight)
        
        
        function TsarDadgeWeight()
            if getActivatedMods():contains("ATA_Dadge") then
            else return end

            getScriptManager():getItem("Autotsar.ATADodgeRoofRackItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATADodgeWindowRackItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATADodgeBullbar1Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATADodgeBullbar2Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATADodgeBullbar3Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATADodgeProtectionWindowSideItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATADodgeProtectionWindowFrontItem"):DoParam("Weight = 2.5")
        end
        Events.OnLoad.Add(TsarDadgeWeight)
        
        
        function TsarJeepWeight()
            if getActivatedMods():contains("ATA_Jeep") then
            else return end

            getScriptManager():getItem("Autotsar.ATAJeepBumper1Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepBumper2Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepBumper3Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepBumper4Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepProtectionWindowItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepProtectionWindowFrontItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepProtectionWindowRearItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepRoofBaseItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepInteractiveTrunkRoofRackItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepInteractiveTrunkWheelRackItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAJeepRoofTentItem"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Autotsar.ATAJeepSnorkelItem"):DoParam("Weight = 0.5")
        end
        Events.OnLoad.Add(TsarJeepWeight)
        
        
        function TsarMustangWeight()
            if getActivatedMods():contains("ATA_Mustang") then
            else return end

            getScriptManager():getItem("Autotsar.ATAMustangBullbar1Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangBullbar2Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangBullbar3Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangHood2Item3"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Autotsar.ATAMustangHood3Item3"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Autotsar.ATAMustangHood4Item3"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Autotsar.ATAMustangFendersWideItem"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangSkirtsSideItem"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangSpoilerFrontItem"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangSpoilerRear1Item"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangSpoilerRear2Item"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangProtectionWindowLeftItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangProtectionWindowRightItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangProtectionWindowFrontItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangProtectionWindowRearItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAMustangRoofRackItem"):DoParam("Weight = 2.5")
        end
        Events.OnLoad.Add(TsarMustangWeight)
        
        
        function TsarPetyarWeight()
            if getActivatedMods():contains("ATA_Petyarbuilt") then
            else return end

            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionSleeperItem"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionRearWheelsItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionGasTankItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionSideItem"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionSideFrontItem"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionSideTopItem"):DoParam("Weight = 2.5")
        end
        Events.OnLoad.Add(TsarPetyarWeight)
        
        
        function TsarTrailersWeight()
            if getActivatedMods():contains("autotsartrailers") then
            else return end

            getScriptManager():getItem("Autotsar.TrailerFirstTrunk"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Autotsar.TrailerSecondTrunk"):DoParam("Weight = 12.5")
        end
        Events.OnLoad.Add(TsarTrailersWeight)
        
        
        function TsarTrolleyWeight()
            if getActivatedMods():contains("TMC_Trolley") then
            else return end

            getScriptManager():getItem("TMC.TrolleyContainer"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("TMC.TrolleyContainer2"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("TMC.CartContainer"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("TMC.CartContainer2"):DoParam("Weight = 0.25")
        end
        Events.OnLoad.Add(TsarTrolleyWeight)
        
        
        function TsarLutonCapacity()
            if getActivatedMods():contains("ATA_Luton") then
            else return end

            
            getScriptManager():getItem("Autotsar.ATALutonProtectionSideFrontItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATALutonProtectionHoodItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATALutonProtectionWindowFrontSideItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATALutonProtectionWindowFrontItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATALutonInteractiveTrunkRoofRackItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATALutonLadderItem"):DoParam("Weight = 2.5")
        end
        Events.OnLoad.Add(TsarLutonCapacity)
        
        
        function TsarVanDeRumbaWeight()
            if getActivatedMods():contains("ATA_VanDeRumba") then
            else return end

            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaBullbar1Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaBullbar2Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaBullbar3Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaProtectionHoodItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaProtectionWindowFrontItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaProtectionWindowFrontSideItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaProtectionWindowRearItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaInteractiveTrunkRoofRackItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaLadderItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaRoofBaseItem"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbRoofBoxItem"):DoParam("Weight = 3.75")
        end
        Events.OnLoad.Add(TsarVanDeRumbaWeight)

            
    elseif SandboxVars.CustomizableVehicles.Weight == 5 then  -- Weightless


        function TsarAgroWeight()
            if getActivatedMods():contains("agrotsar") then
            else return end

            getScriptManager():getItem("Agrotsar.ASeederTankSmall"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Agrotsar.ASeederTankMedium"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Agrotsar.ASeederTankLarge"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Agrotsar.ASeederPlate"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Agrotsar.APlowshare"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(TsarAgroWeight)
        
        
        function TsaramclubWeight()
            if getActivatedMods():contains("amclub") then
            else return end

            getScriptManager():getItem("Autotsar.ATAMotoBagBMW1"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoBagBMW2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWCustomMuffler"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWClassicMuffler"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWOldTire"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWNormalTire"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWModernTire"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWGasTank"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWSeat"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoBMWSeatCustom"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyBag"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyMuffler"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyOldTire"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyNormalTire"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyModernTire"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyGasTank"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleyHolster"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoHarleySeat"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMotoQuadSeat"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(TsaramclubWeight)
        
        
        function TsarYachtWeight()
            if getActivatedMods():contains("AquatsarYachtClub") then
            else return end

            getScriptManager():getItem("Aquatsar.BoatPropeller"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Aquatsar.ManualStarter"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Aquatsar.Sails"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat1"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Aquatsar.NotRemovableBoatSeat3"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Aquatsar.AirBagNormal1"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Aquatsar.AirBagNormal3"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(TsarYachtWeight)
        
        
        function TsarBusWeight()
            if getActivatedMods():contains("ATA_Bus") then
            else return end

            getScriptManager():getItem("Autotsar.ATA_Bus_Roof_Rack"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Roof_Box_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Kengur_1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Kengur_2_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Kengur_3_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_door_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_door_rear_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_wheels_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_windows_front_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_windows_right_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATA_Bus_Protection_windows_left_Item"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(TsarBusWeight)
        
        
        function TsarDadgeWeight()
            if getActivatedMods():contains("ATA_Dadge") then
            else return end

            getScriptManager():getItem("Autotsar.ATADodgeRoofRackItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATADodgeWindowRackItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATADodgeBullbar1Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATADodgeBullbar2Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATADodgeBullbar3Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATADodgeProtectionWindowSideItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATADodgeProtectionWindowFrontItem"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(TsarDadgeWeight)
        
        
        function TsarJeepWeight()
            if getActivatedMods():contains("ATA_Jeep") then
            else return end

            getScriptManager():getItem("Autotsar.ATAJeepBumper1Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAJeepBumper2Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAJeepBumper3Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAJeepBumper4Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAJeepProtectionWindowItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAJeepProtectionWindowFrontItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAJeepProtectionWindowRearItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAJeepRoofBaseItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAJeepInteractiveTrunkRoofRackItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAJeepInteractiveTrunkWheelRackItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAJeepRoofTentItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAJeepSnorkelItem"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(TsarJeepWeight)
        
        
        function TsarMustangWeight()
            if getActivatedMods():contains("ATA_Mustang") then
            else return end

            getScriptManager():getItem("Autotsar.ATAMustangBullbar1Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMustangBullbar2Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMustangBullbar3Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMustangHood2Item3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMustangHood3Item3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMustangHood4Item3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMustangFendersWideItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMustangSkirtsSideItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMustangSpoilerFrontItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMustangSpoilerRear1Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMustangSpoilerRear2Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMustangProtectionWindowLeftItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMustangProtectionWindowRightItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMustangProtectionWindowFrontItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMustangProtectionWindowRearItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAMustangRoofRackItem"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(TsarMustangWeight)
        
        
        function TsarPetyarWeight()
            if getActivatedMods():contains("ATA_Petyarbuilt") then
            else return end

            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionSleeperItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionRearWheelsItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionGasTankItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionSideItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionSideFrontItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAPetyarbuiltProtectionSideTopItem"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(TsarPetyarWeight)
        
        
        function TsarTrailersWeight()
            if getActivatedMods():contains("autotsartrailers") then
            else return end

            getScriptManager():getItem("Autotsar.TrailerFirstTrunk"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.TrailerSecondTrunk"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(TsarTrailersWeight)
        
        
        function TsarTrolleyWeight()
            if getActivatedMods():contains("TMC_Trolley") then
            else return end

            getScriptManager():getItem("TMC.TrolleyContainer"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("TMC.TrolleyContainer2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("TMC.CartContainer"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("TMC.CartContainer2"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(TsarTrolleyWeight)
        
        
        function TsarLutonCapacity()
            if getActivatedMods():contains("ATA_Luton") then
            else return end

            
            getScriptManager():getItem("Autotsar.ATALutonProtectionSideFrontItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATALutonProtectionHoodItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATALutonProtectionWindowFrontSideItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATALutonProtectionWindowFrontItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATALutonInteractiveTrunkRoofRackItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATALutonLadderItem"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(TsarLutonCapacity)
        
        
        function TsarVanDeRumbaWeight()
            if getActivatedMods():contains("ATA_VanDeRumba") then
            else return end

            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaBullbar1Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaBullbar2Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaBullbar3Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaProtectionHoodItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaProtectionWindowFrontItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaProtectionWindowFrontSideItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaProtectionWindowRearItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaInteractiveTrunkRoofRackItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaLadderItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbaRoofBaseItem"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Autotsar.ATAVanDeRumbRoofBoxItem"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(TsarVanDeRumbaWeight)
           
           
    end
end




Events.OnSpawnRegionsLoaded.Add(getVehicleCapacityVars)
Events.OnSpawnRegionsLoaded.Add(getVehicleWeightVars)
Events.OnGameStart.Add(getVehicleWeightVars)
Events.OnGameStart.Add(getVehicleCapacityVars)
Events.OnInitWorld.Add(getVehicleWeightVars)