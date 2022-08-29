local esqlibSettings = require("esqlib.settings");
local esqlibItems = require("esqlib.items");
local esqlibPlayers = require("esqlib.players");
local esqlibColors = require("esqlib.colors");
local esqlibNumbers = require("esqlib.numbers");
local fixerAnimate = require("esqlib.animate"):new();
local fixerMain = require("esqtw.fixer.main");

local function getSameWeaponType(selectedItem)
    local selectedType = selectedItem:getCategories();
    if selectedType:size() < 1 then
        return nil;
    end

    local itemStack = LuaList:new();
    local allItems = selectedItem:getContainer():getItems();

    for i = 0, allItems:size() - 1 do
        local item = allItems:get(i);
        if fixerMain.isMelee(item) and item:getCategories():contains(selectedType:get(0)) then
            itemStack:add(item);
        end
    end

    return itemStack;
end

local function getRequireMats(selectedItem, containers)
    local requiredMats = 2;
    local fixingOptions = {};
    local stack, uses;
    if ((selectedItem:getCondition() / selectedItem:getConditionMax()) > 0.5) then
        requiredMats = 1;
    end

    stack = esqlibItems.getItemsStack("Base.Woodglue", containers);
    if not stack:isEmpty() then
        uses = esqlibItems.getItemsDelta(stack) / stack:get(0):getUseDelta();
        if (uses >= requiredMats) then
            table.insert(fixingOptions, { stack, requiredMats, esqlibNumbers.round(uses) });
        end
    end

    stack = esqlibItems.getItemsStack("Base.DuctTape", containers);
    if not stack:isEmpty() then
        uses = esqlibItems.getItemsDelta(stack) / stack:get(0):getUseDelta();
        if (uses >= requiredMats) then
            table.insert(fixingOptions, { stack, requiredMats, esqlibNumbers.round(uses) });
        end
    end

    stack = esqlibItems.getItemsStack("Base.Glue", containers);
    if not stack:isEmpty() then
        uses = esqlibItems.getItemsDelta(stack) / stack:get(0):getUseDelta();
        if (uses >= requiredMats) then
            table.insert(fixingOptions, { stack, requiredMats, esqlibNumbers.round(uses) });
        end
    end

    stack = esqlibItems.getItemsStack("Base.Scotchtape", containers);
    if not stack:isEmpty() then
        uses = stack:size();
        if (uses >= (requiredMats * 2)) then
            table.insert(fixingOptions, { stack, (requiredMats * 2), uses });
        end
    end

    return fixingOptions;
end

local function fixThis(selectedItem, withItem, consume, player)
    local animate = fixerAnimate:new(player, selectedItem, 180);

    ISInventoryPaneContextMenu.transferIfNeeded(player, selectedItem)
    ISInventoryPaneContextMenu.transferIfNeeded(player, withItem)

    local glue = LuaList:new();
    local volume = 0;
    for i = 0, consume[1]:size() - 1 do
        local item = consume[1]:get(i);
        if (item) then

            if (item.getDrainableUsesInt) then
                volume = volume + item:getDrainableUsesInt();
                glue:add(item);
                ISInventoryPaneContextMenu.transferIfNeeded(player, item)
            else
                volume = volume + 1;
                glue:add(item);
                ISInventoryPaneContextMenu.transferIfNeeded(player, item)
            end

            if (volume >= consume[2]) then
                break ;
            end

        end

    end

    if (volume >= consume[2]) then
        animate:setExtra({
            withItem = withItem,
            glue = glue,
            consume = consume[2],
        });
        ISTimedActionQueue.add(animate);
    end
end

function fixerAnimate:doPerform()
    local glueUsed = 0;
    for g = 0, self.extra["glue"]:size() - 1 do
        local glue = self.extra["glue"]:get(g);

        while (glue) do
            if (glueUsed < self.extra["consume"]) then
                if (glue.getDrainableUsesInt) then
                    if (glue:getDrainableUsesInt() == 1) then
                        glue:setUsedDelta(0);
                        glue:Use();
                        glueUsed = glueUsed + 1;
                        break ;
                    end
                    glue:Use();
                    glueUsed = glueUsed + 1;
                else
                    esqlibItems.destroyItem(glue, glue:getContainer());
                    glueUsed = glueUsed + 1;
                    break ;
                end
            else
                break ;
            end
        end
    end

    if fixerMain.isSuccess(self.item, self.extra["withItem"]) then
        local repairCondition = fixerMain.getRepairedAmount(self.item, self.extra["withItem"], self.character);
        self.item:setCondition(repairCondition);
        self.item:setHaveBeenRepaired(self.item:getHaveBeenRepaired() + 1);

        esqlibItems.destroyItem(self.extra["withItem"]);
        local haloText = self.item:getDisplayName() .. " " .. getText("Tooltip_weapon_Condition") .. " " .. repairCondition .. "/" .. self.item:getConditionMax();
        HaloTextHelper.addTextWithArrow(self.character, haloText, true, HaloTextHelper.getColorGreen());
    else
        local select = 0;
        local target = 0;
        if select + target < 2 and self.extra["withItem"]:getCondition() > 1 and not fixerMain.isSuccess(self.item, self.extra["withItem"]) then
            self.extra["withItem"]:setCondition(self.extra["withItem"]:getCondition() - 1);
            target = target + 1;
        end
        if select + target < 2 and self.item:getCondition() > 1 and not fixerMain.isSuccess(self.item, self.extra["withItem"]) then
            self.item:setCondition(self.item:getCondition() - 1);
            select = select + 1;
        end
        if select + target < 2 and self.extra["withItem"]:getCondition() > 1 and not fixerMain.isSuccess(self.item, self.extra["withItem"]) then
            self.extra["withItem"]:setCondition(self.extra["withItem"]:getCondition() - 1);
            target = target + 1;
        end
        if select + target < 2 and self.item:getCondition() > 1 and not fixerMain.isSuccess(self.item, self.extra["withItem"]) then
            self.item:setCondition(self.item:getCondition() - 1);
            select = select + 1;
        end

        local haloText = "";
        if select > 0 then
            haloText = "[" .. self.item:getDisplayName() .. " " .. getText("Tooltip_weapon_Condition") .. " -" .. select .. "]";
        end
        if target > 0 then
            haloText = haloText .. "  [" .. self.extra["withItem"]:getDisplayName() .. " " .. getText("Tooltip_weapon_Condition") .. " -" .. target.."]";
        end
        if haloText ~= "" then
            HaloTextHelper.addTextWithArrow(self.character, haloText, false, HaloTextHelper.getColorRed());
        end
    end

