local esqlibSettings = require("esqlib.settings");
local esqlibColors = require("esqlib.colors");
local esqlibItems = require("esqlib.items");
local carAnimate = require("esqlib.animate"):new();

local function canRepair(player, part)
    if (part:getCondition() == 100) then return false end;

    local screwdriver = player:getInventory():getCountTypeRecurse("Base.Screwdriver");
    if screwdriver < 1 then return false end;

    local electricScrap = player:getInventory():getCountTypeRecurse("Base.ElectronicsScrap");
    if electricScrap < 2 then return false end;

    local screws = player:getInventory():getCountTypeRecurse("Base.Screws");
    if screws < 2 then return false end;

    if part:getId() == "lightbar" then
        local lightBulb = player:getInventory():getCountTypeRecurse("Base.LightBulb");
        if lightBulb < 1 then return false end;

    elseif (part:getId() == "Heater") then
        local smallMetal = player:getInventory():getCountTypeRecurse("Base.SmallSheetMetal");
        if smallMetal < 4 then return false end;
    end

    return true;
end

local function doTooltip(player, part)
    local greenRGBTag = esqlibColors.toRGBTag(esqlibColors.getColors().green);
    local redRGBTag = esqlibColors.toRGBTag(esqlibColors.getColors().red);

    local canRepair = part:getCondition() < 100;

    local electricPerk = player:getPerkLevel(Perks.Electricity);
    if canRepair then canRepair = electricPerk > 1 end;

    local screwdriver = player:getInventory():getCountTypeRecurse("Base.Screwdriver");
    if canRepair then canRepair = screwdriver > 0 end;

    local electricScrap = player:getInventory():getCountTypeRecurse("Base.ElectronicsScrap");
    if canRepair then canRepair = electricScrap > 1 end;

    local screws = player:getInventory():getCountTypeRecurse("Base.Screws");
    if canRepair then canRepair = screws > 1 end;

    local lightBulb, smallMetal = 0, 0;

    if part:getId() == "lightbar" then
        lightBulb = player:getInventory():getCountTypeRecurse("Base.LightBulb");
        if canRepair then canRepair = lightBulb > 0 end;
    elseif (part:getId() == "Heater") then
        smallMetal = player:getInventory():getCountTypeRecurse("Base.SmallSheetMetal");
        if canRepair then canRepair = smallMetal > 3 end;
    end

    local tooltip = getText("Tooltip_craft_Needs") .. " : \n";

    if (electricPerk > 1) then
        tooltip = tooltip .. greenRGBTag;
    else
        tooltip = tooltip .. redRGBTag;
    end
    tooltip = tooltip .. getText("IGUI_perks_Electricity") .. " " .. electricPerk .. " /2" .. "\n";

    if (screwdriver > 0) then
        tooltip = tooltip .. greenRGBTag;
    else
        tooltip = tooltip .. redRGBTag;
    end
    tooltip = tooltip .. getItemNameFromFullType("Base.Screwdriver") .. " " .. screwdriver .. " /1" .. "\n\n";

    if (electricScrap > 1) then
        tooltip = tooltip .. greenRGBTag;
    else
        tooltip = tooltip .. redRGBTag;
    end
    tooltip = tooltip .. getItemNameFromFullType("Base.ElectronicsScrap") .. " " .. electricScrap .. " /2" .. "\n";

    if (screws > 1) then
        tooltip = tooltip .. greenRGBTag;
    else
        tooltip = tooltip .. redRGBTag;
    end
    tooltip = tooltip .. getItemNameFromFullType("Base.Screws") .. " " .. screws .. " /2" .. "\n";

    if part:getId() == "lightbar" then
        if (lightBulb > 0) then
            tooltip = tooltip .. greenRGBTag;
        else
            tooltip = tooltip .. redRGBTag;
        end
        tooltip = tooltip .. getItemNameFromFullType("Base.LightBulb") .. " " .. lightBulb .. " /1" .. "\n";

    elseif (part:getId() == "Heater") then
        if (smallMetal > 3) then
            tooltip = tooltip .. greenRGBTag;
        else
            tooltip = tooltip .. redRGBTag;
        end
        tooltip = tooltip .. getItemNameFromFullType("Base.SmallSheetMetal") .. " " .. smallMetal .. " /4" .. "\n";

    end

    return tooltip, not canRepair;
