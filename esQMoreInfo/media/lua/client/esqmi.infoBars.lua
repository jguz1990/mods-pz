local esqmiInfoBar = require("esqmi.flobar");
local esqlibSettings = require("esqlib.settings");
local esAmmoCheckMain = require("esqmi.ammo.main")
local activeBars = {};

local barPlayer = { "Prime", "Second", "Wounds", "Foods", "Winds", "Sleeps", "Stress", "Weather" }

local function showBar(barInstance)
    barInstance:initialise();
    barInstance:addToUIManager();
    barInstance:bringToTop();
end

local function hideBar(barInstance)
    barInstance:setVisible(false);
    barInstance:removeFromUIManager();
end

local function getBarSettings(player, barID, setting)
    local bar = "esFloBar_" .. barID;
    if not player then return false end;
    if not player:getModData()[bar] then return false end;
    return player:getModData()[bar][setting] or false;
end

local function getItemData(item)
    if item then
        if item:IsWeapon() and item:isRanged() then
            return { type = "gun", item = item, extra = esAmmoCheckMain.getAmmoBag(item) };
        end
        if item:IsWeapon() and not item:isRanged() then
            return { type = "melee", item = item };
        end
        if item:IsDrainable() and item:getUseDelta() > 0 then
            return { type = "drain", item = item };
        end
        return { type = "item", item = item };
    end
    return {};
end

local function aimEnter(prime, second)
    if prime then
        if activeBars.Prime == nil then
            activeBars.Prime = esqmiInfoBar:new(getPlayer(), "Prime");
            showBar(activeBars.Prime);
            activeBars.Prime:dataUpdate(getItemData(getPlayer():getPrimaryHandItem()));
        end
        if activeBars.Prime then
            activeBars.Prime:dataUpdate(getItemData(prime));
        end
    end

    if second and activeBars.Second then
        activeBars.Second:dataUpdate(getItemData(second));
    end
end

local function aimExit(prime, second)
    if prime then
        local autoHide = getBarSettings(getPlayer(), "Prime", "auto");
        if activeBars.Prime and autoHide then
            hideBar(activeBars.Prime);
            activeBars.Prime = nil;
        end
        if activeBars.Prime then
            activeBars.Prime:dataUpdate(getItemData(prime));
        end
    end

    if second and activeBars.Second then
        activeBars.Second:dataUpdate(getItemData(second));
    end
end

local function showInfoBar()
    if esqlibSettings.getSetting("esQMI", "esQMIInfoBar") > 1 and getPlayer() then
        local playerObj = getPlayer();
        for _,k in pairs(barPlayer) do
            local barHidden = getBarSettings(playerObj, k, "hide");
            local barAuto = getBarSettings(playerObj, k, "auto");
            if activeBars[k] == nil and not barHidden and not barAuto then
                activeBars[k] = esqmiInfoBar:new(playerObj, k);
                showBar(activeBars[k]);
                if k == "Prime" then
                    activeBars[k]:dataUpdate(getItemData(playerObj:getPrimaryHandItem()));
                elseif k == "Second" then
                    activeBars[k]:dataUpdate(getItemData(playerObj:getSecondaryHandItem()));
                end

            elseif activeBars[k] ~= nil and barHidden then
                hideBar(activeBars[k]);
                activeBars[k] = nil;
            end
        end
    else
        for k,_ in pairs(activeBars) do
            hideBar(activeBars[k]);
            activeBars[k] = nil;
        end
    end
end

local function PrimeOnEquip(player, item)
    if activeBars.Prime then
        activeBars.Prime:dataUpdate(getItemData(item));
    end
end

local function SecondOnEquip(player, item)
    if activeBars.Second then
        activeBars.Second:dataUpdate(getItemData(item));
    end
end

Events.OnEquipPrimary.Add(PrimeOnEquip);
Events.OnEquipSecondary.Add(SecondOnEquip);

Events.OnRenderTick.Add(showInfoBar)
Events.esOnAimEnter.Add(aimEnter);
Events.esOnAimExit.Add(aimExit);