end

local function getTooltip(selectedItem, targetItem, player)
    local description = "";
    local conditionRecover = fixerMain.getRepairedAmount(selectedItem, targetItem, player);
    local successRate = fixerMain.getSuccessRate(selectedItem, targetItem);

    description = description .. " <RGB:0,.9,0> " .. getText("Tooltip_weapon_Condition") .. ": ";
    description = description .. conditionRecover .. "/";
    description = description .. selectedItem:getConditionMax() .. " <RGB:1,1,1> <LINE> ";
    description = description .. " <RGB:1,0,0> "  .. getText("Tooltip_weapon_Repaired") .. " ";
    description = description .. selectedItem:getHaveBeenRepaired() .. "x <LINE> ";

    description = description .. esqlibColors.toRGBTag(esqlibColors.getColorsPercent(successRate).green) .. getText("Tooltip_chanceSuccess").. " " .. successRate .. "% <RGB:1,1,1> <LINE> ";

    description = description .. " <LINE> " .. getText("Tooltip_craft_Needs") .. " <LINE> "
    description = description .. targetItem:getDisplayName() .. " (" .. targetItem:getCondition() .. "/" .. targetItem:getConditionMax() .. ") 1/1";

    return description;
end

local function doMenu(player, context, items)
    if esqlibSettings.getSetting("esQTW", "esQTWFixers") > 1 then
        local stackItems = esqlibItems.getStackFromSelection(items);
        local selectedItem = stackItems:get(0);

        if fixerMain.isMelee(selectedItem) then
            local containerList = esqlibItems.getAllContainers(player);
            local allConsume = getRequireMats(selectedItem, containerList);
            local allItems = getSameWeaponType(selectedItem);

            if not allItems or (allItems:size() < 2 or #allConsume < 1) then return context end;

            local consumeItems = LuaList:new()
            for i = 0, allItems:size() - 1 do
                local item = allItems:get(i);
                if (fixerMain.canBeFixedWith(selectedItem, item)) then
                    consumeItems:add(item);
                end
            end

            local fixerMenu = context:getNew(context);
            local fixerSubMenu = fixerMenu:getNew(fixerMenu);
            for i = 0, consumeItems:size() - 1 do
                local recipePName = getText("IGUI_JobType_Repair") .. " " .. selectedItem:getDisplayName() .. " (" ..
                        selectedItem:getCondition() .. "/" .. selectedItem:getConditionMax() .. ") " ..
                        getText("UI_esQLIB_use") .. " " .. consumeItems:get(i):getDisplayName() .. " (" ..
                        consumeItems:get(i):getCondition() .. "/" .. consumeItems:get(i):getConditionMax() .. ")";

                for glue = 1, #allConsume do
                    local recipeName = allConsume[glue][1]:get(0):getDisplayName() .. " (" .. allConsume[glue][2] .. "/" .. allConsume[glue][3] .. ")";
                    local addOpt = fixerSubMenu:addOption(recipeName, selectedItem, fixThis, consumeItems:get(i), allConsume[glue], esqlibPlayers.getPlayerObject(player));

                    local toolTip = ISToolTip:new();
                    toolTip:initialise();
                    toolTip.texture = selectedItem:getTex();
                    toolTip:setName(getText("IGUI_JobType_Repair") .. " " .. selectedItem:getDisplayName());
                    toolTip.description = getTooltip(selectedItem, consumeItems:get(i), esqlibPlayers.getPlayerObject(player));
                    addOpt.toolTip = toolTip;
                end

                if (#fixerSubMenu.options > 0) then
                    fixerMenu:addSubMenu(fixerMenu:addOption(recipePName), fixerSubMenu);
                    fixerSubMenu = fixerMenu:getNew(fixerMenu);
                end
            end

            if (#fixerMenu.options > 0) then
                context:addSubMenu(context:addOption(getText("UI_esqtw_fixer") .. ":"), fixerMenu);
            end
        end
    end

    return context;
end

Events.OnFillInventoryObjectContextMenu.Add(doMenu);