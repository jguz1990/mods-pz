RainWashUtils = {}

function RainWashUtils.clamp(number, min, max)
    return math.max(min, math.min(number, max))
end

function RainWashUtils.round(number, decimalPlaces)
    local multiplier = 10 ^ (decimalPlaces or 0)
    return math.floor(number * multiplier + 0.5) / multiplier
end

function RainWashUtils.wipe(tbl)
    for i = 0, #tbl do
        tbl[i] = nil
    end
    return tbl
end

function RainWashUtils.getVehicleById(vehicleId)
    return vehicleId and getVehicleById(vehicleId)
end

function RainWashUtils.isVehicleOutside(vehicle)
    return vehicle:getSquare() and not vehicle:getSquare():isInARoom()
end