local OnEnterVehicle = function(playerObj)

	local vehicle = playerObj:getVehicle(); if not vehicle then return end
    local engine = vehicle:getPartById("Engine"); if not engine then return end

	if engine:getModData().horsePower then

		BravensUtils.DelayFunction(function()
            AutoEngineeringSV.ChangeVehicleEngine(engine:getModData().quality, engine:getModData().horsePower, nil, vehicle)
		end, 100);
	end
end

Events.OnEnterVehicle.Add(OnEnterVehicle)

local OnExitVehicle = ISVehicleMenu.onExit

ISVehicleMenu.onExit = function(playerObj, seatFrom)

	local vehicle = playerObj:getVehicle(); if not vehicle then return end
    local engine = vehicle:getPartById("Engine"); if not engine then return end
    
	if engine:getModData().horsePower then

		BravensUtils.DelayFunction(function()
            AutoEngineeringSV.ChangeVehicleEngine(engine:getModData().quality, engine:getModData().horsePower, nil, vehicle)
		end, 100);
	end

	OnExitVehicle(playerObj, seatFrom)
end