local esLastGoodXYZ = {};
local esqlibSettings = require("esqlib.settings");
local esqlibTooltips = require("esqlib.tooltips");

local esqlibNumbers = require("esqlib.numbers");
local esqlibPlayers = require("esqlib.players");
local esqlibAnimate = require("esqlib.animate");
local esqlibItems = require("esqlib.items");

local function canTravel(player)
    if player:getStats():getNumChasingZombies() > 0 then
        return false,getText("UI_esqtw_fastTravel_errZombies", player:getStats():getNumChasingZombies());
    end
    if (player:isRunning() or player:isSprinting() and player:isJustMoved()) then
        return false,getText("UI_esqtw_fastTravel_errRunning");
    end
    if player:getVehicle() then
        return false,getText("UI_esqtw_fastTravel_errCar");
    end

    return true;
end

local function getCampfireFromWO(worldobjects)
    for i,v in ipairs(worldobjects) do
        if (instanceof(v, "IsoObject") and v:getName() == "Campfire") then
            return v;
        end
    end
end

local function playerMoveTo(campfireStone, player, hours)
    if (not canTravel(player)) then return end;
    if UIManager.getSpeedControls():getCurrentGameSpeed() == 0 then return end;
    local map = campfireStone:getModData();
    map.hours = map.hours - hours;
    if map.hours < 1 then
        campfireStone:getContainer():Remove(campfireStone);
    end
    esLastGoodXYZ.x = map.mapX;
    esLastGoodXYZ.y = map.mapY;
    esLastGoodXYZ.z = map.mapZ;

    player:setX(map.mapX);
    player:setY(map.mapY);
    player:setZ(map.mapZ);
    player:setLx(map.mapX);
    player:setLy(map.mapY);
    player:setLz(map.mapZ);
end

local function renameThisClick(self, button, player, item)
    local playerNum = player:getPlayerNum();
    if button.internal == "OK" then
        if button.parent.entry:getText() and button.parent.entry:getText() ~= "" then
            item:setName(button.parent.entry:getText());
            local pdata = getPlayerData(playerNum);
            pdata.playerInventory:refreshBackpacks();
            pdata.lootInventory:refreshBackpacks();
        end
    end
    if JoypadState.players[playerNum+1] then
        setJoypadFocus(playerNum, getPlayerInventory(playerNum));
    end
end

local function renameThis(selectedItem, player)
    local playerNum = player:getPlayerNum();
    local modal = ISTextBox:new(0, 0, 280, 180, getText("ContextMenu_NameThisBag"), selectedItem:getName(), nil,
            renameThisClick, playerNum, player, selectedItem);
    modal:initialise();
    modal:addToUIManager();
    if JoypadState.players[playerNum+1] then
        setJoypadFocus(playerNum, modal);
    end
end

local function getDistanceBetween(x1, y1, x2, y2)
    local distance = IsoUtils.DistanceTo2D(x1, y1, x2, y2);
    distance = esqlibNumbers.round(distance / 60);
    if distance < 1 then distance = 1 end;

    return distance
end

