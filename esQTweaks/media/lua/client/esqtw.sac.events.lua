local esqlibSettings = require("esqlib.settings");
local esqlibPlayers = require("esqlib.players");
local esqlibNumbers = require("esqlib.numbers");
local esqlibItems = require("esqlib.items");
local esqlibColors = require("esqlib.colors");
local esSacMain = require("esqtw.sac.main");

local esSacEvents = {};

function esSacEvents.attachEvent(inventoryPage, state)
    if state ~= "buttonsAdded" then return end;
    if esqlibSettings.getSetting("esQTW", "esQTWSac") == 1 then return end;
    local playerObj = esqlibPlayers.getPlayerObject(inventoryPage.player);

    if (inventoryPage.onCharacter) then
        local invAttached = esSacMain.getAttached(playerObj:getInventory():getItems());
        esSacEvents.addShortCuts(invAttached, inventoryPage);

        local eqBags = esSacMain.getEquippedBags(playerObj);
        for b = 0, eqBags:size() - 1 do
            esSacEvents.addShortCuts(esSacMain.getAttached(eqBags:get(b):getInventory():getItems()), inventoryPage);
        end
        esSacEvents.addCapacityInfo(inventoryPage, playerObj);
    else
        esSacEvents.addShortCuts(esSacMain.getAttached(esSacMain.getExtraLoots(playerObj)), inventoryPage);
    end
end

function esSacEvents.addShortCuts(extraEquip, inventoryPage)
    if (extraEquip == nil) then return end;
    for i = 0, extraEquip:size() - 1 do
        local item = extraEquip:get(i);
        local containerButton = inventoryPage:addContainerButton(item:getInventory(), item:getTex(), item:getName(), item:getName());
        if item:getVisual() and item:getClothingItem() then
            local tint = item:getVisual():getTint(item:getClothingItem())
            containerButton:setTextureRGBA(tint:getRedFloat(), tint:getGreenFloat(), tint:getBlueFloat(), 1.0);
            containerButton:setBorderRGBA(tint:getRedFloat(), tint:getGreenFloat(), tint:getBlueFloat(), 1.0);
        end
    end
end

function esSacEvents.addCapacityInfo(inventoryPage, player)
    for i,v in ipairs(inventoryPage.backpacks) do
        if (v.tooltip) then
            local currentWeight = esqlibNumbers.round(v.inventory:getContentsWeight(), 2);
            local currentPercent = currentWeight / v.inventory:getCapacity();
            local displayPercent = esqlibNumbers.round((currentPercent * 100), 2);
            displayPercent = esqlibNumbers.padding(displayPercent,2,2);

            local rgb = esqlibColors.getColorsPercent(currentPercent);
            v.tooltip = esqlibColors.toRGBTag(rgb.red) .. v.tooltip .. " <LINE> <RGB:1,1,1> " .. currentWeight .. " / " .. v.inventory:getEffectiveCapacity(player);
        end
    end
end

local ISITActionValid = ISInventoryTransferAction.isValid;
function ISInventoryTransferAction:isValid()
    if esqlibSettings.getSetting("esQTW", "esQTWSac") == 2 then
        if (self.destContainer:getType() == "none" or
                self.destContainer:getType() == "floor") then
            return ISITActionValid(self);
        end

        local destItem = esqlibItems.getContainerItem(self.destContainer, self.character);
        if (not destItem) then return ISITActionValid(self) end;

        local parentContainer = destItem:getContainer();
        if (not parentContainer) then return ISITActionValid(self) end;

        if (parentContainer:getType() == "none" or parentContainer:getType() == "floor") then
            return ISITActionValid(self);
        end

        if (self.destContainer:hasRoomFor(self.character, self.item) and
                parentContainer:hasRoomFor(self.character, self.item)) then
            return ISITActionValid(self);
        end

        return false;
    end

    return ISITActionValid(self);
end

function esSacEvents.doMenu(player, context, items)
    if esqlibSettings.getSetting("esQTW", "esQTWSac") > 1  then
        local thisStack = esqlibItems.getStackFromSelection(items);
        if esSacMain.isBag(thisStack:get(0)) and esSacMain.isValidContainer(thisStack:get(0), player) then
            local onOff = thisStack:get(0):getModData()["esSac.equipped"] == nil;
            local recipeName = getText("UI_esqtw_sac_toggle") .. " " .. thisStack:get(0):getDisplayName();
            if (onOff) then
                recipeName = recipeName .. " " .. getText("UI_On");
            else
                recipeName = recipeName .. " " .. getText("UI_Off");
            end
            context:addOption(recipeName, thisStack:get(0), esSacMain.toggleSac);
        end
    end

    return context;
end

Events.OnFillInventoryObjectContextMenu.Add(esSacEvents.doMenu);
Events.OnRefreshInventoryWindowContainers.Add(esSacEvents.attachEvent);