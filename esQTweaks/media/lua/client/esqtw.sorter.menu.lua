local esqlibItems = require("esqlib.items");
local esqlibSettings = require("esqlib.settings");
local esqlibPlayers = require("esqlib.players");
local esqlibUtils = require("esqlib.utils");
local esSorter = require("esqtw.sorter.main");

local function getTagsFrom(items, ref)
    local tags = {};

    for i = 0, items:size() - 1 do
        local item = items:get(i);

        if ref == esSorter.itemKey then
            tags[tostring(item:getID())] = item:getFullType();

        elseif ref == esSorter.itemsKey then
            tags[item:getFullType()] = item:getFullType();

        elseif ref == esSorter.catKey then
            if item:getDisplayCategory() ~= nil then
                tags[item:getDisplayCategory()] = item:getFullType();

            elseif item:getCategory() ~= nil then
                tags[item:getCategory()] = item:getFullType();
            end
        end

    end

    return tags;
end

local function getTagsIf(container, items, ref, exists)
    local filtered = {};
    local containerTags = esSorter.getContainerTags(container);
    local itemTags = getTagsFrom(items, ref);

    if exists then
        for k, v in pairs(itemTags) do
            if containerTags[ref] ~= nil and containerTags[ref][k] ~= nil then
                filtered[k] = v;
            end
        end
    else
        for k, v in pairs(itemTags) do
            if containerTags[ref] == nil or containerTags[ref][k] == nil then
                filtered[k] = v;
            end
        end
    end

    return filtered;
end

local function getTagsIfExists(container, items, ref)
    return getTagsIf(container, items, ref, true);
end

local function getTagsIfNotExists(container, items, ref)
    return getTagsIf(container, items, ref, false);
end

local function getTopThree(arrItems, ref)
    local topThree = {};
    local itemCount = 0;

    for k, v in pairs(arrItems) do
        itemCount = itemCount + 1;
        if itemCount > 3 then break end;

        local text = getItemNameFromFullType(v);
        if ref == esSorter.catKey then text = k end;
        table.insert(topThree, text);
    end

    local topThreeString = table.concat(topThree, ", ");
    if esqlibUtils.sizeOf(arrItems) > 3 then
        topThreeString = topThreeString .. "...";
    end

    return topThreeString;
end

