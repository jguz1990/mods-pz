local esqlibSettings = require("esqlib.settings");
local esqlibItems = require("esqlib.items");
local esqlibPlayers = require("esqlib.players");
local esqlibColors = require("esqlib.colors");
local fixerMain = require("esqtw.fixer.main");
local fixerAnimate = require("esqlib.animate"):new();

local function getOtherGuns(selectedItem)
    local otherGuns = LuaList:new();
    local allGuns = selectedItem:getContainer():getItems();

    for g = 0, allGuns:size() - 1 do
        local gun = allGuns:get(g);
        if fixerMain.isRanged(gun) and fixerMain.canBeFixedWith(selectedItem, gun) then
            otherGuns:add(gun);
        end
    end

    return otherGuns;
end

local function getGunAttach(targetItem)
    local attach = {};

    if (targetItem.isContainsClip and targetItem:isContainsClip()) then
        local newMag = InventoryItemFactory.CreateItem(targetItem:getMagazineType());
        if newMag then
            table.insert(attach, { newMag:getFullType(), 1 });
        end
    end

    local ammoCount = targetItem:getCurrentAmmoCount();
    if (targetItem.isRoundChambered and targetItem:isRoundChambered()) then
        ammoCount = ammoCount + 1;
    end

    if (ammoCount > 0) then
        table.insert(attach, { targetItem:getAmmoType(), ammoCount });
    end

    if (targetItem.getScope and targetItem:getScope()) then
        table.insert(attach, { targetItem:getScope():getFullType(), 1 });
    end
    if (targetItem.getClip and targetItem:getClip()) then
        table.insert(attach, { targetItem:getClip():getFullType(), 1 });
    end
    if (targetItem.getSling and targetItem:getSling()) then
        table.insert(attach, { targetItem:getSling():getFullType(), 1 });
    end
    if (targetItem.getCanon and targetItem:getCanon()) then
        table.insert(attach, { targetItem:getCanon():getFullType(), 1 });
    end
    if (targetItem.getStock and targetItem:getStock()) then
        table.insert(attach, { targetItem:getStock():getFullType(), 1 });
    end
    if (targetItem.getRecoilpad and targetItem:getRecoilpad()) then
        table.insert(attach, { targetItem:getRecoilpad():getFullType(), 1 });
    end

    return attach;
end

local function fixThis(selectedItem, gunItem, player)
    local animate = fixerAnimate:new(player, selectedItem, 180);
    animate:setExtra(gunItem);

    ISInventoryPaneContextMenu.transferIfNeeded(player, selectedItem)
    ISInventoryPaneContextMenu.transferIfNeeded(player, gunItem)
    ISTimedActionQueue.add(animate);
end

function fixerAnimate:isValid()
    if not self.extra:getContainer() or not self.extra:getContainer():contains(self.extra) then
        return false
    end
    if not self.item:getContainer() or not self.item:getContainer():contains(self.item) then
        return false
    end

    return true;
end

