esqhBundler = {};
local matValue = {
    Rope = 4,
    LeatherStrips = 30,
    LeatherStripsDirty = 30,
    SheetRope = 3,
    DenimStrips = 20,
    DenimStripsDirty = 20,
    Twine = 8,
    RippedSheets = 10,
    RippedSheetsDirty = 10,
};
local bundleSizes = { 1, 6, 12, 24, 48, 64, 128, 200, 300, 400, 500 };

local esqlibItems = require("esqlib.items");
local esqhBundlerInflate = require("esqlib.animate"):new();
local esqhBundlerDeflate = require("esqlib.animate"):new();
local esqlibUtils = require("esqlib.utils");
local json = require "esqlib.imports.json";

function esqhBundler.OnCreateEmptyBundle1(items, result, player)
    local tailoring = player:getPerkLevel(Perks.Tailoring);
    tailoring = tailoring + ZombRand(tailoring);
    for i = 1, items:size() do
        local item = items:get(i - 1)
        if matValue[item:getType()] then
            local maxUses = round(1 / result:getUseDelta());
            result:setUsedDelta((matValue[item:getType()] + tailoring) / maxUses);
            break ;
        else
            result:setUsedDelta(tailoring);
            break ;
        end

    end
end

local function getDefaultName(player, size, displayName)
    if player:getModData().esBundler_defaultName1 and size and displayName then
        local sub1 = player:getModData().esBundler_defaultName1;
        sub1 = sub1:gsub("%%1", size);
        sub1 = sub1:gsub("%%2", displayName);
        return sub1;
    elseif player:getModData().esBundler_defaultName1 then
        return player:getModData().esBundler_defaultName1;
    elseif size and displayName then
        return getText("UI_esBundler_zip_title", size, displayName);
    else
        return getText("UI_esBundler_zip_title");
    end
end

local function setDefaultName(player, sel)
    player:getModData().esBundler_defaultName1 = sel;
end

local function defaultNameClick(self, button, player, item)
    local playerNum = player:getPlayerNum();
    if button.internal == "OK" then
        if button.parent.entry:getText() and button.parent.entry:getText() ~= "" then
            setDefaultName(player, button.parent.entry:getText());
        end
    end
    if JoypadState.players[playerNum+1] then
        setJoypadFocus(playerNum, getPlayerInventory(playerNum));
    end
end

local function defaultName(selectedItem, player)
    local playerNum = player:getPlayerNum();
    local modal = ISTextBox:new(0, 0, 280, 180, getText("UI_esBundler_default"), getDefaultName(player), nil,
            defaultNameClick, playerNum, player, selectedItem);
    modal:initialise();
    modal:addToUIManager();
    if JoypadState.players[playerNum+1] then
        setJoypadFocus(playerNum, modal);
    end
end

local function renameThisClick(self, button, player, item)
    local playerNum = player:getPlayerNum();
    if button.internal == "OK" then
        if button.parent.entry:getText() and button.parent.entry:getText() ~= "" then
            item:setName(button.parent.entry:getText());
            local pdata = getPlayerData(playerNum);
            pdata.playerInventory:refreshBackpacks();
            pdata.lootInventory:refreshBackpacks();
        end
    end
    if JoypadState.players[playerNum+1] then
        setJoypadFocus(playerNum, getPlayerInventory(playerNum));
    end
end

local function renameThis(selectedItem, player)
    local playerNum = player:getPlayerNum();
    local modal = ISTextBox:new(0, 0, 280, 180, getText("ContextMenu_NameThisBag"), selectedItem:getName(), nil,
            renameThisClick, playerNum, player, selectedItem);
    modal:initialise();
    modal:addToUIManager();
    if JoypadState.players[playerNum+1] then
        setJoypadFocus(playerNum, modal);
    end
end

local function isGoodToUnPack(stackItems)
    local stack = LuaList:new();

    for i = 0, stackItems:size() - 1 do
        local item = stackItems:get(i);
        if item:getFullType() == "esQoL.bundledItems" then
            stack:add(item);
        end
    end

    return stack;
end

local function isGoodToPack(stackItems)
    local stack = LuaList:new();

    for i = 0, stackItems:size() - 1 do
        local item = stackItems:get(i);

        if not (item:getType() == "KeyRing" or
                item:isEquipped() or item:isFavorite() or
                item:getModule() == "ESBundler" or
                item:getModule() == "esQoL" or
                (item:getCategory() == "Container" and item:getInventory():getItems():size() > 0) or
                (instanceof(item, "Food") and item:getScriptItem():getDaysFresh() < 3000) or
                (instanceof(item, "Food") and round(item:getScriptItem():getHungerChange()) ~= round(item:getHungerChange(),3) * 100)
        ) then
            stack:add(item);
        end

    end

    return stack;
