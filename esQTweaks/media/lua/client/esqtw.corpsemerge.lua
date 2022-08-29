local esqlibSettings = require("esqlib.settings");
local currentSQ;

local function onBackpackRefreshDone(inventoryPage, state)
    if esqlibSettings.getSetting("esQTW", "esQTWCorpseMerge") > 1 then
        if state ~= "end" then return end;
        local playerObj = getSpecificPlayer(inventoryPage.player);
        if (not inventoryPage.onCharacter and #inventoryPage.backpacks > 1 and currentSQ ~= playerObj:getSquare()) then
            currentSQ = playerObj:getSquare();

            local firstSquare;
            for _, c in ipairs(inventoryPage.backpacks) do
                if (c.inventory:getType() == "inventorymale" or c.inventory:getType() == "inventoryfemale") then
                    local corpse = c.inventory:getParent();
                    if corpse and corpse:getSquare() and firstSquare == nil then
                        firstSquare = corpse:getSquare();
                    elseif corpse and corpse:getSquare() and firstSquare then
                        local body = corpse:getItem();
                        corpse:getSquare():removeCorpse(corpse, false);
                        firstSquare:AddWorldInventoryItem(body, 0, 0, 0);
                    end
                end
            end

            ISInventoryPage.renderDirty = true;
        end
    end
end

Events.OnRefreshInventoryWindowContainers.Add(onBackpackRefreshDone);