end

local function doRepair(player, part)
    local playerContainers = esqlibItems.getAllContainers(player);
    if player:getVehicle() then
        ISVehicleMenu.onExit(player)
    end
    local doorPart = part:getVehicle():getPartById("EngineDoor")
    ISTimedActionQueue.add(ISPathFindAction:pathToVehicleArea(player, part:getVehicle(), doorPart:getArea()));

    local itemsDestroy = LuaList:new();
    local items = esqlibItems.getItemsStack("Base.Screwdriver", playerContainers);
    local screwdriver = items:get(0);
    ISInventoryPaneContextMenu.transferIfNeeded(player, screwdriver);

    items = esqlibItems.getItemsStack("Base.ElectronicsScrap", playerContainers);
    ISInventoryPaneContextMenu.transferIfNeeded(player, items:get(0));
    ISInventoryPaneContextMenu.transferIfNeeded(player, items:get(1));
    itemsDestroy:add(items:get(0))
    itemsDestroy:add(items:get(1))

    items = esqlibItems.getItemsStack("Base.Screws", playerContainers);
    ISInventoryPaneContextMenu.transferIfNeeded(player, items:get(0));
    ISInventoryPaneContextMenu.transferIfNeeded(player, items:get(1));
    itemsDestroy:add(items:get(0))
    itemsDestroy:add(items:get(1))

    if part:getId() == "lightbar" then
        items = esqlibItems.getItemsStack("Base.LightBulb", playerContainers);
        ISInventoryPaneContextMenu.transferIfNeeded(player, items:get(0));
        itemsDestroy:add(items:get(0))

    elseif (part:getId() == "Heater") then
        items = esqlibItems.getItemsStack("Base.SmallSheetMetal", playerContainers);
        ISInventoryPaneContextMenu.transferIfNeeded(player, items:get(0));
        ISInventoryPaneContextMenu.transferIfNeeded(player, items:get(1));
        ISInventoryPaneContextMenu.transferIfNeeded(player, items:get(2));
        ISInventoryPaneContextMenu.transferIfNeeded(player, items:get(3));
        itemsDestroy:add(items:get(0))
        itemsDestroy:add(items:get(1))
        itemsDestroy:add(items:get(2))
        itemsDestroy:add(items:get(3))
    end

    local animate = carAnimate:new(player, screwdriver, 120);
    animate:setExtra({ part, itemsDestroy });
    ISTimedActionQueue.add(animate);
end

function carAnimate:isValid()
    return canRepair(self.character, self.extra[1]);
end

function carAnimate:doPerform()
    local randomFix = ZombRand(1, 3);
    local newCondition = self.extra[1]:getCondition() + (self.character:getPerkLevel(Perks.Electricity) * randomFix);

    for i = 0, self.extra[2]:size() - 1 do
        if self.extra[2]:get(i) then
            esqlibItems.destroyItem(self.extra[2]:get(i), self.character);
        end
    end

    self.character:getXp():AddXP(Perks.Electricity, randomFix);
    self.extra[1]:setCondition(newCondition);
end

local function doReplacePart(playerObj, oldPart, newPart)
    ISVehiclePartMenu.onUninstallPart(playerObj, oldPart);
    ISVehiclePartMenu.onInstallPart(playerObj,oldPart, newPart);
end

