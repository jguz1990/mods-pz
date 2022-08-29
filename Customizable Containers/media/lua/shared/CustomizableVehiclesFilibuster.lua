--[[I'm NOT Going to change Vehice Mass because the game doesn't like weightless Vehicles and has issues.]]
if getActivatedMods():contains("FRUsedCars") then
else return end


function getVehicleCapacityVars()
	if SandboxVars.CustomizableVehicles.Capacity == 1 then  -- Off
		do return end

	
	elseif SandboxVars.CustomizableVehicles.Capacity == 2 then  -- Well Balanced
	
	
		getScriptManager():getItem("Base.FRSideContainer1"):DoParam("MaxCapacity = 25")
		
		getScriptManager():getItem("Base.FRSideContainer2"):DoParam("MaxCapacity = 25")
		
		getScriptManager():getItem("Base.FRSideContainer3"):DoParam("MaxCapacity = 25")
		
		getScriptManager():getItem("Base.FRSideContainer8"):DoParam("MaxCapacity = 25")
		
		getScriptManager():getItem("Base.FRTinyTrunk1"):DoParam("MaxCapacity = 40")
		
		getScriptManager():getItem("Base.FRTinyTrunk2"):DoParam("MaxCapacity = 60")
		
		getScriptManager():getItem("Base.FRTinyTrunk3"):DoParam("MaxCapacity = 30")
		
		getScriptManager():getItem("Base.FRTinyTrunk8"):DoParam("MaxCapacity = 40")
		
		getScriptManager():getItem("Base.FRSmallTrunk1"):DoParam("MaxCapacity = 55")
		
		getScriptManager():getItem("Base.FRSmallTrunk2"):DoParam("MaxCapacity = 85")
		
		getScriptManager():getItem("Base.FRSmallTrunk3"):DoParam("MaxCapacity = 40")
		
		getScriptManager():getItem("Base.FRSmallTrunk8"):DoParam("MaxCapacity = 55")
	
		getScriptManager():getItem("Base.FRNormalTrunk1"):DoParam("MaxCapacity = 75")
		
		getScriptManager():getItem("Base.FRNormalTrunk2"):DoParam("MaxCapacity = 105")
		
		getScriptManager():getItem("Base.FRNormalTrunk3"):DoParam("MaxCapacity = 65")
		
		getScriptManager():getItem("Base.FRNormalTrunk8"):DoParam("MaxCapacity = 80")
		
		getScriptManager():getItem("Base.FRBigTrunk1"):DoParam("MaxCapacity = 95")
		
		getScriptManager():getItem("Base.FRBigTrunk2"):DoParam("MaxCapacity = 130")
		
		getScriptManager():getItem("Base.FRBigTrunk3"):DoParam("MaxCapacity = 75")
		
		getScriptManager():getItem("Base.FRBigTrunk8"):DoParam("MaxCapacity = 120")
		
		getScriptManager():getItem("Base.FRLargeTrunk1"):DoParam("MaxCapacity = 125")
		
		getScriptManager():getItem("Base.FRLargeTrunk2"):DoParam("MaxCapacity = 155")
		
		getScriptManager():getItem("Base.FRLargeTrunk3"):DoParam("MaxCapacity = 95")
		
		getScriptManager():getItem("Base.FRLargeTrunk8"):DoParam("MaxCapacity = 160")
		
		getScriptManager():getItem("Base.FRCargoTrunk1"):DoParam("MaxCapacity = 230")
		
		getScriptManager():getItem("Base.FRCargoTrunk2"):DoParam("MaxCapacity = 340")
		
		getScriptManager():getItem("Base.FRCargoTrunk3"):DoParam("MaxCapacity = 175")
		
		getScriptManager():getItem("Base.FRCargoTrunk8"):DoParam("MaxCapacity = 335")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk1"):DoParam("MaxCapacity = 380")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk2"):DoParam("MaxCapacity = 490")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk3"):DoParam("MaxCapacity = 235")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk8"):DoParam("MaxCapacity = 445")
		
		getScriptManager():getItem("Base.FRTrailerTrunk1"):DoParam("MaxCapacity = 140")
		
		getScriptManager():getItem("Base.FRTrailerTrunk2"):DoParam("MaxCapacity = 140")
		
		getScriptManager():getItem("Base.FRTrailerTrunk3"):DoParam("MaxCapacity = 140")
		
		
	elseif SandboxVars.CustomizableVehicles.Capacity == 3 then  -- Balanced
	
	
		getScriptManager():getItem("Base.FRSideContainer1"):DoParam("MaxCapacity = 35")
		
		getScriptManager():getItem("Base.FRSideContainer2"):DoParam("MaxCapacity = 35")
		
		getScriptManager():getItem("Base.FRSideContainer3"):DoParam("MaxCapacity = 35")
		
		getScriptManager():getItem("Base.FRSideContainer8"):DoParam("MaxCapacity = 35")
		
		getScriptManager():getItem("Base.FRTinyTrunk1"):DoParam("MaxCapacity = 50")
		
		getScriptManager():getItem("Base.FRTinyTrunk2"):DoParam("MaxCapacity = 70")
		
		getScriptManager():getItem("Base.FRTinyTrunk3"):DoParam("MaxCapacity = 45")
		
		getScriptManager():getItem("Base.FRTinyTrunk8"):DoParam("MaxCapacity = 55")
		
		getScriptManager():getItem("Base.FRSmallTrunk1"):DoParam("MaxCapacity = 80")
		
		getScriptManager():getItem("Base.FRSmallTrunk2"):DoParam("MaxCapacity = 95")
		
		getScriptManager():getItem("Base.FRSmallTrunk3"):DoParam("MaxCapacity = 55")
		
		getScriptManager():getItem("Base.FRSmallTrunk8"):DoParam("MaxCapacity = 70")
	
		getScriptManager():getItem("Base.FRNormalTrunk1"):DoParam("MaxCapacity = 85")
		
		getScriptManager():getItem("Base.FRNormalTrunk2"):DoParam("MaxCapacity = 115")
		
		getScriptManager():getItem("Base.FRNormalTrunk3"):DoParam("MaxCapacity = 85")
		
		getScriptManager():getItem("Base.FRNormalTrunk8"):DoParam("MaxCapacity = 100")
		
		getScriptManager():getItem("Base.FRBigTrunk1"):DoParam("MaxCapacity = 115")
		
		getScriptManager():getItem("Base.FRBigTrunk2"):DoParam("MaxCapacity = 150")
		
		getScriptManager():getItem("Base.FRBigTrunk3"):DoParam("MaxCapacity = 100")
		
		getScriptManager():getItem("Base.FRBigTrunk8"):DoParam("MaxCapacity = 135")
		
		getScriptManager():getItem("Base.FRLargeTrunk1"):DoParam("MaxCapacity = 145")
		
		getScriptManager():getItem("Base.FRLargeTrunk2"):DoParam("MaxCapacity = 170")
		
		getScriptManager():getItem("Base.FRLargeTrunk3"):DoParam("MaxCapacity = 115")
		
		getScriptManager():getItem("Base.FRLargeTrunk8"):DoParam("MaxCapacity = 185")
		
		getScriptManager():getItem("Base.FRCargoTrunk1"):DoParam("MaxCapacity = 255")
		
		getScriptManager():getItem("Base.FRCargoTrunk2"):DoParam("MaxCapacity = 355")
		
		getScriptManager():getItem("Base.FRCargoTrunk3"):DoParam("MaxCapacity = 200")
		
		getScriptManager():getItem("Base.FRCargoTrunk8"):DoParam("MaxCapacity = 355")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk1"):DoParam("MaxCapacity = 410")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk2"):DoParam("MaxCapacity = 520")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk3"):DoParam("MaxCapacity = 255")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk8"):DoParam("MaxCapacity = 470")
		
		getScriptManager():getItem("Base.FRTrailerTrunk1"):DoParam("MaxCapacity = 160")
		
		getScriptManager():getItem("Base.FRTrailerTrunk2"):DoParam("MaxCapacity = 160")
		
		getScriptManager():getItem("Base.FRTrailerTrunk3"):DoParam("MaxCapacity = 160")
		
		
	elseif SandboxVars.CustomizableVehicles.Capacity == 4 then  -- Boosted
	
	
		getScriptManager():getItem("Base.FRSideContainer1"):DoParam("MaxCapacity = 55")
		
		getScriptManager():getItem("Base.FRSideContainer2"):DoParam("MaxCapacity = 55")
		
		getScriptManager():getItem("Base.FRSideContainer3"):DoParam("MaxCapacity = 55")
		
		getScriptManager():getItem("Base.FRSideContainer8"):DoParam("MaxCapacity = 55")
		
		getScriptManager():getItem("Base.FRTinyTrunk1"):DoParam("MaxCapacity = 70")
		
		getScriptManager():getItem("Base.FRTinyTrunk2"):DoParam("MaxCapacity = 90")
		
		getScriptManager():getItem("Base.FRTinyTrunk3"):DoParam("MaxCapacity = 65")
		
		getScriptManager():getItem("Base.FRTinyTrunk8"):DoParam("MaxCapacity = 75")
		
		getScriptManager():getItem("Base.FRSmallTrunk1"):DoParam("MaxCapacity = 100")
		
		getScriptManager():getItem("Base.FRSmallTrunk2"):DoParam("MaxCapacity = 115")
		
		getScriptManager():getItem("Base.FRSmallTrunk3"):DoParam("MaxCapacity = 75")
		
		getScriptManager():getItem("Base.FRSmallTrunk8"):DoParam("MaxCapacity = 90")
	
		getScriptManager():getItem("Base.FRNormalTrunk1"):DoParam("MaxCapacity = 105")
		
		getScriptManager():getItem("Base.FRNormalTrunk2"):DoParam("MaxCapacity = 135")
		
		getScriptManager():getItem("Base.FRNormalTrunk3"):DoParam("MaxCapacity = 105")
		
		getScriptManager():getItem("Base.FRNormalTrunk8"):DoParam("MaxCapacity = 120")
		
		getScriptManager():getItem("Base.FRBigTrunk1"):DoParam("MaxCapacity = 135")
		
		getScriptManager():getItem("Base.FRBigTrunk2"):DoParam("MaxCapacity = 170")
		
		getScriptManager():getItem("Base.FRBigTrunk3"):DoParam("MaxCapacity = 120")
		
		getScriptManager():getItem("Base.FRBigTrunk8"):DoParam("MaxCapacity = 155")
		
		getScriptManager():getItem("Base.FRLargeTrunk1"):DoParam("MaxCapacity = 165")
		
		getScriptManager():getItem("Base.FRLargeTrunk2"):DoParam("MaxCapacity = 190")
		
		getScriptManager():getItem("Base.FRLargeTrunk3"):DoParam("MaxCapacity = 125")
		
		getScriptManager():getItem("Base.FRLargeTrunk8"):DoParam("MaxCapacity = 205")
		
		getScriptManager():getItem("Base.FRCargoTrunk1"):DoParam("MaxCapacity = 275")
		
		getScriptManager():getItem("Base.FRCargoTrunk2"):DoParam("MaxCapacity = 375")
		
		getScriptManager():getItem("Base.FRCargoTrunk3"):DoParam("MaxCapacity = 220")
		
		getScriptManager():getItem("Base.FRCargoTrunk8"):DoParam("MaxCapacity = 375")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk1"):DoParam("MaxCapacity = 430")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk2"):DoParam("MaxCapacity = 550")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk3"):DoParam("MaxCapacity = 275")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk8"):DoParam("MaxCapacity = 490")
		
		getScriptManager():getItem("Base.FRTrailerTrunk1"):DoParam("MaxCapacity = 190")
		
		getScriptManager():getItem("Base.FRTrailerTrunk2"):DoParam("MaxCapacity = 190")
		
		getScriptManager():getItem("Base.FRTrailerTrunk3"):DoParam("MaxCapacity = 190")
		
		
	elseif SandboxVars.CustomizableVehicles.Capacity == 5 then  -- 300
	
	
		getScriptManager():getItem("Base.FRSideContainer1"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRSideContainer2"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRSideContainer3"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRSideContainer8"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRTinyTrunk1"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRTinyTrunk2"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRTinyTrunk3"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRTinyTrunk8"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRSmallTrunk1"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRSmallTrunk2"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRSmallTrunk3"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRSmallTrunk8"):DoParam("MaxCapacity = 300")
	
		getScriptManager():getItem("Base.FRNormalTrunk1"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRNormalTrunk2"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRNormalTrunk3"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRNormalTrunk8"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRBigTrunk1"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRBigTrunk2"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRBigTrunk3"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRBigTrunk8"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRLargeTrunk1"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRLargeTrunk2"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRLargeTrunk3"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRLargeTrunk8"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRCargoTrunk1"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRCargoTrunk2"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRCargoTrunk3"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRCargoTrunk8"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk1"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk2"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk3"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk8"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRTrailerTrunk1"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRTrailerTrunk2"):DoParam("MaxCapacity = 300")
		
		getScriptManager():getItem("Base.FRTrailerTrunk3"):DoParam("MaxCapacity = 300")
	
		
	end
end


function getVehicleWeightVars()
	if SandboxVars.CustomizableVehicles.Weight == 1 then  -- Normal
		do return end
		
		
	elseif SandboxVars.CustomizableVehicles.Weight == 2 then  -- -25
		

		getScriptManager():getItem("Base.FRSideContainer1"):DoParam("Weight = 3.75")
		
		getScriptManager():getItem("Base.FRSideContainer2"):DoParam("Weight = 3.75")
		
		getScriptManager():getItem("Base.FRSideContainer3"):DoParam("Weight = 3.75")
		
		getScriptManager():getItem("Base.FRSideContainer8"):DoParam("Weight = 3.75")
		
		getScriptManager():getItem("Base.FRTinyTrunk1"):DoParam("Weight = 15")
		
		getScriptManager():getItem("Base.FRTinyTrunk2"):DoParam("Weight = 23")
		
		getScriptManager():getItem("Base.FRTinyTrunk3"):DoParam("Weight = 7.5")
		
		getScriptManager():getItem("Base.FRTinyTrunk8"):DoParam("Weight = 7.5")
		
		getScriptManager():getItem("Base.FRSmallTrunk1"):DoParam("Weight = 23")
		
		getScriptManager():getItem("Base.FRSmallTrunk2"):DoParam("Weight = 30")
		
		getScriptManager():getItem("Base.FRSmallTrunk3"):DoParam("Weight = 15")
		
		getScriptManager():getItem("Base.FRSmallTrunk8"):DoParam("Weight = 15")
	
		getScriptManager():getItem("Base.FRNormalTrunk1"):DoParam("Weight = 26")
		
		getScriptManager():getItem("Base.FRNormalTrunk2"):DoParam("Weight = 34")
		
		getScriptManager():getItem("Base.FRNormalTrunk3"):DoParam("Weight = 19")
		
		getScriptManager():getItem("Base.FRNormalTrunk8"):DoParam("Weight = 26")
		
		getScriptManager():getItem("Base.FRBigTrunk1"):DoParam("Weight = 30")
		
		getScriptManager():getItem("Base.FRBigTrunk2"):DoParam("Weight = 38")
		
		getScriptManager():getItem("Base.FRBigTrunk3"):DoParam("Weight = 23")
		
		getScriptManager():getItem("Base.FRBigTrunk8"):DoParam("Weight = 38")
		
		getScriptManager():getItem("Base.FRLargeTrunk1"):DoParam("Weight = 34")
		
		getScriptManager():getItem("Base.FRLargeTrunk2"):DoParam("Weight = 41")
		
		getScriptManager():getItem("Base.FRLargeTrunk3"):DoParam("Weight = 26")
		
		getScriptManager():getItem("Base.FRLargeTrunk8"):DoParam("Weight = 41")
		
		getScriptManager():getItem("Base.FRCargoTrunk1"):DoParam("Weight = 68")
		
		getScriptManager():getItem("Base.FRCargoTrunk2"):DoParam("Weight = 75")
		
		getScriptManager():getItem("Base.FRCargoTrunk3"):DoParam("Weight = 60")
		
		getScriptManager():getItem("Base.FRCargoTrunk8"):DoParam("Weight = 75")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk1"):DoParam("Weight = 68")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk2"):DoParam("Weight = 75")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk3"):DoParam("Weight = 60")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk8"):DoParam("Weight = 75")
		
		getScriptManager():getItem("Base.FRTrailerTrunk1"):DoParam("Weight = 23")
		
		getScriptManager():getItem("Base.FRTrailerTrunk2"):DoParam("Weight = 23")
		
		getScriptManager():getItem("Base.FRTrailerTrunk3"):DoParam("Weight = 23")
		
		
		-- Tires & Brakes
		
		
		getScriptManager():getItem("Base.OldTire8"):DoParam("Weight = 23")
		
		getScriptManager():getItem("Base.NormalTire8"):DoParam("Weight = 23")
		
		getScriptManager():getItem("Base.ModernTire8"):DoParam("Weight = 23")
		
		getScriptManager():getItem("Base.OldBrake8"):DoParam("Weight = 2")
		
		getScriptManager():getItem("Base.NormalBrake8"):DoParam("Weight = 2")
		
		getScriptManager():getItem("Base.ModernBrake8"):DoParam("Weight = 2")
		
		getScriptManager():getItem("Base.NormalSuspension8"):DoParam("Weight = 1.5")
		
		getScriptManager():getItem("Base.ModernSuspension8"):DoParam("Weight = 2")
		
		
		-- Gas Tanks
		
		
		getScriptManager():getItem("Base.SmallGasTank8"):DoParam("Weight = 10.5")
		
		getScriptManager():getItem("Base.NormalGasTank8"):DoParam("Weight = 13")
		
		getScriptManager():getItem("Base.BigGasTank8"):DoParam("Weight = 17")
		
		
		-- Batteries
		
		
		getScriptManager():getItem("Base.CarBattery8"):DoParam("Weight = 4")
		
		
		-- Windows
		
		
		getScriptManager():getItem("Base.Windshield8"):DoParam("Weight = 6")
		
		getScriptManager():getItem("Base.RearWindshield8"):DoParam("Weight = 6")
		
		getScriptManager():getItem("Base.FrontWindow8"):DoParam("Weight = 2")
		
		getScriptManager():getItem("Base.RearWindow8"):DoParam("Weight = 2")
		
		
		-- Doors
		
		
		getScriptManager():getItem("Base.FrontCarDoor8"):DoParam("Weight = 7.5")
		
		getScriptManager():getItem("Base.RearCarDoor8"):DoParam("Weight = 7.5")
		
		getScriptManager():getItem("Base.RearCarDoorDouble8"):DoParam("Weight = 15")
		
		
		-- Hood
		
		
		getScriptManager():getItem("Base.EngineDoor8"):DoParam("Weight = 11")
		
		
		-- Trunk Lids
		
		
		getScriptManager():getItem("Base.TrunkDoor8"):DoParam("Weight = 11")
		
		
		-- Glove Boxes
		
		
		getScriptManager():getItem("Base.GloveBox8"):DoParam("Weight = 4")
		
		
		-- Seats
		
		
		getScriptManager():getItem("Base.NormalCarSeat8"):DoParam("Weight = 11")
		
		getScriptManager():getItem("Base.BigCarSeat8"):DoParam("Weight = 15")
		
		getScriptManager():getItem("Base.SportCarSeat8"):DoParam("Weight = 7.5")
		
		
		-- Mufflers
		
		
		getScriptManager():getItem("Base.OldCarMuffler8"):DoParam("Weight = 7.5")
		
		getScriptManager():getItem("Base.NormalCarMuffler8"):DoParam("Weight = 7.5")
		
		getScriptManager():getItem("Base.ModernCarMuffler8"):DoParam("Weight = 7.5")
		
		
	elseif SandboxVars.CustomizableVehicles.Weight == 3 then  -- -50
		

		getScriptManager():getItem("Base.FRSideContainer1"):DoParam("Weight = 2.5")
		
		getScriptManager():getItem("Base.FRSideContainer2"):DoParam("Weight = 2.5")
		
		getScriptManager():getItem("Base.FRSideContainer3"):DoParam("Weight = 2.5")
		
		getScriptManager():getItem("Base.FRSideContainer8"):DoParam("Weight = 2.5")
		
		getScriptManager():getItem("Base.FRTinyTrunk1"):DoParam("Weight = 10")
		
		getScriptManager():getItem("Base.FRTinyTrunk2"):DoParam("Weight = 15")
		
		getScriptManager():getItem("Base.FRTinyTrunk3"):DoParam("Weight = 5")
		
		getScriptManager():getItem("Base.FRTinyTrunk8"):DoParam("Weight = 5")
		
		getScriptManager():getItem("Base.FRSmallTrunk1"):DoParam("Weight = 15")
		
		getScriptManager():getItem("Base.FRSmallTrunk2"):DoParam("Weight = 20")
		
		getScriptManager():getItem("Base.FRSmallTrunk3"):DoParam("Weight = 10")
		
		getScriptManager():getItem("Base.FRSmallTrunk8"):DoParam("Weight = 10")
	
		getScriptManager():getItem("Base.FRNormalTrunk1"):DoParam("Weight = 17.5")
		
		getScriptManager():getItem("Base.FRNormalTrunk2"):DoParam("Weight = 22.5")
		
		getScriptManager():getItem("Base.FRNormalTrunk3"):DoParam("Weight = 12.5")
		
		getScriptManager():getItem("Base.FRNormalTrunk8"):DoParam("Weight = 17.5")
		
		getScriptManager():getItem("Base.FRBigTrunk1"):DoParam("Weight = 20")
		
		getScriptManager():getItem("Base.FRBigTrunk2"):DoParam("Weight = 25")
		
		getScriptManager():getItem("Base.FRBigTrunk3"):DoParam("Weight = 15")
		
		getScriptManager():getItem("Base.FRBigTrunk8"):DoParam("Weight = 25")
		
		getScriptManager():getItem("Base.FRLargeTrunk1"):DoParam("Weight = 22.5")
		
		getScriptManager():getItem("Base.FRLargeTrunk2"):DoParam("Weight = 27.5")
		
		getScriptManager():getItem("Base.FRLargeTrunk3"):DoParam("Weight = 17.5")
		
		getScriptManager():getItem("Base.FRLargeTrunk8"):DoParam("Weight = 27.5")
		
		getScriptManager():getItem("Base.FRCargoTrunk1"):DoParam("Weight = 45")
		
		getScriptManager():getItem("Base.FRCargoTrunk2"):DoParam("Weight = 50")
		
		getScriptManager():getItem("Base.FRCargoTrunk3"):DoParam("Weight = 40")
		
		getScriptManager():getItem("Base.FRCargoTrunk8"):DoParam("Weight = 50")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk1"):DoParam("Weight = 45")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk2"):DoParam("Weight = 50")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk3"):DoParam("Weight = 40")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk8"):DoParam("Weight = 50")
		
		getScriptManager():getItem("Base.FRTrailerTrunk1"):DoParam("Weight = 15")
		
		getScriptManager():getItem("Base.FRTrailerTrunk2"):DoParam("Weight = 15")
		
		getScriptManager():getItem("Base.FRTrailerTrunk3"):DoParam("Weight = 15")
		
		
		-- Tires & Brakes
		
		
		getScriptManager():getItem("Base.OldTire8"):DoParam("Weight = 15")
		
		getScriptManager():getItem("Base.NormalTire8"):DoParam("Weight = 15")
		
		getScriptManager():getItem("Base.ModernTire8"):DoParam("Weight = 15")
		
		getScriptManager():getItem("Base.OldBrake8"):DoParam("Weight = 1.5")
		
		getScriptManager():getItem("Base.NormalBrake8"):DoParam("Weight = 1.5")
		
		getScriptManager():getItem("Base.ModernBrake8"):DoParam("Weight = 1.5")
		
		getScriptManager():getItem("Base.NormalSuspension8"):DoParam("Weight = 1")
		
		getScriptManager():getItem("Base.ModernSuspension8"):DoParam("Weight = 1.5")
		
		
		-- Gas Tanks
		
		
		getScriptManager():getItem("Base.SmallGasTank8"):DoParam("Weight = 7")
		
		getScriptManager():getItem("Base.NormalGasTank8"):DoParam("Weight = 8.5")
		
		getScriptManager():getItem("Base.BigGasTank8"):DoParam("Weight = 11")
		
		
		-- Batteries
		
		
		getScriptManager():getItem("Base.CarBattery8"):DoParam("Weight = 4")
		
		
		-- Windows
		
		
		getScriptManager():getItem("Base.Windshield8"):DoParam("Weight = 4")
		
		getScriptManager():getItem("Base.RearWindshield8"):DoParam("Weight = 4")
		
		getScriptManager():getItem("Base.FrontWindow8"):DoParam("Weight = 1.5")
		
		getScriptManager():getItem("Base.RearWindow8"):DoParam("Weight = 1.5")
		
		
		-- Doors
		
		
		getScriptManager():getItem("Base.FrontCarDoor8"):DoParam("Weight = 5")
		
		getScriptManager():getItem("Base.RearCarDoor8"):DoParam("Weight = 5")
		
		getScriptManager():getItem("Base.RearCarDoorDouble8"):DoParam("Weight = 10")
		
		
		-- Hood
		
		
		getScriptManager():getItem("Base.EngineDoor8"):DoParam("Weight = 7.5")
		
		
		-- Trunk Lids
		
		
		getScriptManager():getItem("Base.TrunkDoor8"):DoParam("Weight = 7.5")
		
		
		-- Glove Boxes
		
		
		getScriptManager():getItem("Base.GloveBox8"):DoParam("Weight = 4")
		
		
		-- Seats
		
		
		getScriptManager():getItem("Base.NormalCarSeat8"):DoParam("Weight = 7.5")
		
		getScriptManager():getItem("Base.BigCarSeat8"):DoParam("Weight = 10")
		
		getScriptManager():getItem("Base.SportCarSeat8"):DoParam("Weight = 5")
		
		
		-- Mufflers
		
		
		getScriptManager():getItem("Base.OldCarMuffler8"):DoParam("Weight = 5")
		
		getScriptManager():getItem("Base.NormalCarMuffler8"):DoParam("Weight = 5")
		
		getScriptManager():getItem("Base.ModernCarMuffler8"):DoParam("Weight = 5")
		
		
	elseif SandboxVars.CustomizableVehicles.Weight == 4 then  -- -75
		

		getScriptManager():getItem("Base.FRSideContainer1"):DoParam("Weight = 1.25")
		
		getScriptManager():getItem("Base.FRSideContainer2"):DoParam("Weight = 1.25")
		
		getScriptManager():getItem("Base.FRSideContainer3"):DoParam("Weight = 1.25")
		
		getScriptManager():getItem("Base.FRSideContainer8"):DoParam("Weight = 1.25")
		
		getScriptManager():getItem("Base.FRTinyTrunk1"):DoParam("Weight = 5")
		
		getScriptManager():getItem("Base.FRTinyTrunk2"):DoParam("Weight = 7.5")
		
		getScriptManager():getItem("Base.FRTinyTrunk3"):DoParam("Weight = 2.5")
		
		getScriptManager():getItem("Base.FRTinyTrunk8"):DoParam("Weight = 2.5")
		
		getScriptManager():getItem("Base.FRSmallTrunk1"):DoParam("Weight = 7.5")
		
		getScriptManager():getItem("Base.FRSmallTrunk2"):DoParam("Weight = 10")
		
		getScriptManager():getItem("Base.FRSmallTrunk3"):DoParam("Weight = 5")
		
		getScriptManager():getItem("Base.FRSmallTrunk8"):DoParam("Weight = 5")
	
		getScriptManager():getItem("Base.FRNormalTrunk1"):DoParam("Weight = 8.75")
		
		getScriptManager():getItem("Base.FRNormalTrunk2"):DoParam("Weight = 11.25")
		
		getScriptManager():getItem("Base.FRNormalTrunk3"):DoParam("Weight = 6.25")
		
		getScriptManager():getItem("Base.FRNormalTrunk8"):DoParam("Weight = 8.75")
		
		getScriptManager():getItem("Base.FRBigTrunk1"):DoParam("Weight = 10")
		
		getScriptManager():getItem("Base.FRBigTrunk2"):DoParam("Weight = 12.5")
		
		getScriptManager():getItem("Base.FRBigTrunk3"):DoParam("Weight = 7.5")
		
		getScriptManager():getItem("Base.FRBigTrunk8"):DoParam("Weight = 12.5")
		
		getScriptManager():getItem("Base.FRLargeTrunk1"):DoParam("Weight = 11.25")
		
		getScriptManager():getItem("Base.FRLargeTrunk2"):DoParam("Weight = 13.75")
		
		getScriptManager():getItem("Base.FRLargeTrunk3"):DoParam("Weight = 8.75")
		
		getScriptManager():getItem("Base.FRLargeTrunk8"):DoParam("Weight = 13.75")
		
		getScriptManager():getItem("Base.FRCargoTrunk1"):DoParam("Weight = 22.5")
		
		getScriptManager():getItem("Base.FRCargoTrunk2"):DoParam("Weight = 25")
		
		getScriptManager():getItem("Base.FRCargoTrunk3"):DoParam("Weight = 20")
		
		getScriptManager():getItem("Base.FRCargoTrunk8"):DoParam("Weight = 25")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk1"):DoParam("Weight = 22.5")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk2"):DoParam("Weight = 25")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk3"):DoParam("Weight = 20")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk8"):DoParam("Weight = 25")
		
		getScriptManager():getItem("Base.FRTrailerTrunk1"):DoParam("Weight = 7.5")
		
		getScriptManager():getItem("Base.FRTrailerTrunk2"):DoParam("Weight = 7.5")
		
		getScriptManager():getItem("Base.FRTrailerTrunk3"):DoParam("Weight = 7.5")
		
		
		-- Tires & Brakes
		
		
		getScriptManager():getItem("Base.OldTire8"):DoParam("Weight = 7.5")
		
		getScriptManager():getItem("Base.NormalTire8"):DoParam("Weight = 7.5")
		
		getScriptManager():getItem("Base.ModernTire8"):DoParam("Weight = 7.5")
		
		getScriptManager():getItem("Base.OldBrake8"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("Base.NormalBrake8"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("Base.ModernBrake8"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("Base.NormalSuspension8"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.ModernSuspension8"):DoParam("Weight = 0.75")
		
		
		-- Gas Tanks
		
		
		getScriptManager():getItem("Base.SmallGasTank8"):DoParam("Weight = 3.5")
		
		getScriptManager():getItem("Base.NormalGasTank8"):DoParam("Weight = 4.25")
		
		getScriptManager():getItem("Base.BigGasTank8"):DoParam("Weight = 5.5")
		
		
		-- Batteries
		
		
		getScriptManager():getItem("Base.CarBattery8"):DoParam("Weight = 1.25")
		
		
		-- Windows
		
		
		getScriptManager():getItem("Base.Windshield8"):DoParam("Weight = 2")
		
		getScriptManager():getItem("Base.RearWindshield8"):DoParam("Weight = 2")
		
		getScriptManager():getItem("Base.FrontWindow8"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("Base.RearWindow8"):DoParam("Weight = 0.75")
		
		
		-- Doors
		
		
		getScriptManager():getItem("Base.FrontCarDoor8"):DoParam("Weight = 2.5")
		
		getScriptManager():getItem("Base.RearCarDoor8"):DoParam("Weight = 2.5")
		
		getScriptManager():getItem("Base.RearCarDoorDouble8"):DoParam("Weight = 5")
		
		
		-- Hood
		
		
		getScriptManager():getItem("Base.EngineDoor8"):DoParam("Weight = 3.5")
		
		
		-- Trunk Lids
		
		
		getScriptManager():getItem("Base.TrunkDoor8"):DoParam("Weight = 3.5")
		
		
		-- Glove Boxes
		
		
		getScriptManager():getItem("Base.GloveBox8"):DoParam("Weight = 1.25")
		
		
		-- Seats
		
		
		getScriptManager():getItem("Base.NormalCarSeat8"):DoParam("Weight = 3.5")
		
		getScriptManager():getItem("Base.BigCarSeat8"):DoParam("Weight = 5")
		
		getScriptManager():getItem("Base.SportCarSeat8"):DoParam("Weight = 2.5")
		
		
		-- Mufflers
		
		
		getScriptManager():getItem("Base.OldCarMuffler8"):DoParam("Weight = 2.5")
		
		getScriptManager():getItem("Base.NormalCarMuffler8"):DoParam("Weight = 2.5")
		
		getScriptManager():getItem("Base.ModernCarMuffler8"):DoParam("Weight = 2.5")
		
		
	elseif SandboxVars.CustomizableVehicles.Weight == 5 then  -- Weightless
		

		getScriptManager():getItem("Base.FRSideContainer1"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRSideContainer2"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRSideContainer3"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRSideContainer8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRTinyTrunk1"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRTinyTrunk2"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRTinyTrunk3"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRTinyTrunk8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRSmallTrunk1"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRSmallTrunk2"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRSmallTrunk3"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRSmallTrunk8"):DoParam("Weight = 0")
	
		getScriptManager():getItem("Base.FRNormalTrunk1"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRNormalTrunk2"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRNormalTrunk3"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRNormalTrunk8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRBigTrunk1"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRBigTrunk2"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRBigTrunk3"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRBigTrunk8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRLargeTrunk1"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRLargeTrunk2"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRLargeTrunk3"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRLargeTrunk8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRCargoTrunk1"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRCargoTrunk2"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRCargoTrunk3"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRCargoTrunk8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk1"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk2"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk3"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRXLCargoTrunk8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRTrailerTrunk1"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRTrailerTrunk2"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FRTrailerTrunk3"):DoParam("Weight = 0")
		
		
		-- Tires & Brakes
		
		
		getScriptManager():getItem("Base.OldTire8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.NormalTire8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.ModernTire8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.OldBrake8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.NormalBrake8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.ModernBrake8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.NormalSuspension8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.ModernSuspension8"):DoParam("Weight = 0")
		
		
		-- Gas Tanks
		
		
		getScriptManager():getItem("Base.SmallGasTank8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.NormalGasTank8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.BigGasTank8"):DoParam("Weight = 0")
		
		
		-- Batteries
		
		
		getScriptManager():getItem("Base.CarBattery8"):DoParam("Weight = 0")
		
		
		-- Windows
		
		
		getScriptManager():getItem("Base.Windshield8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.RearWindshield8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.FrontWindow8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.RearWindow8"):DoParam("Weight = 0")
		
		
		-- Doors
		
		
		getScriptManager():getItem("Base.FrontCarDoor8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.RearCarDoor8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.RearCarDoorDouble8"):DoParam("Weight = 0")
		
		
		-- Hood
		
		
		getScriptManager():getItem("Base.EngineDoor8"):DoParam("Weight = 0")
		
		
		-- Trunk Lids
		
		
		getScriptManager():getItem("Base.TrunkDoor8"):DoParam("Weight = 0")
		
		
		-- Glove Boxes
		
		
		getScriptManager():getItem("Base.GloveBox8"):DoParam("Weight = 0")
		
		
		-- Seats
		
		
		getScriptManager():getItem("Base.NormalCarSeat8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.BigCarSeat8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.SportCarSeat8"):DoParam("Weight = 0")
		
		
		-- Mufflers
		
		
		getScriptManager():getItem("Base.OldCarMuffler8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.NormalCarMuffler8"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.ModernCarMuffler8"):DoParam("Weight = 0")
		
		
		end
	end


Events.OnSpawnRegionsLoaded.Add(getVehicleCapacityVars)	
Events.OnSpawnRegionsLoaded.Add(getVehicleWeightVars)	
Events.OnLoad.Add(getVehicleWeightVars)
Events.OnLoad.Add(getVehicleCapacityVars)
Events.OnInitWorld.Add(getVehicleWeightVars)





