local esqlibSettings = require("esqlib.settings");
local esqlibPerks = require("esqlib.perks");
local esqlibNumbers = require("esqlib.numbers");
local esqlibItems = require("esqlib.items");
local esqlibColors = require("esqlib.colors");
local esqlibPlayers = require("esqlib.players");
local fixerAnimate = require("esqlib.animate"):new();

local fixerAmmo = {
    ["i"] = { 1, 3, 6, 12, 18, 24 },
    ["m"] = 1.57,
    ["p"] = 1.63,
}

local function isWeaponRanged(selectedItem)
    return selectedItem.isRanged and selectedItem:isRanged();
end

local function getCritChance(player)
    local baseChance = 0.1;
    local perksBonus = esqlibPerks.getPerksData(player, "Aiming").level + esqlibPerks.getPerksData(player, "Reloading").level;
    perksBonus = (perksBonus / 3) / 10;

    return esqlibNumbers.round(baseChance + perksBonus, 2)
end

local function getBulletCount(bullet)
    if (bullet.getCount and bullet:getCount()) then
        return bullet:getCount();
    end
    return 1;
end

local function getBulletRecipe(bullet)
    local metals = esqlibNumbers.round(getBulletCount(bullet) * fixerAmmo["m"]);
    local powder = esqlibNumbers.round(getBulletCount(bullet) * fixerAmmo["p"]);
    return { metals, powder }
end

local function getTooltip(selectedItem, volume, player)
    local bullet = InventoryItemFactory.CreateItem(selectedItem:getAmmoType());
    local bulletRecipe = getBulletRecipe(bullet);
    local canMake = true;
    bulletRecipe[1] = bulletRecipe[1] * volume;
    bulletRecipe[2] = bulletRecipe[2] * volume;

    local allContainers = esqlibItems.getAllContainers(player);
    local allMetals = esqlibItems.getItemsStack("Base.ScrapMetal", allContainers);
    allMetals = allMetals:size();
    local allPowders = esqlibItems.getItemsStack("Base.GunPowder", allContainers);
    if allPowders:isEmpty() then
        allPowders = 0;
    else
        allPowders = esqlibItems.getItemsDelta(allPowders) / allPowders:get(0):getUseDelta();
        allPowders = esqlibNumbers.round(allPowders);
    end

    local description = getText("IGUI_CraftUI_CountUnits", bullet:getDisplayName(), getBulletCount(bullet) * volume);
    description = description .. " <LINE> " .. getText("UI_esQLIB_critical") .. ":  ";
    description = description .. esqlibColors.toRGBTag(esqlibColors.getColorsPercent(getCritChance(player)).green) .. getCritChance(player) * 100 .. "% <LINE> ";

    description = description .. " <RGB:1,1,1> <LINE> " .. getText("IGUI_CraftUI_SourceUse") .. " <LINE> ";
    if (allMetals < bulletRecipe[1]) then
        canMake = false;
        description = description .. " <RGB:1,0,0> "
    end
    description = description .. getText("IGUI_CraftUI_CountUnits", getItemNameFromFullType("Base.ScrapMetal"), bulletRecipe[1] .. "/" .. allMetals) .. " <LINE> <RGB:1,1,1> ";

    if (allPowders < bulletRecipe[2]) then
        canMake = false;
        description = description .. " <RGB:1,0,0> "
    end
    description = description .. getText("IGUI_CraftUI_CountUnits", getItemNameFromFullType("Base.GunPowder"), bulletRecipe[2] .. "/" .. allPowders);

    return description, not canMake;
end

local function makeAmmo (selectedItem, volume, player)
    local playerObj = esqlibPlayers.getPlayerObject(player);
    local animate = fixerAnimate:new(playerObj, selectedItem, 90);
    animate:setStopOn(false, true, false);
    for i = 1, volume do
        ISTimedActionQueue.add(animate);
    end
end

