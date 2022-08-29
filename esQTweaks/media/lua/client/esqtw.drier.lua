local esqlibSettings = require("esqlib.settings");
local esqlibItems = require("esqlib.items");

local function filterTowels(itemStack)
    local towels = LuaList:new();
    for i = 0, itemStack:size() - 1 do
        local testItem = itemStack:get(i);
        if (testItem.getReplaceOnDeplete and testItem:getReplaceOnDeplete() and
            string.find(string.lower(testItem:getReplaceOnDeplete()),"wet")) then
            towels:add(testItem);
        end
    end

    return towels;
end

function ISDryMyself:isValid()
    return self.character:getBodyDamage():getWetness() > 10;
end

local function drier(items, player)
    for i = 0, items:size() - 1 do
        local towel = items:get(i);
        ISInventoryPaneContextMenu.dryMyself(towel, player);
    end
end

local function doInventoryMenuAdd(player, context, items)
    if esqlibSettings.getSetting("esQTW", "esQTWDrier") > 1 then
        local playerObj = getSpecificPlayer(player);
        if playerObj:getBodyDamage():getWetness() < 10 then return context end;

        local allSelectedItems = esqlibItems.getStackFromSelection(items);
        local towels = filterTowels(allSelectedItems);

        if (towels:size() > 0) then
            local recipeName = getText("ContextMenu_Dry_myself") .. " (x" .. towels:size() .. ")";
            context:addOption(recipeName, towels, drier, player);
        end
    end

    return context;
end

Events.OnFillInventoryObjectContextMenu.Add(doInventoryMenuAdd);