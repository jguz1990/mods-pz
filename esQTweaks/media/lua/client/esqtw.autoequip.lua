local esqlibSettings = require("esqlib.settings");
local lastWeapon;

local function esAEonHit(zombie, player, bodyPart, weapon)
    if esqlibSettings.getSetting("esQTW", "esQTWAutoEquip") > 1 then
        lastWeapon = weapon;
    end
end

local function esAEisSameWeaponType(source, target)
    local sourceCat = source:getCategories();
    local targetCat = target:getCategories();

    if (sourceCat:contains("Axe") and targetCat:contains("Axe") ) then return true; end
    if (sourceCat:contains("Spear") and targetCat:contains("Spear") ) then return true; end
    if (sourceCat:contains("SmallBlunt") and targetCat:contains("SmallBlunt") ) then return true; end
    if (sourceCat:contains("Blunt") and targetCat:contains("Blunt") ) then return true; end
    if (sourceCat:contains("SmallBlade") and targetCat:contains("SmallBlade") ) then return true; end
    if (sourceCat:contains("LongBlade") and targetCat:contains("LongBlade") ) then return true; end

    return false;
end

local function esAEonAttackEnd(player, weapon)
    if esqlibSettings.getSetting("esQTW", "esQTWAutoEquip") > 1
            and lastWeapon ~= nil
            and lastWeapon:getCondition() == 0 then

        local allItems = player:getInventory():getItems();
        local worstWeapon;

        for i = 0, allItems:size() - 1 do
            local item = allItems:get(i);

            if (item:IsWeapon() and esAEisSameWeaponType(lastWeapon, item) and item:getCondition() > 0) then
                if (worstWeapon == nil) then worstWeapon = item end
                if (item:getCondition() < worstWeapon:getCondition()) then
                    worstWeapon = item;
                end
            end

        end

        if (worstWeapon ~= nil and worstWeapon:getCondition() > 0) then
            ISTimedActionQueue.add(ISEquipWeaponAction:new(player, worstWeapon, 5, true, worstWeapon:isTwoHandWeapon()));
        end
    end

end

local function esAEonDropBroken(player, weapon)
    if esqlibSettings.getSetting("esQTW", "esQTWAutoEquip") > 2
            and lastWeapon ~= nil
            and lastWeapon:getCondition() == 0 then
        lastWeapon:setFavorite(false);
        ISTimedActionQueue.add(ISDropItemAction:new(player, lastWeapon, 1));
    end
end

Events.OnHitZombie.Add(esAEonHit);
Events.OnPlayerAttackFinished.Add(esAEonAttackEnd);
Events.OnPlayerAttackFinished.Add(esAEonDropBroken);