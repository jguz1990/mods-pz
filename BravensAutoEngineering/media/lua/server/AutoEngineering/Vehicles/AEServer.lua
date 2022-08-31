--***********************************************************
--**                       BitBraven                       **
--***********************************************************

AutoEngineeringSV = {}

AutoEngineeringSV.RemoveVehiclePart = function(part, vehicle)
    part:setInventoryItem(nil);
    vehicle:transmitPartItem(part);
end

AutoEngineeringSV.SetPartCondition = function(playerObj, part, vehicle, newCondition)
    part:setCondition(newCondition);
    vehicle:transmitPartItem(part);
end

AutoEngineeringSV.AddEngine = function(playerObj, engine, vehicle)
	local engineItem = playerObj:getInventory():AddItem("Braven.AEEngine");
	engineItem:setCondition(engine:getCondition())
	local engineHP = vehicle:getScript():getEngineForce()
	local engineQL = vehicle:getScript():getEngineQuality()
	engineItem:getModData().horsePower = engineHP
	engineItem:getModData().quality = engineQL
	engineItem:setTooltip(getText("Tooltip_EngineForce") .. " " .. (engineHP / 10) .. "<br>" ..  getText("Tooltip_EngineQuality") .. " " .. engineQL .. "<br>")
end

AutoEngineeringSV.ChangeVehicleEngine = function(quality, horsePower, engine, vehicle)

	if engine then
		engine:getModData().horsePower = horsePower
		engine:getModData().quality = quality
	end

	vehicle:setEngineFeature(quality, vehicle:getScript():getEngineLoudness(), horsePower);
	vehicle:transmitEngine()
end

AutoEngineeringSV.RemoveVehicle = function(vehicle)
    vehicle:permanentlyRemove()
end

AutoEngineeringSV.CloneVehicle = function(character, oldVehicle, newVehicle)

	if not newVehicle then return end

	BravensWreckFixUtils.setPartsToConditionWreck(character, oldVehicle, newVehicle)

	--Match the new vehicle's color and rust to the original
	newVehicle:setColorHSV(oldVehicle:getColorHue(), oldVehicle:getColorSaturation(),  oldVehicle:getColorValue())
	newVehicle:updateSkin()
	newVehicle:setRust(oldVehicle:getRust())
	newVehicle:transmitRust()
	newVehicle:setHotwired(true)

	-- Disable the driver's door lock
    newVehicle:getPartById("DoorFrontLeft"):getDoor():setLocked(false)
	oldVehicle:permanentlyRemove()
end

local function onClientCommand(module, command, player, args)

		if module ~= "Braven" then return end

		if command == "SpawnVehicle" then

			local square = getSquare(player:getX(), player:getY(), player:getZ())
			local newVehicle = addVehicleDebug(args.vehicleName, nil, nil, square);

			if newVehicle then
				local oldVehicle = getVehicleById(args.oldVehicleId);
				AutoEngineeringSV.CloneVehicle(player, oldVehicle, newVehicle)
			end
		end
end

Events.OnClientCommand.Add(onClientCommand);