local function onCampfireStoneClick(player, context, items)
    if esqlibSettings.getSetting("esQTW", "esQTWFastTravel") > 1 then
        local stackItems = esqlibItems.getStackFromSelection(items);
        local selectedItem = stackItems:get(0);

        if selectedItem:getFullType() == "esQoL.campfireStone" and selectedItem:getModData()["hours"] then
            local playerOBJ = getSpecificPlayer(player);
            local map = selectedItem:getModData();
            local distance = getDistanceBetween(playerOBJ:getX(), playerOBJ:getY(), map.mapX, map.mapY);
            local fastTravelMM = context:getNew(context);
            local cont = fastTravelMM:addOption(getText("UI_esqtw_fastTravel_useStone", distance, map.hours), selectedItem, playerMoveTo, playerOBJ, distance)
            local cf;
            if (map.fireX and map.fireY and map.fireZ) then
                cf = CCampfireSystem.instance:getLuaObjectAt(map.fireX, map.fireY, map.fireZ)
            end

            local toolTip = ISToolTip:new();
            toolTip:initialise();
            toolTip.texture = selectedItem:getTex();
            toolTip:setName(getText("UI_esqtw_fastTravel_tt"));
            local canTravel, reason = canTravel(playerOBJ);
            if map.hours < distance then
                cont.notAvailable = true
                toolTip.description = getText("UI_esqtw_fastTravel_errDistance");
                cont.toolTip = toolTip;
            elseif not canTravel then
                cont.notAvailable = true
                toolTip.description = reason;
                cont.toolTip = toolTip;
            elseif not cf and map.fireX and map.fireY and map.fireZ then
                cont.notAvailable = true
                toolTip.description = getText("UI_esqtw_fastTravel_errCampFire");
                cont.toolTip = toolTip;
            end;

            -- rename stone:
            fastTravelMM:addOption(getText("ContextMenu_NameThisBag"), selectedItem, renameThis, playerOBJ);

            if (#fastTravelMM.options > 0) then
                context:addSubMenu(context:addOption(getText("UI_esqtw_fastTravel") .. ":"), fastTravelMM);
            end
        end
    end

    return context;
end

Events.OnFillInventoryObjectContextMenu.Add(onCampfireStoneClick);

function esqlibAnimate:doPerform()
    local stone = InventoryItemFactory.CreateItem("esQoL.campfireStone");
    local hours = esqlibNumbers.round(self.extra:getModData()["fuelAmt"] / 60)
    if (hours * 60) > self.extra:getModData()["fuelAmt"] then
        hours = hours - 1;
    end
    stone:setName("CampfireStone (" .. hours .." hours)");
    stone:getModData()["hours"] = hours;
    stone:getModData()["mapX"] = self.character:getX();
    stone:getModData()["mapY"] = self.character:getY();
    stone:getModData()["mapZ"] = self.character:getZ();
    stone:getModData()["fireX"] = self.extra:getX();
    stone:getModData()["fireY"] = self.extra:getY();
    stone:getModData()["fireZ"] = self.extra:getZ();
    self.character:getInventory():AddItem(stone);
    local newFuel = self.extra:getModData()["fuelAmt"] - (hours * 60);
    CCampfireSystem.instance:sendCommand(self.character, 'setFuel', {
        x = self.extra:getX(),
        y = self.extra:getY(),
        z = self.extra:getZ(),
        fuelAmt = newFuel,
    });
end

local function makeHearthStone(cf, player)
    if luautils.walkAdj(player, cf:getSquare()) then
        local animate = esqlibAnimate:new(player, nil, 60);
        animate:setExtra(cf);
        ISTimedActionQueue.add(animate);
    end
end

local function rClickCampfire(player, context, worldObjects)
    if esqlibSettings.getSetting("esQTW", "esQTWFastTravel") > 1 then
        local cf = getCampfireFromWO(worldObjects);
        if cf then
            local fuel = cf:getModData()["fuelAmt"];
            if fuel and fuel >= 60 then
                local hours = esqlibNumbers.round(fuel / 60);
                local fastTravelMM = context:getNew(context);
                fastTravelMM:addOption(getText("UI_esqtw_fastTravel_makeStone", hours), cf, makeHearthStone, getSpecificPlayer(player));
                context:addSubMenu(context:addOption(getText("UI_esqtw_fastTravel") .. ":"), fastTravelMM);
            end
        end
    end

    return context;
end

Events.OnFillWorldObjectContextMenu.Add(rClickCampfire)

local function getCampfireStoneData(ttData)
    local player = esqlibPlayers.getPlayerObject(ttData.character);
    local returnData = {};
    local stoneData = ttData.item:getModData();
    local distance = getDistanceBetween(player:getX(), player:getY(), stoneData["mapX"], stoneData["mapY"]);

    table.insert(returnData, { ttData.item:getDisplayName() });
    table.insert(returnData, { "", "<TAB>" });
    table.insert(returnData, { getText("Tooltip_item_Weight"), "", esqlibNumbers.round(ttData.item:getWeight(), 2) });
    table.insert(returnData, { getText("UI_esqtw_fastTravel_infoDistance"), "", distance .. " " .. getText("IGUI_Gametime_hour") });
    table.insert(returnData, { getText("UI_esqtw_fastTravel_infoFuel"), "", stoneData["hours"] .. " " .. getText("IGUI_Gametime_hour") });

    return returnData;
end

local baseInvTooltipRender = ISToolTipInv.render;
function ISToolTipInv:render()
    if esqlibSettings.getSetting("esQTW", "esQTWFastTravel") > 1
            and self.item:getFullType() == "esQoL.campfireStone"
            and (not ISContextMenu.instance or not ISContextMenu.instance.visibleCheck) then

        esqlibTooltips.init(self, getCampfireStoneData(self), { cardinal = "O", matrix = { "R", "R", "R" }, });
        esqlibTooltips.drawToolTip();

        return;
    end

    baseInvTooltipRender(self);
end

local function oow(player)
    if esqlibSettings.getSetting("esQTW", "esQTWFastTravel") > 1 then
        if player:getCurrentSquare() then return end;
        if esLastGoodXYZ.x and esLastGoodXYZ.y and esLastGoodXYZ.z then
            player:setX(esLastGoodXYZ.x);
            player:setY(esLastGoodXYZ.y);
            player:setZ(esLastGoodXYZ.z);
            player:setLx(esLastGoodXYZ.x);
            player:setLy(esLastGoodXYZ.y);
            player:setLz(esLastGoodXYZ.z);
        end
    end;
end

Events.OnPlayerUpdate.Add(oow);