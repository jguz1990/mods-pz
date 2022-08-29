local esqlibSettings = require("esqlib.settings");
local esqlibTooltips = require("esqlib.tooltips");

local esqlibNumbers = require("esqlib.numbers");
local esqlibPlayers = require("esqlib.players");
local esqlibPerks = require("esqlib.perks");
local esqlibUtils  = require("esqlib.utils");

local esWeaponInfo = {};

function esWeaponInfo.getMeleeWeaponInfo(ttData)
    local item = ttData.item;
    local player = esqlibPlayers.getPlayerObject(ttData.character);
    local v = esWeaponInfo.getMeleeProperties(InventoryItemFactory.CreateItem(item:getFullType()), player);
    local o = esWeaponInfo.getMeleeProperties(item, player);
    local equippedWeapon = player:getPrimaryHandItem();

    local eqo, eq;
    if (equippedWeapon ~= nil and equippedWeapon ~= item and equippedWeapon.getMaxDamage) then
        eq = esWeaponInfo.getMeleeProperties(player:getPrimaryHandItem(), player);
        eqo = esWeaponInfo.getMeleeProperties(InventoryItemFactory.CreateItem(player:getPrimaryHandItem():getFullType()), player);
    end

    local itemInfo, itemRow = {};

    itemRow = { o.name, "", "   " };
    if (eq) then itemRow[4] = eq.name end;
    table.insert(itemInfo, itemRow);

    itemRow = { o.type };
    if (eq) then itemRow[4] = eq.type end;
    table.insert(itemInfo, itemRow);

    itemRow = { "XP" };
    if (o.perk) then itemRow[2] = o.perk .. "/10 " .. o.toLevel .. "%"; end
    if (eq and eq.perk) then itemRow[4] = eq.perk .. "/10 " .. eq.toLevel .. "%"; end
    table.insert(itemInfo, itemRow);

    itemRow = {};
    if item:isRequiresEquippedBothHands() then
        itemRow[2] = "<I>" .. getText("UI_esqmi_one_hand");
    else
        itemRow[2] = getText("UI_esqmi_one_hand");
    end
    if eq and player:getPrimaryHandItem() then
        if player:getPrimaryHandItem():isRequiresEquippedBothHands() then
            itemRow[4] = "<I>" .. getText("UI_esqmi_one_hand");
        else
            itemRow[4] = getText("UI_esqmi_one_hand");
        end
    end
    table.insert(itemInfo, itemRow);

    itemRow = {};
    if item:isTwoHandWeapon() then
        itemRow[2] = getText("UI_esqmi_both_hands");
    else
        itemRow[2] = "<I>" .. getText("UI_esqmi_both_hands");
    end
    if eq and player:getPrimaryHandItem() then
        if player:getPrimaryHandItem():isTwoHandWeapon() then
            itemRow[4] = getText("UI_esqmi_both_hands");
        else
            itemRow[4] = "<I>" .. getText("UI_esqmi_both_hands");
        end
    end
    table.insert(itemInfo, itemRow);

    table.insert(itemInfo, { "" });
    itemRow = { getText("Tooltip_weapon_Damage"), o.maxDamage .. "/" .. v.maxDamage };
    if (eq) then
        if (o.maxDamage > eq.maxDamage) then
            itemRow[2] = "<G>" .. o.maxDamage .. "/" .. v.maxDamage;
            itemRow[4] = "<R>" .. eq.maxDamage .. "/".. eqo.maxDamage;
        elseif (o.maxDamage < eq.maxDamage) then
            itemRow[2] = "<R>" .. o.maxDamage .. "/" .. v.maxDamage;
            itemRow[4] = "<G>" .. eq.maxDamage .. "/".. eqo.maxDamage;
        else
            itemRow[4] = eq.maxDamage .. "/".. eqo.maxDamage;
        end
    end
    table.insert(itemInfo, itemRow);

    itemRow = { getText("UI_esqmi_SwingTime"), o.swingTime .. "/" .. v.swingTime };
    if (eq) then
        if (o.swingTime > eq.swingTime) then
            itemRow[2] = "<G>" .. o.swingTime .. "/" .. v.swingTime;
            itemRow[4] = "<R>" .. eq.swingTime .. "/".. eqo.swingTime;
        elseif (o.swingTime < eq.swingTime) then
            itemRow[2] = "<R>" .. o.swingTime .. "/" .. v.swingTime;
            itemRow[4] = "<G>" .. eq.swingTime .. "/".. eqo.swingTime;
        else
            itemRow[4] = eq.swingTime .. "/".. eqo.swingTime;
        end
    end;
    table.insert(itemInfo, itemRow);

    itemRow = { getText("Tooltip_food_Endurance"), o.enduranceMod .. "/" .. v.enduranceMod };
    if (eq) then
        if (o.enduranceMod < eq.enduranceMod) then
            itemRow[2] = "<G>" .. o.enduranceMod .. "/" .. v.enduranceMod;
            itemRow[4] = "<R>" .. eq.enduranceMod .. "/".. eqo.enduranceMod;
        elseif (o.enduranceMod > eq.enduranceMod) then
            itemRow[2] = "<R>" .. o.enduranceMod .. "/" .. v.enduranceMod;
            itemRow[4] = "<G>" .. eq.enduranceMod .. "/".. eqo.enduranceMod;
        else
            itemRow[4] = eq.enduranceMod .. "/".. eqo.enduranceMod;
        end
    end;
    table.insert(itemInfo, itemRow);

    if (item:isEquipped()) then
        itemRow = { getText("Tooltip_item_Weight"), o.weight .. "(" .. o.aWeight .. ")" };
        if (eq and eq.weight > o.weight) then
            itemRow[2] = "<G>" .. o.weight .. "(" .. o.aWeight .. ")";
            itemRow[4] = "<R>" .. eq.weight .. "(" .. eq.aWeight .. ")";
        elseif (eq and eq.weight < o.weight) then
            itemRow[2] = "<R>" .. o.weight .. "(" .. o.aWeight .. ")";
            itemRow[4] = "<G>" .. eq.weight .. "(" .. eq.aWeight .. ")";
        elseif (eq) then
            itemRow[4] = eq.weight .. "(" .. eq.aWeight .. ")";
        end
    else
        itemRow = { getText("Tooltip_item_Weight"), o.aWeight .. "(" .. o.weight .. ")" };
        if (eq and eq.aWeight > o.aWeight) then
            itemRow[2] = "<G>" .. o.aWeight .. "(" .. o.weight .. ")";
            itemRow[4] = "<R>" .. eq.aWeight .. "(" .. eq.weight .. ")";
        elseif (eq and eq.aWeight < o.aWeight) then
            itemRow[2] = "<R>" .. o.aWeight .. "(" .. o.weight .. ")";
            itemRow[4] = "<G>" .. eq.aWeight .. "(" .. eq.weight .. ")";
        elseif (eq) then
            itemRow[4] = eq.aWeight .. "(" .. eq.weight .. ")";
        end
    end
    table.insert(itemInfo, itemRow);
    if (ttData.tooltip:getWeightOfStack() > 0) then
        table.insert(itemInfo, { getText("Tooltip_item_StackWeight"), esqlibNumbers.round(ttData.tooltip:getWeightOfStack(), 3) });
    end
    table.insert(itemInfo, { "" });

    itemRow = { getText("Tooltip_weapon_Condition"), o.condition .. "/" .. v.condition };
    if (eq) then itemRow[4] = eq.condition .. "/" .. eqo.condition end;
    table.insert(itemInfo, itemRow);

    itemRow = { getText("UI_esqmi_Durability"), tostring(o.durability .. "/" .. v.durability) };
    if (eq) then itemRow[4] = eq.durability .. "/" .. eqo.durability end;
    table.insert(itemInfo, itemRow);

    if (o.repaired > 0) then
        itemRow = { getText("Tooltip_weapon_Repaired"), o.repaired .. "x" };
    else
        itemRow = { getText("Tooltip_weapon_Repaired"), getText("Tooltip_never") };
    end
    if (eq and eq.repaired > 0) then
        itemRow[4] = eq.repaired .. "x";
    elseif (eq) then
        itemRow[4] = getText("Tooltip_never");
    end
    table.insert(itemInfo, itemRow);

    return itemInfo;
