

function getVehicleCapacityVars()
    if SandboxVars.CustomizableVehicles.Capacity == 1 then  -- Off
        do return end


    elseif SandboxVars.CustomizableVehicles.Capacity == 2 then  -- Well Balanced

        function KI5commandoCapacity()
            if getActivatedMods():contains("67commando") then
            else return end

            getScriptManager():getItem("Base.V100Tire2"):DoParam("MaxCapacity = 55")
            
            getScriptManager():getItem("Base.V100Toolbox2"):DoParam("MaxCapacity = 20")
        end
        Events.OnLoad.Add(KI5commandoCapacity)


        function KI5oshkoshM911Capacity()
            if getActivatedMods():contains("82oshkoshM911") then
            else return end

            getScriptManager():getItem("Base.V100Tire2"):DoParam("MaxCapacity = 55")

            getScriptManager():getItem("Base.V100Tires2"):DoParam("MaxCapacity = 55")

            getScriptManager():getItem("Base.V100SmallTires2"):DoParam("MaxCapacity = 55")

            getScriptManager():getItem("Base.V100Axle2"):DoParam("MaxCapacity = 55")

            getScriptManager():getItem("Base.V100AxleSmall2"):DoParam("MaxCapacity = 55")

            getScriptManager():getItem("Base.M911Trunk2"):DoParam("MaxCapacity = 95")

            getScriptManager():getItem("Base.M911Toolbox2"):DoParam("MaxCapacity = 45")

            getScriptManager():getItem("Base.M911SpareTire2"):DoParam("MaxCapacity = 31")

            getScriptManager():getItem("Base.M911Extra2"):DoParam("MaxCapacity = 3")
        end
        Events.OnLoad.Add(KI5oshkoshM911Capacity)


        function KI5mercCapacity()
            if getActivatedMods():contains("85merc") then
            else return end

            getScriptManager():getItem("Base.mercroofrack1"):DoParam("MaxCapacity = 60")

            getScriptManager():getItem("Base.mercroofrack2"):DoParam("MaxCapacity = 60")

            getScriptManager():getItem("Base.mercroofrack3"):DoParam("MaxCapacity = 60")
        end
        Events.OnLoad.Add(KI5mercCapacity)


        function KI5oshkoshP19ACapacity()
            if getActivatedMods():contains("86oshkoshP19A") then
            else return end

            getScriptManager():getItem("Base.V100Tire2"):DoParam("MaxCapacity = 55")

            getScriptManager():getItem("Base.P19ABigTrunk2"):DoParam("MaxCapacity = 120")

            getScriptManager():getItem("Base.P19ASmallTrunk2"):DoParam("MaxCapacity = 50")
        end
        Events.OnLoad.Add(KI5oshkoshP19ACapacity)


        function KI5cruiserCapacity()
            if getActivatedMods():contains("87cruiser") then
            else return end

            getScriptManager():getItem("Base.cruiserRoofrack1"):DoParam("MaxCapacity = 90")

            getScriptManager():getItem("Base.cruiserRoofrack2"):DoParam("MaxCapacity = 90")

            getScriptManager():getItem("Base.cruiserRoofrack3"):DoParam("MaxCapacity = 90")
        end
        Events.OnLoad.Add(KI5cruiserCapacity)


        function KI5def90Capacity()
            if getActivatedMods():contains("89def90") then
            else return end

            getScriptManager():getItem("Base.def90SpareCompartment1"):DoParam("MaxCapacity = 31")

            getScriptManager():getItem("Base.def90SpareCompartment2"):DoParam("MaxCapacity = 31")

            getScriptManager():getItem("Base.def90SpareCompartment3"):DoParam("MaxCapacity = 31")
        end
        Events.OnLoad.Add(KI5def90Capacity)


        function KI5def110Capacity()
            if getActivatedMods():contains("89def110") then
            else return end

            getScriptManager():getItem("Base.def110SpareCompartment1"):DoParam("MaxCapacity = 31")

            getScriptManager():getItem("Base.def110SpareCompartment2"):DoParam("MaxCapacity = 31")

            getScriptManager():getItem("Base.def110SpareCompartment3"):DoParam("MaxCapacity = 31")
        end
        Events.OnLoad.Add(KI5def110Capacity)


        function KI5amgeneralM998Capacity()
            if getActivatedMods():contains("92amgeneralM998") then
            else return end

            getScriptManager():getItem("Base.V101Tire2"):DoParam("MaxCapacity = 55")

            getScriptManager():getItem("Base.M998Trunk2"):DoParam("MaxCapacity = 160")

            getScriptManager():getItem("Base.M998Extra2"):DoParam("MaxCapacity = 10")
            
            getScriptManager():getItem("Base.M998Roofrack1_Item"):DoParam("MaxCapacity = 115")

            getScriptManager():getItem("Base.M998SpareMount_Item"):DoParam("MaxCapacity = 31")

            getScriptManager():getItem("Base.M998SpareTireMount_Item"):DoParam("MaxCapacity = 31")

            getScriptManager():getItem("Base.M998CarSeat2"):DoParam("MaxCapacity = 40")
        end
        Events.OnLoad.Add(KI5amgeneralM998Capacity)
        
        
        function KI5Cadillac59Capacity()
            if getActivatedMods():contains("59meteor") then
            else return end

            getScriptManager():getItem("Base.ECTO1tire2_Item"):DoParam("MaxCapacity = 55")
            
            getScriptManager():getItem("Base.ECTO1tire1_Item"):DoParam("MaxCapacity = 55")
            
            getScriptManager():getItem("Base.ECTO1Trunk2"):DoParam("MaxCapacity = 185")
            
            getScriptManager():getItem("Base.ECTO1Roofrack1_Item"):DoParam("MaxCapacity = 90")
            
            getScriptManager():getItem("Base.ECTO1CarSeatfl2"):DoParam("MaxCapacity = 35")
            
            getScriptManager():getItem("Base.ECTO1CarSeatfr2"):DoParam("MaxCapacity = 35")
            
            getScriptManager():getItem("Base.ECTO1CarSeatrl2"):DoParam("MaxCapacity = 35")
            
            getScriptManager():getItem("Base.ECTO1CarSeatrr2"):DoParam("MaxCapacity = 35")      
        end
        Events.OnLoad.Add(KI5Cadillac59Capacity)
        
        
        function KI5amgeneralM151A2Capacity()
            if getActivatedMods():contains("74amgeneralM151A2") then
            else return end

            getScriptManager():getItem("Base.M151A2Trunk2"):DoParam("MaxCapacity = 75")
            
            getScriptManager():getItem("Base.M151A2CarSeatFront2"):DoParam("MaxCapacity = 15")
        end
        Events.OnLoad.Add(KI5amgeneralM151A2Capacity)
        
        
        function KI578amgeneralM35A2Capacity()
            if getActivatedMods():contains("78amgeneralM35A2") then
            else return end

            getScriptManager():getItem("Base.M35A2Trunk2"):DoParam("MaxCapacity = 600")
            
            getScriptManager():getItem("Base.M35A2Extra2"):DoParam("MaxCapacity = 1")
            
            getScriptManager():getItem("Base.V103Tire2"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.V103Axle2"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.M35A2CarSeat2"):DoParam("MaxCapacity = 30")
        end
        Events.OnLoad.Add(KI578amgeneralM35A2Capacity)
        
        
        function KI584mercCapacity()
            if getActivatedMods():contains("84merc") then
            else return end

            getScriptManager():getItem("Base.W460NormalTire2"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.W460WideTire2"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.W460ModernTire2"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.W460Trunk2"):DoParam("MaxCapacity = 120")
            
            getScriptManager():getItem("Base.W4602Trunk2"):DoParam("MaxCapacity = 160")
            
            getScriptManager():getItem("Base.W4604Trunk2"):DoParam("MaxCapacity = 100")
            
            getScriptManager():getItem("Base.W460Roofrack1_Item"):DoParam("MaxCapacity = 95")
        end
        Events.OnLoad.Add(KI584mercCapacity)
        
        
        function KI583amgeneralM923Capacity()
            if getActivatedMods():contains("83amgeneralM923") then
            else return end

            getScriptManager():getItem("Base.M923Axle2"):DoParam("MaxCapacity = 55")
            
            getScriptManager():getItem("Base.M923Trunk2"):DoParam("MaxCapacity = 50")
            
            getScriptManager():getItem("Base.M923Flatbed2"):DoParam("MaxCapacity = 530")
            
            getScriptManager():getItem("Base.M923FrontSeat2"):DoParam("MaxCapacity = 40")
            
            getScriptManager():getItem("Base.M923RearSeat2"):DoParam("MaxCapacity = 10")
        end
        Events.OnLoad.Add(KI583amgeneralM923Capacity)
        
        
        function KI580kz1000Capacity()
            if getActivatedMods():contains("80kz1000") then
            else return end

            getScriptManager():getItem("Base.KZ1Kstorage3"):DoParam("MaxCapacity = 15")
            
            getScriptManager():getItem("Base.KZ1Ksidestorage3"):DoParam("MaxCapacity = 25")
            
            getScriptManager():getItem("Base.KZ1Kextra3"):DoParam("MaxCapacity = 2")
            
            getScriptManager():getItem("Base.KZ1KoldTire"):DoParam("MaxCapacity = 40")
            
            getScriptManager():getItem("Base.KZ1KnormalTire"):DoParam("MaxCapacity = 40")
            
            getScriptManager():getItem("Base.KZ1KmodernTire"):DoParam("MaxCapacity = 40")
            
            getScriptManager():getItem("Base.KZ1KgasTank"):DoParam("MaxCapacity = 48")
        end
        Events.OnLoad.Add(KI580kz1000Capacity)
        
        
        function KI5nissanGTRCapacity()
            if getActivatedMods():contains("92nissanGTR") then
            else return end

            getScriptManager():getItem("Base.R32Tire0"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.R32Tire1"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.R32Tire2"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.R32TireA"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.R32Trunk3"):DoParam("MaxCapacity = 55")
            
            getScriptManager():getItem("Base.R32FrontSeat3"):DoParam("MaxCapacity = 25")
            
            getScriptManager():getItem("Base.R32RearSeat3"):DoParam("MaxCapacity = 30")
        end
        Events.OnLoad.Add(KI5nissanGTRCapacity)


    elseif SandboxVars.CustomizableVehicles.Capacity == 3 then  -- Balanced
    
    
        function KI5commandoCapacity()
            if getActivatedMods():contains("67commando") then
            else return end

            getScriptManager():getItem("Base.V100Tire2"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Base.V100Toolbox2"):DoParam("MaxCapacity = 25")
        end
        Events.OnLoad.Add(KI5commandoCapacity)


        function KI5oshkoshM911Capacity()
            if getActivatedMods():contains("82oshkoshM911") then
            else return end

            getScriptManager():getItem("Base.V100Tire2"):DoParam("MaxCapacity = 65")

            getScriptManager():getItem("Base.V100Tires2"):DoParam("MaxCapacity = 65")

            getScriptManager():getItem("Base.V100SmallTires2"):DoParam("MaxCapacity = 65")

            getScriptManager():getItem("Base.V100Axle2"):DoParam("MaxCapacity = 65")

            getScriptManager():getItem("Base.V100AxleSmall2"):DoParam("MaxCapacity = 65")

            getScriptManager():getItem("Base.M911Trunk2"):DoParam("MaxCapacity = 105")

            getScriptManager():getItem("Base.M911Toolbox2"):DoParam("MaxCapacity = 55")

            getScriptManager():getItem("Base.M911SpareTire2"):DoParam("MaxCapacity = 40")

            getScriptManager():getItem("Base.M911Extra2"):DoParam("MaxCapacity = 5")
        end
        Events.OnLoad.Add(KI5oshkoshM911Capacity)


        function KI5mercCapacity()
            if getActivatedMods():contains("85merc") then
            else return end

            getScriptManager():getItem("Base.mercroofrack1"):DoParam("MaxCapacity = 70")

            getScriptManager():getItem("Base.mercroofrack2"):DoParam("MaxCapacity = 70")

            getScriptManager():getItem("Base.mercroofrack3"):DoParam("MaxCapacity = 70")
        end
        Events.OnLoad.Add(KI5mercCapacity)


        function KI5oshkoshP19ACapacity()
            if getActivatedMods():contains("86oshkoshP19A") then
            else return end

            getScriptManager():getItem("Base.V100Tire2"):DoParam("MaxCapacity = 65")

            getScriptManager():getItem("Base.P19ABigTrunk2"):DoParam("MaxCapacity = 140")

            getScriptManager():getItem("Base.P19ASmallTrunk2"):DoParam("MaxCapacity = 60")
        end
        Events.OnLoad.Add(KI5oshkoshP19ACapacity)


        function KI5cruiserCapacity()
            if getActivatedMods():contains("87cruiser") then
            else return end

            getScriptManager():getItem("Base.cruiserRoofrack1"):DoParam("MaxCapacity = 105")

            getScriptManager():getItem("Base.cruiserRoofrack2"):DoParam("MaxCapacity = 105")

            getScriptManager():getItem("Base.cruiserRoofrack3"):DoParam("MaxCapacity = 105")
        end
        Events.OnLoad.Add(KI5cruiserCapacity)


        function KI5def90Capacity()
            if getActivatedMods():contains("89def90") then
            else return end

            getScriptManager():getItem("Base.def90SpareCompartment1"):DoParam("MaxCapacity = 40")

            getScriptManager():getItem("Base.def90SpareCompartment2"):DoParam("MaxCapacity = 40")

            getScriptManager():getItem("Base.def90SpareCompartment3"):DoParam("MaxCapacity = 40")
        end
        Events.OnLoad.Add(KI5def90Capacity)


        function KI5def110Capacity()
            if getActivatedMods():contains("89def110") then
            else return end

            getScriptManager():getItem("Base.def110SpareCompartment1"):DoParam("MaxCapacity = 40")

            getScriptManager():getItem("Base.def110SpareCompartment2"):DoParam("MaxCapacity = 40")

            getScriptManager():getItem("Base.def110SpareCompartment3"):DoParam("MaxCapacity = 40")
        end
        Events.OnLoad.Add(KI5def110Capacity)


        function KI5amgeneralM998Capacity()
            if getActivatedMods():contains("92amgeneralM998") then
            else return end

            getScriptManager():getItem("Base.V101Tire2"):DoParam("MaxCapacity = 65")

            getScriptManager():getItem("Base.M998Trunk2"):DoParam("MaxCapacity = 180")

            getScriptManager():getItem("Base.M998Extra2"):DoParam("MaxCapacity = 15")
            
            getScriptManager():getItem("Base.M998Roofrack1_Item"):DoParam("MaxCapacity = 150")

            getScriptManager():getItem("Base.M998SpareMount_Item"):DoParam("MaxCapacity = 40")

            getScriptManager():getItem("Base.M998SpareTireMount_Item"):DoParam("MaxCapacity = 40")

            getScriptManager():getItem("Base.M998CarSeat2"):DoParam("MaxCapacity = 50")
        end
        Events.OnLoad.Add(KI5amgeneralM998Capacity)
        
        
        function KI5Cadillac59Capacity()
            if getActivatedMods():contains("59meteor") then
            else return end

            getScriptManager():getItem("Base.ECTO1tire2_Item"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Base.ECTO1tire1_Item"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Base.ECTO1Trunk2"):DoParam("MaxCapacity = 200")
            
            getScriptManager():getItem("Base.ECTO1Roofrack1_Item"):DoParam("MaxCapacity = 105")
            
            getScriptManager():getItem("Base.ECTO1CarSeatfl2"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.ECTO1CarSeatfr2"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.ECTO1CarSeatrl2"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.ECTO1CarSeatrr2"):DoParam("MaxCapacity = 45")      
        end
        Events.OnLoad.Add(KI5Cadillac59Capacity)
        
        
        function KI5amgeneralM151A2Capacity()
            if getActivatedMods():contains("74amgeneralM151A2") then
            else return end

            getScriptManager():getItem("Base.M151A2Trunk2"):DoParam("MaxCapacity = 90")
            
            getScriptManager():getItem("Base.M151A2CarSeatFront2"):DoParam("MaxCapacity = 20")
        end
        Events.OnLoad.Add(KI5amgeneralM151A2Capacity)
        
        
        function KI578amgeneralM35A2Capacity()
            if getActivatedMods():contains("78amgeneralM35A2") then
            else return end

            getScriptManager():getItem("Base.M35A2Trunk2"):DoParam("MaxCapacity = 620")
            
            getScriptManager():getItem("Base.M35A2Extra2"):DoParam("MaxCapacity = 2")
            
            getScriptManager():getItem("Base.V103Tire2"):DoParam("MaxCapacity = 55")
            
            getScriptManager():getItem("Base.V103Axle2"):DoParam("MaxCapacity = 55")
            
            getScriptManager():getItem("Base.M35A2CarSeat2"):DoParam("MaxCapacity = 45")
        end
        Events.OnLoad.Add(KI578amgeneralM35A2Capacity)
        
        
        function KI584mercCapacity()
            if getActivatedMods():contains("84merc") then
            else return end

            getScriptManager():getItem("Base.W460NormalTire2"):DoParam("MaxCapacity = 55")
            
            getScriptManager():getItem("Base.W460WideTire2"):DoParam("MaxCapacity = 55")
            
            getScriptManager():getItem("Base.W460ModernTire2"):DoParam("MaxCapacity = 55")
            
            getScriptManager():getItem("Base.W460Trunk2"):DoParam("MaxCapacity = 135")
            
            getScriptManager():getItem("Base.W4602Trunk2"):DoParam("MaxCapacity = 175")
            
            getScriptManager():getItem("Base.W4604Trunk2"):DoParam("MaxCapacity = 115")
            
            getScriptManager():getItem("Base.W460Roofrack1_Item"):DoParam("MaxCapacity = 105")
        end
        Events.OnLoad.Add(KI584mercCapacity)
        
        
        function KI583amgeneralM923Capacity()
            if getActivatedMods():contains("83amgeneralM923") then
            else return end

            getScriptManager():getItem("Base.M923Axle2"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Base.M923Trunk2"):DoParam("MaxCapacity = 60")
            
            getScriptManager():getItem("Base.M923Flatbed2"):DoParam("MaxCapacity = 550")
            
            getScriptManager():getItem("Base.M923FrontSeat2"):DoParam("MaxCapacity = 50")
            
            getScriptManager():getItem("Base.M923RearSeat2"):DoParam("MaxCapacity = 20")
        end
        Events.OnLoad.Add(KI583amgeneralM923Capacity)
        
        
        function KI580kz1000Capacity()
            if getActivatedMods():contains("80kz1000") then
            else return end

            getScriptManager():getItem("Base.KZ1Kstorage3"):DoParam("MaxCapacity = 20")
            
            getScriptManager():getItem("Base.KZ1Ksidestorage3"):DoParam("MaxCapacity = 30")
            
            getScriptManager():getItem("Base.KZ1Kextra3"):DoParam("MaxCapacity = 3")
            
            getScriptManager():getItem("Base.KZ1KoldTire"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.KZ1KnormalTire"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.KZ1KmodernTire"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.KZ1KgasTank"):DoParam("MaxCapacity = 55")
        end
        Events.OnLoad.Add(KI580kz1000Capacity)
        
        
        function KI5nissanGTRCapacity()
            if getActivatedMods():contains("92nissanGTR") then
            else return end

            getScriptManager():getItem("Base.R32Tire0"):DoParam("MaxCapacity = 55")
            
            getScriptManager():getItem("Base.R32Tire1"):DoParam("MaxCapacity = 55")
            
            getScriptManager():getItem("Base.R32Tire2"):DoParam("MaxCapacity = 55")
            
            getScriptManager():getItem("Base.R32TireA"):DoParam("MaxCapacity = 55")
            
            getScriptManager():getItem("Base.R32Trunk3"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Base.R32FrontSeat3"):DoParam("MaxCapacity = 35")
            
            getScriptManager():getItem("Base.R32RearSeat3"):DoParam("MaxCapacity = 40")
        end
        Events.OnLoad.Add(KI5nissanGTRCapacity)

    

    elseif SandboxVars.CustomizableVehicles.Capacity == 4 then  -- Boosted
        
        
        function KI5commandoCapacity()
            if getActivatedMods():contains("67commando") then
            else return end

            getScriptManager():getItem("Base.V100Tire2"):DoParam("MaxCapacity = 85")
            
            getScriptManager():getItem("Base.V100Toolbox2"):DoParam("MaxCapacity = 35")
        end
        Events.OnLoad.Add(KI5commandoCapacity)


        function KI5oshkoshM911Capacity()
            if getActivatedMods():contains("82oshkoshM911") then
            else return end

            getScriptManager():getItem("Base.V100Tire2"):DoParam("MaxCapacity = 85")

            getScriptManager():getItem("Base.V100Tires2"):DoParam("MaxCapacity = 85")

            getScriptManager():getItem("Base.V100SmallTires2"):DoParam("MaxCapacity = 85")

            getScriptManager():getItem("Base.V100Axle2"):DoParam("MaxCapacity = 85")

            getScriptManager():getItem("Base.V100AxleSmall2"):DoParam("MaxCapacity = 85")

            getScriptManager():getItem("Base.M911Trunk2"):DoParam("MaxCapacity = 125")

            getScriptManager():getItem("Base.M911Toolbox2"):DoParam("MaxCapacity = 75")

            getScriptManager():getItem("Base.M911SpareTire2"):DoParam("MaxCapacity = 60")

            getScriptManager():getItem("Base.M911Extra2"):DoParam("MaxCapacity = 8")
        end
        Events.OnLoad.Add(KI5oshkoshM911Capacity)


        function KI5mercCapacity()
            if getActivatedMods():contains("85merc") then
            else return end

            getScriptManager():getItem("Base.mercroofrack1"):DoParam("MaxCapacity = 90")

            getScriptManager():getItem("Base.mercroofrack2"):DoParam("MaxCapacity = 90")

            getScriptManager():getItem("Base.mercroofrack3"):DoParam("MaxCapacity = 90")
        end
        Events.OnLoad.Add(KI5mercCapacity)


        function KI5oshkoshP19ACapacity()
            if getActivatedMods():contains("86oshkoshP19A") then
            else return end

            getScriptManager():getItem("Base.V100Tire2"):DoParam("MaxCapacity = 85")

            getScriptManager():getItem("Base.P19ABigTrunk2"):DoParam("MaxCapacity = 160")

            getScriptManager():getItem("Base.P19ASmallTrunk2"):DoParam("MaxCapacity = 80")
        end
        Events.OnLoad.Add(KI5oshkoshP19ACapacity)


        function KI5cruiserCapacity()
            if getActivatedMods():contains("87cruiser") then
            else return end

            getScriptManager():getItem("Base.cruiserRoofrack1"):DoParam("MaxCapacity = 125")

            getScriptManager():getItem("Base.cruiserRoofrack2"):DoParam("MaxCapacity = 125")

            getScriptManager():getItem("Base.cruiserRoofrack3"):DoParam("MaxCapacity = 125")
        end
        Events.OnLoad.Add(KI5cruiserCapacity)


        function KI5def90Capacity()
            if getActivatedMods():contains("89def90") then
            else return end

            getScriptManager():getItem("Base.def90SpareCompartment1"):DoParam("MaxCapacity = 60")

            getScriptManager():getItem("Base.def90SpareCompartment2"):DoParam("MaxCapacity = 60")

            getScriptManager():getItem("Base.def90SpareCompartment3"):DoParam("MaxCapacity = 60")
        end
        Events.OnLoad.Add(KI5def90Capacity)


        function KI5def110Capacity()
            if getActivatedMods():contains("89def110") then
            else return end

            getScriptManager():getItem("Base.def110SpareCompartment1"):DoParam("MaxCapacity = 60")

            getScriptManager():getItem("Base.def110SpareCompartment2"):DoParam("MaxCapacity = 60")

            getScriptManager():getItem("Base.def110SpareCompartment3"):DoParam("MaxCapacity = 60")
        end
        Events.OnLoad.Add(KI5def110Capacity)


        function KI5amgeneralM998Capacity()
            if getActivatedMods():contains("92amgeneralM998") then
            else return end

            getScriptManager():getItem("Base.V101Tire2"):DoParam("MaxCapacity = 85")

            getScriptManager():getItem("Base.M998Trunk2"):DoParam("MaxCapacity = 210")

            getScriptManager():getItem("Base.M998Extra2"):DoParam("MaxCapacity = 25")
            
            getScriptManager():getItem("Base.M998Roofrack1_Item"):DoParam("MaxCapacity = 170")

            getScriptManager():getItem("Base.M998SpareMount_Item"):DoParam("MaxCapacity = 60")

            getScriptManager():getItem("Base.M998SpareTireMount_Item"):DoParam("MaxCapacity = 60")

            getScriptManager():getItem("Base.M998CarSeat2"):DoParam("MaxCapacity = 70")
        end
        Events.OnLoad.Add(KI5amgeneralM998Capacity)
        
        
        function KI5Cadillac59Capacity()
            if getActivatedMods():contains("59meteor") then
            else return end

            getScriptManager():getItem("Base.ECTO1tire2_Item"):DoParam("MaxCapacity = 85")
            
            getScriptManager():getItem("Base.ECTO1tire1_Item"):DoParam("MaxCapacity = 85")
            
            getScriptManager():getItem("Base.ECTO1Trunk2"):DoParam("MaxCapacity = 225")
            
            getScriptManager():getItem("Base.ECTO1Roofrack1_Item"):DoParam("MaxCapacity = 120")
            
            getScriptManager():getItem("Base.ECTO1CarSeatfl2"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Base.ECTO1CarSeatfr2"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Base.ECTO1CarSeatrl2"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Base.ECTO1CarSeatrr2"):DoParam("MaxCapacity = 65")      
        end
        Events.OnLoad.Add(KI5Cadillac59Capacity)
        
        
        function KI5amgeneralM151A2Capacity()
            if getActivatedMods():contains("74amgeneralM151A2") then
            else return end

            getScriptManager():getItem("Base.M151A2Trunk2"):DoParam("MaxCapacity = 100")
            
            getScriptManager():getItem("Base.M151A2CarSeatFront2"):DoParam("MaxCapacity = 25")
        end
        Events.OnLoad.Add(KI5amgeneralM151A2Capacity)
        
        
        function KI578amgeneralM35A2Capacity()
            if getActivatedMods():contains("78amgeneralM35A2") then
            else return end

            getScriptManager():getItem("Base.M35A2Trunk2"):DoParam("MaxCapacity = 680")
            
            getScriptManager():getItem("Base.M35A2Extra2"):DoParam("MaxCapacity = 1")
            
            getScriptManager():getItem("Base.V103Tire2"):DoParam("MaxCapacity = 85")
            
            getScriptManager():getItem("Base.V103Axle2"):DoParam("MaxCapacity = 85")
            
            getScriptManager():getItem("Base.M35A2CarSeat2"):DoParam("MaxCapacity = 65")
        end
        Events.OnLoad.Add(KI578amgeneralM35A2Capacity)
        
        
        function KI584mercCapacity()
            if getActivatedMods():contains("84merc") then
            else return end

            getScriptManager():getItem("Base.W460NormalTire2"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Base.W460WideTire2"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Base.W460ModernTire2"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Base.W460Trunk2"):DoParam("MaxCapacity = 150")
            
            getScriptManager():getItem("Base.W4602Trunk2"):DoParam("MaxCapacity = 200")
            
            getScriptManager():getItem("Base.W4604Trunk2"):DoParam("MaxCapacity = 130")
            
            getScriptManager():getItem("Base.W460Roofrack1_Item"):DoParam("MaxCapacity = 120")
        end
        Events.OnLoad.Add(KI584mercCapacity)
        
        
        function KI583amgeneralM923Capacity()
            if getActivatedMods():contains("83amgeneralM923") then
            else return end

            getScriptManager():getItem("Base.M923Axle2"):DoParam("MaxCapacity = 80")
            
            getScriptManager():getItem("Base.M923Trunk2"):DoParam("MaxCapacity = 70")
            
            getScriptManager():getItem("Base.M923Flatbed2"):DoParam("MaxCapacity = 600")
            
            getScriptManager():getItem("Base.M923FrontSeat2"):DoParam("MaxCapacity = 50")
            
            getScriptManager():getItem("Base.M923RearSeat2"):DoParam("MaxCapacity = 25")
        end
        Events.OnLoad.Add(KI583amgeneralM923Capacity)
        
        
        function KI580kz1000Capacity()
            if getActivatedMods():contains("80kz1000") then
            else return end

            getScriptManager():getItem("Base.KZ1Kstorage3"):DoParam("MaxCapacity = 30")
            
            getScriptManager():getItem("Base.KZ1Ksidestorage3"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.KZ1Kextra3"):DoParam("MaxCapacity = 5")
            
            getScriptManager():getItem("Base.KZ1KoldTire"):DoParam("MaxCapacity = 60")
            
            getScriptManager():getItem("Base.KZ1KnormalTire"):DoParam("MaxCapacity = 60")
            
            getScriptManager():getItem("Base.KZ1KmodernTire"):DoParam("MaxCapacity = 60")
            
            getScriptManager():getItem("Base.KZ1KgasTank"):DoParam("MaxCapacity = 70")
        end
        Events.OnLoad.Add(KI580kz1000Capacity)
        
        
        function KI5nissanGTRCapacity()
            if getActivatedMods():contains("92nissanGTR") then
            else return end

            getScriptManager():getItem("Base.R32Tire0"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Base.R32Tire1"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Base.R32Tire2"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Base.R32TireA"):DoParam("MaxCapacity = 65")
            
            getScriptManager():getItem("Base.R32Trunk3"):DoParam("MaxCapacity = 75")
            
            getScriptManager():getItem("Base.R32FrontSeat3"):DoParam("MaxCapacity = 45")
            
            getScriptManager():getItem("Base.R32RearSeat3"):DoParam("MaxCapacity = 55")
        end
        Events.OnLoad.Add(KI5nissanGTRCapacity)

        

    elseif SandboxVars.CustomizableVehicles.Capacity == 5 then  -- 300
       

        function KI5commandoCapacity()
            if getActivatedMods():contains("67commando") then
            else return end

            getScriptManager():getItem("Base.V100Tire2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.V100Toolbox2"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(KI5commandoCapacity)


        function KI5oshkoshM911Capacity()
            if getActivatedMods():contains("82oshkoshM911") then
            else return end

            getScriptManager():getItem("Base.V100Tire2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.V100Tires2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.V100SmallTires2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.V100Axle2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.V100AxleSmall2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.M911Trunk2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.M911Toolbox2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.M911SpareTire2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.M911Extra2"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(KI5oshkoshM911Capacity)


        function KI5mercCapacity()
            if getActivatedMods():contains("85merc") then
            else return end

            getScriptManager():getItem("Base.mercroofrack1"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.mercroofrack2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.mercroofrack3"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(KI5mercCapacity)


        function KI5oshkoshP19ACapacity()
            if getActivatedMods():contains("86oshkoshP19A") then
            else return end

            getScriptManager():getItem("Base.V100Tire2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.P19ABigTrunk2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.P19ASmallTrunk2"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(KI5oshkoshP19ACapacity)


        function KI5cruiserCapacity()
            if getActivatedMods():contains("87cruiser") then
            else return end

            getScriptManager():getItem("Base.cruiserRoofrack1"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.cruiserRoofrack2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.cruiserRoofrack3"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(KI5cruiserCapacity)


        function KI5def90Capacity()
            if getActivatedMods():contains("89def90") then
            else return end

            getScriptManager():getItem("Base.def90SpareCompartment1"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.def90SpareCompartment2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.def90SpareCompartment3"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(KI5def90Capacity)


        function KI5def110Capacity()
            if getActivatedMods():contains("89def110") then
            else return end

            getScriptManager():getItem("Base.def110SpareCompartment1"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.def110SpareCompartment2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.def110SpareCompartment3"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(KI5def110Capacity)


        function KI5amgeneralM998Capacity()
            if getActivatedMods():contains("92amgeneralM998") then
            else return end

            getScriptManager():getItem("Base.V101Tire2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.M998Trunk2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.M998Extra2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.M998Roofrack1_Item"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.M998SpareMount_Item"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.M998SpareTireMount_Item"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.M998CarSeat2"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(KI5amgeneralM998Capacity)
        
        
        function KI5Cadillac59Capacity()
            if getActivatedMods():contains("59meteor") then
            else return end

            getScriptManager():getItem("Base.ECTO1tire2_Item"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.ECTO1tire1_Item"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.ECTO1Trunk2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.ECTO1Roofrack1_Item"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.ECTO1CarSeatfl2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.ECTO1CarSeatfr2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.ECTO1CarSeatrl2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.ECTO1CarSeatrr2"):DoParam("MaxCapacity = 300")      
        end
        Events.OnLoad.Add(KI5Cadillac59Capacity)
        
        
        function KI5amgeneralM151A2Capacity()
            if getActivatedMods():contains("74amgeneralM151A2") then
            else return end

            getScriptManager():getItem("Base.M151A2Trunk2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.M151A2CarSeatFront2"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(KI5amgeneralM151A2Capacity)
        
        
        function KI578amgeneralM35A2Capacity()
            if getActivatedMods():contains("78amgeneralM35A2") then
            else return end

            getScriptManager():getItem("Base.M35A2Trunk2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.M35A2Extra2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.V103Tire2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.V103Axle2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.M35A2CarSeat2"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(KI578amgeneralM35A2Capacity)
        
        
        function KI584mercCapacity()
            if getActivatedMods():contains("84merc") then
            else return end

            getScriptManager():getItem("Base.W460NormalTire2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.W460WideTire2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.W460ModernTire2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.W460Trunk2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.W4602Trunk2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.W4604Trunk2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.W460Roofrack1_Item"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(KI584mercCapacity)
        
        
        function KI583amgeneralM923Capacity()
            if getActivatedMods():contains("83amgeneralM923") then
            else return end

            getScriptManager():getItem("Base.M923Axle2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.M923Trunk2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.M923Flatbed2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.M923FrontSeat2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.M923RearSeat2"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(KI583amgeneralM923Capacity)
        
        
        function KI580kz1000Capacity()
            if getActivatedMods():contains("80kz1000") then
            else return end

            getScriptManager():getItem("Base.KZ1Kstorage3"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.KZ1Ksidestorage3"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.KZ1Kextra3"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.KZ1KoldTire"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.KZ1KnormalTire"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.KZ1KmodernTire"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.KZ1KgasTank"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(KI580kz1000Capacity)
        
        
        function KI5nissanGTRCapacity()
            if getActivatedMods():contains("92nissanGTR") then
            else return end

            getScriptManager():getItem("Base.R32Tire0"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.R32Tire1"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.R32Tire2"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.R32TireA"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.R32Trunk3"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.R32FrontSeat3"):DoParam("MaxCapacity = 300")
            
            getScriptManager():getItem("Base.R32RearSeat3"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(KI5nissanGTRCapacity)



    end
end

function getVehicleWeightVars()
        if SandboxVars.CustomizableVehicles.Weight == 1 then  -- Normal
            do return end


        elseif SandboxVars.CustomizableVehicles.Weight == 2 then  -- -25


            function KI5commandoWeight()
                if getActivatedMods():contains("67commando") then
                else return end

                getScriptManager():getItem("Base.V100Tire2"):DoParam("Weight = 11.25")

                getScriptManager():getItem("Base.FrontLeftV100Door2"):DoParam("Weight = 11.25")

                getScriptManager():getItem("Base.FrontRightV100Door2"):DoParam("Weight = 11.25")

                getScriptManager():getItem("Base.V100Window2"):DoParam("Weight = 2.25")
                
                getScriptManager():getItem("Base.V100EngineDoor2"):DoParam("Weight = 11")
                
                getScriptManager():getItem("Base.V100ToolboxLid2"):DoParam("Weight = 11")
                
                getScriptManager():getItem("Base.V100Toolbox2"):DoParam("Weight = 0.75")
            end
            Events.OnLoad.Add(KI5commandoWeight)


            function KI5oshkoshM911Weight()
                if getActivatedMods():contains("82oshkoshM911") then
                else return end

                getScriptManager():getItem("Base.V100Tire2"):DoParam("Weight = 11.25")

                getScriptManager():getItem("Base.V100Tires2"):DoParam("Weight = 13.5")

                getScriptManager():getItem("Base.V100SmallTires2"):DoParam("Weight = 12")

                getScriptManager():getItem("Base.V100Axle2"):DoParam("Weight = 22.5")

                getScriptManager():getItem("Base.V100AxleSmall2"):DoParam("Weight = 18.75")

                getScriptManager():getItem("Base.M911Trunk2"):DoParam("Weight = 11.25")

                getScriptManager():getItem("Base.M911Toolbox2"):DoParam("Weight = 7.5")

                getScriptManager():getItem("Base.M911SpareTire2"):DoParam("Weight = 12.75")

                getScriptManager():getItem("Base.M911Extra2"):DoParam("Weight = 0.75")
            end
            Events.OnLoad.Add(KI5oshkoshM911Weight)


            function KI5mercWeight()
                if getActivatedMods():contains("85merc") then
                else return end

                getScriptManager():getItem("Base.mercroofrack1"):DoParam("Weight = 18.75")

                getScriptManager():getItem("Base.mercroofrack2"):DoParam("Weight = 18.75")

                getScriptManager():getItem("Base.mercroofrack3"):DoParam("Weight = 18.75")
            end
            Events.OnLoad.Add(KI5mercWeight)


            function KI5oshkoshP19AWeight()
                if getActivatedMods():contains("86oshkoshP19A") then
                else return end

                getScriptManager():getItem("Base.V100Tire2"):DoParam("Weight = 11.25")

                getScriptManager():getItem("Base.P19ABigTrunk2"):DoParam("Weight = 18.75")

                getScriptManager():getItem("Base.P19ASmallTrunk2"):DoParam("Weight = 18.75")

                getScriptManager():getItem("Base.P19ARoofHatch2"):DoParam("Weight = 11.25")
            end
            Events.OnLoad.Add(KI5oshkoshP19AWeight)


            function KI5cruiserWeight()
                if getActivatedMods():contains("87cruiser") then
                else return end

                getScriptManager():getItem("Base.cruiserRoofrack1"):DoParam("Weight = 18.75")

                getScriptManager():getItem("Base.cruiserRoofrack2"):DoParam("Weight = 18.75")

                getScriptManager():getItem("Base.cruiserRoofrack3"):DoParam("Weight = 18.75")
            end
            Events.OnLoad.Add(KI5cruiserWeight)


            function KI5def90Weight()
                if getActivatedMods():contains("89def90") then
                else return end

                getScriptManager():getItem("Base.def90SpareCompartment1"):DoParam("Weight = 18.75")

                getScriptManager():getItem("Base.def90SpareCompartment2"):DoParam("Weight = 18.75")

                getScriptManager():getItem("Base.def90SpareCompartment3"):DoParam("Weight = 18.75")
            end
            Events.OnLoad.Add(KI5def90Weight)


            function KI5def110Weight()
                if getActivatedMods():contains("89def110") then
                else return end

                getScriptManager():getItem("Base.def110SpareCompartment1"):DoParam("Weight = 18.75")

                getScriptManager():getItem("Base.def110SpareCompartment2"):DoParam("Weight = 18.75")

                getScriptManager():getItem("Base.def110SpareCompartment3"):DoParam("Weight = 18.75")
            end
            Events.OnLoad.Add(KI5def110Weight)


            function KI5amgeneralM998Weight()
                if getActivatedMods():contains("92amgeneralM998") then
                else return end

                getScriptManager():getItem("Base.V100Tire2"):DoParam("Weight = 11.25")
                
                getScriptManager():getItem("Base.V101Tire2"):DoParam("Weight = 11.25")

                getScriptManager():getItem("Base.M998Trunk2"):DoParam("Weight = 18.75")

                getScriptManager():getItem("Base.M998Extra2"):DoParam("Weight = 0.01")
                
                getScriptManager():getItem("Base.M998Roofrack1_Item"):DoParam("Weight = 26")

                getScriptManager():getItem("Base.M998SpareMount_Item"):DoParam("Weight = 12")

                getScriptManager():getItem("Base.M998SpareTireMount_Item"):DoParam("Weight = 3")

                getScriptManager():getItem("Base.M998CarSeat2"):DoParam("Weight = 11.25")

                getScriptManager():getItem("Base.M998TrunkBarrier1_Item"):DoParam("Weight = 7.5")

                getScriptManager():getItem("Base.M998TrunkBarrier2_Item"):DoParam("Weight = 2.25")

                getScriptManager():getItem("Base.M998CarFrontDoor2"):DoParam("Weight = 7.5")

                getScriptManager():getItem("Base.M998CarRearDoor2"):DoParam("Weight = 7.5")
                
                getScriptManager():getItem("Base.M998CarFrontDoorArmor1_Item"):DoParam("Weight = 18")
                
                getScriptManager():getItem("Base.M998CarRearDoorArmor1_Item"):DoParam("Weight = 18")
                
                getScriptManager():getItem("Base.M998WindshieldArmor1_Item"):DoParam("Weight = 15")
                
                getScriptManager():getItem("Base.M998WindshieldArmor2_Item"):DoParam("Weight = 15")

                getScriptManager():getItem("Base.M998EngineDoor2"):DoParam("Weight = 11.25")

                getScriptManager():getItem("Base.M998TrunkDoor2"):DoParam("Weight = 11.25")

                getScriptManager():getItem("Base.M998BackCover1_Item"):DoParam("Weight = 22.5")

                getScriptManager():getItem("Base.M998Muffler1_Item"):DoParam("Weight = 3")

                getScriptManager():getItem("Base.M998Muffler2_Item"):DoParam("Weight = 3")

                getScriptManager():getItem("Base.M998Bullbar1_Item"):DoParam("Weight = 7.5")

                getScriptManager():getItem("Base.M998Bullbar2_Item"):DoParam("Weight = 11.25")

                getScriptManager():getItem("Base.M998DefaultInterior2"):DoParam("Weight = 0.075")

                getScriptManager():getItem("Base.M998Windshield2"):DoParam("Weight = 6")

                getScriptManager():getItem("Base.M998SideWindow2"):DoParam("Weight = 2.25")
                
                getScriptManager():getItem("Base.M998Mudflaps1_Item"):DoParam("Weight = 7.5")
            end
            Events.OnLoad.Add(KI5amgeneralM998Weight)
            
            
            function KI5Cadillac59Weight()
            if getActivatedMods():contains("59meteor") then
            else return end

            getScriptManager():getItem("Base.ECTO1tire2_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.ECTO1tire1_Item"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.ECTO1Trunk2"):DoParam("Weight = 18")
            
            getScriptManager():getItem("Base.ECTO1Extra2"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("Base.ECTO1Roofrack1_Item"):DoParam("Weight = 18")
            
            getScriptManager():getItem("Base.ECTO1Equipment1_Item"):DoParam("Weight = 18")
            
            getScriptManager():getItem("Base.ECTO1CarFrontDoor2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.ECTO1CarRearDoor2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.ECTO1CarFrontDoorArmor1_Item"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.ECTO1CarRearDoorArmor1_Item"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.ECTO1WindshieldArmor1_Item"):DoParam("Weight = 15")
            
            getScriptManager():getItem("Base.ECTO1WindshieldRearArmor1_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.ECTO1Bullbar1_Item"):DoParam("Weight = 15")
            
            getScriptManager():getItem("Base.ECTO1EngineDoor2"):DoParam("Weight = 10")
            
            getScriptManager():getItem("Base.ECTO1TrunkDoor2"):DoParam("Weight = 7")
            
            getScriptManager():getItem("Base.ECTO1CarSeatfl2"):DoParam("Weight = 13")
            
            getScriptManager():getItem("Base.ECTO1CarSeatfr2"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.ECTO1CarSeatrl2"):DoParam("Weight = 7")
            
            getScriptManager():getItem("Base.ECTO1CarSeatrr2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.ECTO1DefaultInterior2"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("Base.ECTO1Windshield2"):DoParam("Weight = 9")
            
            getScriptManager():getItem("Base.ECTO1RearWindshield2"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.ECTO1SideWindow2"):DoParam("Weight = 3.75")      
        end
        Events.OnLoad.Add(KI5Cadillac59Weight)
        
        function KI5amgeneralM151A2Weight()
            if getActivatedMods():contains("74amgeneralM151A2") then
            else return end

            getScriptManager():getItem("Base.M151A2Trunk2"):DoParam("Weight = 18") 
            
            getScriptManager():getItem("Base.M151A2EngineDoor2"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.M151A2Tarp1_Item"):DoParam("Weight = 9.5") 
            
            getScriptManager():getItem("Base.M151A2CarSeatFront2"):DoParam("Weight = 8.5") 
            
            getScriptManager():getItem("Base.M151A2CarSeatRear2"):DoParam("Weight = 6.75") 
            
            getScriptManager():getItem("Base.M151A2Bumper1_Item"):DoParam("Weight = 3.75") 
            
            getScriptManager():getItem("Base.M151A2DefaultInterior2"):DoParam("Weight = 0.75") 
            
            getScriptManager():getItem("Base.M151A2Windshield2"):DoParam("Weight = 6") 
            
            getScriptManager():getItem("Base.M151A2SideWindow2"):DoParam("Weight = 3") 
            
            getScriptManager():getItem("Base.M151A2LeftDoor2"):DoParam("Weight = 15") 
            
            getScriptManager():getItem("Base.M151A2RightDoor2"):DoParam("Weight = 15") 
            
            getScriptManager():getItem("Base.M151A2WindshieldArmor1_Item"):DoParam("Weight = 11") 
            
            getScriptManager():getItem("Base.M151A2CabArmor1_Item"):DoParam("Weight = 22.5") 
            
            getScriptManager():getItem("Base.M151A2BarrierLeft1_Item"):DoParam("Weight = 7.5") 
            
            getScriptManager():getItem("Base.M151A2BarrierRight1_Item"):DoParam("Weight = 7.5")
        end
        Events.OnLoad.Add(KI5amgeneralM151A2Weight)
        
        
        function KI578amgeneralM35A2Weight()
            if getActivatedMods():contains("78amgeneralM35A2") then
            else return end

            getScriptManager():getItem("Base.V103Tire2"):DoParam("Weight = 10")
            
            getScriptManager():getItem("Base.V103Axle2"):DoParam("Weight = 26")
            
            getScriptManager():getItem("Base.M35A2Trunk2"):DoParam("Weight = 19")
            
            getScriptManager():getItem("Base.M35A2Extra2"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("Base.M35A2Muffler1_Item"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.M35A2EngineDoor2"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.M35A2Tarp1_Item"):DoParam("Weight = 23")
            
            getScriptManager():getItem("Base.M35A2Tarp2_Item"):DoParam("Weight = 25")
            
            getScriptManager():getItem("Base.M35A2Tarp3_Item"):DoParam("Weight = 19")
            
            getScriptManager():getItem("Base.M35A2tailgate2"):DoParam("Weight = 19")
            
            getScriptManager():getItem("Base.M35A2CarSeat2"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.M35A2Bumper1_Item"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.M35A2Grille1_Item"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.M35A2HardCover1_Item"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.M35A2SoftCover2_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.M35A2Windshield2"):DoParam("Weight = 6")
            
            getScriptManager():getItem("Base.M35A2SideWindow2"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.M35A2Door2"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.M35A2WindshieldArmor1_Item"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.M35A2DoorArmor1_Item"):DoParam("Weight = 8")
            
            getScriptManager():getItem("Base.M35A2Mudflaps1_Item"):DoParam("Weight = 9")
        end
        Events.OnLoad.Add(KI578amgeneralM35A2Weight)
        
        
        function KI584mercWeight()
            if getActivatedMods():contains("84merc") then
            else return end

            getScriptManager():getItem("Base.W460NormalTire2"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.W460WideTire2"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.W460ModernTire2"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.W460Trunk2"):DoParam("Weight = 19")
            
            getScriptManager():getItem("Base.W4602Trunk2"):DoParam("Weight = 19")
            
            getScriptManager():getItem("Base.W4604Trunk2"):DoParam("Weight = 19")
            
            getScriptManager():getItem("Base.W460Bodykit1_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.W460CarFrontDoor2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.W460CarRearDoor2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.W460CarFrontDoorArmor1_Item"):DoParam("Weight = 19")
            
            getScriptManager():getItem("Base.W460CarRearDoorArmor1_Item"):DoParam("Weight = 19")
            
            getScriptManager():getItem("Base.W460WindshieldArmor1_Item"):DoParam("Weight = 15")
            
            getScriptManager():getItem("Base.W460WindshieldRearArmor1_Item"):DoParam("Weight = 15")
            
            getScriptManager():getItem("Base.W460WindowArmor1_Item"):DoParam("Weight = 19")
            
            getScriptManager():getItem("Base.W460EngineDoor2"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.W460TrunkDoor2"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.W460CarSeatFront2"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.W460CarSeatRear2"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.W460Bumper1_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.W460Bullbar2_Item"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.W460Bullbar3_Item"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.W460BumperRear1_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.W460Windshield2"):DoParam("Weight = 6.5")
            
            getScriptManager():getItem("Base.W460SideWindow2"):DoParam("Weight = 2.25")
            
            getScriptManager():getItem("Base.W460RearWindshield2"):DoParam("Weight = 3.25")
            
            getScriptManager():getItem("Base.W460Mudflaps1_Item"):DoParam("Weight = 7.5")
        end
        Events.OnLoad.Add(KI584mercWeight)
        
        
        function KI583amgeneralM923Weight()
            if getActivatedMods():contains("83amgeneralM923") then
            else return end

            getScriptManager():getItem("Base.M923Axle2"):DoParam("Weight = 19")
            
            getScriptManager():getItem("Base.M923Trunk2"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("Base.M923Flatbed2"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("Base.M923Extra2"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("Base.M923Muffler1_Item"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.M923EngineDoor2"):DoParam("Weight = 15")
            
            getScriptManager():getItem("Base.M923FlatbedStakes1_Item"):DoParam("Weight = 9")
            
            getScriptManager():getItem("Base.M923Tailgate2"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.M923Trunkdoor2"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("Base.M923FrontSeat2"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.M923RearSeat2"):DoParam("Weight = 5.25")
            
            getScriptManager():getItem("Base.M923Bumper1_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.M923Bumper2_Item"):DoParam("Weight = 19")
            
            getScriptManager():getItem("Base.M923HardCover1_Item"):DoParam("Weight = 15")
            
            getScriptManager():getItem("Base.M923SoftCover2_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.M923SideWindow2"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.M923Gunport2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.M923Door2"):DoParam("Weight = 10.5")
            
            getScriptManager():getItem("Base.M923WindshieldArmor1_Item"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.M923DoorArmor1_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.M923GuntruckArmor1_Item"):DoParam("Weight = 26")
            
            getScriptManager():getItem("Base.M923Mudflaps1_Item"):DoParam("Weight = 9")
            
            getScriptManager():getItem("Base.M923SpareMount1_Item"):DoParam("Weight = 9")
        end
        Events.OnLoad.Add(KI583amgeneralM923Weight)
        
        
        function KI580kz1000Weight()
            if getActivatedMods():contains("80kz1000") then
            else return end

            getScriptManager():getItem("Base.KZ1Kstorage3"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("Base.KZ1Ksidestorage3"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("Base.KZ1Kextra3"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("Base.KZ1KstorageLid"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("Base.KZ1KsidestorageLid"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("Base.KZ1Kmuffler"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.KZ1KoldTire"):DoParam("Weight = 9.75")
            
            getScriptManager():getItem("Base.KZ1KnormalTire"):DoParam("Weight = 10")
            
            getScriptManager():getItem("Base.KZ1KmodernTire"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.KZ1KgasTank"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.KZ1Kseat"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.KZ1Kwindshield3"):DoParam("Weight = 2.25")
        end
        Events.OnLoad.Add(KI580kz1000Weight)
        
        
        function KI5nissanGTRWeight()
            if getActivatedMods():contains("92nissanGTR") then
            else return end

            getScriptManager():getItem("Base.R32Tire0"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.R32Tire1"):DoParam("Weight = 9")
            
            getScriptManager():getItem("Base.R32Tire2"):DoParam("Weight = 8.25")
            
            getScriptManager():getItem("Base.R32TireA"):DoParam("Weight = 5.5")
            
            getScriptManager():getItem("Base.R32Trunk3"):DoParam("Weight = 15")
            
            getScriptManager():getItem("Base.R32FrontSeat3"):DoParam("Weight = 9")
            
            getScriptManager():getItem("Base.R32RearSeat3"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.R32Door3"):DoParam("Weight = 9")
            
            getScriptManager():getItem("Base.R32Bumper0"):DoParam("Weight = 11")
            
            getScriptManager():getItem("Base.R32Bumper1"):DoParam("Weight = 11.5")
            
            getScriptManager():getItem("Base.R32Bumper2"):DoParam("Weight = 9.5")
            
            getScriptManager():getItem("Base.R32Bumper3"):DoParam("Weight = 9")
            
            getScriptManager():getItem("Base.R32BumperA"):DoParam("Weight = 20")
            
            getScriptManager():getItem("Base.R32BumperRear0"):DoParam("Weight = 11.5")
            
            getScriptManager():getItem("Base.R32BumperRear1"):DoParam("Weight = 9.5")
            
            getScriptManager():getItem("Base.R32BumperRear2"):DoParam("Weight = 9")
            
            getScriptManager():getItem("Base.R32BumperRear3"):DoParam("Weight = 8.75")
            
            getScriptManager():getItem("Base.R32BumperRearA"):DoParam("Weight = 16")
            
            getScriptManager():getItem("Base.R32Sideskirts1"):DoParam("Weight = 4")
            
            getScriptManager():getItem("Base.R32Sideskirts2"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.R32Sideskirts3"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.R32SideskirtsA"):DoParam("Weight = 11.5")
            
            getScriptManager():getItem("Base.R32Spoiler0"):DoParam("Weight = 5.5")
            
            getScriptManager():getItem("Base.R32Spoiler1"):DoParam("Weight = 5.5")
            
            getScriptManager():getItem("Base.R32Spoiler2"):DoParam("Weight = 5.5")
            
            getScriptManager():getItem("Base.R32Spoiler3"):DoParam("Weight = 5.5")
            
            getScriptManager():getItem("Base.R32EngineDoor0"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.R32TrunkDoor3"):DoParam("Weight = 7.25")
            
            getScriptManager():getItem("Base.R32FrontSeat3"):DoParam("Weight = 11.5")
            
            getScriptManager():getItem("Base.R32RearSeat3"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.R32Muffler0"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.R32Muffler1"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.R32Windshield3"):DoParam("Weight = 6")
            
            getScriptManager():getItem("Base.R32WindshieldRear3"):DoParam("Weight = 6")
            
            getScriptManager():getItem("Base.R32FrontSideWindow3"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.R32RearSideWindow3"):DoParam("Weight = 2.25")
            
            getScriptManager():getItem("Base.R32DoorArmor"):DoParam("Weight = 17.5")
            
            getScriptManager():getItem("Base.R32RearWindowArmor"):DoParam("Weight = 4")
            
            getScriptManager():getItem("Base.R32WindshieldArmor"):DoParam("Weight = 12")
            
            getScriptManager():getItem("Base.R32WindshieldRearArmor"):DoParam("Weight = 11.5")
        end
        Events.OnLoad.Add(KI5nissanGTRWeight)



        elseif SandboxVars.CustomizableVehicles.Weight == 3 then  --  50


            function KI5commandoWeight()
                if getActivatedMods():contains("67commando") then
                else return end

                getScriptManager():getItem("Base.V100Tire2"):DoParam("Weight = 7.5")

                getScriptManager():getItem("Base.FrontLeftV100Door2"):DoParam("Weight = 7.5")

                getScriptManager():getItem("Base.FrontRightV100Door2"):DoParam("Weight = 7.5")

                getScriptManager():getItem("Base.V100Window2"):DoParam("Weight = 1.5")
                
                getScriptManager():getItem("Base.V100EngineDoor2"):DoParam("Weight = 7.5")
                
                getScriptManager():getItem("Base.V100ToolboxLid2"):DoParam("Weight = 7.5")
                
                getScriptManager():getItem("Base.V100Toolbox2"):DoParam("Weight = 0.5")
            end
            Events.OnLoad.Add(KI5commandoWeight)


            function KI5oshkoshM911Weight()
                if getActivatedMods():contains("82oshkoshM911") then
                else return end

                getScriptManager():getItem("Base.V100Tire2"):DoParam("Weight = 7.5")

                getScriptManager():getItem("Base.V100Tires2"):DoParam("Weight = 9")

                getScriptManager():getItem("Base.V100SmallTires2"):DoParam("Weight = 8")

                getScriptManager():getItem("Base.V100Axle2"):DoParam("Weight = 15")

                getScriptManager():getItem("Base.V100AxleSmall2"):DoParam("Weight = 12.5")

                getScriptManager():getItem("Base.M911Trunk2"):DoParam("Weight = 7.5")

                getScriptManager():getItem("Base.M911Toolbox2"):DoParam("Weight = 5")

                getScriptManager():getItem("Base.M911SpareTire2"):DoParam("Weight = 8.5")

                getScriptManager():getItem("Base.M911Extra2"):DoParam("Weight = 0.5")
            end
            Events.OnLoad.Add(KI5oshkoshM911Weight)


            function KI5mercWeight()
                if getActivatedMods():contains("85merc") then
                else return end

                getScriptManager():getItem("Base.mercroofrack1"):DoParam("Weight = 12.5")

                getScriptManager():getItem("Base.mercroofrack2"):DoParam("Weight = 12.5")

                getScriptManager():getItem("Base.mercroofrack3"):DoParam("Weight = 12.5")
            end
            Events.OnLoad.Add(KI5mercWeight)


            function KI5oshkoshP19AWeight()
                if getActivatedMods():contains("86oshkoshP19A") then
                else return end

                getScriptManager():getItem("Base.V100Tire2"):DoParam("Weight = 7.5")

                getScriptManager():getItem("Base.P19ABigTrunk2"):DoParam("Weight = 12.5")

                getScriptManager():getItem("Base.P19ASmallTrunk2"):DoParam("Weight = 12.5")

                getScriptManager():getItem("Base.P19ARoofHatch2"):DoParam("Weight = 7.5")
            end
            Events.OnLoad.Add(KI5oshkoshP19AWeight)


            function KI5cruiserWeight()
                if getActivatedMods():contains("87cruiser") then
                else return end

                getScriptManager():getItem("Base.cruiserRoofrack1"):DoParam("Weight = 12.5")

                getScriptManager():getItem("Base.cruiserRoofrack2"):DoParam("Weight = 12.5")

                getScriptManager():getItem("Base.cruiserRoofrack3"):DoParam("Weight = 12.5")
            end
            Events.OnLoad.Add(KI5cruiserWeight)


            function KI5def90Weight()
                if getActivatedMods():contains("89def90") then
                else return end

                getScriptManager():getItem("Base.def90SpareCompartment1"):DoParam("Weight = 12.5")

                getScriptManager():getItem("Base.def90SpareCompartment2"):DoParam("Weight = 12.5")

                getScriptManager():getItem("Base.def90SpareCompartment3"):DoParam("Weight = 12.5")
            end
            Events.OnLoad.Add(KI5def90Weight)


            function KI5def110Weight()
                if getActivatedMods():contains("89def110") then
                else return end

                getScriptManager():getItem("Base.def110SpareCompartment1"):DoParam("Weight = 12.5")

                getScriptManager():getItem("Base.def110SpareCompartment2"):DoParam("Weight = 12.5")

                getScriptManager():getItem("Base.def110SpareCompartment3"):DoParam("Weight = 12.5")
            end
            Events.OnLoad.Add(KI5def110Weight)


            function KI5amgeneralM998Weight()
                if getActivatedMods():contains("92amgeneralM998") then
                else return end

                getScriptManager():getItem("Base.V101Tire2"):DoParam("Weight = 7.5")

                getScriptManager():getItem("Base.M998Trunk2"):DoParam("Weight = 12.5")

                getScriptManager():getItem("Base.M998Extra2"):DoParam("Weight = 0.01")
                
                getScriptManager():getItem("Base.M998Roofrack1_Item"):DoParam("Weight = 18")

                getScriptManager():getItem("Base.M998SpareMount_Item"):DoParam("Weight = 8")

                getScriptManager():getItem("Base.M998SpareTireMount_Item"):DoParam("Weight = 2")

                getScriptManager():getItem("Base.M998CarSeat2"):DoParam("Weight = 7.5")

                getScriptManager():getItem("Base.M998TrunkBarrier1_Item"):DoParam("Weight = 5")

                getScriptManager():getItem("Base.M998TrunkBarrier2_Item"):DoParam("Weight = 1.5")

                getScriptManager():getItem("Base.M998CarFrontDoor2"):DoParam("Weight = 5")

                getScriptManager():getItem("Base.M998CarRearDoor2"):DoParam("Weight = 5")

                getScriptManager():getItem("Base.M998EngineDoor2"):DoParam("Weight = 7.5")

                getScriptManager():getItem("Base.M998TrunkDoor2"):DoParam("Weight = 7.5")
                
                getScriptManager():getItem("Base.M998CarFrontDoorArmor1_Item"):DoParam("Weight = 12.5")
                
                getScriptManager():getItem("Base.M998CarRearDoorArmor1_Item"):DoParam("Weight = 12.5")
                
                getScriptManager():getItem("Base.M998WindshieldArmor1_Item"):DoParam("Weight = 10")
                
                getScriptManager():getItem("Base.M998WindshieldArmor2_Item"):DoParam("Weight = 10")

                getScriptManager():getItem("Base.M998BackCover1_Item"):DoParam("Weight = 15")

                getScriptManager():getItem("Base.M998Muffler1_Item"):DoParam("Weight = 2")

                getScriptManager():getItem("Base.M998Muffler2_Item"):DoParam("Weight = 2")

                getScriptManager():getItem("Base.M998Bullbar1_Item"):DoParam("Weight = 5")

                getScriptManager():getItem("Base.M998Bullbar2_Item"):DoParam("Weight = 7.5")

                getScriptManager():getItem("Base.M998DefaultInterior2"):DoParam("Weight = 0.050")

                getScriptManager():getItem("Base.M998Windshield2"):DoParam("Weight = 4")

                getScriptManager():getItem("Base.M998SideWindow2"):DoParam("Weight = 1.5")
                
                getScriptManager():getItem("Base.M998Mudflaps1_Item"):DoParam("Weight = 5")
            end
            Events.OnLoad.Add(KI5amgeneralM998Weight)
            
            
            function KI5Cadillac59Weight()
            if getActivatedMods():contains("59meteor") then
            else return end

            getScriptManager():getItem("Base.ECTO1tire2_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.ECTO1tire1_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.ECTO1Trunk2"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Base.ECTO1Extra2"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Base.ECTO1Roofrack1_Item"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Base.ECTO1Equipment1_Item"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Base.ECTO1CarFrontDoor2"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.ECTO1CarRearDoor2"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.ECTO1CarFrontDoorArmor1_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.ECTO1CarRearDoorArmor1_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.ECTO1WindshieldArmor1_Item"):DoParam("Weight = 10")
            
            getScriptManager():getItem("Base.ECTO1WindshieldRearArmor1_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.ECTO1Bullbar1_Item"):DoParam("Weight = 10")
            
            getScriptManager():getItem("Base.ECTO1EngineDoor2"):DoParam("Weight = 6.5")
            
            getScriptManager():getItem("Base.ECTO1TrunkDoor2"):DoParam("Weight = 4.5")
            
            getScriptManager():getItem("Base.ECTO1CarSeatfl2"):DoParam("Weight = 8.5")
            
            getScriptManager():getItem("Base.ECTO1CarSeatfr2"):DoParam("Weight = 7")
            
            getScriptManager():getItem("Base.ECTO1CarSeatrl2"):DoParam("Weight = 4.5")
            
            getScriptManager():getItem("Base.ECTO1CarSeatrr2"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.ECTO1DefaultInterior2"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Base.ECTO1Windshield2"):DoParam("Weight = 6")
            
            getScriptManager():getItem("Base.ECTO1RearWindshield2"):DoParam("Weight = 3.5")
            
            getScriptManager():getItem("Base.ECTO1SideWindow2"):DoParam("Weight = 2.5")      
        end
        Events.OnLoad.Add(KI5Cadillac59Weight)
        
        
        function KI5amgeneralM151A2Weight()
            if getActivatedMods():contains("74amgeneralM151A2") then
            else return end

            getScriptManager():getItem("Base.M151A2Trunk2"):DoParam("Weight = 12.5") 
            
            getScriptManager():getItem("Base.M151A2EngineDoor2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.M151A2Tarp1_Item"):DoParam("Weight = 6.5") 
            
            getScriptManager():getItem("Base.M151A2CarSeatFront2"):DoParam("Weight = 5.5") 
            
            getScriptManager():getItem("Base.M151A2CarSeatRear2"):DoParam("Weight = 4.5") 
            
            getScriptManager():getItem("Base.M151A2Bumper1_Item"):DoParam("Weight = 2.5") 
            
            getScriptManager():getItem("Base.M151A2DefaultInterior2"):DoParam("Weight = 0.5") 
            
            getScriptManager():getItem("Base.M151A2Windshield2"):DoParam("Weight = 4") 
            
            getScriptManager():getItem("Base.M151A2SideWindow2"):DoParam("Weight = 2") 
            
            getScriptManager():getItem("Base.M151A2LeftDoor2"):DoParam("Weight = 10") 
            
            getScriptManager():getItem("Base.M151A2RightDoor2"):DoParam("Weight = 10") 
            
            getScriptManager():getItem("Base.M151A2WindshieldArmor1_Item"):DoParam("Weight = 7.5") 
            
            getScriptManager():getItem("Base.M151A2CabArmor1_Item"):DoParam("Weight = 15") 
            
            getScriptManager():getItem("Base.M151A2BarrierLeft1_Item"):DoParam("Weight = 5") 
            
            getScriptManager():getItem("Base.M151A2BarrierRight1_Item"):DoParam("Weight = 5")
        end
        Events.OnLoad.Add(KI5amgeneralM151A2Weight)
        
        
        function KI578amgeneralM35A2Weight()
            if getActivatedMods():contains("78amgeneralM35A2") then
            else return end

            getScriptManager():getItem("Base.V103Tire2"):DoParam("Weight = 7")
            
            getScriptManager():getItem("Base.V103Axle2"):DoParam("Weight = 17.5")
            
            getScriptManager():getItem("Base.M35A2Trunk2"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Base.M35A2Extra2"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Base.M35A2Muffler1_Item"):DoParam("Weight = 2")
            
            getScriptManager():getItem("Base.M35A2EngineDoor2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.M35A2Tarp1_Item"):DoParam("Weight = 15")
            
            getScriptManager():getItem("Base.M35A2Tarp2_Item"):DoParam("Weight = 16.5")
            
            getScriptManager():getItem("Base.M35A2Tarp3_Item"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Base.M35A2tailgate2"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Base.M35A2CarSeat2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.M35A2Bumper1_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.M35A2Grille1_Item"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.M35A2HardCover1_Item"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Base.M35A2SoftCover2_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.M35A2Windshield2"):DoParam("Weight = 4")
            
            getScriptManager():getItem("Base.M35A2SideWindow2"):DoParam("Weight = 2")
            
            getScriptManager():getItem("Base.M35A2Door2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.M35A2WindshieldArmor1_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.M35A2DoorArmor1_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.M35A2Mudflaps1_Item"):DoParam("Weight = 6")
        end
        Events.OnLoad.Add(KI578amgeneralM35A2Weight)
        
        
        function KI584mercWeight()
            if getActivatedMods():contains("84merc") then
            else return end

            getScriptManager():getItem("Base.W460NormalTire2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.W460WideTire2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.W460ModernTire2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.W460Trunk2"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Base.W4602Trunk2"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Base.W4604Trunk2"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Base.W460Bodykit1_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.W460CarFrontDoor2"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.W460CarRearDoor2"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.W460CarFrontDoorArmor1_Item"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Base.W460CarRearDoorArmor1_Item"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Base.W460WindshieldArmor1_Item"):DoParam("Weight = 10")
            
            getScriptManager():getItem("Base.W460WindshieldRearArmor1_Item"):DoParam("Weight = 10")
            
            getScriptManager():getItem("Base.W460WindowArmor1_Item"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Base.W460EngineDoor2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.W460TrunkDoor2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.W460CarSeatFront2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.W460CarSeatRear2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.W460Bumper1_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.W460Bullbar2_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.W460Bullbar3_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.W460BumperRear1_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.W460Windshield2"):DoParam("Weight = 4.5")
            
            getScriptManager():getItem("Base.W460SideWindow2"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("Base.W460RearWindshield2"):DoParam("Weight = 3.5")
            
            getScriptManager():getItem("Base.W460Mudflaps1_Item"):DoParam("Weight = 5")
        end
        Events.OnLoad.Add(KI584mercWeight)
        
        
        function KI583amgeneralM923Weight()
            if getActivatedMods():contains("83amgeneralM923") then
            else return end

            getScriptManager():getItem("Base.M923Axle2"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Base.M923Trunk2"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Base.M923Flatbed2"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Base.M923Extra2"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Base.M923Muffler1_Item"):DoParam("Weight = 2")
            
            getScriptManager():getItem("Base.M923EngineDoor2"):DoParam("Weight = 10")
            
            getScriptManager():getItem("Base.M923FlatbedStakes1_Item"):DoParam("Weight = 6")
            
            getScriptManager():getItem("Base.M923Tailgate2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.M923Trunkdoor2"):DoParam("Weight = 1")
            
            getScriptManager():getItem("Base.M923FrontSeat2"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.M923RearSeat2"):DoParam("Weight = 3.5")
            
            getScriptManager():getItem("Base.M923Bumper1_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.M923Bumper2_Item"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Base.M923HardCover1_Item"):DoParam("Weight = 10")
            
            getScriptManager():getItem("Base.M923SoftCover2_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.M923SideWindow2"):DoParam("Weight = 2")
            
            getScriptManager():getItem("Base.M923Gunport2"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.M923Door2"):DoParam("Weight = 7")
            
            getScriptManager():getItem("Base.M923WindshieldArmor1_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.M923DoorArmor1_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.M923GuntruckArmor1_Item"):DoParam("Weight = 17.5")
            
            getScriptManager():getItem("Base.M923Mudflaps1_Item"):DoParam("Weight = 6")
            
            getScriptManager():getItem("Base.M923SpareMount1_Item"):DoParam("Weight = 6")
        end
        Events.OnLoad.Add(KI583amgeneralM923Weight)
        
        
        function KI580kz1000Weight()
            if getActivatedMods():contains("80kz1000") then
            else return end

            getScriptManager():getItem("Base.KZ1Kstorage3"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Base.KZ1Ksidestorage3"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Base.KZ1Kextra3"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Base.KZ1KstorageLid"):DoParam("Weight = 1")
            
            getScriptManager():getItem("Base.KZ1KsidestorageLid"):DoParam("Weight = 1")
            
            getScriptManager():getItem("Base.KZ1Kmuffler"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.KZ1KoldTire"):DoParam("Weight = 6.5")
            
            getScriptManager():getItem("Base.KZ1KnormalTire"):DoParam("Weight = 7")
            
            getScriptManager():getItem("Base.KZ1KmodernTire"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.KZ1KgasTank"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.KZ1Kseat"):DoParam("Weight = 2")
            
            getScriptManager():getItem("Base.KZ1Kwindshield3"):DoParam("Weight = 1.5")
        end
        Events.OnLoad.Add(KI580kz1000Weight)
        
        function KI5nissanGTRWeight()
            if getActivatedMods():contains("92nissanGTR") then
            else return end

            getScriptManager():getItem("Base.R32Tire0"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.R32Tire1"):DoParam("Weight = 6")
            
            getScriptManager():getItem("Base.R32Tire2"):DoParam("Weight = 5.5")
            
            getScriptManager():getItem("Base.R32TireA"):DoParam("Weight = 3.5")
            
            getScriptManager():getItem("Base.R32Trunk3"):DoParam("Weight = 10")
            
            getScriptManager():getItem("Base.R32FrontSeat3"):DoParam("Weight = 6")
            
            getScriptManager():getItem("Base.R32RearSeat3"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.R32Door3"):DoParam("Weight = 6")
            
            getScriptManager():getItem("Base.R32Bumper0"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.R32Bumper1"):DoParam("Weight = 7")
            
            getScriptManager():getItem("Base.R32Bumper2"):DoParam("Weight = 6.5")
            
            getScriptManager():getItem("Base.R32Bumper3"):DoParam("Weight = 6")
            
            getScriptManager():getItem("Base.R32BumperA"):DoParam("Weight = 13.5")
            
            getScriptManager():getItem("Base.R32BumperRear0"):DoParam("Weight = 7")
            
            getScriptManager():getItem("Base.R32BumperRear1"):DoParam("Weight = 6.5")
            
            getScriptManager():getItem("Base.R32BumperRear2"):DoParam("Weight = 6")
            
            getScriptManager():getItem("Base.R32BumperRear3"):DoParam("Weight = 5.5")
            
            getScriptManager():getItem("Base.R32BumperRearA"):DoParam("Weight = 12")
            
            getScriptManager():getItem("Base.R32Sideskirts1"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.R32Sideskirts2"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.R32Sideskirts3"):DoParam("Weight = 2")
            
            getScriptManager():getItem("Base.R32SideskirtsA"):DoParam("Weight = 7")
            
            getScriptManager():getItem("Base.R32Spoiler0"):DoParam("Weight = 3.5")
            
            getScriptManager():getItem("Base.R32Spoiler1"):DoParam("Weight = 3.5")
            
            getScriptManager():getItem("Base.R32Spoiler2"):DoParam("Weight = 3.5")
            
            getScriptManager():getItem("Base.R32Spoiler3"):DoParam("Weight = 3.5")
            
            getScriptManager():getItem("Base.R32EngineDoor0"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.R32TrunkDoor3"):DoParam("Weight = 4.5")
            
            getScriptManager():getItem("Base.R32FrontSeat3"):DoParam("Weight = 7")
            
            getScriptManager():getItem("Base.R32RearSeat3"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.R32Muffler0"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.R32Muffler1"):DoParam("Weight = 2")
            
            getScriptManager():getItem("Base.R32Windshield3"):DoParam("Weight = 4")
            
            getScriptManager():getItem("Base.R32WindshieldRear3"):DoParam("Weight = 4")
            
            getScriptManager():getItem("Base.R32FrontSideWindow3"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.R32RearSideWindow3"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("Base.R32DoorArmor"):DoParam("Weight = 12.5")
            
            getScriptManager():getItem("Base.R32RearWindowArmor"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.R32WindshieldArmor"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.R32WindshieldRearArmor"):DoParam("Weight = 7")
        end
        Events.OnLoad.Add(KI5nissanGTRWeight)


        elseif SandboxVars.CustomizableVehicles.Weight == 4 then  --  75


            function KI5commandoWeight()
                if getActivatedMods():contains("67commando") then
                else return end

                getScriptManager():getItem("Base.V100Tire2"):DoParam("Weight = 3.75")

                getScriptManager():getItem("Base.FrontLeftV100Door2"):DoParam("Weight = 3.75")

                getScriptManager():getItem("Base.FrontRightV100Door2"):DoParam("Weight = 3.75")

                getScriptManager():getItem("Base.V100Window2"):DoParam("Weight = 3.75")
                
                getScriptManager():getItem("Base.V100EngineDoor2"):DoParam("Weight = 3.75")
                
                getScriptManager():getItem("Base.V100ToolboxLid2"):DoParam("Weight = 3.75")
                
                getScriptManager():getItem("Base.V100Toolbox2"):DoParam("Weight = 0.25")
            end
            Events.OnLoad.Add(KI5commandoWeight)


            function KI5oshkoshM911Weight()
                if getActivatedMods():contains("82oshkoshM911") then
                else return end

                getScriptManager():getItem("Base.V100Tire2"):DoParam("Weight = 3.75")

                getScriptManager():getItem("Base.V100Tires2"):DoParam("Weight = 4.5")

                getScriptManager():getItem("Base.V100SmallTires2"):DoParam("Weight = 4")

                getScriptManager():getItem("Base.V100Axle2"):DoParam("Weight = 7.5")

                getScriptManager():getItem("Base.V100AxleSmall2"):DoParam("Weight = 6.25")

                getScriptManager():getItem("Base.M911Trunk2"):DoParam("Weight = 4.75")

                getScriptManager():getItem("Base.M911Toolbox2"):DoParam("Weight = 2.5")

                getScriptManager():getItem("Base.M911SpareTire2"):DoParam("Weight = 4.25")

                getScriptManager():getItem("Base.M911Extra2"):DoParam("Weight = 0.25")
            end
            Events.OnLoad.Add(KI5oshkoshM911Weight)


            function KI5mercWeight()
                if getActivatedMods():contains("85merc") then
                else return end

                getScriptManager():getItem("Base.mercroofrack1"):DoParam("Weight = 6.25")

                getScriptManager():getItem("Base.mercroofrack2"):DoParam("Weight = 6.25")

                getScriptManager():getItem("Base.mercroofrack3"):DoParam("Weight = 6.25")
            end
            Events.OnLoad.Add(KI5mercWeight)


            function KI5oshkoshP19AWeight()
                if getActivatedMods():contains("86oshkoshP19A") then
                else return end

                getScriptManager():getItem("Base.V100Tire2"):DoParam("Weight = 3.75")

                getScriptManager():getItem("Base.P19ABigTrunk2"):DoParam("Weight = 6.25")

                getScriptManager():getItem("Base.P19ASmallTrunk2"):DoParam("Weight = 6.25")

                getScriptManager():getItem("Base.P19ARoofHatch2"):DoParam("Weight = 3.75")
            end
            Events.OnLoad.Add(KI5oshkoshP19AWeight)


            function KI5cruiserWeight()
                if getActivatedMods():contains("87cruiser") then
                else return end

                getScriptManager():getItem("Base.cruiserRoofrack1"):DoParam("Weight = 6.25")

                getScriptManager():getItem("Base.cruiserRoofrack2"):DoParam("Weight = 6.25")

                getScriptManager():getItem("Base.cruiserRoofrack3"):DoParam("Weight = 6.25")
            end
            Events.OnLoad.Add(KI5cruiserWeight)


            function KI5def90Weight()
                if getActivatedMods():contains("89def90") then
                else return end

                getScriptManager():getItem("Base.def90SpareCompartment1"):DoParam("Weight = 6.25")

                getScriptManager():getItem("Base.def90SpareCompartment2"):DoParam("Weight = 6.25")

                getScriptManager():getItem("Base.def90SpareCompartment3"):DoParam("Weight = 6.25")
            end
            Events.OnLoad.Add(KI5def90Weight)


            function KI5def110Weight()
                if getActivatedMods():contains("89def110") then
                else return end

                getScriptManager():getItem("Base.def110SpareCompartment1"):DoParam("Weight = 6.25")

                getScriptManager():getItem("Base.def110SpareCompartment2"):DoParam("Weight = 6.25")

                getScriptManager():getItem("Base.def110SpareCompartment3"):DoParam("Weight = 6.25")
            end
            Events.OnLoad.Add(KI5def110Weight)


            function KI5amgeneralM998Weight()
                if getActivatedMods():contains("92amgeneralM998") then
                else return end

                getScriptManager():getItem("Base.V101Tire2"):DoParam("Weight = 3.75")

                getScriptManager():getItem("Base.M998Trunk2"):DoParam("Weight = 6.25")

                getScriptManager():getItem("Base.M998Extra2"):DoParam("Weight = 0.01")
                
                getScriptManager():getItem("Base.M998Roofrack1_Item"):DoParam("Weight = 9")

                getScriptManager():getItem("Base.M998SpareMount_Item"):DoParam("Weight = 6")

                getScriptManager():getItem("Base.M998SpareTireMount_Item"):DoParam("Weight = 1")

                getScriptManager():getItem("Base.M998CarSeat2"):DoParam("Weight = 3.75")

                getScriptManager():getItem("Base.M998TrunkBarrier1_Item"):DoParam("Weight = 2.5")

                getScriptManager():getItem("Base.M998TrunkBarrier2_Item"):DoParam("Weight = 0.75")

                getScriptManager():getItem("Base.M998CarFrontDoor2"):DoParam("Weight = 2.5")

                getScriptManager():getItem("Base.M998CarRearDoor2"):DoParam("Weight = 2.5")

                getScriptManager():getItem("Base.M998EngineDoor2"):DoParam("Weight = 3.75")

                getScriptManager():getItem("Base.M998TrunkDoor2"):DoParam("Weight = 3.75")
                
                getScriptManager():getItem("Base.M998CarFrontDoorArmor1_Item"):DoParam("Weight = 7.5")
                
                getScriptManager():getItem("Base.M998CarRearDoorArmor1_Item"):DoParam("Weight = 7.5")
                
                getScriptManager():getItem("Base.M998WindshieldArmor1_Item"):DoParam("Weight = 5")
                
                getScriptManager():getItem("Base.M998WindshieldArmor2_Item"):DoParam("Weight = 5")

                getScriptManager():getItem("Base.M998BackCover1_Item"):DoParam("Weight = 7.5")

                getScriptManager():getItem("Base.M998Muffler1_Item"):DoParam("Weight = 1")

                getScriptManager():getItem("Base.M998Muffler2_Item"):DoParam("Weight = 1")

                getScriptManager():getItem("Base.M998Bullbar1_Item"):DoParam("Weight = 2.5")

                getScriptManager():getItem("Base.M998Bullbar2_Item"):DoParam("Weight = 3.75")

                getScriptManager():getItem("Base.M998DefaultInterior2"):DoParam("Weight = 0.025")

                getScriptManager():getItem("Base.M998Windshield2"):DoParam("Weight = 2")

                getScriptManager():getItem("Base.M998SideWindow2"):DoParam("Weight = 0.75")
                
                getScriptManager():getItem("Base.M998Mudflaps1_Item"):DoParam("Weight = 2.5")
            end
            Events.OnLoad.Add(KI5amgeneralM998Weight)
            
            
            function KI5Cadillac59Weight()
            if getActivatedMods():contains("59meteor") then
            else return end

            getScriptManager():getItem("Base.ECTO1tire2_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.ECTO1tire1_Item"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.ECTO1Trunk2"):DoParam("Weight = 6")
            
            getScriptManager():getItem("Base.ECTO1Extra2"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("Base.ECTO1Roofrack1_Item"):DoParam("Weight = 6")
            
            getScriptManager():getItem("Base.ECTO1Equipment1_Item"):DoParam("Weight = 6")
            
            getScriptManager():getItem("Base.ECTO1CarFrontDoor2"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.ECTO1CarRearDoor2"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.ECTO1CarFrontDoorArmor1_Item"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.ECTO1CarRearDoorArmor1_Item"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.ECTO1WindshieldArmor1_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.ECTO1WindshieldRearArmor1_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.ECTO1Bullbar1_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.ECTO1EngineDoor2"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.ECTO1TrunkDoor2"):DoParam("Weight = 2")
            
            getScriptManager():getItem("Base.ECTO1CarSeatfl2"):DoParam("Weight = 4")
            
            getScriptManager():getItem("Base.ECTO1CarSeatfr2"):DoParam("Weight = 3.5")
            
            getScriptManager():getItem("Base.ECTO1CarSeatrl2"):DoParam("Weight = 2")
            
            getScriptManager():getItem("Base.ECTO1CarSeatrr2"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.ECTO1DefaultInterior2"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("Base.ECTO1Windshield2"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.ECTO1RearWindshield2"):DoParam("Weight = 1.75")
            
            getScriptManager():getItem("Base.ECTO1SideWindow2"):DoParam("Weight = 1.25")      
        end
        Events.OnLoad.Add(KI5Cadillac59Weight)
        
        
        function KI5amgeneralM151A2Weight()
            if getActivatedMods():contains("74amgeneralM151A2") then
            else return end

            getScriptManager():getItem("Base.M151A2Trunk2"):DoParam("Weight = 6.25") 
            
            getScriptManager():getItem("Base.M151A2EngineDoor2"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.M151A2Tarp1_Item"):DoParam("Weight = 3") 
            
            getScriptManager():getItem("Base.M151A2CarSeatFront2"):DoParam("Weight = 3") 
            
            getScriptManager():getItem("Base.M151A2CarSeatRear2"):DoParam("Weight = 2") 
            
            getScriptManager():getItem("Base.M151A2Bumper1_Item"):DoParam("Weight = 1.25") 
            
            getScriptManager():getItem("Base.M151A2DefaultInterior2"):DoParam("Weight = 0.25") 
            
            getScriptManager():getItem("Base.M151A2Windshield2"):DoParam("Weight = 2") 
            
            getScriptManager():getItem("Base.M151A2SideWindow2"):DoParam("Weight = 1") 
            
            getScriptManager():getItem("Base.M151A2LeftDoor2"):DoParam("Weight = 5") 
            
            getScriptManager():getItem("Base.M151A2RightDoor2"):DoParam("Weight = 5") 
            
            getScriptManager():getItem("Base.M151A2WindshieldArmor1_Item"):DoParam("Weight = 3.75") 
            
            getScriptManager():getItem("Base.M151A2CabArmor1_Item"):DoParam("Weight = 7.5") 
            
            getScriptManager():getItem("Base.M151A2BarrierLeft1_Item"):DoParam("Weight = 2.5") 
            
            getScriptManager():getItem("Base.M151A2BarrierRight1_Item"):DoParam("Weight = 2.5")
        end
        Events.OnLoad.Add(KI5amgeneralM151A2Weight)
        
        
        function KI578amgeneralM35A2Weight()
            if getActivatedMods():contains("78amgeneralM35A2") then
            else return end

            getScriptManager():getItem("Base.V103Tire2"):DoParam("Weight = 3.5")
            
            getScriptManager():getItem("Base.V103Axle2"):DoParam("Weight = 8.75")
            
            getScriptManager():getItem("Base.M35A2Trunk2"):DoParam("Weight = 6")
            
            getScriptManager():getItem("Base.M35A2Extra2"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("Base.M35A2Muffler1_Item"):DoParam("Weight = 1")
            
            getScriptManager():getItem("Base.M35A2EngineDoor2"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.M35A2Tarp1_Item"):DoParam("Weight = 7.5")
            
            getScriptManager():getItem("Base.M35A2Tarp2_Item"):DoParam("Weight = 8")
            
            getScriptManager():getItem("Base.M35A2Tarp3_Item"):DoParam("Weight = 6.25")
            
            getScriptManager():getItem("Base.M35A2tailgate2"):DoParam("Weight = 6.25")
            
            getScriptManager():getItem("Base.M35A2CarSeat2"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.M35A2Bumper1_Item"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.M35A2Grille1_Item"):DoParam("Weight = 1")
            
            getScriptManager():getItem("Base.M35A2HardCover1_Item"):DoParam("Weight = 6.25")
            
            getScriptManager():getItem("Base.M35A2SoftCover2_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.M35A2Windshield2"):DoParam("Weight = 2")
            
            getScriptManager():getItem("Base.M35A2SideWindow2"):DoParam("Weight = 1")
            
            getScriptManager():getItem("Base.M35A2Door2"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.M35A2WindshieldArmor1_Item"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.M35A2DoorArmor1_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.M35A2Mudflaps1_Item"):DoParam("Weight = 3")
        end
        Events.OnLoad.Add(KI578amgeneralM35A2Weight)
        
        
        function KI584mercWeight()
            if getActivatedMods():contains("84merc") then
            else return end

            getScriptManager():getItem("Base.W460NormalTire2"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.W460WideTire2"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.W460ModernTire2"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.W460Trunk2"):DoParam("Weight = 6.25")
            
            getScriptManager():getItem("Base.W4602Trunk2"):DoParam("Weight = 6.25")
            
            getScriptManager():getItem("Base.W4604Trunk2"):DoParam("Weight = 6.25")
            
            getScriptManager():getItem("Base.W460Bodykit1_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.W460CarFrontDoor2"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.W460CarRearDoor2"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.W460CarFrontDoorArmor1_Item"):DoParam("Weight = 6.25")
            
            getScriptManager():getItem("Base.W460CarRearDoorArmor1_Item"):DoParam("Weight = 6.25")
            
            getScriptManager():getItem("Base.W460WindshieldArmor1_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.W460WindshieldRearArmor1_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.W460WindowArmor1_Item"):DoParam("Weight = 6.25")
            
            getScriptManager():getItem("Base.W460EngineDoor2"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.W460TrunkDoor2"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.W460CarSeatFront2"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.W460CarSeatRear2"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.W460Bumper1_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.W460Bullbar2_Item"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.W460Bullbar3_Item"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.W460BumperRear1_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.W460Windshield2"):DoParam("Weight = 2.25")
            
            getScriptManager():getItem("Base.W460SideWindow2"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("Base.W460RearWindshield2"):DoParam("Weight = 1.75")
            
            getScriptManager():getItem("Base.W460Mudflaps1_Item"):DoParam("Weight = 2.5")
        end
        Events.OnLoad.Add(KI584mercWeight)
        
        
        function KI583amgeneralM923Weight()
            if getActivatedMods():contains("83amgeneralM923") then
            else return end

            getScriptManager():getItem("Base.M923Axle2"):DoParam("Weight = 6.25")
            
            getScriptManager():getItem("Base.M923Trunk2"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("Base.M923Flatbed2"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("Base.M923Extra2"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("Base.M923Muffler1_Item"):DoParam("Weight = 1")
            
            getScriptManager():getItem("Base.M923EngineDoor2"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.M923FlatbedStakes1_Item"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.M923Tailgate2"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.M923Trunkdoor2"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Base.M923FrontSeat2"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.M923RearSeat2"):DoParam("Weight = 1.75")
            
            getScriptManager():getItem("Base.M923Bumper1_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.M923Bumper2_Item"):DoParam("Weight = 6.25")
            
            getScriptManager():getItem("Base.M923HardCover1_Item"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.M923SoftCover2_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.M923SideWindow2"):DoParam("Weight = 1")
            
            getScriptManager():getItem("Base.M923Gunport2"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.M923Door2"):DoParam("Weight = 3.5")
            
            getScriptManager():getItem("Base.M923WindshieldArmor1_Item"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.M923DoorArmor1_Item"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.M923GuntruckArmor1_Item"):DoParam("Weight = 8.75")
            
            getScriptManager():getItem("Base.M923Mudflaps1_Item"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.M923SpareMount1_Item"):DoParam("Weight = 3")
        end
        Events.OnLoad.Add(KI583amgeneralM923Weight)
        
        
        function KI580kz1000Weight()
            if getActivatedMods():contains("80kz1000") then
            else return end

            getScriptManager():getItem("Base.KZ1Kstorage3"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("Base.KZ1Ksidestorage3"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("Base.KZ1Kextra3"):DoParam("Weight = 0.25")
            
            getScriptManager():getItem("Base.KZ1KstorageLid"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Base.KZ1KsidestorageLid"):DoParam("Weight = 0.5")
            
            getScriptManager():getItem("Base.KZ1Kmuffler"):DoParam("Weight = 1.25")
            
            getScriptManager():getItem("Base.KZ1KoldTire"):DoParam("Weight = 3.25")
            
            getScriptManager():getItem("Base.KZ1KnormalTire"):DoParam("Weight = 3.5")
            
            getScriptManager():getItem("Base.KZ1KmodernTire"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.KZ1KgasTank"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.KZ1Kseat"):DoParam("Weight = 1")
            
            getScriptManager():getItem("Base.KZ1Kwindshield3"):DoParam("Weight = 0.75")
        end
        Events.OnLoad.Add(KI580kz1000Weight)
        
        function KI5nissanGTRWeight()
            if getActivatedMods():contains("92nissanGTR") then
            else return end

            getScriptManager():getItem("Base.R32Tire0"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.R32Tire1"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.R32Tire2"):DoParam("Weight = 2.75")
            
            getScriptManager():getItem("Base.R32TireA"):DoParam("Weight = 1.75")
            
            getScriptManager():getItem("Base.R32Trunk3"):DoParam("Weight = 5")
            
            getScriptManager():getItem("Base.R32FrontSeat3"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.R32RearSeat3"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.R32Door3"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.R32Bumper0"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.R32Bumper1"):DoParam("Weight = 3.5")
            
            getScriptManager():getItem("Base.R32Bumper2"):DoParam("Weight = 3.25")
            
            getScriptManager():getItem("Base.R32Bumper3"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.R32BumperA"):DoParam("Weight = 6.75")
            
            getScriptManager():getItem("Base.R32BumperRear0"):DoParam("Weight = 3.5")
            
            getScriptManager():getItem("Base.R32BumperRear1"):DoParam("Weight = 3.25")
            
            getScriptManager():getItem("Base.R32BumperRear2"):DoParam("Weight = 3")
            
            getScriptManager():getItem("Base.R32BumperRear3"):DoParam("Weight = 2.75")
            
            getScriptManager():getItem("Base.R32BumperRearA"):DoParam("Weight = 6")
            
            getScriptManager():getItem("Base.R32Sideskirts1"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("Base.R32Sideskirts2"):DoParam("Weight = 1.25")
            
            getScriptManager():getItem("Base.R32Sideskirts3"):DoParam("Weight = 1")
            
            getScriptManager():getItem("Base.R32SideskirtsA"):DoParam("Weight = 3.5")
            
            getScriptManager():getItem("Base.R32Spoiler0"):DoParam("Weight = 1.75")
            
            getScriptManager():getItem("Base.R32Spoiler1"):DoParam("Weight = 1.75")
            
            getScriptManager():getItem("Base.R32Spoiler2"):DoParam("Weight = 1.75")
            
            getScriptManager():getItem("Base.R32Spoiler3"):DoParam("Weight = 1.75")
            
            getScriptManager():getItem("Base.R32EngineDoor0"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.R32TrunkDoor3"):DoParam("Weight = 2.25")
            
            getScriptManager():getItem("Base.R32FrontSeat3"):DoParam("Weight = 3.5")
            
            getScriptManager():getItem("Base.R32RearSeat3"):DoParam("Weight = 2.5")
            
            getScriptManager():getItem("Base.R32Muffler0"):DoParam("Weight = 1.25")
            
            getScriptManager():getItem("Base.R32Muffler1"):DoParam("Weight = 1")
            
            getScriptManager():getItem("Base.R32Windshield3"):DoParam("Weight = 2")
            
            getScriptManager():getItem("Base.R32WindshieldRear3"):DoParam("Weight = 2")
            
            getScriptManager():getItem("Base.R32FrontSideWindow3"):DoParam("Weight = 1.25")
            
            getScriptManager():getItem("Base.R32RearSideWindow3"):DoParam("Weight = 0.75")
            
            getScriptManager():getItem("Base.R32DoorArmor"):DoParam("Weight = 6.25")
            
            getScriptManager():getItem("Base.R32RearWindowArmor"):DoParam("Weight = 1.5")
            
            getScriptManager():getItem("Base.R32WindshieldArmor"):DoParam("Weight = 3.75")
            
            getScriptManager():getItem("Base.R32WindshieldRearArmor"):DoParam("Weight = 3.5")
        end
        Events.OnLoad.Add(KI5nissanGTRWeight)


        elseif SandboxVars.CustomizableVehicles.Weight == 5 then  -- Weightless


            function KI5commandoWeight()
                if getActivatedMods():contains("67commando") then
                else return end

                getScriptManager():getItem("Base.V100Tire2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.FrontLeftV100Door2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.FrontRightV100Door2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.V100Window2"):DoParam("Weight = 0.0")
                
                getScriptManager():getItem("Base.V100EngineDoor2"):DoParam("Weight = 0.0")
                
                getScriptManager():getItem("Base.V100ToolboxLid2"):DoParam("Weight = 0.0")
                
                getScriptManager():getItem("Base.V100Toolbox2"):DoParam("Weight = 0.0")
            end
            Events.OnLoad.Add(KI5commandoWeight)


            function KI5oshkoshM911Weight()
                if getActivatedMods():contains("82oshkoshM911") then
                else return end

                getScriptManager():getItem("Base.V100Tire2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.V100Tires2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.V100SmallTires2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.V100Axle2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.V100AxleSmall2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M911Trunk2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M911Toolbox2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M911SpareTire2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M911Extra2"):DoParam("Weight = 0.0")
            end
            Events.OnLoad.Add(KI5oshkoshM911Weight)


            function KI5mercWeight()
                if getActivatedMods():contains("85merc") then
                else return end

                getScriptManager():getItem("Base.mercroofrack1"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.mercroofrack2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.mercroofrack3"):DoParam("Weight = 0.0")
            end
            Events.OnLoad.Add(KI5mercWeight)


            function KI5oshkoshP19AWeight()
                if getActivatedMods():contains("86oshkoshP19A") then
                else return end

                getScriptManager():getItem("Base.V100Tire2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.P19ABigTrunk2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.P19ASmallTrunk2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.P19ARoofHatch2"):DoParam("Weight = 0.0")
            end
            Events.OnLoad.Add(KI5oshkoshP19AWeight)


            function KI5cruiserWeight()
                if getActivatedMods():contains("87cruiser") then
                else return end

                getScriptManager():getItem("Base.cruiserRoofrack1"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.cruiserRoofrack2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.cruiserRoofrack3"):DoParam("Weight = 0.0")
            end
            Events.OnLoad.Add(KI5cruiserWeight)


            function KI5def90Weight()
                if getActivatedMods():contains("89def90") then
                else return end

                getScriptManager():getItem("Base.def90SpareCompartment1"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.def90SpareCompartment2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.def90SpareCompartment3"):DoParam("Weight = 0.0")
            end
            Events.OnLoad.Add(KI5def90Weight)


            function KI5def110Weight()
                if getActivatedMods():contains("89def110") then
                else return end

                getScriptManager():getItem("Base.def110SpareCompartment1"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.def110SpareCompartment2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.def110SpareCompartment3"):DoParam("Weight = 0.0")
            end
            Events.OnLoad.Add(KI5def110Weight)


            function KI5amgeneralM998Weight()
                if getActivatedMods():contains("92amgeneralM998") then
                else return end

                getScriptManager():getItem("Base.V101Tire2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998Trunk2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998Extra2"):DoParam("Weight = 0.0")
                
                getScriptManager():getItem("Base.M998Roofrack1_Item"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998SpareMount_Item"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998SpareTireMount_Item"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998CarSeat2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998TrunkBarrier1_Item"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998TrunkBarrier2_Item"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998CarFrontDoor2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998CarRearDoor2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998EngineDoor2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998TrunkDoor2"):DoParam("Weight = 0.0")
                
                getScriptManager():getItem("Base.M998CarFrontDoorArmor1_Item"):DoParam("Weight = 0.0")
                
                getScriptManager():getItem("Base.M998CarRearDoorArmor1_Item"):DoParam("Weight = 0.0")
                
                getScriptManager():getItem("Base.M998WindshieldArmor1_Item"):DoParam("Weight = 0.0")
                
                getScriptManager():getItem("Base.M998WindshieldArmor2_Item"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998BackCover1_Item"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998Muffler1_Item"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998Muffler2_Item"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998Bullbar1_Item"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998Bullbar2_Item"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998DefaultInterior2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998Windshield2"):DoParam("Weight = 0.0")

                getScriptManager():getItem("Base.M998SideWindow2"):DoParam("Weight = 0.0")
                
                getScriptManager():getItem("Base.M998Mudflaps1_Item"):DoParam("Weight = 0.0")
            end
            Events.OnLoad.Add(KI5amgeneralM998Weight)
            
            
            function KI5Cadillac59Weight()
            if getActivatedMods():contains("59meteor") then
            else return end

            getScriptManager():getItem("Base.ECTO1tire2_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1tire1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1Trunk2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1Extra2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1Roofrack1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1Equipment1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1CarFrontDoor2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1CarRearDoor2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1CarFrontDoorArmor1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1CarRearDoorArmor1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1WindshieldArmor1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1WindshieldRearArmor1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1Bullbar1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1EngineDoor2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1TrunkDoor2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1CarSeatfl2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1CarSeatfr2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1CarSeatrl2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1CarSeatrr2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1DefaultInterior2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1Windshield2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1RearWindshield2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.ECTO1SideWindow2"):DoParam("Weight = 0.0")      
        end
        Events.OnLoad.Add(KI5Cadillac59Weight)
        
        
        function KI5amgeneralM151A2Weight()
            if getActivatedMods():contains("74amgeneralM151A2") then
            else return end

            getScriptManager():getItem("Base.M151A2Trunk2"):DoParam("Weight = 0.0") 
            
            getScriptManager():getItem("Base.M151A2EngineDoor2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M151A2Tarp1_Item"):DoParam("Weight = 0.0") 
            
            getScriptManager():getItem("Base.M151A2CarSeatFront2"):DoParam("Weight = 0.0") 
            
            getScriptManager():getItem("Base.M151A2CarSeatRear2"):DoParam("Weight = 0.0") 
            
            getScriptManager():getItem("Base.M151A2Bumper1_Item"):DoParam("Weight = 0.0") 
            
            getScriptManager():getItem("Base.M151A2DefaultInterior2"):DoParam("Weight = 0.0") 
            
            getScriptManager():getItem("Base.M151A2Windshield2"):DoParam("Weight = 0.0") 
            
            getScriptManager():getItem("Base.M151A2SideWindow2"):DoParam("Weight = 0.0") 
            
            getScriptManager():getItem("Base.M151A2LeftDoor2"):DoParam("Weight = 0.0") 
            
            getScriptManager():getItem("Base.M151A2RightDoor2"):DoParam("Weight = 0.0") 
            
            getScriptManager():getItem("Base.M151A2WindshieldArmor1_Item"):DoParam("Weight = 0.0") 
            
            getScriptManager():getItem("Base.M151A2CabArmor1_Item"):DoParam("Weight = 0.0") 
            
            getScriptManager():getItem("Base.M151A2BarrierLeft1_Item"):DoParam("Weight = 0.0") 
            
            getScriptManager():getItem("Base.M151A2BarrierRight1_Item"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(KI5amgeneralM151A2Weight)
        
        
        function KI578amgeneralM35A2Weight()
            if getActivatedMods():contains("78amgeneralM35A2") then
            else return end

            getScriptManager():getItem("Base.V103Tire2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.V103Axle2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2Trunk2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2Extra2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2Muffler1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2EngineDoor2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2Tarp1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2Tarp2_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2Tarp3_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2tailgate2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2CarSeat2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2Bumper1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2Grille1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2HardCover1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2SoftCover2_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2Windshield2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2SideWindow2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2Door2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2WindshieldArmor1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2DoorArmor1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M35A2Mudflaps1_Item"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(KI578amgeneralM35A2Weight)
        
        
        function KI584mercWeight()
            if getActivatedMods():contains("84merc") then
            else return end

            getScriptManager():getItem("Base.W460NormalTire2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460WideTire2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460ModernTire2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460Trunk2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W4602Trunk2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W4604Trunk2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460Bodykit1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460CarFrontDoor2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460CarRearDoor2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460CarFrontDoorArmor1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460CarRearDoorArmor1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460WindshieldArmor1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460WindshieldRearArmor1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460WindowArmor1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460EngineDoor2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460TrunkDoor2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460CarSeatFront2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460CarSeatRear2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460Bumper1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460Bullbar2_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460Bullbar3_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460BumperRear1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460Windshield2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460SideWindow2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460RearWindshield2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.W460Mudflaps1_Item"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(KI584mercWeight)
        
        
        function KI583amgeneralM923Weight()
            if getActivatedMods():contains("83amgeneralM923") then
            else return end

            getScriptManager():getItem("Base.M923Axle2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923Trunk2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923Flatbed2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923Extra2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923Muffler1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923EngineDoor2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923FlatbedStakes1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923Tailgate2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923Trunkdoor2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923FrontSeat2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923RearSeat2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923Bumper1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923Bumper2_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923HardCover1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923SoftCover2_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923SideWindow2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923Gunport2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923Door2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923WindshieldArmor1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923DoorArmor1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923GuntruckArmor1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923Mudflaps1_Item"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.M923SpareMount1_Item"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(KI583amgeneralM923Weight)
        
        
        function KI580kz1000Weight()
            if getActivatedMods():contains("80kz1000") then
            else return end

            getScriptManager():getItem("Base.KZ1Kstorage3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.KZ1Ksidestorage3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.KZ1Kextra3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.KZ1KstorageLid"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.KZ1KsidestorageLid"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.KZ1Kmuffler"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.KZ1KoldTire"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.KZ1KnormalTire"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.KZ1KmodernTire"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.KZ1KgasTank"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.KZ1Kseat"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.KZ1Kwindshield3"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(KI580kz1000Weight)
        
        
        function KI5nissanGTRWeight()
            if getActivatedMods():contains("92nissanGTR") then
            else return end

            getScriptManager():getItem("Base.R32Tire0"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Tire1"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Tire2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32TireA"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Trunk3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32FrontSeat3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32RearSeat3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Door3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Bumper0"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Bumper1"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Bumper2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Bumper3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32BumperA"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32BumperRear0"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32BumperRear1"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32BumperRear2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32BumperRear3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32BumperRearA"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Sideskirts1"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Sideskirts2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Sideskirts3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32SideskirtsA"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Spoiler0"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Spoiler1"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Spoiler2"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Spoiler3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32EngineDoor0"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32TrunkDoor3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32FrontSeat3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32RearSeat3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Muffler0"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Muffler1"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32Windshield3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32WindshieldRear3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32FrontSideWindow3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32RearSideWindow3"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32DoorArmor"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32RearWindowArmor"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32WindshieldArmor"):DoParam("Weight = 0.0")
            
            getScriptManager():getItem("Base.R32WindshieldRearArmor"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(KI5nissanGTRWeight)
        end
    end




Events.OnSpawnRegionsLoaded.Add(getVehicleCapacityVars)
Events.OnSpawnRegionsLoaded.Add(getVehicleWeightVars)
Events.OnGameStart.Add(getVehicleWeightVars)
Events.OnGameStart.Add(getVehicleCapacityVars)
Events.OnInitWorld.Add(getVehicleWeightVars)