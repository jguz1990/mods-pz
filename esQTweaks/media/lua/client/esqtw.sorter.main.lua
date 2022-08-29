local esSorter = {};
local esqlibUtils = require("esqlib.utils");
local esqlibPlayers = require("esqlib.players");

local esqlibPinWindow = require("esqlib.pinWindow");
local tagWindowInstance = {};

esSorter.jsonKey = "esSort.jsonData";
esSorter.itemKey = "esq.sorter.item";
esSorter.itemsKey = "esq.sorter.items";
esSorter.catKey = "esq.sorter.cat";

function esSorter.getKBShortcut(option)
    return Keyboard.getKeyName(getCore():getKey(option));
end

function esSorter.getContainerTags(selectedItem)
    if (selectedItem:getCategory() ~= "Container") then
        return {}
    end

    local containerData = esqlibUtils.modDataJsonGet(selectedItem, esSorter.jsonKey) or {};
    local data = {};

    if (containerData[esSorter.itemKey] ~= nil) then
        data[esSorter.itemKey] = containerData[esSorter.itemKey];
    end
    if (containerData[esSorter.itemsKey] ~= nil) then
        data[esSorter.itemsKey] = containerData[esSorter.itemsKey];
    end
    if (containerData[esSorter.catKey] ~= nil) then
        data[esSorter.catKey] = containerData[esSorter.catKey];
    end

    return data;
end

