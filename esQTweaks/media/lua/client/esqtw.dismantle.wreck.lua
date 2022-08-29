local esqlibSettings = require("esqlib.settings");
local esqlibItems = require("esqlib.items");
local esqlibColors = require("esqlib.colors");

local function getToolDescription(description, player, fullType, volume, used)
    local itemFound = esqlibItems.haveOrSimilar(player, fullType);
    local uses = " " .. getText("ContextMenu_Uses") .. " ";
    if not used then uses = " " end;

    if itemFound then
        if volume > 1 then
            local toolsFound = player:getInventory():getAllTypeRecurse(itemFound);
            local totalStackUses = esqlibItems.getItemsUses(toolsFound);

            if totalStackUses >= volume then
                local desc = " <LINE> <RGB:1,1,1> " .. getItemNameFromFullType(itemFound) .. uses .. totalStackUses .. "/" .. volume;
                return description .. desc, false;
            else
                local desc = " <LINE> <RGB:1,0,0> " .. getItemNameFromFullType(itemFound) .. uses .. totalStackUses .. "/" .. volume;
                return description .. desc, true;
            end

        else
            local desc = " <LINE> <RGB:1,1,1> " .. getItemNameFromFullType(itemFound) .. uses .. "1/" .. volume;
            return description .. desc, false;
        end
    else
        local desc = " <LINE> <RGB:1,0,0> " .. getItemNameFromFullType(fullType) .. uses .. "0/" .. volume;
        return description .. desc, true;
    end
end

local function getSuccessFail(player, vehicle)
    local partsText = "";
    for i = 0, vehicle:getPartCount() - 1 do
        local part = vehicle:getPartByIndex(i);
        if part:getInventoryItem() then
            local keyvalues = part:getTable("uninstall");
            if keyvalues and keyvalues.skills then
                local perks = keyvalues.skills;
                local success, failure = VehicleUtils.calculateInstallationSuccess(perks, player);
                local colorSuccess = esqlibColors.getColorsPercent(success);
                colorSuccess = esqlibColors.toRGBTag(colorSuccess.green);
                partsText = partsText .. colorSuccess .. " " .. getText("IGUI_VehiclePart" .. part:getId()) .. " (" .. getText("Tooltip_Chance") .. " " .. success .. "%) <LINE> ";
            elseif keyvalues then
                local colorSuccess = esqlibColors.getColorsPercent(.99);
                colorSuccess = esqlibColors.toRGBTag(colorSuccess.green);
                partsText = partsText .. colorSuccess .. " " .. getText("IGUI_VehiclePart" .. part:getId()) .. " (" .. getText("Tooltip_Chance") .. " 100%) <LINE> ";
            end
        end
    end

    return partsText;
end

local baseISRemoveBurntVehicle = ISRemoveBurntVehicle.perform;
function ISRemoveBurntVehicle:perform()

    if esqlibSettings.getSetting("esQTW", "esQTWWrecks") == 3 then
        local vSquare = self.vehicle:getSquare();
        for i = 1, self.vehicle:getPartCount() do
            local part = self.vehicle:getPartByIndex(i - 1);
            if part:getInventoryItem() then
                local keyvalues = part:getTable("uninstall");
                if keyvalues and keyvalues.skills then
                    local perks = keyvalues.skills;
                    local success, failure = VehicleUtils.calculateInstallationSuccess(perks, self.character);
                    if success < 100 then
                        self.character:getXp():AddXP(Perks.Mechanics, 1);
                    end
                    if ZombRand(100) < success then
                        self.character:getXp():AddXP(Perks.Mechanics, 1);
                        vSquare:AddWorldInventoryItem(part:getInventoryItem(), 0, 0, 0);
                    end
                elseif keyvalues then
                    self.character:getXp():AddXP(Perks.Mechanics, 1);
                    vSquare:AddWorldInventoryItem(part:getInventoryItem(), 0, 0, 0);
                end
            end
        end
    end

    baseISRemoveBurntVehicle(self);

    triggerEvent("esDoSort", self.character);
end

local baseFillMenuOutsideVehicle = ISVehicleMenu.FillMenuOutsideVehicle;
function ISVehicleMenu.FillMenuOutsideVehicle(player, context, vehicle, test)
    baseFillMenuOutsideVehicle(player, context, vehicle, test);

    if esqlibSettings.getSetting("esQTW", "esQTWWrecks") > 1
        and vehicle:getPartById("Engine")
        and vehicle:getPartById("Engine"):getCondition() < 11 then

        local playerObj = getSpecificPlayer(player)
        local menuItem = getText("ContextMenu_RemoveBurntVehicle") .. " ";
        if esqlibSettings.getSetting("esQTW", "esQTWWrecks") == 3 then
            menuItem = menuItem .. getText("UI_esqtw_wrecks_strip");
        end
        local optionWreck = context:addOption(menuItem, playerObj, ISVehicleMenu.onRemoveBurntVehicle, vehicle);
        local toolTipWreck = ISToolTip:new();
        local optionAvail = false;

        toolTipWreck:initialise();
        toolTipWreck:setVisible(false);
        toolTipWreck:setName(getText("ContextMenu_RemoveBurntVehicle"));
        toolTipWreck.description = getText("Tooltip_removeBurntVehicle") .. " <LINE> <LINE> ";

        if esqlibSettings.getSetting("esQTW", "esQTWWrecks") == 3 then
            local desc = getSuccessFail(playerObj, vehicle);
            toolTipWreck.description = toolTipWreck.description .. desc;

            toolTipWreck.description, optionAvail = getToolDescription(toolTipWreck.description, playerObj, "Base.Screwdriver", 1);
            if optionAvail then optionWreck.notAvailable = true end;

            toolTipWreck.description, optionAvail = getToolDescription(toolTipWreck.description, playerObj, "Base.Wrench", 1);
            if optionAvail then optionWreck.notAvailable = true end;

            toolTipWreck.description, optionAvail = getToolDescription(toolTipWreck.description, playerObj, "Base.Jack", 1);
            if optionAvail then optionWreck.notAvailable = true end;

            toolTipWreck.description, optionAvail = getToolDescription(toolTipWreck.description, playerObj, "Base.LugWrench", 1);
            if optionAvail then optionWreck.notAvailable = true end;
        end

        toolTipWreck.description, optionAvail = getToolDescription(toolTipWreck.description, playerObj, "Base.WeldingMask", 1);
        if optionAvail then optionWreck.notAvailable = true end;

        toolTipWreck.description, optionAvail = getToolDescription(toolTipWreck.description, playerObj, "Base.BlowTorch", 20, true);
        if optionAvail then optionWreck.notAvailable = true end;

        optionWreck.toolTip = toolTipWreck;
        if context.removeOptionByName then
            context:removeOptionByName(getText("ContextMenu_RemoveBurntVehicle"));
        end
    end

end
