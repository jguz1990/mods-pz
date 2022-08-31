BravensWreckFixUtils = {}

-- Make lists of damaged and actual car names because devs didn't name all of them properly...
-- I am looking at you, smashed car small that's named small car!
-- Btw I could just have an if statement but this futureproofs it as it's easily editable.
local damagedVehicleList = {
    "Base.CarNormal",
	"Base.CarLuxury",
	"Base.CarLights",
	"Base.CarSmall",
    "Base.CarSmall02",
    "Base.CarStationWagon",
    "Base.PickUpTruck",
    "Base.PickUpTruckLights",
	"Base.PickUpVan",
    "Base.PickUpVanLights",
	"Base.StepVan",
    "Base.StepVanMail",
	"Base.SUV",
	"Base.ModernCar",
	"Base.ModernCar02",
	"Base.OffRoad",
  }
  
local vehicleList = {
    "Base.CarNormal",
	"Base.CarLuxury",
	"Base.CarLights",
	"Base.SmallCar",
    "Base.SmallCar02",
    "Base.CarStationWagon",
    "Base.PickUpTruck",
    "Base.PickUpTruckLights",
	"Base.PickUpVan",
    "Base.PickUpVanLights",
	"Base.StepVan",
    "Base.StepVanMail",
	"Base.SUV",
	"Base.ModernCar",
	"Base.ModernCar02",
	"Base.OffRoad",
}

-- Match the parts of the old wreck with the new vehicle
BravensWreckFixUtils.setPartsToConditionWreck = function(character, oldVehicle, newVehicle)

	for i=0, newVehicle:getPartCount() - 1 do

		local oldPart = oldVehicle:getPartByIndex(i)
		local partItem = oldPart:getInventoryItem()

		if(partItem) then

			if (isClient() and getWorld():getGameMode() == "Multiplayer") then
				sendClientCommand(character, "vehicle", "setPartCondition", { vehicle = newVehicle:getId(), part = newVehicle:getPartByIndex(i):getId(), condition = oldPart:getCondition() })
			else
				newVehicle:getPartByIndex(i):setCondition(oldPart:getCondition())						
			end
		else
			AutoEngineeringSV.RemoveVehiclePart(newVehicle:getPartByIndex(i), newVehicle)
		end
	end
end

BravensWreckFixUtils.GetVehicleName = function(vehicleName)

	local actualName

	for _,currName in ipairs(damagedVehicleList) do

	  if vehicleName == currName then
		actualName = vehicleList[_]
	  end
	end

	return actualName
end