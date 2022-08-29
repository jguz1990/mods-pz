VehicleDistributions = VehicleDistributions or {}

VehicleDistributions.AmmoStor = {
    rolls = 40,
    items ={
        "M1A1.M830", 33,
        "M1A1.M829A1", 33,
    }
}

VehicleDistributions.GunBreech = {
    rolls = 1,
    items ={
        "M1A1.M830", 25,
        "M1A1.M829A1", 25,
    }
}

VehicleDistributions.MilitaryRack = {
    rolls = 30,
    items ={
        "Bag_ALICEpack_Army", 1,
        "Shoes_ArmyBoots", 1,
        "Jacket_ArmyCamoGreen", 1,
        "Hat_Army", 1,
        "Bag_WeaponBag", 1,
        "Trousers_CamoGreen", 1,
        "Tshirt_GamoGreen", 1,
        "Hat_GasMask", 1,
        "223Box", 5,
        "556Clip", 3,
        "Bullets9mmBox", 5,
        "9mmClip", 3,
        "Radio.WalkieTalkie5", 3,
		"EmptyPetrolCan", 2,
		"PetrolCan", 2,
        "AssaultRifle", 5,
        "Pistol", 5,
    }
}

VehicleDistributions.MilitaryAbrams = {
    TruckBedOpen = VehicleDistributions.MilitaryRack;
    AmmoStor = VehicleDistributions.AmmoStor;
    GunBreech = VehicleDistributions.GunBreech;
}

VehicleDistributions[1].m1a1 = { Normal = VehicleDistributions.MilitaryAbrams; }