end

function esWeaponInfo.getMeleeProperties(item, player)
    local itemProp = {};

    itemProp.name = item:getDisplayName();
    itemProp.condition = esqlibNumbers.round(item:getCondition(), 2);
    itemProp.maxDamage = esqlibNumbers.round(item:getMaxDamage(), 2);
    itemProp.weight = esqlibNumbers.round((item.getEquippedWeight and item:getEquippedWeight() or 0),2);
    itemProp.aWeight = esqlibNumbers.round((item.getActualWeight and item:getActualWeight() or 0),2);
    itemProp.repaired = item:getHaveBeenRepaired() - 1;
    itemProp.swingTime = esqlibNumbers.round(item:getBaseSpeed(), 2);
    itemProp.enduranceMod = esqlibNumbers.round((item:getEnduranceMod() or 1),2);

    itemProp.durability = item:getConditionLowerChance();
    if (itemProp.durability > 1000) then
        itemProp.durability = "---";
    end

    local playerSkills = esqlibPerks.getPerksData(player, item:getCategories())
    if (playerSkills) then
        itemProp.type = playerSkills.type;
        itemProp.perk = playerSkills.level;
        itemProp.toLevel = esqlibNumbers.padding(playerSkills.percent, 2, 2);
    end

    return itemProp;