end

local function getStackWeight(stackItems)
    local totalWeight = 0;
    for i = 0, stackItems:size() - 1 do
        totalWeight = totalWeight + stackItems:get(i):getWeight();
    end
    return totalWeight;
end

function esqhBundlerInflate:doPerform()
    local crateData = esqlibUtils.modDataJsonGet(self.item, "esqhb.json") or {};
    if not crateData.items then return end;

    local targetContainer = self.item:getContainer();

    for _,v in pairs(crateData.items) do
        for a = 1, v.size do
            local item = InventoryItemFactory.CreateItem(v.fullType);
            if item then
                if v.fullType == "Moveables.Moveable" then
                    item:ReadFromWorldSprite(v.worldSprite)
                end

                if (v.modData ~= nil) then
                    local mData = item:getModData();
                    for k, v in pairs (v.modData) do
                        mData[k] = v;
                    end
                end

                if (v.isCustomWeight ~= nil) then item:setCustomWeight(v.isCustomWeight) end
                if (v.Weight ~= nil) then item:setWeight(v.Weight) end
                if (v.ActualWeight ~= nil) then item:setActualWeight(v.ActualWeight) end

                if (v.Condition ~= nil) then item:setCondition(v.Condition) end
                if (v.getHaveBeenRepaired ~= nil) then item:setHaveBeenRepaired(v.getHaveBeenRepaired) end

                if (v.isTaintedWater ~= nil) then item:setTaintedWater(v.isTaintedWater) end
                if (v.UsedDelta ~= nil) then item:setUsedDelta(v.UsedDelta) end

                if (v.CurrentAmmoCount ~= nil) then item:setCurrentAmmoCount(v.CurrentAmmoCount) end
                if (v.isRoundChambered ~= nil) then item:setRoundChambered(v.isRoundChambered) end
                if (v.isContainsClip ~= nil) then item:setContainsClip(v.isContainsClip) end

                if (v.Clip ~= nil) then item:setClip(InventoryItemFactory.CreateItem(v.Clip)) end
                if (v.Scope ~= nil) then item:setScope(InventoryItemFactory.CreateItem(v.Scope)) end
                if (v.Sling ~= nil) then item:setSling(InventoryItemFactory.CreateItem(v.Sling)) end
                if (v.Stock ~= nil) then item:setStock(InventoryItemFactory.CreateItem(v.Stock)) end
                if (v.Canon ~= nil) then item:setCanon(InventoryItemFactory.CreateItem(v.Canon)) end
                if (v.Recoilpad ~= nil) then item:setRecoilpad(InventoryItemFactory.CreateItem(v.Recoilpad)) end

                esqlibItems.createItem(item, targetContainer, self.character);
            end

        end
    end

    esqlibItems.destroyItem(self.item);
end

function esqhBundlerDeflate:doPerform()
    local targetContainer = self.item:getContainer();
    local stackWeight = getStackWeight(self.extra[1]);
    local allCords = esqlibItems.getItemsStack("esQoL.emptyBundle", esqlibItems.getAllContainers(self.character));
    if stackWeight < 1 then stackWeight = 1 end;
    esqlibItems.drainItem(self.character, allCords, round(stackWeight));

    for i = 0, self.extra[1]:size() - 1 do
        esqlibItems.destroyItem(self.extra[1]:get(i),self.character);
    end

    esqlibItems.createItem(self.extra[2], targetContainer, self.character);
    triggerEvent("esDoSort", self.character);
end

function esqhBundlerDeflate:isValid()
    if not self.extra[1]:get(0):getContainer() or not self.extra[1]:get(0):getContainer():contains(self.extra[1]:get(0)) then
        return false
    end

    -- cord check
    local allCords = esqlibItems.getItemsStack("esQoL.emptyBundle", esqlibItems.getAllContainers(self.character));
    local cordDelta = esqlibItems.getItemsUses(allCords);
    local stackWeight = getStackWeight(self.extra[1]);
    if cordDelta < stackWeight then return false end

    return true;
end

local function getTopList(list, amount)
    local rData = LuaList:new();
    for i=0, amount - 1 do
        local item = list:get(i);
        rData:add(item);
    end
    return rData;
end

local function getMaxSize(items, delta)
    local itemCount = 0;
    local itemWeight = 0;

    for i = 0, items:size() - 1 do

        itemWeight = itemWeight + items:get(i):getWeight();
        if itemWeight > delta then
            return itemCount;
        end
        itemCount = itemCount + 1;
    end

    return itemCount;
end

