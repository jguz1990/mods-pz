--[[I'm NOT Going to change Vehice Mass because the game doesn't like weightless Vehicles and has issues.]]


function getVehicleCapacityVars()
	if SandboxVars.CustomizableVehicles.Capacity == 1 then  -- Normal
		do return end

	
	elseif SandboxVars.CustomizableVehicles.Capacity == 2 then  -- Well Balanced
	
	
		getScriptManager():getItem("Base.SmallTrunk1"):DoParam("MaxCapacity = 50")
		
		getScriptManager():getItem("Base.NormalTrunk1"):DoParam("MaxCapacity = 65")

		getScriptManager():getItem("Base.BigTrunk1"):DoParam("MaxCapacity = 80")

		getScriptManager():getItem("Base.VanSeatsTrunk2"):DoParam("MaxCapacity = 60")

		getScriptManager():getItem("Base.SmallTrunk2"):DoParam("MaxCapacity = 80")

		getScriptManager():getItem("Base.NormalTrunk2"):DoParam("MaxCapacity = 95")

		getScriptManager():getItem("Base.BigTrunk2"):DoParam("MaxCapacity = 170")

		getScriptManager():getItem("Base.SmallTrunk3"):DoParam("MaxCapacity = 35")

		getScriptManager():getItem("Base.NormalTrunk3"):DoParam("MaxCapacity = 55")

		getScriptManager():getItem("Base.BigTrunk3"):DoParam("MaxCapacity = 60")

		getScriptManager():getItem("Base.TrailerTrunk1"):DoParam("MaxCapacity = 120")

		getScriptManager():getItem("Base.TrailerTrunk2"):DoParam("MaxCapacity = 120")

		getScriptManager():getItem("Base.TrailerTrunk3"):DoParam("MaxCapacity = 120")
		
		
	elseif SandboxVars.CustomizableVehicles.Capacity == 3 then  -- Balanced
	
	
		getScriptManager():getItem("Base.SmallTrunk1"):DoParam("MaxCapacity = 70")
		
		getScriptManager():getItem("Base.NormalTrunk1"):DoParam("MaxCapacity = 85")

		getScriptManager():getItem("Base.BigTrunk1"):DoParam("MaxCapacity = 100")

		getScriptManager():getItem("Base.VanSeatsTrunk2"):DoParam("MaxCapacity = 80")

		getScriptManager():getItem("Base.SmallTrunk2"):DoParam("MaxCapacity = 100")

		getScriptManager():getItem("Base.NormalTrunk2"):DoParam("MaxCapacity = 115")

		getScriptManager():getItem("Base.BigTrunk2"):DoParam("MaxCapacity = 210")

		getScriptManager():getItem("Base.SmallTrunk3"):DoParam("MaxCapacity = 55")

		getScriptManager():getItem("Base.NormalTrunk3"):DoParam("MaxCapacity = 75")

		getScriptManager():getItem("Base.BigTrunk3"):DoParam("MaxCapacity = 80")

		getScriptManager():getItem("Base.TrailerTrunk1"):DoParam("MaxCapacity = 160")

		getScriptManager():getItem("Base.TrailerTrunk2"):DoParam("MaxCapacity = 160")

		getScriptManager():getItem("Base.TrailerTrunk3"):DoParam("MaxCapacity = 160")
		
		
	elseif SandboxVars.CustomizableVehicles.Capacity == 4 then  -- Boosted
	
	
		getScriptManager():getItem("Base.SmallTrunk1"):DoParam("MaxCapacity = 90")
		
		getScriptManager():getItem("Base.NormalTrunk1"):DoParam("MaxCapacity = 105")

		getScriptManager():getItem("Base.BigTrunk1"):DoParam("MaxCapacity = 120")

		getScriptManager():getItem("Base.VanSeatsTrunk2"):DoParam("MaxCapacity = 100")

		getScriptManager():getItem("Base.SmallTrunk2"):DoParam("MaxCapacity = 120")

		getScriptManager():getItem("Base.NormalTrunk2"):DoParam("MaxCapacity = 135")

		getScriptManager():getItem("Base.BigTrunk2"):DoParam("MaxCapacity = 250")

		getScriptManager():getItem("Base.SmallTrunk3"):DoParam("MaxCapacity = 75")

		getScriptManager():getItem("Base.NormalTrunk3"):DoParam("MaxCapacity = 95")

		getScriptManager():getItem("Base.BigTrunk3"):DoParam("MaxCapacity = 100")

		getScriptManager():getItem("Base.TrailerTrunk1"):DoParam("MaxCapacity = 200")

		getScriptManager():getItem("Base.TrailerTrunk2"):DoParam("MaxCapacity = 200")

		getScriptManager():getItem("Base.TrailerTrunk3"):DoParam("MaxCapacity = 200")
		
		
	elseif SandboxVars.CustomizableVehicles.Capacity == 5 then  -- 300
	
	
		getScriptManager():getItem("Base.SmallTrunk1"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.NormalTrunk1"):DoParam("MaxCapacity = 300")

		getScriptManager():getItem("Base.BigTrunk1"):DoParam("MaxCapacity = 300")

		getScriptManager():getItem("Base.VanSeatsTrunk2"):DoParam("MaxCapacity = 300")

		getScriptManager():getItem("Base.SmallTrunk2"):DoParam("MaxCapacity = 300")

		getScriptManager():getItem("Base.NormalTrunk2"):DoParam("MaxCapacity = 300")

		getScriptManager():getItem("Base.BigTrunk2"):DoParam("MaxCapacity = 300")

		getScriptManager():getItem("Base.SmallTrunk3"):DoParam("MaxCapacity = 300")

		getScriptManager():getItem("Base.NormalTrunk3"):DoParam("MaxCapacity = 300")

		getScriptManager():getItem("Base.BigTrunk3"):DoParam("MaxCapacity = 300")

		getScriptManager():getItem("Base.TrailerTrunk1"):DoParam("MaxCapacity = 300")

		getScriptManager():getItem("Base.TrailerTrunk2"):DoParam("MaxCapacity = 300")

		getScriptManager():getItem("Base.TrailerTrunk3"):DoParam("MaxCapacity = 300")
	
		
	end
end


function getVehicleWeightVars()
	if SandboxVars.CustomizableVehicles.Weight == 1 then  -- Normal
		do return end
		
		
	elseif SandboxVars.CustomizableVehicles.Weight == 2 then  -- -25
		

		getScriptManager():getItem("Base.Jack"):DoParam("Weight = 1.13")

		getScriptManager():getItem("Base.LugWrench"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.TirePump"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.EngineParts"):DoParam("Weight = 0.3")

		getScriptManager():getItem("Base.CarBatteryCharger"):DoParam("Weight = 1.5")


		-- Tires/Brakes


		getScriptManager():getItem("Base.OldTire1"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.NormalTire1"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.ModernTire1"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.OldTire2"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.NormalTire2"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.ModernTire2"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.OldTire3"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.NormalTire3"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.ModernTire3"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.OldBrake1"):DoParam("Weight = 2.25")

		getScriptManager():getItem("Base.NormalBrake1"):DoParam("Weight = 2.25")

		getScriptManager():getItem("Base.ModernBrake1"):DoParam("Weight = 2.25")

		getScriptManager():getItem("Base.OldBrake2"):DoParam("Weight = 2.25")

		getScriptManager():getItem("Base.NormalBrake2"):DoParam("Weight = 2.25")

		getScriptManager():getItem("Base.ModernBrake2"):DoParam("Weight = 2.25")

		getScriptManager():getItem("Base.OldBrake3"):DoParam("Weight = 2.25")

		getScriptManager():getItem("Base.NormalBrake3"):DoParam("Weight = 2.25")

		getScriptManager():getItem("Base.ModernBrake3"):DoParam("Weight = 2.25")


		-- Suspsension


		getScriptManager():getItem("Base.NormalSuspension1"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.ModernSuspension1"):DoParam("Weight = 2.25")

		getScriptManager():getItem("Base.NormalSuspension2"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.ModernSuspension2"):DoParam("Weight = 2.25")

		getScriptManager():getItem("Base.NormalSuspension3"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.ModernSuspension3"):DoParam("Weight = 2.25")


		-- Gas Tank


		getScriptManager():getItem("Base.SmallGasTank1"):DoParam("Weight = 8.25")

		getScriptManager():getItem("Base.NormalGasTank1"):DoParam("Weight = 10")

		getScriptManager():getItem("Base.BigGasTank1"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.SmallGasTank2"):DoParam("Weight = 8.25")

		getScriptManager():getItem("Base.NormalGasTank2"):DoParam("Weight = 10")

		getScriptManager():getItem("Base.BigGasTank2"):DoParam("Weight = 15")

		getScriptManager():getItem("Base.SmallGasTank3"):DoParam("Weight = 8.25")

		getScriptManager():getItem("Base.NormalGasTank3"):DoParam("Weight = 10")

		getScriptManager():getItem("Base.BigGasTank3"):DoParam("Weight = 11")


		-- Batteries


		getScriptManager():getItem("Base.CarBattery1"):DoParam("Weight = 4")

		getScriptManager():getItem("Base.CarBattery2"):DoParam("Weight = 4")

		getScriptManager():getItem("Base.CarBattery3"):DoParam("Weight = 4")


		-- Trunks


		getScriptManager():getItem("Base.SmallTrunk1"):DoParam("Weight = 23")
		
		getScriptManager():getItem("Base.NormalTrunk1"):DoParam("Weight = 26")

		getScriptManager():getItem("Base.BigTrunk1"):DoParam("Weight = 30")

		getScriptManager():getItem("Base.VanSeatsTrunk2"):DoParam("Weight = 15")

		getScriptManager():getItem("Base.SmallTrunk2"):DoParam("Weight = 30")

		getScriptManager():getItem("Base.NormalTrunk2"):DoParam("Weight = 34")

		getScriptManager():getItem("Base.BigTrunk2"):DoParam("Weight = 38")

		getScriptManager():getItem("Base.SmallTrunk3"):DoParam("Weight = 15")

		getScriptManager():getItem("Base.NormalTrunk3"):DoParam("Weight = 19")

		getScriptManager():getItem("Base.BigTrunk3"):DoParam("Weight = 23")

		getScriptManager():getItem("Base.TrailerTrunk1"):DoParam("Weight = 23")

		getScriptManager():getItem("Base.TrailerTrunk2"):DoParam("Weight = 23")

		getScriptManager():getItem("Base.TrailerTrunk3"):DoParam("Weight = 23")


		-- Windows


		getScriptManager():getItem("Base.Windshield1"):DoParam("Weight = 6")

		getScriptManager():getItem("Base.RearWindshield1"):DoParam("Weight = 6")

		getScriptManager():getItem("Base.FrontWindow1"):DoParam("Weight = 2")

		getScriptManager():getItem("Base.RearWindow1"):DoParam("Weight = 2")

		getScriptManager():getItem("Base.Windshield2"):DoParam("Weight = 6")

		getScriptManager():getItem("Base.RearWindshield2"):DoParam("Weight = 6")

		getScriptManager():getItem("Base.FrontWindow2"):DoParam("Weight = 2")

		getScriptManager():getItem("Base.RearWindow2"):DoParam("Weight = 2")

		getScriptManager():getItem("Base.Windshield3"):DoParam("Weight = 6")

		getScriptManager():getItem("Base.RearWindshield3"):DoParam("Weight = 6")

		getScriptManager():getItem("Base.FrontWindow3"):DoParam("Weight = 3")

		getScriptManager():getItem("Base.RearWindow3"):DoParam("Weight = 3")


		-- Doors


		getScriptManager():getItem("Base.FrontCarDoor1"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.RearCarDoor1"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.RearCarDoorDouble1"):DoParam("Weight = 15")

		getScriptManager():getItem("Base.FrontCarDoor2"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.RearCarDoor2"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.RearCarDoorDouble2"):DoParam("Weight = 15")

		getScriptManager():getItem("Base.FrontCarDoor3"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.RearCarDoor3"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.RearCarDoorDouble3"):DoParam("Weight = 15")


		-- Engine Hoods


		getScriptManager():getItem("Base.EngineDoor1"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.EngineDoor2"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.EngineDoor3"):DoParam("Weight = 11")


		-- Trunk Lids


		getScriptManager():getItem("Base.TrunkDoor1"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.TrunkDoor2"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.TrunkDoor3"):DoParam("Weight = 11")


		-- Glove Boxes


		getScriptManager():getItem("Base.GloveBox1"):DoParam("Weight = 2")

		getScriptManager():getItem("Base.GloveBox2"):DoParam("Weight = 2")

		getScriptManager():getItem("Base.GloveBox3"):DoParam("Weight = 2")


		-- Seats


		getScriptManager():getItem("Base.NormalCarSeat1"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.NormalCarSeat2"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.NormalCarSeat3"):DoParam("Weight = 11")


		-- Muffler


		getScriptManager():getItem("Base.OldCarMuffler1"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.NormalCarMuffler1"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.ModernCarMuffler1"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.OldCarMuffler2"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.NormalCarMuffler2"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.ModernCarMuffler2"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.OldCarMuffler3"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.NormalCarMuffler3"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.ModernCarMuffler3"):DoParam("Weight = 7.5")
		
		
	elseif SandboxVars.CustomizableVehicles.Weight == 3 then  -- -50
		

		getScriptManager():getItem("Base.Jack"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.LugWrench"):DoParam("Weight = 0.5")

		getScriptManager():getItem("Base.TirePump"):DoParam("Weight = 1")

		getScriptManager():getItem("Base.EngineParts"):DoParam("Weight = 0.2")

		getScriptManager():getItem("Base.CarBatteryCharger"):DoParam("Weight = 1")


		-- Tires/Brakes


		getScriptManager():getItem("Base.OldTire1"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.NormalTire1"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.ModernTire1"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.OldTire2"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.NormalTire2"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.ModernTire2"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.OldTire3"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.NormalTire3"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.ModernTire3"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.OldBrake1"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.NormalBrake1"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.ModernBrake1"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.OldBrake2"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.NormalBrake2"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.ModernBrake2"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.OldBrake3"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.NormalBrake3"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.ModernBrake3"):DoParam("Weight = 1.5")


		-- Suspsension


		getScriptManager():getItem("Base.NormalSuspension1"):DoParam("Weight = 1")

		getScriptManager():getItem("Base.ModernSuspension1"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.NormalSuspension2"):DoParam("Weight = 1")

		getScriptManager():getItem("Base.ModernSuspension2"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.NormalSuspension3"):DoParam("Weight = 1")

		getScriptManager():getItem("Base.ModernSuspension3"):DoParam("Weight = 1.5")


		-- Gas Tank


		getScriptManager():getItem("Base.SmallGasTank1"):DoParam("Weight = 5.5")

		getScriptManager():getItem("Base.NormalGasTank1"):DoParam("Weight = 6.5")

		getScriptManager():getItem("Base.BigGasTank1"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.SmallGasTank2"):DoParam("Weight = 7")

		getScriptManager():getItem("Base.NormalGasTank2"):DoParam("Weight = 8.5")

		getScriptManager():getItem("Base.BigGasTank2"):DoParam("Weight = 11")

		getScriptManager():getItem("Base.SmallGasTank3"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.NormalGasTank3"):DoParam("Weight = 6")

		getScriptManager():getItem("Base.BigGasTank3"):DoParam("Weight = 7")


		-- Batteries


		getScriptManager():getItem("Base.CarBattery1"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.CarBattery2"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.CarBattery3"):DoParam("Weight = 2.5")


		-- Trunks


		getScriptManager():getItem("Base.SmallTrunk1"):DoParam("Weight = 15")
		
		getScriptManager():getItem("Base.NormalTrunk1"):DoParam("Weight = 17.5")

		getScriptManager():getItem("Base.BigTrunk1"):DoParam("Weight = 20")

		getScriptManager():getItem("Base.VanSeatsTrunk2"):DoParam("Weight = 10")

		getScriptManager():getItem("Base.SmallTrunk2"):DoParam("Weight = 20")

		getScriptManager():getItem("Base.NormalTrunk2"):DoParam("Weight = 22.5")

		getScriptManager():getItem("Base.BigTrunk2"):DoParam("Weight = 25")

		getScriptManager():getItem("Base.SmallTrunk3"):DoParam("Weight = 10")

		getScriptManager():getItem("Base.NormalTrunk3"):DoParam("Weight = 12.5")

		getScriptManager():getItem("Base.BigTrunk3"):DoParam("Weight = 15")

		getScriptManager():getItem("Base.TrailerTrunk1"):DoParam("Weight = 15")

		getScriptManager():getItem("Base.TrailerTrunk2"):DoParam("Weight = 15")

		getScriptManager():getItem("Base.TrailerTrunk3"):DoParam("Weight = 15")


		-- Windows


		getScriptManager():getItem("Base.Windshield1"):DoParam("Weight = 4")

		getScriptManager():getItem("Base.RearWindshield1"):DoParam("Weight = 4")

		getScriptManager():getItem("Base.FrontWindow1"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.RearWindow1"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.Windshield2"):DoParam("Weight = 4")

		getScriptManager():getItem("Base.RearWindshield2"):DoParam("Weight = 4")

		getScriptManager():getItem("Base.FrontWindow2"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.RearWindow2"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.Windshield3"):DoParam("Weight = 4")

		getScriptManager():getItem("Base.RearWindshield3"):DoParam("Weight = 4")

		getScriptManager():getItem("Base.FrontWindow3"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.RearWindow3"):DoParam("Weight = 1.5")


		-- Doors


		getScriptManager():getItem("Base.FrontCarDoor1"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.RearCarDoor1"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.RearCarDoorDouble1"):DoParam("Weight = 10")

		getScriptManager():getItem("Base.FrontCarDoor2"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.RearCarDoor2"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.RearCarDoorDouble2"):DoParam("Weight = 10")

		getScriptManager():getItem("Base.FrontCarDoor3"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.RearCarDoor3"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.RearCarDoorDouble3"):DoParam("Weight = 10")


		-- Engine Hoods


		getScriptManager():getItem("Base.EngineDoor1"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.EngineDoor2"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.EngineDoor3"):DoParam("Weight = 7.5")


		-- Trunk Lids


		getScriptManager():getItem("Base.TrunkDoor1"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.TrunkDoor2"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.TrunkDoor3"):DoParam("Weight = 7.5")


		-- Glove Boxes


		getScriptManager():getItem("Base.GloveBox1"):DoParam("Weight = 1.5")

		getScriptManager():getItem("Base.GloveBox2"):DoParam("Weight = 2")

		getScriptManager():getItem("Base.GloveBox3"):DoParam("Weight = 1")


		-- Seats


		getScriptManager():getItem("Base.NormalCarSeat1"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.NormalCarSeat2"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.NormalCarSeat3"):DoParam("Weight = 7.5")


		-- Muffler


		getScriptManager():getItem("Base.OldCarMuffler1"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.NormalCarMuffler1"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.ModernCarMuffler1"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.OldCarMuffler2"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.NormalCarMuffler2"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.ModernCarMuffler2"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.OldCarMuffler3"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.NormalCarMuffler3"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.ModernCarMuffler3"):DoParam("Weight = 5")
		
		
	elseif SandboxVars.CustomizableVehicles.Weight == 4 then  -- -75
		

		getScriptManager():getItem("Base.Jack"):DoParam("Weight = 0.375")

		getScriptManager():getItem("Base.LugWrench"):DoParam("Weight = 0.25")

		getScriptManager():getItem("Base.TirePump"):DoParam("Weight = 0.5")

		getScriptManager():getItem("Base.EngineParts"):DoParam("Weight = 0.1")

		getScriptManager():getItem("Base.CarBatteryCharger"):DoParam("Weight = 0.5")


		-- Tires/Brakes


		getScriptManager():getItem("Base.OldTire1"):DoParam("Weight = 3.75")

		getScriptManager():getItem("Base.NormalTire1"):DoParam("Weight = 3.75")

		getScriptManager():getItem("Base.ModernTire1"):DoParam("Weight = 3.75")

		getScriptManager():getItem("Base.OldTire2"):DoParam("Weight = 3.75")

		getScriptManager():getItem("Base.NormalTire2"):DoParam("Weight = 3.75")

		getScriptManager():getItem("Base.ModernTire2"):DoParam("Weight = 3.75")

		getScriptManager():getItem("Base.OldTire3"):DoParam("Weight = 3.75")

		getScriptManager():getItem("Base.NormalTire3"):DoParam("Weight = 3.75")

		getScriptManager():getItem("Base.ModernTire3"):DoParam("Weight = 3.75")

		getScriptManager():getItem("Base.OldBrake1"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.NormalBrake1"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.ModernBrake1"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.OldBrake2"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.NormalBrake2"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.ModernBrake2"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.OldBrake3"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.NormalBrake3"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.ModernBrake3"):DoParam("Weight = 0.75")


		-- Suspsension


		getScriptManager():getItem("Base.NormalSuspension1"):DoParam("Weight = 0.5")

		getScriptManager():getItem("Base.ModernSuspension1"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.NormalSuspension2"):DoParam("Weight = 0.5")

		getScriptManager():getItem("Base.ModernSuspension2"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.NormalSuspension3"):DoParam("Weight = 0.5")

		getScriptManager():getItem("Base.ModernSuspension3"):DoParam("Weight = 0.75")


		-- Gas Tank


		getScriptManager():getItem("Base.SmallGasTank1"):DoParam("Weight = 2.75")

		getScriptManager():getItem("Base.NormalGasTank1"):DoParam("Weight = 3.25")

		getScriptManager():getItem("Base.BigGasTank1"):DoParam("Weight = 3.75")

		getScriptManager():getItem("Base.SmallGasTank2"):DoParam("Weight = 3.5")

		getScriptManager():getItem("Base.NormalGasTank2"):DoParam("Weight = 4.25")

		getScriptManager():getItem("Base.BigGasTank2"):DoParam("Weight = 5.5")

		getScriptManager():getItem("Base.SmallGasTank3"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.NormalGasTank3"):DoParam("Weight = 3")

		getScriptManager():getItem("Base.BigGasTank3"):DoParam("Weight = 3.5")


		-- Batteries


		getScriptManager():getItem("Base.CarBattery1"):DoParam("Weight = 1.25")

		getScriptManager():getItem("Base.CarBattery2"):DoParam("Weight = 1.25")

		getScriptManager():getItem("Base.CarBattery3"):DoParam("Weight = 1.25")


		-- Trunks


		getScriptManager():getItem("Base.SmallTrunk1"):DoParam("Weight = 7.5")
		
		getScriptManager():getItem("Base.NormalTrunk1"):DoParam("Weight = 8.75")

		getScriptManager():getItem("Base.BigTrunk1"):DoParam("Weight = 10")

		getScriptManager():getItem("Base.VanSeatsTrunk2"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.SmallTrunk2"):DoParam("Weight = 10")

		getScriptManager():getItem("Base.NormalTrunk2"):DoParam("Weight = 11.25")

		getScriptManager():getItem("Base.BigTrunk2"):DoParam("Weight = 12.5")

		getScriptManager():getItem("Base.SmallTrunk3"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.NormalTrunk3"):DoParam("Weight = 6.25")

		getScriptManager():getItem("Base.BigTrunk3"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.TrailerTrunk1"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.TrailerTrunk2"):DoParam("Weight = 7.5")

		getScriptManager():getItem("Base.TrailerTrunk3"):DoParam("Weight = 7.5")


		-- Windows


		getScriptManager():getItem("Base.Windshield1"):DoParam("Weight = 2")

		getScriptManager():getItem("Base.RearWindshield1"):DoParam("Weight = 2")

		getScriptManager():getItem("Base.FrontWindow1"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.RearWindow1"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.Windshield2"):DoParam("Weight = 2")

		getScriptManager():getItem("Base.RearWindshield2"):DoParam("Weight = 2")

		getScriptManager():getItem("Base.FrontWindow2"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.RearWindow2"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.Windshield3"):DoParam("Weight = 2")

		getScriptManager():getItem("Base.RearWindshield3"):DoParam("Weight = 2")

		getScriptManager():getItem("Base.FrontWindow3"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.RearWindow3"):DoParam("Weight = 0.75")


		-- Doors


		getScriptManager():getItem("Base.FrontCarDoor1"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.RearCarDoor1"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.RearCarDoorDouble1"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.FrontCarDoor2"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.RearCarDoor2"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.RearCarDoorDouble2"):DoParam("Weight = 5")

		getScriptManager():getItem("Base.FrontCarDoor3"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.RearCarDoor3"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.RearCarDoorDouble3"):DoParam("Weight = 5")


		-- Engine Hoods


		getScriptManager():getItem("Base.EngineDoor1"):DoParam("Weight = 3.75")

		getScriptManager():getItem("Base.EngineDoor2"):DoParam("Weight = 3.75")

		getScriptManager():getItem("Base.EngineDoor3"):DoParam("Weight = 3.75")


		-- Trunk Lids


		getScriptManager():getItem("Base.TrunkDoor1"):DoParam("Weight = 3.75")

		getScriptManager():getItem("Base.TrunkDoor2"):DoParam("Weight = 3.75")

		getScriptManager():getItem("Base.TrunkDoor3"):DoParam("Weight = 3.75")


		-- Glove Boxes


		getScriptManager():getItem("Base.GloveBox1"):DoParam("Weight = 0.75")

		getScriptManager():getItem("Base.GloveBox2"):DoParam("Weight = 1")

		getScriptManager():getItem("Base.GloveBox3"):DoParam("Weight = 0.5")


		-- Seats


		getScriptManager():getItem("Base.NormalCarSeat1"):DoParam("Weight = 3.75")

		getScriptManager():getItem("Base.NormalCarSeat2"):DoParam("Weight = 3.75")

		getScriptManager():getItem("Base.NormalCarSeat3"):DoParam("Weight = 3.75")


		-- Muffler


		getScriptManager():getItem("Base.OldCarMuffler1"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.NormalCarMuffler1"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.ModernCarMuffler1"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.OldCarMuffler2"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.NormalCarMuffler2"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.ModernCarMuffler2"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.OldCarMuffler3"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.NormalCarMuffler3"):DoParam("Weight = 2.5")

		getScriptManager():getItem("Base.ModernCarMuffler3"):DoParam("Weight = 2.5")
		
		
	elseif SandboxVars.CustomizableVehicles.Weight == 5 then  -- Weightless
		

		getScriptManager():getItem("Base.Jack"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.LugWrench"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.TirePump"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.EngineParts"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.CarBatteryCharger"):DoParam("Weight = 0")


		-- Tires/Brakes


		getScriptManager():getItem("Base.OldTire1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalTire1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.ModernTire1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.OldTire2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalTire2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.ModernTire2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.OldTire3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalTire3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.ModernTire3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.OldBrake1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalBrake1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.ModernBrake1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.OldBrake2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalBrake2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.ModernBrake2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.OldBrake3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalBrake3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.ModernBrake3"):DoParam("Weight = 0")


		-- Suspsension


		getScriptManager():getItem("Base.NormalSuspension1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.ModernSuspension1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalSuspension2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.ModernSuspension2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalSuspension3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.ModernSuspension3"):DoParam("Weight = 0")


		-- Gas Tank


		getScriptManager():getItem("Base.SmallGasTank1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalGasTank1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.BigGasTank1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.SmallGasTank2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalGasTank2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.BigGasTank2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.SmallGasTank3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalGasTank3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.BigGasTank3"):DoParam("Weight = 0")


		-- Batteries


		getScriptManager():getItem("Base.CarBattery1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.CarBattery2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.CarBattery3"):DoParam("Weight = 0")


		-- Trunks


		getScriptManager():getItem("Base.SmallTrunk1"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.NormalTrunk1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.BigTrunk1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.VanSeatsTrunk2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.SmallTrunk2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalTrunk2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.BigTrunk2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.SmallTrunk3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalTrunk3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.BigTrunk3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.TrailerTrunk1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.TrailerTrunk2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.TrailerTrunk3"):DoParam("Weight = 0")


		-- Windows


		getScriptManager():getItem("Base.Windshield1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.RearWindshield1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.FrontWindow1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.RearWindow1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.Windshield2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.RearWindshield2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.FrontWindow2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.RearWindow2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.Windshield3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.RearWindshield3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.FrontWindow3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.RearWindow3"):DoParam("Weight = 0")


		-- Doors


		getScriptManager():getItem("Base.FrontCarDoor1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.RearCarDoor1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.RearCarDoorDouble1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.FrontCarDoor2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.RearCarDoor2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.RearCarDoorDouble2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.FrontCarDoor3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.RearCarDoor3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.RearCarDoorDouble3"):DoParam("Weight = 0")


		-- Engine Hoods


		getScriptManager():getItem("Base.EngineDoor1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.EngineDoor2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.EngineDoor3"):DoParam("Weight = 0")


		-- Trunk Lids


		getScriptManager():getItem("Base.TrunkDoor1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.TrunkDoor2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.TrunkDoor3"):DoParam("Weight = 0")


		-- Glove Boxes


		getScriptManager():getItem("Base.GloveBox1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.GloveBox2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.GloveBox3"):DoParam("Weight = 0")


		-- Seats


		getScriptManager():getItem("Base.NormalCarSeat1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalCarSeat2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalCarSeat3"):DoParam("Weight = 0")


		-- Muffler


		getScriptManager():getItem("Base.OldCarMuffler1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalCarMuffler1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.ModernCarMuffler1"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.OldCarMuffler2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalCarMuffler2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.ModernCarMuffler2"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.OldCarMuffler3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.NormalCarMuffler3"):DoParam("Weight = 0")

		getScriptManager():getItem("Base.ModernCarMuffler3"):DoParam("Weight = 0")

		
	end
end
	
	
Events.OnSpawnRegionsLoaded.Add(getVehicleCapacityVars)	
Events.OnSpawnRegionsLoaded.Add(getVehicleWeightVars)	
Events.OnLoad.Add(getVehicleWeightVars)
Events.OnLoad.Add(getVehicleCapacityVars)
Events.OnInitWorld.Add(getVehicleWeightVars)