end

function esWeaponInfo.getRangedWeaponInfo(ttData)
    local item = ttData.item;
    local player = esqlibPlayers.getPlayerObject(ttData.character);
    local v = esWeaponInfo.getRangedProperties(InventoryItemFactory.CreateItem(item:getFullType()), player);
    local o = esWeaponInfo.getRangedProperties(item, player);
    local a = esqlibPerks.getPerksData(player, "Aiming");
    local r = esqlibPerks.getPerksData(player, "Reloading");
    local equippedWeapon = player:getPrimaryHandItem();

    local eqo, eq;
    if (equippedWeapon ~= nil and equippedWeapon ~= item and equippedWeapon.getMaxDamage) then
        eq = esWeaponInfo.getRangedProperties(player:getPrimaryHandItem(), player);
        eqo = esWeaponInfo.getRangedProperties(InventoryItemFactory.CreateItem(player:getPrimaryHandItem():getFullType()), player);
    end

    local attach = false;
    local itemInfo, itemRow = {};

    itemRow = { o.name,"","    " };
    if (eq) then itemRow[4] = eq.name end;
    table.insert(itemInfo, itemRow);

    table.insert(itemInfo, { a.type, a.level .. "/10", "  ", esqlibNumbers.padding(a.percent, 2, 2) .. "%" });
    table.insert(itemInfo, { r.type, r.level .. "/10", "  ", esqlibNumbers.padding(r.percent, 2, 2) .. "%" });

    itemRow = {};
    if item:isRequiresEquippedBothHands() then
        itemRow[2] = "<I>" .. getText("UI_esqmi_one_hand");
    else
        itemRow[2] = getText("UI_esqmi_one_hand");
    end
    if eq and player:getPrimaryHandItem() then
        if player:getPrimaryHandItem():isRequiresEquippedBothHands() then
            itemRow[4] = "<I>" .. getText("UI_esqmi_one_hand");
        else
            itemRow[4] = getText("UI_esqmi_one_hand");
        end
    end
    table.insert(itemInfo, itemRow);

    itemRow = {};
    if item:isTwoHandWeapon() then
        itemRow[2] = getText("UI_esqmi_both_hands");
    else
        itemRow[2] = "<I>" .. getText("UI_esqmi_both_hands");
    end
    if eq and player:getPrimaryHandItem() then
        if player:getPrimaryHandItem():isTwoHandWeapon() then
            itemRow[4] = getText("UI_esqmi_both_hands");
        else
            itemRow[4] = "<I>" .. getText("UI_esqmi_both_hands");
        end
    end
    table.insert(itemInfo, itemRow);


    table.insert(itemInfo, { "" });
    itemRow = { getText("Tooltip_weapon_Damage"), o.maxDamage .. "/" .. v.maxDamage };
    if (eq) then
        if (o.maxDamage > eq.maxDamage) then
            itemRow[2] = "<G>" .. o.maxDamage .. "/" .. v.maxDamage;
            itemRow[4] = "<R>" .. eq.maxDamage .. "/".. eqo.maxDamage;
        elseif (o.maxDamage < eq.maxDamage) then
            itemRow[2] = "<R>" .. o.maxDamage .. "/" .. v.maxDamage;
            itemRow[4] = "<G>" .. eq.maxDamage .. "/".. eqo.maxDamage;
        else
            itemRow[4] = eq.maxDamage .. "/".. eqo.maxDamage;
        end
    end
    table.insert(itemInfo, itemRow);

    if (item:isEquipped()) then
        itemRow = { getText("Tooltip_item_Weight"), o.weight .. "(" .. o.aWeight .. ")" };
        if (eq and eq.weight > o.weight) then
            itemRow[2] = "<G>" .. o.weight .. "(" .. o.aWeight .. ")";
            itemRow[4] = "<R>" .. eq.weight .. "(" .. eq.aWeight .. ")";
        elseif (eq and eq.weight > o.weight) then
            itemRow[2] = "<R>" .. o.weight .. "(" .. o.aWeight .. ")";
            itemRow[4] = "<G>" .. eq.weight .. "(" .. eq.aWeight .. ")";
        elseif (eq) then
            itemRow[4] = eq.weight .. "(" .. eq.aWeight .. ")";
        end
    else
        itemRow = { getText("Tooltip_item_Weight"), o.aWeight .. "(" .. o.weight .. ")" };
        if (eq and eq.aWeight > o.aWeight) then
            itemRow[2] = "<G>" .. o.aWeight .. "(" .. o.weight .. ")";
            itemRow[4] = "<R>" .. eq.aWeight .. "(" .. eq.weight .. ")";
        elseif (eq and eq.aWeight < o.aWeight) then
            itemRow[2] = "<R>" .. o.aWeight .. "(" .. o.weight .. ")";
            itemRow[4] = "<G>" .. eq.aWeight .. "(" .. eq.weight .. ")";
        elseif (eq) then
            itemRow[4] = eq.aWeight .. "(" .. eq.weight .. ")";
        end
    end
    table.insert(itemInfo, itemRow);
    if (ttData.tooltip:getWeightOfStack() > 0) then
        table.insert(itemInfo, { getText("Tooltip_item_StackWeight"), esqlibNumbers.round(ttData.tooltip:getWeightOfStack(), 3) });
    end
    table.insert(itemInfo, { "" });

    itemRow = { o.ammoType }
    if (eq) then itemRow[4] = eq.ammoType end;
    table.insert(itemInfo, itemRow);

    if (o.fireMode) then
        itemRow = { getText("Tooltip_item_FireMode"), o.fireMode };
        if (eq) then
            itemRow[4] = tostring(eq.fireMode);
        end
        table.insert(itemInfo, itemRow);
    end

    if (o.magazine and not o.hasClip) then
        table.insert(itemInfo, { "<R>" .. getText("Tooltip_weapon_NoClip") });
    end
    if (o.jammed) then
        table.insert(itemInfo, { "<R>" .. getText("Tooltip_weapon_Jammed") });
    end
    if (o.needRack) then
        table.insert(itemInfo, { "<R>" .. getText("Tooltip_weapon_NoRoundChambered") });
    end

    if (o.magazine and o.hasClip) then
        itemRow = { o.magazine, o.ammoLoad };
    elseif (o.magazine) then
        itemRow = { "<R>" .. getText("ContextMenu_Empty"), o.ammoLoad };
    else
        itemRow = { getText("Tooltip_weapon_AmmoCount"), o.ammoLoad };
    end
    if (eq and eq.magazine and eq.hasClip) then
        itemRow[4] = eq.ammoLoad ;
    elseif (eq and eq.magazine) then
        itemRow[4] = "<R>" .. getText("ContextMenu_Empty");
    elseif (eq) then
        itemRow[4] = eq.ammoLoad;
    end
    table.insert(itemInfo, itemRow);

    itemRow = { getText("Tooltip_weapon_Ammo") .. " " .. getText("ContextMenu_MoveToInventory"), tostring(o.ammo) };
    if (eq) then
        itemRow[4] = tostring(eq.ammo);
    end
    table.insert(itemInfo, itemRow);
    table.insert(itemInfo, { "" });


    itemRow = { getText("Tooltip_weapon_Condition"), o.condition .. "/" .. v.condition };
    if (eq) then
        itemRow[4] = eq.condition .. "/" .. eqo.condition;
    end
    table.insert(itemInfo, itemRow);

    itemRow = { getText("UI_esqmi_Durability"), o.durability .. "/" .. v.durability };
    if (eq) then
        itemRow[4] = eq.durability .. "/" .. eqo.durability;
    end
    table.insert(itemInfo, itemRow);

    if (o.repaired > 0) then
        itemRow = { getText("Tooltip_weapon_Repaired"), o.repaired .. "x" };
    else
        itemRow = { getText("Tooltip_weapon_Repaired"), getText("Tooltip_never") };
    end
    if (eq and eq.repaired > 0) then
        itemRow[4] = eq.repaired .. "x";
    elseif (eq) then
        itemRow[4] = getText("Tooltip_never");
    end
    table.insert(itemInfo, itemRow);
    table.insert(itemInfo, { "" });

    if (o.scope or (eq and eq.scope)) then
        itemRow = { getText("Tooltip_weapon_Scope") .. ": " };
        if (eq and o.scope == nil) then
            itemRow[4] = "<G>" .. eq.scope;
        elseif (eq and eq.scope) then
            itemRow[4] = eq.scope;
        elseif (eq) then
            itemRow[4] = "<R>" .. getText("ContextMenu_Empty");
        end
        table.insert(itemInfo, itemRow);

        if (o.scope and eq and eq.scope == nil) then
            table.insert(itemInfo, { "<G>    " .. o.scope });
        elseif (o.scope) then
            table.insert(itemInfo, { "    " .. o.scope });
        else
            table.insert(itemInfo, { "<R>    " .. getText("ContextMenu_Empty") });
        end
        attach = true;
    end

    if (o.clip or (eq and eq.clip)) then
        itemRow = { getText("Tooltip_weapon_Clip") .. ": " };
        if (eq and o.clip == nil) then
            itemRow[4] = "<G>" .. eq.clip;
        elseif (eq and eq.clip) then
            itemRow[4] = eq.clip;
        elseif (eq) then
            itemRow[4] = "<R>" .. getText("ContextMenu_Empty");
        end
        table.insert(itemInfo, itemRow);

        if (o.clip and eq and eq.clip == nil) then
            table.insert(itemInfo, { "<G>    " .. o.clip });
        elseif (o.clip) then
            table.insert(itemInfo, { "    " .. o.clip });
        else
            table.insert(itemInfo, { "<R>    " .. getText("ContextMenu_Empty") });
        end
        attach = true;
    end

    if (o.sling or (eq and eq.sling)) then
        itemRow = { getText("Tooltip_weapon_Sling") .. ": " };
        if (eq and o.sling == nil) then
            itemRow[4] = "<G>" .. eq.sling;
        elseif (eq and eq.sling) then
            itemRow[4] = eq.sling;
        elseif (eq) then
            itemRow[4] = "<R>" .. getText("ContextMenu_Empty");
        end
        table.insert(itemInfo, itemRow);

        if (o.sling and eq and eq.sling == nil) then
            table.insert(itemInfo, { "<G>    " .. o.sling });
        elseif (o.sling) then
            table.insert(itemInfo, { "    " .. o.sling });
        else
            table.insert(itemInfo, { "<R>    " .. getText("ContextMenu_Empty") });
        end
        attach = true;
    end

    if (o.cannon or (eq and eq.cannon)) then
        itemRow = { getText("Tooltip_weapon_Canon") .. ": " };
        if (eq and o.cannon == nil) then
            itemRow[4] = "<G>" .. eq.cannon;
        elseif (eq and eq.cannon) then
            itemRow[4] = eq.cannon;
        elseif (eq) then
            itemRow[4] = "<R>" .. getText("ContextMenu_Empty");
        end
        table.insert(itemInfo, itemRow);

        if (o.cannon and eq and eq.cannon == nil) then
            table.insert(itemInfo, { "<G>    " .. o.cannon });
        elseif (o.cannon) then
            table.insert(itemInfo, { "    " .. o.cannon });
        else
            table.insert(itemInfo, { "<R>    " .. getText("ContextMenu_Empty") });
        end
        attach = true;
    end

    if (o.stock or (eq and eq.stock)) then
        itemRow = { getText("Tooltip_weapon_Stock") .. ": " };
        if (eq and o.stock == nil) then
            itemRow[4] = "<G>" .. eq.stock;
        elseif (eq and eq.stock) then
            itemRow[4] = eq.stock;
        elseif (eq) then
            itemRow[4] = "<R>" .. getText("ContextMenu_Empty");
        end
        table.insert(itemInfo, itemRow);

        if (o.stock and eq and eq.stock == nil) then
            table.insert(itemInfo, { "<G>    " .. o.stock });
        elseif (o.stock) then
            table.insert(itemInfo, { "    " .. o.stock });
        else
            table.insert(itemInfo, { "<R>    " .. getText("ContextMenu_Empty") });
        end
        attach = true;
    end

    if (o.recoilpad or (eq and eq.recoilpad)) then
        itemRow = { getText("Tooltip_weapon_RecoilPad") .. ": " };
        if (eq and o.recoilpad == nil) then
            itemRow[4] = "<G>" .. eq.recoilpad;
        elseif (eq and eq.recoilpad) then
            itemRow[4] = eq.recoilpad;
        elseif (eq) then
            itemRow[4] = "<R>" .. getText("ContextMenu_Empty");
        end
        table.insert(itemInfo, itemRow);

        if (o.recoilpad and eq and eq.recoilpad == nil) then
            table.insert(itemInfo, { "<G>    " .. o.recoilpad });
        elseif (o.recoilpad) then
            table.insert(itemInfo, { "    " .. o.recoilpad });
        else
            table.insert(itemInfo, { "<R>    " .. getText("ContextMenu_Empty") });
        end
        attach = true;
    end
    if (attach) then table.insert(itemInfo, { "" }); end

    itemRow = { getText("UI_esqmi_Accuracy"), o.accuracy .. "/" .. v.accuracy };
    if (eq) then
        if (o.accuracy > eq.accuracy) then
            itemRow[2] = "<G>" .. o.accuracy .. "/" .. v.accuracy;
            itemRow[4] = "<R>" .. eq.accuracy .. "/".. eqo.accuracy;
        elseif (o.accuracy < eq.accuracy) then
            itemRow[2] = "<R>" .. o.accuracy .. "/" .. v.accuracy;
            itemRow[4] = "<G>" .. eq.accuracy .. "/".. eqo.accuracy;
        else
            itemRow[4] = eq.accuracy .. "/".. eqo.accuracy;
        end
    end
    table.insert(itemInfo, itemRow);

    itemRow = { getText("UI_esqmi_AimingSpeed"), o.aiming .. "/" .. v.aiming };
    if (eq) then
        if (o.aiming > eq.aiming) then
            itemRow[2] = "<G>" .. o.aiming .. "/" .. v.aiming;
            itemRow[4] = "<R>" .. eq.aiming .. "/".. eqo.aiming;
        elseif (o.aiming < eq.aiming) then
            itemRow[2] = "<R>" .. o.aiming .. "/" .. v.aiming;
            itemRow[4] = "<G>" .. eq.aiming .. "/".. eqo.aiming;
        else
            itemRow[4] = eq.aiming .. "/".. eqo.aiming;
        end
    end
    table.insert(itemInfo, itemRow);

    itemRow = { getText("UI_esqmi_MaxRange"), o.range .. "/" .. v.range };
    if (eq) then
        if (o.range > eq.range) then
            itemRow[2] = "<G>" .. o.range .. "/" .. v.range;
            itemRow[4] = "<R>" .. eq.range .. "/".. eqo.range;
        elseif (o.range < eq.range) then
            itemRow[2] = "<R>" .. o.range .. "/" .. v.range;
            itemRow[4] = "<G>" .. eq.range .. "/".. eqo.range;
        else
            itemRow[4] = eq.range .. "/".. eqo.range;
        end
    end
    table.insert(itemInfo, itemRow);

    table.insert(itemInfo, { "" });
    itemRow = { getText("UI_esqmi_MinRange"), o.rangeMin .. "/" .. v.rangeMin };
    if (eq) then
        if (o.rangeMin > eq.rangeMin) then
            itemRow[2] = "<R>" .. o.rangeMin .. "/" .. v.rangeMin;
            itemRow[4] = "<G>" .. eq.rangeMin .. "/".. eqo.rangeMin;
        elseif (o.rangeMin < eq.rangeMin) then
            itemRow[2] = "<G>" .. o.rangeMin .. "/" .. v.rangeMin;
            itemRow[4] = "<R>" .. eq.rangeMin .. "/".. eqo.rangeMin;
        else
            itemRow[4] = eq.rangeMin .. "/".. eqo.rangeMin;
        end
    end
    table.insert(itemInfo, itemRow);

    itemRow = { getText("UI_esqmi_Sound"), o.sound .. "/" .. v.sound };
    if (eq) then
        if (o.sound > eq.sound) then
            itemRow[2] = "<R>" .. o.sound .. "/" .. v.sound;
            itemRow[4] = "<G>" .. eq.sound .. "/".. eqo.sound;
        elseif (o.sound < eq.sound) then
            itemRow[2] = "<G>" .. o.sound .. "/" .. v.sound;
            itemRow[4] = "<R>" .. eq.sound .. "/".. eqo.sound;
        else
            itemRow[4] = eq.sound .. "/".. eqo.sound;
        end
    end
    table.insert(itemInfo, itemRow);

    itemRow = { getText("Tooltip_item_Weight"), o.aWeight .. "/" .. v.aWeight };
    if (eq) then
        if (o.aWeight > eq.aWeight) then
            itemRow[2] = "<R>" .. o.aWeight .. "/" .. v.aWeight;
            itemRow[4] = "<G>" .. eq.aWeight .. "/".. eqo.aWeight;
        elseif (o.aWeight < eq.aWeight) then
            itemRow[2] = "<G>" .. o.aWeight .. "/" .. v.aWeight;
            itemRow[4] = "<R>" .. eq.aWeight .. "/".. eqo.aWeight;
        else
            itemRow[4] = eq.aWeight .. "/".. eqo.aWeight;
        end
    end
    table.insert(itemInfo, itemRow);

    itemRow = { getText("UI_esqmi_Recoil"), o.recoil .. "/" .. v.recoil };
    if (eq) then
        if (o.recoil > eq.recoil) then
            itemRow[2] = "<R>" .. o.recoil .. "/" .. v.recoil;
            itemRow[4] = "<G>" .. eq.recoil .. "/".. eqo.recoil;
        elseif (o.recoil < eq.recoil) then
            itemRow[2] = "<G>" .. o.recoil .. "/" .. v.recoil;
            itemRow[4] = "<R>" .. eq.recoil .. "/".. eqo.recoil;
        else
            itemRow[4] = eq.recoil .. "/".. eqo.recoil;
        end
    end
    table.insert(itemInfo, itemRow);

    itemRow = { getText("UI_esqmi_ReloadSpeed"), o.reload .. "/" .. v.reload };
    if (eq) then
        if (o.reload > eq.reload) then
            itemRow[2] = "<R>" .. o.reload .. "/" .. v.reload;
            itemRow[4] = "<G>" .. eq.reload .. "/".. eqo.reload;
        elseif (o.reload < eq.reload) then
            itemRow[2] = "<G>" .. o.reload .. "/" .. v.reload;
            itemRow[4] = "<R>" .. eq.reload .. "/".. eqo.reload;
        else
            itemRow[4] = eq.reload .. "/".. eqo.reload;
        end
    end
    table.insert(itemInfo, itemRow);

    return itemInfo;