local function bundleInflate(player, crate, stackSize)
    if stackSize == 1 then
        if (isClient()) then esqlibItems.doItemMove(crate:get(0), player:getInventory(), player) end;
        ISTimedActionQueue.add(esqhBundlerInflate:new(player, crate:get(0), 120));

    else
        for i = 0, stackSize - 1 do
            local item = crate:get(i);
            if (isClient()) then esqlibItems.doItemMove(item, player:getInventory(), player) end;
            ISTimedActionQueue.add(esqhBundlerInflate:new(player, item, 120));
        end

    end
end

local function bundleDeflate(player, stack, crate)
    local playerObj = getSpecificPlayer(player);
    local animate = esqhBundlerDeflate:new(playerObj, stack:get(0), 80);
    local stackData = {};
    local lastItem = json.stringify({});
    local itemCount = 0;
    local itemIndex = 1;
    local dataSize = 28000;
    local dataIndex;

    stackData.items = {};

    for i = 1, stack:size() do
        local stackItem = stack:get(i - 1);
        local zipItem = {};

        zipItem.fullType = moduleDotType(stackItem:getScriptItem():getModuleName(), stackItem:getScriptItem():getName())

        if zipItem.fullType == "Moveables.Moveable" then
            zipItem.worldSprite = stackItem:getWorldSprite();
            zipItem.displayName = stackItem:getDisplayName();
        end

        if stackItem:hasModData() then zipItem.modData = stackItem:getModData() end;

        if stackItem.isCustomWeight then zipItem.isCustomWeight = stackItem:isCustomWeight() end;
        if stackItem.getWeight then zipItem.Weight = stackItem:getWeight() end;
        if stackItem.getActualWeight then zipItem.ActualWeight = stackItem:getActualWeight() end;

        if stackItem.getCondition and stackItem:getCondition() ~= stackItem:getConditionMax() then zipItem.Condition = stackItem:getCondition() end;
        if stackItem.getHaveBeenRepaired and stackItem:getHaveBeenRepaired() > 1 then zipItem.HaveBeenRepaired = stackItem:getHaveBeenRepaired() end;

        if (stackItem.getUsedDelta) then
            if stackItem.isTaintedWater then zipItem.isTaintedWater = stackItem:isTaintedWater() end;
            if stackItem:getUsedDelta() < 1 then zipItem.UsedDelta = stackItem:getUsedDelta() end;
        end

        -- gun stuff
        if (stackItem.getCurrentAmmoCount and stackItem:getCurrentAmmoCount() > 0) then
            zipItem.CurrentAmmoCount = stackItem:getCurrentAmmoCount();
        end
        if (stackItem.isRoundChambered and stackItem:isRoundChambered()) then
            zipItem.isRoundChambered = stackItem:isRoundChambered();
        end
        if (stackItem.isContainsClip and stackItem:isContainsClip()) then
            zipItem.isContainsClip = stackItem:isContainsClip();
        end
        if (stackItem.getScope and stackItem:getScope()) then
            zipItem.Scope = stackItem:getScope():getFullType();
        end
        if (stackItem.getClip and stackItem:getClip()) then
            zipItem.Clip = stackItem:getClip():getFullType();
        end
        if (stackItem.getSling and stackItem:getSling()) then
            zipItem.Sling = stackItem:getSling():getFullType();
        end
        if (stackItem.getStock and stackItem:getStock()) then
            zipItem.Stock = stackItem:getStock():getFullType();
        end
        if (stackItem.getCanon and stackItem:getCanon()) then
            zipItem.Canon = stackItem:getCanon():getFullType();
        end
        if (stackItem.getRecoilpad and stackItem:getRecoilpad()) then
            zipItem.Recoilpad = stackItem:getRecoilpad():getFullType();
        end

        local newItem = json.stringify(zipItem);
        if (newItem ~= lastItem) then
            if (itemIndex > 1) then
                stackData.items[itemIndex - 1].size = itemCount;
            end
            stackData.items[itemIndex] = zipItem;
            dataSize = dataSize - string.len(newItem);
            lastItem = newItem;
            itemCount = 1;
            itemIndex = itemIndex + 1;
        else
            itemCount = itemCount + 1;
        end

        dataIndex = i;
        if dataSize < 0 then
            break;
        end
    end

    local partial = stack;

    if dataIndex ~= stack:size() then
        partial = getTopList(stack, dataIndex);
    end

    stackData.items[itemIndex - 1].size = itemCount;
    local stackWeight = getStackWeight(partial);
    local tailoring = playerObj:getPerkLevel(Perks.Tailoring);
    tailoring = (tailoring + 85) / 100;

    local crateObj = InventoryItemFactory.CreateItem(crate);
    local crateName;
    if partial:get(0).getName and partial:get(0):getName() then
        crateName = partial:get(0):getName();
    else
        crateName = partial:get(0):getDisplayName();
    end
    crateObj:setCustomWeight(true);
    crateObj:setActualWeight(stackWeight - (stackWeight * tailoring));
    crateObj:setName(getDefaultName(playerObj, partial:size(), crateName));
    crateObj:getModData()["esqhb.json"] = json.stringify(stackData);

    animate:setExtra({ partial, crateObj });
    if (isClient()) then esqlibItems.doItemMove(partial, playerObj:getInventory(), playerObj) end;
    ISTimedActionQueue.add(animate);
