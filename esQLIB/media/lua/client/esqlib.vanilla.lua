local function getSelectedItem(items)
    local selectedItem;
    for v, k in pairs(items) do
        if instanceof(k, "InventoryItem") then
            selectedItem = k;
            break;
        else
            for x = 2, #k.items do
                if instanceof(k.items[x], "InventoryItem") then
                    selectedItem = k.items[x]
                    break;
                end
            end
        end
    end
    return selectedItem;
end

-- read a book, while walking!
ISInventoryPaneContextMenu.readItem = function(item, player, whileWalking)
    local playerObj = getSpecificPlayer(player)
    if item:getContainer() == nil then
        return
    end
    ISInventoryPaneContextMenu.transferIfNeeded(playerObj, item)
    -- read
    local action = ISReadABook:new(playerObj, item, 150);
    if whileWalking then
        action.stopOnWalk = false;
    end
    ISTimedActionQueue.add(action);
end

local function walkRead(player, context, items)
    local selectedItem = getSelectedItem(items);
    if selectedItem:getCategory() == "Literature" and not selectedItem:canBeWrite() then
        context:addOption(getText("ContextMenu_Read").. " & " .. getText("IGUI_anim_Walk"), selectedItem, ISInventoryPaneContextMenu.readItem, player, true);
    end
    return context;
end

Events.OnFillInventoryObjectContextMenu.Add(walkRead);

-- can burn sheetropes!
Events.OnGameStart.Add(function()
    campingFuelType = campingFuelType or {};
    campingLightFireType = campingLightFireType or {};
    campingFuelType["SheetRope"] = 15/60.0;
    campingLightFireType["SheetRope"] = 15/60.0;
end);

-- can equip over sized bags!
local function forceEquip(selectedItem, location, player)
    if (selectedItem:getContainer():getType() ~= "floor") then
        local container = selectedItem:getContainer();
        local square = player:getCurrentSquare();
        local dropX, dropY, dropZ = ISInventoryTransferAction.GetDropItemOffset(player, square, selectedItem);
        player:getCurrentSquare():AddWorldInventoryItem(selectedItem, dropX, dropY, dropZ);
        container:Remove(selectedItem);
    end;

    if selectedItem:getWorldItem() == nil then return end;
    selectedItem:getWorldItem():getSquare():transmitRemoveItemFromSquare(selectedItem:getWorldItem());
    selectedItem:getWorldItem():getSquare():removeWorldObject(selectedItem:getWorldItem());
    selectedItem:setWorldItem(nil);

    player:getInventory():AddItem(selectedItem);
    ISInventoryPage.renderDirty = true

    if (location == 3) then
        ISTimedActionQueue.add(ISWearClothing:new(player, selectedItem, 50));
    elseif (location == 2) then
        ISTimedActionQueue.add(ISEquipWeaponAction:new(player, selectedItem, 50, false, false));
    elseif (location == 1) then
        ISTimedActionQueue.add(ISEquipWeaponAction:new(player, selectedItem, 50, true, false));
    end
end

local function forceEquipMenu(player, context, items)
    local playerObj = getSpecificPlayer(player);
    local selectedItem = getSelectedItem(items);

    if not selectedItem:isInPlayerInventory()
            and selectedItem:getCategory() == "Container"
            and selectedItem:getType() ~= "KeyRing"
            and playerObj:getInventory():getEffectiveCapacity(playerObj) <= selectedItem:getUnequippedWeight() then

        local subMenu = context:getNew(context);
        local recipeName = getText("UI_esqtw_forceEquip") .. " " .. selectedItem:getDisplayName() .. " (";

        if (selectedItem:canBeEquipped() ~= nil and selectedItem:canBeEquipped() ~= "") then
            subMenu:addOption(recipeName .. selectedItem:canBeEquipped() .. ")", selectedItem, forceEquip, 3, playerObj);
        end

        subMenu:addOption(recipeName .. getText("IGUI_PrimaryTooltip") .. ")", selectedItem, forceEquip, 1, playerObj);
        subMenu:addOption(recipeName .. getText("IGUI_SecondaryTooltip") .. ")", selectedItem, forceEquip, 2, playerObj);
        context:addSubMenu(context:addOption(getText("UI_esqtw_forceEquip") .. ": "), subMenu);
    end

    return context;
end

Events.OnFillInventoryObjectContextMenu.Add(forceEquipMenu);

-- fanny fix
local baseISClothingExtraAction = ISClothingExtraAction.perform;
function ISClothingExtraAction:perform()
    baseISClothingExtraAction(self);

    local playerObj = self.character
    local allExtras = playerObj:getInventory():FindAll(self.extra);
    local newItem;

    for i = 0, allExtras:size() - 1 do
        newItem = allExtras:get(i);
        if (newItem:isEquipped()) then
            break ;
        end
    end

    if (tostring(newItem:getCategory()) == 'Container') then
        newItem:setCustomWeight(true);
        newItem:setActualWeight(self.item:getActualWeight());
        newItem:setWeightReduction(self.item:getWeightReduction());
        newItem:setCapacity(self.item:getCapacity());
    end
end

