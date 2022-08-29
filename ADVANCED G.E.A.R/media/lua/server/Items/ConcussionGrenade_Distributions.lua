require "Items/Distributions"
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"

if ProceduralDistributions.list.ArmyStorageAmmunition then 
	table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, "ConcussionGrenade")
	table.insert(ProceduralDistributions.list.ArmyStorageAmmunition.items, 5)
end

if ProceduralDistributions.list.DrugLabGuns then 
	table.insert(ProceduralDistributions.list.DrugLabGuns.items, "ConcussionGrenade")
	table.insert(ProceduralDistributions.list.DrugLabGuns.items, 5)	
end

if ProceduralDistributions.list.SafehouseTraps then 
	table.insert(ProceduralDistributions.list.SafehouseTraps.items, "ConcussionGrenade")
	table.insert(ProceduralDistributions.list.SafehouseTraps.items, 5)
end
	
	
table.insert(ProceduralDistributions.list.ArmyStorageGuns.items, "ConcussionGrenade")
table.insert(ProceduralDistributions.list.ArmyStorageGuns.items, 1)

table.insert(ProceduralDistributions.list.FirearmWeapons.items, "ConcussionGrenade")
table.insert(ProceduralDistributions.list.FirearmWeapons.items, 1)

table.insert(ProceduralDistributions.list.LockerArmyBedroom.items, "ConcussionGrenade")
table.insert(ProceduralDistributions.list.LockerArmyBedroom.items, 1)

table.insert(ProceduralDistributions.list.PawnShopGunsSpecial.items, "ConcussionGrenade")
table.insert(ProceduralDistributions.list.PawnShopGunsSpecial.items, 1)


table.insert(SuburbsDistributions.Bag_ALICEpack.items, "ConcussionGrenade")
table.insert(SuburbsDistributions.Bag_ALICEpack.items, 50)

table.insert(SuburbsDistributions.Bag_ALICEpack_Army.items, "ConcussionGrenade")
table.insert(SuburbsDistributions.Bag_ALICEpack_Army.items, 50)

table.insert(SuburbsDistributions.Bag_WeaponBag.items, "ConcussionGrenade")
table.insert(SuburbsDistributions.Bag_WeaponBag.items, 1)

table.insert(SuburbsDistributions.Bag_SurvivorBag.items, "ConcussionGrenade")
table.insert(SuburbsDistributions.Bag_SurvivorBag.items, 10)

table.insert(SuburbsDistributions.SurvivorCache1.SurvivorCrate.items, "ConcussionGrenade")
table.insert(SuburbsDistributions.SurvivorCache1.SurvivorCrate.items, 0.1)

table.insert(SuburbsDistributions.SurvivorCache2.SurvivorCrate.items, "ConcussionGrenade")
table.insert(SuburbsDistributions.SurvivorCache2.SurvivorCrate.items, 0.1)


table.insert(VehicleDistributions.SurvivalistTruckBed.items, "ConcussionGrenade")
table.insert(VehicleDistributions.SurvivalistTruckBed.items, 0.5)		
	
if VehicleDistributions.Military then
	table.insert(VehicleDistributions.MilitaryGearTrunk.items, "ConcussionGrenade")
	table.insert(VehicleDistributions.MilitaryGearTrunk.items, 3)	
	table.insert(VehicleDistributions.MilitarySeat.items, "ConcussionGrenade")
	table.insert(VehicleDistributions.MilitarySeat.items, 3)
	table.insert(VehicleDistributions.MilitaryGearTrunk.items, "ConcussionGrenade")
	table.insert(VehicleDistributions.MilitaryGearTrunk.items, 3)	
	table.insert(VehicleDistributions.MilitarySeat.items, "ConcussionGrenade")
	table.insert(VehicleDistributions.MilitarySeat.items, 3)	
end