end

local function doBundlerDeflateMenu(player, context, items)
    local stackItems = esqlibItems.getStackFromSelection(items);
    local goodToPackItems = isGoodToPack(stackItems);
    local goodToPackUnItems = isGoodToUnPack(stackItems);
    local playerObj = getSpecificPlayer(player);
    local bundlerSubMenu = context:getNew(context);

    if goodToPackUnItems:size() > 0 then
        bundlerSubMenu:addOption(getText("ContextMenu_NameThisBag"), goodToPackUnItems:get(0), renameThis, playerObj);
        bundlerSubMenu:addOption(getText("UI_esBundler_default"), goodToPackUnItems:get(0), defaultName, playerObj);

        local recipeName = getText("UI_esBundler_unzip", goodToPackUnItems:get(0):getDisplayName());
        if goodToPackUnItems:size() > 1 then
            local half = round(goodToPackUnItems:size() / 2);
            bundlerSubMenu:addOption(recipeName .. " (1)", playerObj, bundleInflate, goodToPackUnItems, 1);

            if half > 1 then
                bundlerSubMenu:addOption(recipeName .. " (" .. half .. ")", playerObj, bundleInflate, goodToPackUnItems, half);
            end
            bundlerSubMenu:addOption(recipeName .. " (" .. goodToPackUnItems:size() .. ")", playerObj, bundleInflate, goodToPackUnItems, goodToPackUnItems:size());
        else
            bundlerSubMenu:addOption(recipeName, playerObj, bundleInflate, goodToPackUnItems, 1);
        end
    end

    if goodToPackItems:size() > 0 then
        local emptyBundles = esqlibItems.getItemsStack("esQoL.emptyBundle", esqlibItems.getAllContainers(playerObj));
        if emptyBundles:size() > 0 then
            local bundleDelta = esqlibItems.getItemsUses(emptyBundles);
            local lastSize;

            for _,size in pairs(bundleSizes) do
                if goodToPackItems:size() >= size then
                    local partial = getTopList(goodToPackItems, size);
                    local partialWeight = getStackWeight(partial);
                    if bundleDelta >= partialWeight then
                        local recipeName = getText("UI_esBundler_zip") .. getDefaultName(playerObj, size, goodToPackItems:get(0):getDisplayName());
                        local bunOption = bundlerSubMenu:addOption(recipeName, player, bundleDeflate, partial, "esQoL.bundledItems");
                        local toolTip = ISToolTip:new();
                        toolTip:initialise();
                        toolTip.texture = goodToPackItems:get(0):getTex();
                        toolTip:setName(recipeName);
                        if partialWeight < 1 then partialWeight = 1 end;
                        toolTip.description = getText("UI_esBundler_zip_use", round(partialWeight), getItemNameFromFullType("esQoL.emptyBundle"));
                        bunOption.toolTip = toolTip;
                        lastSize = size;
                    else
                        break;
                    end
                else
                    break;
                end
            end

            local maxSize = getMaxSize(goodToPackItems, bundleDelta);
            if maxSize > 0 and maxSize ~= lastSize then
                local partial = getTopList(goodToPackItems, maxSize);
                local partialWeight = getStackWeight(partial);
                if bundleDelta >= partialWeight then
                    local recipeName = getText("UI_esBundler_zip") .. getDefaultName(playerObj, maxSize, goodToPackItems:get(0):getDisplayName());
                    local bunOption = bundlerSubMenu:addOption(recipeName, player, bundleDeflate, partial, "esQoL.bundledItems");
                    local toolTip = ISToolTip:new();
                    toolTip:initialise();
                    toolTip.texture = goodToPackItems:get(0):getTex();
                    toolTip:setName(recipeName);
                    if partialWeight < 1 then partialWeight = 1 end;
                    toolTip.description = getText("UI_esBundler_zip_use", round(partialWeight), getItemNameFromFullType("esQoL.emptyBundle"));
                    bunOption.toolTip = toolTip;
                end
            end
        end
    end

    if #bundlerSubMenu.options > 0 then
        context:addSubMenu(context:addOption(getText("UI_esBundler") .. ":"), bundlerSubMenu);
    end

    return context;
end

Events.OnFillInventoryObjectContextMenu.Add(doBundlerDeflateMenu);