local function doSorterMenu(player, context, items)
    if esqlibSettings.getSetting("esQTW", "esQTWSorter") > 1 then
        local allSelectedItems = esqlibItems.getStackFromSelection(items);
        local itemContainer = esqlibItems.getContainerItem(allSelectedItems:get(0):getContainer(), player);
        local subMenu = context:getNew(context);
        local menuText = getText("UI_esqtw_sorter_sort_here");
        if allSelectedItems:get(0):getContainer() == esqlibPlayers.getPlayerObject(player):getInventory() then
            local key = getKeyName(getCore():getKey("esqtwSortAllLootNS"));
            if key ~= "NONE" then
                menuText = menuText .. " " .. getText("UI_esQLIB_brackets", key);
            end
        end
        subMenu:addOption(menuText, player, esSorter.sort, allSelectedItems:get(0):getContainer():getItems());

        local RSKey = getKeyName(getCore():getKey("esqtwSortAllLootRS"));
        if RSKey ~= "NONE" then
            RSKey = getKeyName(Keyboard.KEY_LSHIFT) .. "/" .. getKeyName(Keyboard.KEY_RSHIFT) .. " + " .. getKeyName(getCore():getKey("esqtwSortAllLootRS"));
            RSKey = " " .. getText("UI_esQLIB_brackets", RSKey);
        else
            RSKey = "";
        end
        subMenu:addOption(getText("UI_esqtw_sorter_sort_loot") .. RSKey, player, esSorter.sortLoots);

        if (itemContainer ~= nil) then
            local test, recipeName;

            test = getTagsIfNotExists(itemContainer, allSelectedItems, esSorter.itemKey);
            recipeName = getText("UI_esqtw_sorter_action", getText("UI_esqtw_sorter_add"), getText("UI_esqtw_sorter_item"));
            if esqlibUtils.sizeOf(test) > 0 then
                recipeName = recipeName .. " " .. getText("UI_esQLIB_brackets", getTopThree(test, esSorter.itemKey));
                subMenu:addOption(recipeName, test, esSorter.tagAllThis, esSorter.itemKey, itemContainer);
            else
                local icon = subMenu:addOption(recipeName);
                icon.notAvailable = true;
            end

            test = getTagsIfNotExists(itemContainer, allSelectedItems, esSorter.itemsKey);
            recipeName = getText("UI_esqtw_sorter_action", getText("UI_esqtw_sorter_add"), getText("UI_esqtw_sorter_any"));
            if esqlibUtils.sizeOf(test) > 0 then
                recipeName = recipeName .. " " .. getText("UI_esQLIB_brackets", getTopThree(test, esSorter.itemsKey));
                subMenu:addOption(recipeName, test, esSorter.tagAllThis, esSorter.itemsKey, itemContainer);
            else
                local icon = subMenu:addOption(recipeName);
                icon.notAvailable = true;
            end

            test = getTagsIfNotExists(itemContainer, allSelectedItems, esSorter.catKey);
            recipeName = getText("UI_esqtw_sorter_action", getText("UI_esqtw_sorter_add"), getText("UI_esqtw_sorter_cat"));
            if esqlibUtils.sizeOf(test) > 0 then
                recipeName = recipeName .. " " .. getText("UI_esQLIB_brackets", getTopThree(test, esSorter.catKey));
                subMenu:addOption(recipeName, test, esSorter.tagAllThis, esSorter.catKey, itemContainer);
            else
                local icon = subMenu:addOption(recipeName);
                icon.notAvailable = true;
            end


            -- Removes
            test = getTagsIfExists(itemContainer, allSelectedItems, esSorter.itemKey);
            recipeName = getText("UI_esqtw_sorter_action", getText("UI_esqtw_sorter_remove"), getText("UI_esqtw_sorter_item"));
            if esqlibUtils.sizeOf(test) > 0 then
                recipeName = recipeName .. " " .. getText("UI_esQLIB_brackets", getTopThree(test, esSorter.itemKey));
                subMenu:addOption(recipeName, test, esSorter.unTagAllThis, esSorter.itemKey, itemContainer);
            else
                local icon = subMenu:addOption(recipeName);
                icon.notAvailable = true;
            end

            test = getTagsIfExists(itemContainer, allSelectedItems, esSorter.itemsKey);
            recipeName = getText("UI_esqtw_sorter_action", getText("UI_esqtw_sorter_remove"), getText("UI_esqtw_sorter_any"));
            if esqlibUtils.sizeOf(test) > 0 then
                recipeName = recipeName .. " " .. getText("UI_esQLIB_brackets", getTopThree(test, esSorter.itemsKey));
                subMenu:addOption(recipeName, test, esSorter.unTagAllThis, esSorter.itemsKey, itemContainer);
            else
                local icon = subMenu:addOption(recipeName);
                icon.notAvailable = true;
            end

            test = getTagsIfExists(itemContainer, allSelectedItems, esSorter.catKey);
            recipeName = getText("UI_esqtw_sorter_action", getText("UI_esqtw_sorter_remove"), getText("UI_esqtw_sorter_cat"));
            if esqlibUtils.sizeOf(test) > 0 then
                recipeName = recipeName .. " " .. getText("UI_esQLIB_brackets", getTopThree(test, esSorter.catKey));
                subMenu:addOption(recipeName, test, esSorter.unTagAllThis, esSorter.catKey, itemContainer);
            else
                local icon = subMenu:addOption(recipeName);
                icon.notAvailable = true;
            end
        end

        if (allSelectedItems:size() == 1) then
            local selectedModData = esSorter.getContainerTags(allSelectedItems:get(0));
            if (selectedModData ~= nil) then
                local recipeName;
                recipeName = getText("UI_esqtw_sorter_action", getText("UI_esqtw_sorter_clear"), getText("UI_esqtw_sorter_item"));
                if selectedModData[esSorter.itemKey] ~= nil then
                    recipeName = recipeName .. " " .. getText("UI_esQLIB_brackets", getTopThree(selectedModData[esSorter.itemKey], esSorter.itemKey));
                    subMenu:addOption(recipeName, allSelectedItems:get(0), esSorter.clearTags, esSorter.itemKey, player);
                else
                    local icon = subMenu:addOption(recipeName, allSelectedItems:get(0), esSorter.clearTags, esSorter.itemKey, player);
                    icon.notAvailable = true;
                end

                recipeName = getText("UI_esqtw_sorter_action", getText("UI_esqtw_sorter_clear"), getText("UI_esqtw_sorter_any"));
                if selectedModData[esSorter.itemsKey] ~= nil then
                    recipeName = recipeName .. " " .. getText("UI_esQLIB_brackets", getTopThree(selectedModData[esSorter.itemsKey], esSorter.itemsKey));
                    subMenu:addOption(recipeName, allSelectedItems:get(0), esSorter.clearTags, esSorter.itemsKey, player);
                else
                    local icon = subMenu:addOption(recipeName, allSelectedItems:get(0), esSorter.clearTags, esSorter.itemsKey, player);
                    icon.notAvailable = true;
                end

                recipeName = getText("UI_esqtw_sorter_action", getText("UI_esqtw_sorter_clear"), getText("UI_esqtw_sorter_cat"));
                if selectedModData[esSorter.catKey] ~= nil then
                    recipeName = recipeName .. " " .. getText("UI_esQLIB_brackets", getTopThree(selectedModData[esSorter.catKey], esSorter.catKey));
                    subMenu:addOption(recipeName, allSelectedItems:get(0), esSorter.clearTags, esSorter.catKey, player);
                else
                    local icon = subMenu:addOption(recipeName, allSelectedItems:get(0), esSorter.clearTags, esSorter.catKey, player);
                    icon.notAvailable = true;
                end

                local showTagBag = subMenu:addOption(getText("UI_esqtw_sorter_tag_tags"), player, esSorter.tagWindowShow, context:getX(), context:getY(), allSelectedItems:get(0));
                if selectedModData[esSorter.itemKey] == nil
                        and selectedModData[esSorter.itemsKey] == nil
                        and selectedModData[esSorter.catKey] == nil then
                    showTagBag.notAvailable = true;
                end
            end
        end

        if (#subMenu.options > 0) then
            context:addSubMenu(context:addOption(getText("UI_esqtw_sorter") .. ":"), subMenu);
        end

    end

    return context;
end

Events.OnFillInventoryObjectContextMenu.Add(doSorterMenu);