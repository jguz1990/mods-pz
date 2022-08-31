AEClient = {}

AEClient.SpawnVehicle = function(oldVehicle)
    local vehicleName = BravensWreckFixUtils.GetVehicleName(string.split(oldVehicle:getScriptName(), "Smashed")[1])
    sendClientCommand("Braven", "SpawnVehicle", {vehicleName = vehicleName, oldVehicleId = oldVehicle:getId()});
end