end

function esWeaponInfo.getRangedProperties(item, player)
    local itemProp = {};
    itemProp.name = item:getDisplayName();
    itemProp.hasClip = item.isContainsClip and item:isContainsClip();
    if (item:getMagazineType() ~= nil) then
        itemProp.magazine = getScriptManager():FindItem(item:getMagazineType()):getDisplayName();
    end

    if item:getFireModePossibilities() and item:getFireModePossibilities():size() > 1 and item:getFireMode() then
        itemProp.fireMode = getText("ContextMenu_FireMode_" .. item:getFireMode());
    end

    itemProp.ammoLoad = item:getCurrentAmmoCount();
    if (item:isRoundChambered()) then
        itemProp.ammoLoad = itemProp.ammoLoad .. " +1";
    elseif (item:haveChamber()) then
        itemProp.ammoLoad = itemProp.ammoLoad .. " +0";
    end
    itemProp.ammoLoad = itemProp.ammoLoad .. "/" .. item:getMaxAmmo();

    if (item.getAmmoType and item:getAmmoType()) then
        itemProp.ammoType = getScriptManager():FindItem(item:getAmmoType()):getDisplayName();
        itemProp.ammo = player:getInventory():getCountTypeRecurse(item:getAmmoType());
    end

    if (item.getScope and item:getScope()) then
        itemProp.scope = item:getScope():getDisplayName();
    end
    if (item.getClip and item:getClip()) then
        itemProp.clip = item:getClip():getDisplayName();
    end
    if (item.getSling and item:getSling()) then
        itemProp.sling = item:getSling():getDisplayName();
    end
    if (item.getCanon and item:getCanon()) then
        itemProp.cannon = item:getCanon():getDisplayName();
    end
    if (item.getStock and item:getStock()) then
        itemProp.stock = item:getStock():getDisplayName();
    end
    if (item.getRecoilpad and item:getRecoilpad()) then
        itemProp.recoilpad = item:getRecoilpad():getDisplayName();
    end

    itemProp.sound = esqlibNumbers.round(item:getSoundRadius(), 2);
    itemProp.recoil = esqlibNumbers.round(item:getRecoilDelay(), 2);
    itemProp.reload = esqlibNumbers.round(item:getReloadTime(), 2);
    itemProp.range = esqlibNumbers.round(item:getMaxRange(), 2);
    itemProp.rangeMin = esqlibNumbers.round(item:getMinRange(), 2);
    itemProp.condition = esqlibNumbers.round(item:getCondition(), 2);
    itemProp.aiming = esqlibNumbers.round(item:getAimingTime(), 2);
    itemProp.accuracy = esqlibNumbers.round(item:getHitChance(), 2);
    itemProp.durability = item:getConditionLowerChance();
    itemProp.maxDamage = esqlibNumbers.round(item:getMaxDamage(), 2);
    itemProp.weight = esqlibNumbers.round((item.getEquippedWeight and item:getEquippedWeight() or 0),2);
    itemProp.aWeight = esqlibNumbers.round((item.getActualWeight and item:getActualWeight() or 0),2);
    itemProp.repaired = item:getHaveBeenRepaired() - 1;
    itemProp.jammed = item:isJammed();
    itemProp.needRack = item:haveChamber() and not item:isRoundChambered() and item:getCurrentAmmoCount() > 0;

    return itemProp;
