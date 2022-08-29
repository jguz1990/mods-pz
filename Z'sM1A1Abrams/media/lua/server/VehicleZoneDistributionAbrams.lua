VehicleZoneDistribution = VehicleZoneDistribution or {}
function appendAbramsSpawns()
	roll = ZombRand(0, 3)
	if roll == 0 then
		getWorld():registerVehiclesZone("bridge", "ParkingStall", 12599, 965, 0, 6, 8, { Direction = "S" } )
		VehicleZoneDistribution.bridge = {}
		VehicleZoneDistribution.bridge.vehicles = {}
		VehicleZoneDistribution.bridge.vehicles["Base.m1a1"] = {index = -1, spawnChance = 100}
		VehicleZoneDistribution.bridge.chanceToPartDamage = 20
		VehicleZoneDistribution.bridge.baseVehicleQuality = 0.5
		VehicleZoneDistribution.bridge.chanceToSpawnBurnt = 0
		VehicleZoneDistribution.bridge.randomAngle = true
		VehicleZoneDistribution.bridge.chanceToSpawnSpecial = 0
		VehicleZoneDistribution.bridge.chanceToSpawnKey = 0
		print("Abrams spawn: bridge")
	elseif roll == 1 then
		getWorld():registerVehiclesZone("stadium", "ParkingStall", 12954, 1585, 0, 6, 8, { Direction = "S" } )
		VehicleZoneDistribution.stadium = {}
		VehicleZoneDistribution.stadium.vehicles = {}
		VehicleZoneDistribution.stadium.vehicles["Base.m1a1"] = {index = -1, spawnChance = 100}
		VehicleZoneDistribution.stadium.chanceToPartDamage = 20
		VehicleZoneDistribution.stadium.baseVehicleQuality = 0.5
		VehicleZoneDistribution.stadium.chanceToSpawnBurnt = 0
		VehicleZoneDistribution.stadium.randomAngle = true
		VehicleZoneDistribution.stadium.chanceToSpawnSpecial = 0
		VehicleZoneDistribution.stadium.chanceToSpawnKey = 0
		print("Abrams spawn: stadium")
	elseif roll == 2 then
		getWorld():registerVehiclesZone("outpost", "ParkingStall", 14528, 4025, 0, 6, 8, { Direction = "S" } )
		VehicleZoneDistribution.outpost = {}
		VehicleZoneDistribution.outpost.vehicles = {}
		VehicleZoneDistribution.outpost.vehicles["Base.m1a1"] = {index = -1, spawnChance = 100}
		VehicleZoneDistribution.outpost.chanceToPartDamage = 20
		VehicleZoneDistribution.outpost.baseVehicleQuality = 0.5
		VehicleZoneDistribution.outpost.chanceToSpawnBurnt = 0
		VehicleZoneDistribution.outpost.randomAngle = true
		VehicleZoneDistribution.outpost.chanceToSpawnSpecial = 0
		VehicleZoneDistribution.outpost.chanceToSpawnKey = 0
		print("Abrams spawn: outpost")
	end
	getWorld():checkVehiclesZones();
end

Events.OnLoadMapZones.Add(appendAbramsSpawns)