function esSorter.getDataTags(selectedItem)
    local data = esSorter.getContainerTags(selectedItem);
    local dataTable = {};

    if (data[esSorter.itemKey]) then
        local itemCount = esqlibUtils.sizeOf(data[esSorter.itemKey]);
        if (itemCount > 0) then
            table.insert(dataTable, { getText("UI_esqtw_sorter_item_label"), "" });
            table.insert(dataTable, { "", "" });
            for k, v in pairs(data[esSorter.itemKey]) do
                if (type(v) == "string") then
                    table.insert(dataTable, { "", getItemNameFromFullType(v) })
                else
                    table.insert(dataTable, { "", k })
                end
            end
        end
    end

    if (data[esSorter.itemsKey]) then
        local itemCount = esqlibUtils.sizeOf(data[esSorter.itemsKey]);
        if (itemCount > 0) then
            if (#dataTable % 2 ~= 0) then
                table.insert(dataTable, { "", "" });
            end
            table.insert(dataTable, { "", "" });
            table.insert(dataTable, { "", "" });
            table.insert(dataTable, { getText("UI_esqtw_sorter_any_label"), "" });
            table.insert(dataTable, { "", "" });

            for k, v in pairs(data[esSorter.itemsKey]) do
                table.insert(dataTable, { "", getItemNameFromFullType(k) })
            end
        end
    end

    if (data[esSorter.catKey]) then
        local itemCount = esqlibUtils.sizeOf(data[esSorter.catKey]);
        if (itemCount > 0) then
            if (#dataTable % 2 ~= 0) then
                table.insert(dataTable, { "", "" });
            end
            table.insert(dataTable, { "", "" });
            table.insert(dataTable, { "", "" });
            table.insert(dataTable, { getText("UI_esqtw_sorter_cat_label"), "" });
            table.insert(dataTable, { "", "" });

            for k, v in pairs(data[esSorter.catKey]) do
                table.insert(dataTable, { "", getText("IGUI_ItemCat_" .. k) })
            end
        end
    end

    return dataTable;
end

function esSorter.tagAllThis(items, keyA, containerItem)
    local containerData = esqlibUtils.modDataJsonGet(containerItem, esSorter.jsonKey) or {};
    containerData[keyA] = containerData[keyA] or {}
    for keyB, selectedItem in pairs(items) do
        containerData[keyA][keyB] = selectedItem;
    end
    esqlibUtils.modDataJsonSet(containerItem, containerData, esSorter.jsonKey);

    esSorter.tagWindowHide(containerItem);
end

function esSorter.unTagAllThis(items, keyA, containerItem)
    local containerData = esqlibUtils.modDataJsonGet(containerItem, esSorter.jsonKey) or {};
    local keyAData = containerData[keyA] or {}

    containerData[keyA] = {};
    for k, v in pairs(keyAData) do
        if (items[k] == nil) then
            containerData[keyA][k] = v;
        end
    end

    if esqlibUtils.sizeOf(containerData[keyA]) == 0 then
        containerData[keyA] = nil
    end

    local empty = true;
    for _, v in pairs(containerData) do
        if esqlibUtils.sizeOf(v) > 0 then
            empty = false;
            break;
        end
    end

    if empty then
        containerItem:getModData()[esSorter.jsonKey] = nil;
    else
        esqlibUtils.modDataJsonSet(containerItem, containerData, esSorter.jsonKey);
    end

    esSorter.tagWindowHide(containerItem);
end

function esSorter.clearTags(selectedItem, keyA)
    local containerData = esqlibUtils.modDataJsonGet(selectedItem, esSorter.jsonKey) or {};
    local reData = {};

    for k, v in pairs(containerData) do
        if k ~= keyA then
            reData[k] = v;
        end
    end

    local empty = true;
    for _, v in pairs(reData) do
        if esqlibUtils.sizeOf(v) > 0 then
            empty = false;
            break ;
        end
    end

    if empty then
        selectedItem:getModData()[esSorter.jsonKey] = nil;
    else
        esqlibUtils.modDataJsonSet(selectedItem, reData, esSorter.jsonKey);
    end

    esSorter.tagWindowHide(selectedItem);
end

function esSorter.sortInventory(player)
    local inventoryItems = esqlibPlayers.getPlayerObject(player):getInventory():getItems();
    esSorter.sort(player, inventoryItems);
end

function esSorter.sortLoots(player)
    local allLootContainers = getPlayerLoot(esqlibPlayers.getPlayerNumber(player)).backpacks;
    for _, v in pairs(allLootContainers) do
        esSorter.sort(player, v.inventory:getItems());
    end
end

function esSorter.getTaggedContainers(player)
    local taggedContainers = {};
    taggedContainers.id = {};
    taggedContainers.fullType = {};
    taggedContainers.category = {};

    local allContainers = getPlayerInventory(esqlibPlayers.getPlayerNumber(player)).backpacks;

    for _, v in pairs(allContainers) do
        local items = v.inventory:getItems();

        for it = 0, items:size() - 1 do
            local item = items:get(it);
            local itemTags = esSorter.getContainerTags(item);

            if (itemTags[esSorter.itemKey] ~= nil) then
                for k, _ in pairs(itemTags[esSorter.itemKey]) do
                    taggedContainers.id[k] = item;
                end
            end

            if (itemTags[esSorter.itemsKey] ~= nil) then
                for k, _ in pairs(itemTags[esSorter.itemsKey]) do
                    taggedContainers.fullType[k] = item;
                end
            end

            if (itemTags[esSorter.catKey] ~= nil) then
                for k, _ in pairs(itemTags[esSorter.catKey]) do
                    taggedContainers.category[k] = item;
                end
            end

        end
    end

    return taggedContainers;
end

function esSorter.getMoveItemAction(player, item, container)
    local actionMoveItem = ISInventoryTransferAction:new(player, item, item:getContainer(), container);
    if (not item:isInPlayerInventory()) then
        actionMoveItem:setOnComplete(esqlibUtils.HaloWithArrow, player, item:getDisplayName(), true);
    end
    return actionMoveItem;
end

function esSorter.sort(character, items)
    if not items or (items.size and items:size() < 1) then return end;
    local player = esqlibPlayers.getPlayerObject(character)
    local sortContainers = esSorter.getTaggedContainers(player);

    for i = 0, items:size() - 1 do
        local item = items:get(i);
        local continue = true;

        -- skip if broken item
        if (continue and item:getCondition() == 0) then
            continue = false;
        end

        -- itemID
        if (continue and sortContainers.id[tostring(item:getID())]) then
            local thisContainer = sortContainers.id[tostring(item:getID())];
            if (item:isEquipped()) then
                ISInventoryPaneContextMenu.unequipItem(item, esqlibPlayers.getPlayerNumber(player));
            end

            if (thisContainer:getInventory():hasRoomFor(player, item)) then
                ISTimedActionQueue.add(esSorter.getMoveItemAction(player, item, thisContainer:getInventory()));
                continue = false;
            end
        end

        if continue and (item:isFavorite() or item:isEquipped() or player:isAttachedItem(item)) then
            continue = false;
        end

        -- fullType
        if (continue and sortContainers.fullType[tostring(item:getFullType())]) then
            local thisContainer = sortContainers.fullType[tostring(item:getFullType())];
            if (thisContainer:getInventory():hasRoomFor(player, item)) then
                ISTimedActionQueue.add(esSorter.getMoveItemAction(player, item, thisContainer:getInventory()));
                continue = false;
            end
        end

        if continue then
            -- display category
            if (item:getDisplayCategory() ~= nil) then
                if sortContainers.category[tostring(item:getDisplayCategory())] then
                    local thisContainer = sortContainers.category[tostring(item:getDisplayCategory())];
                    if (thisContainer:getInventory():hasRoomFor(player, item)) then
                        ISTimedActionQueue.add(esSorter.getMoveItemAction(player, item, thisContainer:getInventory()));
                        continue = false;
                    end
                end

                -- category
            elseif (item:getCategory() ~= nil and sortContainers.category[tostring(item:getCategory())]) then
                local thisContainer = sortContainers.category[tostring(item:getCategory())];
                if (thisContainer:getInventory():hasRoomFor(player, item)) then
                    ISTimedActionQueue.add(esSorter.getMoveItemAction(player, item, thisContainer:getInventory()));
                    continue = false;
                end
            end

        end

    end
end

function esSorter.tagWindowShow(player, x, y, item)
    if tagWindowInstance[item:getID()] ~= nil then
        esSorter.tagWindowHide(item);
    end
    local newPanel = esqlibPinWindow:new({
        x = x,
        y = y,
        title = item:getDisplayName() .. " Tags";
        data = esSorter.getDataTags(item),
        player = player,
    });
    tagWindowInstance[item:getID()] = newPanel;
    tagWindowInstance[item:getID()]:initialise();
    tagWindowInstance[item:getID()]:addToUIManager();
    tagWindowInstance[item:getID()]:bringToTop();
end

function esSorter.tagWindowHide(item)
    if tagWindowInstance[item:getID()] ~= nil then
        tagWindowInstance[item:getID()]:setVisible(false);
        tagWindowInstance[item:getID()]:removeFromUIManager();
        tagWindowInstance[item:getID()] = nil;
    end
end

return esSorter;