function fixerAnimate:doPerform()

    if fixerMain.isSuccess(self.item, self.extra) then
        local conditionRecover = fixerMain.getRepairedAmount(self.item, self.extra, self.character);
        local attachments = getGunAttach(self.extra);

        self.item:setCondition(conditionRecover);
        self.item:setHaveBeenRepaired(self.item:getHaveBeenRepaired() + 1);
        for k, v in pairs(attachments) do
            if (v[2] > 1) then
                for i = 1, v[2] do
                    local item = InventoryItemFactory.CreateItem(v[1]);
                    esqlibItems.createItem(item, self.item:getContainer(), self.character);
                    local haloText = getText("IGUI_CraftUI_CountUnits", getItemNameFromFullType(v[1]), v[2]);
                    HaloTextHelper.addTextWithArrow(self.character, haloText, true, HaloTextHelper.getColorGreen())
                end
            else
                esqlibItems.createItem(InventoryItemFactory.CreateItem(v[1]), self.item:getContainer(), self.character);
                local haloText = getText("IGUI_CraftUI_CountUnits", getItemNameFromFullType(v[1]), v[2]);
                HaloTextHelper.addTextWithArrow(self.character, haloText, true, HaloTextHelper.getColorGreen())
            end
        end

        esqlibItems.destroyItem(self.extra)
        local haloText = self.item:getDisplayName() .. " " .. getText("Tooltip_weapon_Condition") .. " " .. conditionRecover .. "/" .. self.item:getConditionMax();
        HaloTextHelper.addTextWithArrow(self.character, haloText, true, HaloTextHelper.getColorGreen());
    else
        local select = 0;
        local target = 0;
        if select + target < 2 and not fixerMain.isSuccess(self.item, self.extra) and self.item:getCondition() > 1 then
            self.item:setCondition(self.item:getCondition() - 1);
            select = select + 1;
        end
        if select + target < 2 and not fixerMain.isSuccess(self.item, self.extra) and self.extra:getCondition() > 1 then
            self.extra:setCondition(self.extra:getCondition() - 1);
            target = target + 1;
        end
        if select + target < 2 and not fixerMain.isSuccess(self.item, self.extra) and self.item:getCondition() > 1 then
            self.item:setCondition(self.item:getCondition() - 1);
            select = select + 1;
        end
        if select + target < 2 and not fixerMain.isSuccess(self.item, self.extra) and self.extra:getCondition() > 1 then
            self.extra:setCondition(self.extra:getCondition() - 1);
            target = target + 1;
        end

        local haloText = "";
        if select > 0 then
            haloText = "[" .. self.item:getDisplayName() .. " " .. getText("Tooltip_weapon_Condition") .. " -" .. select .. "]";
        end
        if target > 0 then
            haloText = haloText .. "  [" .. self.extra:getDisplayName() .. " " .. getText("Tooltip_weapon_Condition") .. " -" .. target .. "]";
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
    local attachments = getGunAttach(targetItem);

    description = description .. " <RGB:0,.9,0> " .. getText("Tooltip_weapon_Condition") .. " ";
    description = description .. conditionRecover .. "/";
    description = description .. selectedItem:getConditionMax() .. " <RGB:1,1,1> <LINE> ";
    description = description .. " <RGB:1,0,0> "  .. getText("Tooltip_weapon_Repaired") .. " ";
    description = description .. selectedItem:getHaveBeenRepaired() .. "x <LINE> ";
    description = description .. esqlibColors.toRGBTag(esqlibColors.getColorsPercent(successRate).green).. getText("Tooltip_chanceSuccess").. " " .. successRate .. "% <RGB:1,1,1> <LINE> ";

    for k, v in pairs(attachments) do
        description = description .. getItemNameFromFullType(v[1]) .. " x" .. v[2] .. " <LINE> ";
    end

    description = description .. " <LINE> " .. getText("Tooltip_craft_Needs") .. " <LINE> "
    description = description .. targetItem:getDisplayName() .. " 1/1";

    return description;
end

local function doMenu(player, context, items)
    if esqlibSettings.getSetting("esQTW", "esQTWFixers") > 1 then
        local stackItems = esqlibItems.getStackFromSelection(items);
        local selectedItem = stackItems:get(0);

        if fixerMain.isRanged(selectedItem) then
            local allOtherGuns = getOtherGuns(selectedItem);
            if (allOtherGuns:size() > 0) then

                local fixerMenu = context:getNew(context);

                for g = 0, allOtherGuns:size() - 1 do
                    local gun = allOtherGuns:get(g);
                    local recipeName = getText("IGUI_JobType_Repair") .. " " .. selectedItem:getDisplayName() .. " (" ..
                            selectedItem:getCondition() .. "/" .. selectedItem:getConditionMax() .. ") " ..
                            getText("UI_esQLIB_use") .. " " .. gun:getDisplayName() .. " (" ..
                            gun:getCondition() .. "/" .. gun:getConditionMax() .. ")";

                    local fixOption = fixerMenu:addOption(recipeName, selectedItem, fixThis, gun, esqlibPlayers.getPlayerObject(player));
                    local toolTip = ISToolTip:new();
                    toolTip:initialise();
                    toolTip.texture = selectedItem:getTex();
                    toolTip:setName(getText("IGUI_JobType_Repair") .. " " .. selectedItem:getDisplayName());
                    toolTip.description = getTooltip(selectedItem, gun, esqlibPlayers.getPlayerObject(player));
                    fixOption.toolTip = toolTip;
                end

                if (#fixerMenu.options > 0) then
                    context:addSubMenu(context:addOption(getText("UI_esqtw_fixer") .. ":"), fixerMenu);
                end

            end

        end
    end

    return context;
end

Events.OnFillInventoryObjectContextMenu.Add(doMenu);