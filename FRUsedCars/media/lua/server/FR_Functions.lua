require "Vehicle/Vehicles"

function Vehicles.ContainerAccess.FR_VehicleArmory(vehicle, part, chr)
    if chr:getVehicle() == vehicle then
        return true
    end
end