function fixerAnimate:isValid()
    local bullet = InventoryItemFactory.CreateItem(self.item:getAmmoType());
    local bulletRecipe = getBulletRecipe(bullet);

    local allContainers = esqlibItems.getAllContainers(self.character);
    local allMetals = esqlibItems.getItemsStack("Base.ScrapMetal", allContainers);
    allMetals = allMetals:size();

    local allPowders = esqlibItems.getItemsStack("Base.GunPowder", allContainers);
    allPowders = esqlibItems.getItemsDelta(allPowders) / allPowders:get(0):getUseDelta();
    allPowders = esqlibNumbers.round(allPowders);

    if (allMetals > bulletRecipe[1] and allPowders > bulletRecipe[2]) then
        return true
    end

    return false;
end

function fixerAnimate:doPerform()
    local bullet = InventoryItemFactory.CreateItem(self.item:getAmmoType());
    local bulletRecipe = getBulletRecipe(bullet);

    local allContainers = esqlibItems.getAllContainers(self.character);
    local allMetals = esqlibItems.getItemsStack("Base.ScrapMetal", allContainers);
    local allPowders = esqlibItems.getItemsStack("Base.GunPowder", allContainers);

    for m = 1, bulletRecipe[1] do
        esqlibItems.destroyItem(allMetals:get(m-1),self.character);
    end

    local powderUsed = 0;
    for p = 0, allPowders:size() - 1 do
        local powder = allPowders:get(p);
        while (powder) do
            if (powderUsed < bulletRecipe[2]) then
                if (powder:getDrainableUsesInt() == 1) then
                    powder:setUsedDelta(0);
                    powder:Use();
                    powderUsed = powderUsed + 1;
                    break ;
                end
                powder:Use();
                powderUsed = powderUsed + 1;
            else
                break;
            end
        end

        if (powderUsed == bulletRecipe[2]) then
            break;
        end
    end

    local haloText = getText("IGUI_CraftUI_CountUnits", bullet:getDisplayName(), getBulletCount(bullet));
    HaloTextHelper.addTextWithArrow(self.character, haloText, true, HaloTextHelper.getColorGreen());
    for i = 1, getBulletCount(bullet) do
        local item = InventoryItemFactory.CreateItem(self.item:getAmmoType());
        esqlibItems.createItem(item, self.item:getContainer(), self.character);
    end

    if (esqlibNumbers.roll(getCritChance(self.character))) then
        HaloTextHelper.addText(self.character, getText("UI_trait_lucky").. "!!", HaloTextHelper.getColorGreen());
        HaloTextHelper.addTextWithArrow(self.character, haloText, true, HaloTextHelper.getColorGreen());
        for i = 1, getBulletCount(bullet) do
            local item = InventoryItemFactory.CreateItem(self.item:getAmmoType());
            esqlibItems.createItem(item, self.item:getContainer(), self.character);
        end
    end
    triggerEvent("esDoSort", self.character);
end

local function doMenu(player, context, items)
    if esqlibSettings.getSetting("esQTW", "esQTWFixers") > 1  then
        local stackItems = esqlibItems.getStackFromSelection(items);
        local selectedItem = stackItems:get(0);

        if isWeaponRanged(selectedItem) then
            local ammoSubMenu = context:getNew(context);
            local bullet = InventoryItemFactory.CreateItem(selectedItem:getAmmoType());
            local recipeName = getText("UI_esQLIB_make") .. " " .. getItemNameFromFullType(bullet:getFullType());

            for k, v in pairs(fixerAmmo["i"]) do
                local fixOption = ammoSubMenu:addOption(recipeName .. " x" .. v, selectedItem, makeAmmo, v, player);
                local toolTip = ISToolTip:new();
                toolTip:initialise();
                toolTip.texture = bullet:getTex();
                toolTip:setName(recipeName);
                toolTip.description, fixOption.notAvailable = getTooltip(selectedItem, v, player);
                fixOption.toolTip = toolTip;
            end

            if (#ammoSubMenu.options > 0) then
                context:addSubMenu(context:addOption(recipeName .. ":"), ammoSubMenu);
            end
        end

    end

    return context;
end

Events.OnFillInventoryObjectContextMenu.Add(doMenu);