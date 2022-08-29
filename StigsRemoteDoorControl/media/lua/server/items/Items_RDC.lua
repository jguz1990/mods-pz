require 'Items/ProceduralDistributions'
require 'Items/SuburbsDistributions'
require 'Items/Distributions'

function loot_register(item, chance, allocation)
  table.insert(ProceduralDistributions.list[allocation].items, item);
  table.insert(ProceduralDistributions.list[allocation].items, chance);
end

local item_name = "";

-- Simple Remote Door Control Receiver
item_name = "Simple Remote Door Control Receiver";
loot_register(item_name, 0.05 , "CrateElectronics");
loot_register(item_name, 0.05 , "ToolStoreTools");
loot_register(item_name, 0.05 , "ToolStoreMisc");
loot_register(item_name, 0.05 , "StoreShelfElectronics");
loot_register(item_name, 0.05 , "GigamartHouseElectronics");
loot_register(item_name, 0.05 , "ElectronicStoreMisc");
loot_register(item_name, 0.05 , "CrateRandomJunk");
loot_register(item_name, 0.05 , "CrateTools");
loot_register(item_name, 0.05 , "OtherGeneric");
loot_register(item_name, 0.05 , "ElectronicStoreAppliances");
loot_register(item_name, 0.05 , "GarageTools");

-- Remote Door Control Receiver
item_name = "Remote Door Control Receiver";
loot_register(item_name, 0.025 , "CrateElectronics");
loot_register(item_name, 0.025 , "ToolStoreTools");
loot_register(item_name, 0.025 , "ToolStoreMisc");
loot_register(item_name, 0.025 , "StoreShelfElectronics");
loot_register(item_name, 0.025 , "ArmyStorageElectronics");
loot_register(item_name, 0.025 , "GigamartHouseElectronics");
loot_register(item_name, 0.025 , "ElectronicStoreMisc");
loot_register(item_name, 0.025 , "CrateTools");
loot_register(item_name, 0.025 , "ElectronicStoreAppliances");
loot_register(item_name, 0.025 , "GarageTools");




