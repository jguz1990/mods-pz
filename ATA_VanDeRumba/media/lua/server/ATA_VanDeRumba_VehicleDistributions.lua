require "CommonTemplates/CommonDistributions"
require "ATA/ATATruckItemDistributions"

local distributionTable = VehicleDistributions[1]

distributionTable["ATA_VanDeRumba"] = {
        Normal = VehicleDistributions.NormalHeavy,
        Specific = { VehicleDistributions.Groceries, VehicleDistributions.Fisherman, VehicleDistributions.Carpenter, VehicleDistributions.Farmer, VehicleDistributions.Electrician, VehicleDistributions.MetalWelder, VehicleDistributions.ConstructionWorker, VehicleDistributions.Painter },
},

table.insert(VehicleDistributions, 1, distributionTable);


