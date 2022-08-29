local esqlibItems = require("esqlib.items");
local esqlibSettings = require("esqlib.settings");
local esqlibNumbers = require("esqlib.numbers");
local esqlibPlayers = require("esqlib.players");
local esqtwAnimate = require("esqlib.animate"):new();

function esqtwAnimate:doPerform()
    if instanceof(self.item, "Food") and self.item:isSpice() then
        local ogItem = InventoryItemFactory.CreateItem(self.item:getFullType());
        local ogHunger = math.abs(ogItem:getHungerChange());
        local stackHunger = 0;
        local destroyItemsList = {};
        for i = 0, self.extra[1]:size() - 1 do
            local item = self.extra[1]:get(i);
            stackHunger = stackHunger + math.abs(item:getHungerChange());
            table.insert(destroyItemsList, item);
        end

        local fullHunger = math.floor(stackHunger / ogHunger);
        local partHunger = esqlibNumbers.round(stackHunger % ogHunger, 2);

        if fullHunger > 0 then
            for i = 1, fullHunger do
                esqlibItems.createItem(
                        InventoryItemFactory.CreateItem(self.item:getFullType()),
                        self.extra[2],
                        self.character
                );
            end
        end

        if partHunger > 0 then
            local itemPart = InventoryItemFactory.CreateItem(self.item:getFullType());
            local partial = partHunger / ogHunger;

            --itemPart:setHungerChange(itemPart:getHungerChange() * partial);
            itemPart:setBaseHunger(itemPart:getBaseHunger() * partial);
            itemPart:setHungChange(itemPart:getHungChange() * partial);
            itemPart:setThirstChange(itemPart:getThirstChangeUnmodified() * partial);
            itemPart:setBoredomChange(itemPart:getBoredomChangeUnmodified() * partial);
            itemPart:setUnhappyChange(itemPart:getUnhappyChangeUnmodified() * partial);
            itemPart:setCarbohydrates(itemPart:getCarbohydrates() * partial);
            itemPart:setLipids(itemPart:getLipids() * partial);
            itemPart:setProteins(itemPart:getProteins() * partial);
            itemPart:setCalories(itemPart:getCalories() * partial);

            esqlibItems.createItem(itemPart, self.extra[2], self.character);
        end

        esqlibItems.destroyItems(destroyItemsList, self.character);

    else
        local totalStackUses = esqlibItems.getItemsDelta(self.extra[1]);
        for i = 0, self.extra[1]:size() - 1 do
            local item = self.extra[1]:get(i);

            if (totalStackUses >= 1) then
                item:setUsedDelta(1);
                totalStackUses = totalStackUses - 1;
            elseif(totalStackUses > 0) then
                item:setUsedDelta(totalStackUses);
                totalStackUses = 0;
            else
                item:setUsedDelta(0);
                if esqlibSettings.getSetting("esQTW", "esQTWIC") == 2 then
                    item:Use();
                end
            end

        end
    end

    if (isClient()) then
        local merged = esqlibItems.getItemsStack(self.item:getFullType(), self.character:getInventory());
        esqlibItems.doItemMove(merged, self.extra[2], self.character);
    end
end

local function doMenuMerge(item, itemStack, player)
    local animate = esqtwAnimate:new(player, item, 80);
    animate:setExtra({ itemStack, item:getContainer() });

    if (isClient()) then
        esqlibItems.doItemMove(itemStack, player:getInventory(), player);
    else
        esqlibItems.doItemMove(itemStack, item:getContainer(), player);
    end

    ISTimedActionQueue.add(animate);
end

local function doMenuFill(item, itemStack, player)
    local animate = esqtwAnimate:new(player, item, 80);
    local usesPerItem = esqlibNumbers.round(1 / item:getUseDelta());
    local fillUses = usesPerItem - item:getDrainableUsesInt();
    local newStack = LuaList:new();

    newStack:add(item);
    for i = 0, itemStack:size() - 1 do
        local localItem = itemStack:get(i);
        if (localItem ~= item) then
            fillUses = fillUses - localItem:getDrainableUsesInt();
            newStack:add(localItem);
            if (fillUses <= 0) then
                break;
            end
        end
    end

    animate:setExtra({ newStack, item:getContainer() });

    if (isClient()) then
        esqlibItems.doItemMove(newStack, player:getInventory(), player);
    else
        esqlibItems.doItemMove(newStack, item:getContainer(), player);
    end

    ISTimedActionQueue.add(animate);
end

local function filterDrainable(itemStack)
    local drainables = LuaList:new();
    local selectedItem;

    for i = 0, itemStack:size() - 1 do
        local testItem = itemStack:get(i);
        if testItem:IsDrainable() and testItem:getUseDelta() > 0 and not testItem:isFavorite() then

            if (selectedItem == nil) then
                drainables:add(testItem);
                selectedItem = testItem;
            elseif (selectedItem:getName() == testItem:getName()) then
                drainables:add(testItem);
            end

        end
    end

    return drainables, selectedItem;
end

local function doMenu(player, context, items)
    if esqlibSettings.getSetting("esQTW", "esQTWIC") > 1 then
        local thisStack, selectedItem = filterDrainable(esqlibItems.getStackFromSelection(items));
        if selectedItem then
            local playerObj = esqlibPlayers.getPlayerObject(player);
            local allContainers = esqlibItems.getAllContainers(player);

            local allItems = esqlibItems.getItemsStack(selectedItem:getFullType(), allContainers);

            if (allItems:size() > 1) then
                local recipeName = getText("UI_esqtw_ic_fill") .. " " .. selectedItem:getDisplayName();
                context:addOption(recipeName, selectedItem, doMenuFill, allItems, playerObj);
            end

            if (thisStack:size() > 1) then
                local recipeName = getText("UI_esqtw_ic_merge") .. " " .. selectedItem:getDisplayName() .. " (" .. thisStack:size() .. ")";
                context:addOption(recipeName, selectedItem, doMenuMerge, thisStack, playerObj);
            end

            if (allItems:size() > 1) then
                local recipeName = getText("UI_esqtw_ic_merge_all") .. " " .. thisStack:get(0):getDisplayName() .. " (" .. allItems:size() .. ")";
                context:addOption(recipeName, selectedItem, doMenuMerge, allItems, playerObj);
            end
        end
    end

    return context;
end

local function filterSpices(itemStack)
    local spices = LuaList:new();
    local selectedItem;

    for i = 0, itemStack:size() - 1 do
        local testItem = itemStack:get(i);
        if instanceof(testItem, "Food") and testItem:isSpice() and not testItem:isFavorite() then

            if (selectedItem == nil) then
                spices:add(testItem);
                selectedItem = testItem;
            elseif (selectedItem:getName() == testItem:getName()) then
                spices:add(testItem);
            end

        end
    end

    return spices, selectedItem;
end

local function doMenuSpice(player, context, items)
    if esqlibSettings.getSetting("esQTW", "esQTWIC") > 1 then
        local thisStack, selectedItem = filterSpices(esqlibItems.getStackFromSelection(items));
        if selectedItem then
            local playerObj = esqlibPlayers.getPlayerObject(player);
            if (thisStack:size() > 1) then
                local recipeName = getText("UI_esqtw_ic_merge") .. " " .. selectedItem:getDisplayName() .. " (" .. thisStack:size() .. ")";
                context:addOption(recipeName, selectedItem, doMenuMerge, thisStack, playerObj);
            end
        end
    end

    return context;
end

Events.OnFillInventoryObjectContextMenu.Add(doMenu);
Events.OnFillInventoryObjectContextMenu.Add(doMenuSpice);