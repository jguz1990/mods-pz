require "Items/Distributions"
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"
require "Items/ItemPicker"	

if ProceduralDistributions.list.SafehouseTraps then 
	table.insert(ProceduralDistributions.list.SafehouseTraps.items, "IncendiaryGrenade")
	table.insert(ProceduralDistributions.list.SafehouseTraps.items, 5)
	-- table.insert(ProceduralDistributions.list.SafehouseTraps.items, "SmokeGrenade")
	-- table.insert(ProceduralDistributions.list.SafehouseTraps.items, 5)
end

if ProceduralDistributions.list.ArmyStorageAmmunition then 
	table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, "IncendiaryGrenade")
	table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, 5)
	-- table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, "SmokeGrenade")
	-- table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, 5)
end
	
-- table.insert(ProceduralDistributions.list.ArmyHangarOutfit.items, "SmokeGrenade")
-- table.insert(ProceduralDistributions.list.ArmyHangarOutfit.items, 1)

table.insert(ProceduralDistributions.list.ArmyStorageGuns.items, "IncendiaryGrenade")
table.insert(ProceduralDistributions.list.ArmyStorageGuns.items, 1)	
-- table.insert(ProceduralDistributions.list.ArmyStorageGuns.items, "SmokeGrenade")
-- table.insert(ProceduralDistributions.list.ArmyStorageGuns.items, 1)	

table.insert(ProceduralDistributions.list.FirearmWeapons.items, "IncendiaryGrenade")
table.insert(ProceduralDistributions.list.FirearmWeapons.items, 1)
-- table.insert(ProceduralDistributions.list.FirearmWeapons.items, "SmokeGrenade")
-- table.insert(ProceduralDistributions.list.FirearmWeapons.items, 1)	

table.insert(ProceduralDistributions.list.GunStoreShelf.items, "SmokeGrenade")
table.insert(ProceduralDistributions.list.GunStoreShelf.items, 1)		

table.insert(ProceduralDistributions.list.LockerArmyBedroom.items, "IncendiaryGrenade")
table.insert(ProceduralDistributions.list.LockerArmyBedroom.items, 0.1)
-- table.insert(ProceduralDistributions.list.LockerArmyBedroom.items, "SmokeGrenade")
-- table.insert(ProceduralDistributions.list.LockerArmyBedroom.items, 1)

-- table.insert(ProceduralDistributions.list.PoliceStorageGuns.items, "SmokeGrenade")
-- table.insert(ProceduralDistributions.list.PoliceStorageGuns.items, 1)


table.insert(SuburbsDistributions.Bag_ALICEpack.items, "IncendiaryGrenade")
table.insert(SuburbsDistributions.Bag_ALICEpack.items, 50)
-- table.insert(SuburbsDistributions.Bag_ALICEpack.items, "SmokeGrenade")
-- table.insert(SuburbsDistributions.Bag_ALICEpack.items, 50)
table.insert(SuburbsDistributions.Bag_ALICEpack_Army.items, "IncendiaryGrenade")
table.insert(SuburbsDistributions.Bag_ALICEpack_Army.items, 50)
-- table.insert(SuburbsDistributions.Bag_ALICEpack_Army.items, "SmokeGrenade")
-- table.insert(SuburbsDistributions.Bag_ALICEpack_Army.items, 50)

table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "IncendiaryGrenade")
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 5)
-- table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "SmokeGrenade")
-- table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 10)

table.insert(SuburbsDistributions.Bag_WeaponBag.items, "IncendiaryGrenade")
table.insert(SuburbsDistributions.Bag_WeaponBag.items, 0.1)
-- table.insert(SuburbsDistributions.Bag_WeaponBag.items, "SmokeGrenade")
-- table.insert(SuburbsDistributions.Bag_WeaponBag.items, 1)

table.insert(SuburbsDistributions.SurvivorCache1.SurvivorCrate.items, "IncendiaryGrenade")
table.insert(SuburbsDistributions.SurvivorCache1.SurvivorCrate.items, 0.1)
table.insert(SuburbsDistributions.SurvivorCache2.SurvivorCrate.items, "IncendiaryGrenade")
table.insert(SuburbsDistributions.SurvivorCache2.SurvivorCrate.items, 0.1)

-- table.insert(SuburbsDistributions.SurvivorCache1.SurvivorCrate.items, "SmokeGrenade")
-- table.insert(SuburbsDistributions.SurvivorCache1.SurvivorCrate.items, 0.1)
-- table.insert(SuburbsDistributions.SurvivorCache2.SurvivorCrate.items, "SmokeGrenade")
-- table.insert(SuburbsDistributions.SurvivorCache2.SurvivorCrate.items, 0.1)


-- table.insert(VehicleDistributions.Police.TruckBed.items, "SmokeGrenade")
-- table.insert(VehicleDistributions.Police.TruckBed.items, 1)	
-- table.insert(VehicleDistributions.Police.TruckBed.items, "SmokeGrenade")
-- table.insert(VehicleDistributions.Police.TruckBed.items, 1)

-- table.insert(VehicleDistributions.SurvivalistTruckBed.items, "SmokeGrenade")
-- table.insert(VehicleDistributions.SurvivalistTruckBed.items, 1)	
table.insert(VehicleDistributions.SurvivalistTruckBed.items, "IncendiaryGrenade")
table.insert(VehicleDistributions.SurvivalistTruckBed.items, 1)
	
if VehicleDistributions.Military then
	-- table.insert(VehicleDistributions.MilitaryGearTrunk.items, "SmokeGrenade")
	-- table.insert(VehicleDistributions.MilitaryGearTrunk.items, 3)	
	-- table.insert(VehicleDistributions.MilitarySeat.items, "SmokeGrenade")
	-- table.insert(VehicleDistributions.MilitarySeat.items, 3)
	-- table.insert(VehicleDistributions.MilitaryGearTrunk.items, "SmokeGrenade")
	-- table.insert(VehicleDistributions.MilitaryGearTrunk.items, 3)	
	-- table.insert(VehicleDistributions.MilitarySeat.items, "SmokeGrenade")
	-- table.insert(VehicleDistributions.MilitarySeat.items, 3)
	table.insert(VehicleDistributions.MilitaryGearTrunk.items, "IncendiaryGrenade")
	table.insert(VehicleDistributions.MilitaryGearTrunk.items, 1)	
	table.insert(VehicleDistributions.MilitarySeat.items, "IncendiaryGrenade")
	table.insert(VehicleDistributions.MilitarySeat.items, 1)		
end