end

function esWeaponInfo.getTrimMountOnGuns(AllGuns, player)
    local foundGuns = getScriptManager():FindItem(AllGuns:get(0)):getDisplayName();
    if player:getInventory():getCountTypeRecurse(AllGuns:get(0)) > 0 then
        foundGuns = "<B>" .. foundGuns;
    else
        foundGuns = "<A>" .. foundGuns;
    end

    if (AllGuns:size() > 1) then
        for i = 1, AllGuns:size() - 1 do
            local gun = AllGuns:get(i);
            if player:getInventory():getCountTypeRecurse(gun) > 0 then
                foundGuns = "<B>" .. getScriptManager():FindItem(gun):getDisplayName() .. "," .. foundGuns;
            else
                foundGuns = foundGuns .. ",<A>" .. getScriptManager():FindItem(gun):getDisplayName();
            end
        end
    end

    return esqlibUtils.split(foundGuns, ",");
end

function esWeaponInfo.getMountOnGuns(partsInfo, selectItem, player)
    table.insert(partsInfo, { getText("Tooltip_weapon_CanBeMountOn") });
    table.insert(partsInfo, { "", "", "", "" });

    local mountedGuns = esWeaponInfo.getTrimMountOnGuns(selectItem:getMountOn(), player);
    local gunLimit = #mountedGuns;
    if (gunLimit > 60) then gunLimit = 60 end;

    local indx = 0;
    while (indx <= gunLimit) do
        local gun1, gun2, gun3;
        if (mountedGuns[indx + 1]) then
            gun1 = mountedGuns[indx + 1]
        end
        if (mountedGuns[indx + 2]) then
            gun2 = mountedGuns[indx + 2]
        end
        if (mountedGuns[indx + 3]) then
            gun3 = mountedGuns[indx + 3]
        end

        if (gun1 ~= nil and gun2 ~= nil and gun3 ~= nil) then
            table.insert(partsInfo, { "", gun1 .. "   ", gun2 .. "   ", gun3 });
        elseif (gun1 ~= nil and gun2 ~= nil) then
            table.insert(partsInfo, { "", gun1 .. "   ", gun2, "" });
        elseif (gun1 ~= nil) then
            table.insert(partsInfo, { "", gun1, "", "" });
        end

        indx = indx + 3;
    end
