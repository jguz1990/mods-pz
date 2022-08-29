if VehicleZoneDistribution then

VehicleZoneDistribution.parkingstall.vehicles["Base.Black_Hawk"] = {index = -1, spawnChance = 1}
VehicleZoneDistribution.trailerpark.vehicles["Base.Black_Hawk"] = {index = 4, spawnChance = 1}
VehicleZoneDistribution.bad.vehicles["Base.Black_Hawk"] = {index = 0, spawnChance = 0}
VehicleZoneDistribution.junkyard.vehicles["Base.Black_Hawk"] = {index = -1, spawnChance = 0}
VehicleZoneDistribution.ranger.vehicles["Base.Black_Hawk"] = {index = 0, spawnChance = 1}
VehicleZoneDistribution.good.vehicles["Base.Black_Hawk"] = {index = 0, spawnChance = 2}
-- Trafficjam spawns --
VehicleZoneDistribution.trafficjamw.vehicles["Base.Black_Hawk"] = {index = -1, spawnChance = 0}
VehicleZoneDistribution.trafficjame.vehicles["Base.Black_Hawk"] = {index = -1, spawnChance = 0}
VehicleZoneDistribution.trafficjamn.vehicles["Base.Black_Hawk"] = {index = -1, spawnChance = 0}
VehicleZoneDistribution.trafficjams.vehicles["Base.Black_Hawk"] = {index = -1, spawnChance = 0}
-- Military spawn --
VehicleZoneDistribution.military = VehicleZoneDistribution.military or {}
VehicleZoneDistribution.military.vehicles = VehicleZoneDistribution.military.vehicles or {}
VehicleZoneDistribution.military.vehicles["Base.Black_Hawk"] = {index = -1, spawnChance = 2}
VehicleZoneDistribution.military.vehicles["Base.Black_Hawk"] = {index = -1, spawnChance = 2}
end