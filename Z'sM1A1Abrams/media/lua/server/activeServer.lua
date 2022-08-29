local Commands = {};
Commands.Abrams = {};

Commands.Abrams.Rotate = function(player, args)
	local vehicle = getVehicleById(args.vehicleId)
	local turret = vehicle:getPartById("Turret")
	turret:setModelVisible("Default", false)
	turret:setModelVisible(args.newBearing, true)
	turret:setModelVisible(args.oldBearing, false)
end

local onClientCommand = function(module, command, player, args)
	if Commands[module] and Commands[module][command] then
	Commands[module][command](player, args);
	end
end

Events.OnClientCommand.Add(onClientCommand);