end

function esWeaponInfo.getPartsInfo(ttData)
    local selectItem = ttData.item;
    local description = getText(selectItem:getTooltip() or "");
    local partsInfo = {};

    table.insert(partsInfo, { "", selectItem:getDisplayName() });
    table.insert(partsInfo, { "", getText("Tooltip_item_Weight"), tostring(esqlibNumbers.round(selectItem:getActualWeight(), 2)) });
    if (ttData.tooltip:getWeightOfStack() > 0) then
        table.insert(partsInfo, { "", getText("Tooltip_item_StackWeight"), esqlibNumbers.round(ttData.tooltip:getWeightOfStack(), 3) });
    end
    table.insert(partsInfo, { "", getText("Tooltip_weapon_Type"), tostring(selectItem:getPartType()) });
    table.insert(partsInfo, { "" });
    table.insert(partsInfo, { description });

    local breaks = esqlibUtils.split(description, "\n");

    if (#breaks > 1) then
        for i = 2, #breaks do
            table.insert(partsInfo, { "" });
        end
    end

    esWeaponInfo.getMountOnGuns(partsInfo, selectItem, esqlibPlayers.getPlayerObject(ttData.character));
    return partsInfo;
end

local baseInvTooltipRender = ISToolTipInv.render;
function ISToolTipInv:render()
    if (esqlibSettings.getSetting("esQMI", "esQMIWeapons") > 1 or esqlibSettings.getSetting("esQMI", "esQMIWeaponsParts") > 1)
            and (self.item:IsWeapon() or (tostring(self.item:getCategory()) == 'WeaponPart'))
            and (not ISContextMenu.instance or not ISContextMenu.instance.visibleCheck) then

        local cardinal = esqlibSettings.getCardinal("esQMI", "esQMIWeapons");
        local weaponData;
        local matrix = { "R", "L", "R", "R" };

        if esqlibSettings.getSetting("esQMI", "esQMIWeapons") > 1 and self.item.isRanged and self.item:isRanged() then
            weaponData = esWeaponInfo.getRangedWeaponInfo(self);
        elseif esqlibSettings.getSetting("esQMI", "esQMIWeapons") > 1 and self.item:IsWeapon() then
            weaponData = esWeaponInfo.getMeleeWeaponInfo(self);
        elseif esqlibSettings.getSetting("esQMI", "esQMIWeaponsParts") > 1 and not self.item:IsWeapon() then
            weaponData = esWeaponInfo.getPartsInfo(self);
            cardinal = esqlibSettings.getCardinal("esQMI", "esQMIWeaponsParts");
            matrix = { "R", "R", "R", "R" };
        end

        if not weaponData then return baseInvTooltipRender(self) end;

        esqlibTooltips.init(self, weaponData, { cardinal = cardinal, matrix = matrix });
        esqlibTooltips.drawToolTip();

        if (cardinal == "O") then return end;
    end

    baseInvTooltipRender(self);
end