local isvmDoPartContextMenu = ISVehicleMechanics.doPartContextMenu;
function ISVehicleMechanics:doPartContextMenu(part, x,y)
    if UIManager.getSpeedControls():getCurrentGameSpeed() == 0 then return; end
    if esqlibSettings.getSetting("esQTW", "esQTWCarCare") > 1 then
        part:getScriptPart():setRepairMechanic(true);
        isvmDoPartContextMenu(self, part, x, y);

        if part:getId() == "lightbar" or part:getId() == "Heater" then
            if not self.context then
                self.context = ISContextMenu.get(self.playerNum, x + self:getAbsoluteX(), y + self:getAbsoluteY());
            end

            local screwdriver = InventoryItemFactory.CreateItem("Base.Screwdriver"):getTex();
            local repairText = getText("ContextMenu_Repair") .. " " .. getText("ContextMenu_VehicleLightbar");
            if (part:getId() == "Heater") then
                repairText = getText("ContextMenu_Repair") .. " " .. getText("IGUI_VehiclePartHeater");
            end

            local fixOption = self.context:addOption(repairText, self.chr, doRepair, part);
            local toolTip = ISToolTip:new();
            toolTip:initialise();
            toolTip.texture = screwdriver;
            toolTip:setName(repairText);
            toolTip.description, fixOption.notAvailable = doTooltip(self.chr, part);
            fixOption.toolTip = toolTip;
        end

        if part:getInventoryItem() then
            local playerObj = getSpecificPlayer(self.playerNum);
            local typeToItem = VehicleUtils.getItems(self.playerNum);
            local subMenuItem = self.context:getNew(self.context);

            for t=0,part:getItemType():size() - 1 do
                if typeToItem[part:getItemType():get(t)] then
                    local maxList = 0;
                    for _,v in ipairs(typeToItem[part:getItemType():get(t)]) do
                        if maxList > 5 then break end;
                        maxList = maxList + 1;
                        subMenuItem:addOption(v:getDisplayName() .. " (" .. v:getCondition() .. "%)", playerObj, doReplacePart, part, v);
                    end
                end
            end

            if #subMenuItem.options > 0 then
                self.context:addSubMenu(self.context:addOption(getText("Tooltip_ReplaceWornItems")), subMenuItem);
            end
        end

        self.context:setVisible(true);
        if self.context.numOptions == 1 then self.context:setVisible(false) end;
        if JoypadState.players[self.playerNum+1] and self.context:getIsVisible() then
            self.context.mouseOver = 1
            self.context.origin = self
            JoypadState.players[self.playerNum+1].focus = self.context
            updateJoypadFocus(JoypadState.players[self.playerNum+1])
        end

        return;
    end

    return isvmDoPartContextMenu(self, part, x, y);
end

-- carhood open faster on second time.
local baseISOpenMechanicsUIActionNew = ISOpenMechanicsUIAction.new;
function ISOpenMechanicsUIAction:new(character, vehicle, part, ...)
    local openHoodAction = baseISOpenMechanicsUIActionNew(self, character, vehicle, part, ...);

    if esqlibSettings.getSetting("esQTW", "esQTWCarCare") > 1 then
        if (vehicle:getModData()["maxTime"] ~= nil) then
            openHoodAction.maxTime = vehicle:getModData()["maxTime"];
        end
    end

    return openHoodAction;
end

local baseISVehicleMenuOnMechanic = ISVehicleMenu.onMechanic;
function ISVehicleMenu.onMechanic(playerObj, vehicle)
    if esqlibSettings.getSetting("esQTW", "esQTWCarCare") > 1 then
        ISTimedActionQueue.add(ISOpenMechanicsUIAction:new(playerObj, vehicle));
        return;
    end

    baseISVehicleMenuOnMechanic(playerObj, vehicle);
end

local baseISOpenMechanicsUIActionPerform = ISOpenMechanicsUIAction.perform;
function ISOpenMechanicsUIAction:perform()
    if esqlibSettings.getSetting("esQTW", "esQTWCarCare") > 1 then
        self.vehicle:getModData()["maxTime"] = 50;
    end

    baseISOpenMechanicsUIActionPerform(self);
end