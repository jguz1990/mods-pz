local esqlibSettings = require("esqlib.settings");
local esqlibItems = require("esqlib.items");
local esqlibNumbers = require("esqlib.numbers");

local maxPlayerCalories = 3700;

local function dieterGetFoodBites(player, food)
    local playerCalories = esqlibNumbers.round(player:getNutrition():getCalories());
    local playerHunger = esqlibNumbers.round(player:getStats():getHunger() * 100);
    local foodCalories = esqlibNumbers.round(food:getCalories());
    local foodHunger = esqlibNumbers.round(food:getHungerChange() * 100);
    local oneBite = esqlibNumbers.round((food:getBaseHunger() / 4) * 100);
    local totalBites = esqlibNumbers.round(foodHunger / oneBite);

    local eat = {};
    local percentage = { 1, 2, 3, 4 };

    if playerHunger < math.abs(foodHunger) then
        local toMax = math.abs(playerHunger / food:getBaseHunger()) / 100;
        local calories = esqlibNumbers.round(playerCalories + (foodCalories * toMax));
        if calories > maxPlayerCalories then calories = maxPlayerCalories end;

        local hunger = playerHunger + esqlibNumbers.round(foodHunger * toMax);
        if hunger < 0 then hunger = 0 end;
        eat[" %" .. esqlibNumbers.round(toMax * 100) .. " "] = { toMax, calories, hunger, true }
    end

    for _,v in pairs(percentage) do
        local dec = v/4;

        local calories = esqlibNumbers.round(playerCalories + (foodCalories * dec));
        if calories > maxPlayerCalories then calories = maxPlayerCalories end;

        local hunger = playerHunger + esqlibNumbers.round(foodHunger * dec);
        if hunger < 0 then hunger = 0 end;

        local canBite = hunger >= 1 or calories <= maxPlayerCalories - 100;
        if canBite then canBite = totalBites > (v - 1) end;

        eat[" %" .. esqlibNumbers.round(dec * 100) .. " "] = { dec, calories, hunger, canBite }
    end
    return eat;
end

local function dieterEat(player, selectedItem, percentage)
    ISInventoryPaneContextMenu.transferIfNeeded(player, selectedItem);
    ISTimedActionQueue.add(ISEatFoodAction:new(player, selectedItem, percentage));
end

local function doInventoryMenuAdd(player, context, items)
    if esqlibSettings.getSetting("esQTW", "esQTWDieter") > 1 then
        local selectedItem = esqlibItems.getStackFromSelection(items):get(0);

        if selectedItem and selectedItem.getBaseHunger and selectedItem:getBaseHunger() < 0 then

            local char = getSpecificPlayer(player);
            local bites = dieterGetFoodBites(char, selectedItem);
            local eatMenu = context:getNew(context);
            local consumeAction = selectedItem:getCustomMenuOption() or getText("ContextMenu_Eat") .. " ";
            for k, v in pairs(bites) do
                local recipeName = consumeAction .. k  .. selectedItem:getDisplayName() .. " " .. getText("Tooltip_food_Hunger") .. ": (" .. v[3] .. ") " .. getText("Tooltip_food_Calories") .. ": (" .. v[2] .. ")";
                local m = eatMenu:addOption(recipeName, char, dieterEat, selectedItem, v[1]);
                m.notAvailable = not v[4];
                if v[4] then
                    ISInventoryPaneContextMenu.addEatTooltip(m, { selectedItem }, v[1])
                end
            end

            if (#eatMenu.options > 0) then
                context:addSubMenu(context:addOption(getText("UI_esqtw_dieter") .. ":"), eatMenu);
            end
        end
    end

    return context;
end

Events.OnFillInventoryObjectContextMenu.Add(doInventoryMenuAdd);