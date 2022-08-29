require "CommonTemplates/CommonDistributions"
require "ATA/ATATruckItemDistributions"

local distributionTable = VehicleDistributions[1]

distributionTable["ATA_Luton"] = {
    Normal = ATATruckItemDistributions.HeavyMegaTruck,
    Specific = { ATATruckItemDistributions.GroceriesMegaTruck, ATATruckItemDistributions.FarmerMegaTruck, ATATruckItemDistributions.FurnitureMegaTruck, ATATruckItemDistributions.ClothingMegaTruck, ATATruckItemDistributions.CarpenterMegaTruck, ATATruckItemDistributions.CorpseMegaTruck, ATATruckItemDistributions.MetalWelderMegaTruck, ATATruckItemDistributions.DoctorMegaTruck, ATATruckItemDistributions.PoliceMegaTruck,},
}

table.insert(VehicleDistributions, 1, distributionTable);


