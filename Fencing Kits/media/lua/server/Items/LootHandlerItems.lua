require 'Items/ProceduralDistributions'
require 'Items/SuburbsDistributions'
require 'Items/Distributions'

function registerAsLoot(item, chance, allocation)
  table.insert(ProceduralDistributions.list[allocation].items, item);
  table.insert(ProceduralDistributions.list[allocation].items, chance);
end

local iReg = "";

-- fence kit thingy
iReg = "FencingKit.FenceKit"
registerAsLoot(iReg, 4.0, "ToolStoreMetalwork");
registerAsLoot(iReg, 4.0, "ToolStoreTools");
registerAsLoot(iReg, 4.0, "ToolStoreMisc");
registerAsLoot(iReg, 4.0, "GarageMetalwork");
registerAsLoot(iReg, 4.0, "CrateFarming");
registerAsLoot(iReg, 4.0, "CrateMetalwork");

