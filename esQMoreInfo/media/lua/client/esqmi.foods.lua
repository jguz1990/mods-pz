local esqlibSettings = require("esqlib.settings");
local esqlibTooltips = require("esqlib.tooltips");

local esqlibNumbers = require("esqlib.numbers");
local esqlibPlayers = require("esqlib.players");

local esFoodsInfo = {};

function esFoodsInfo.getPlayerWeight(player)
    local weight = tostring(esqlibNumbers.round(player:getNutrition():getWeight()));
    local incDesc = "";
    local thinFat = "";

    if (player:HasTrait("Underweight") or player:HasTrait("Overweight")) then
        thinFat = "<O>";
    elseif (player:HasTrait("Very Underweight") or player:HasTrait("Obese")) then
        thinFat = "<R>";
    end

    if player:getNutrition():isIncWeight() or player:getNutrition():isIncWeightLot() or player:getNutrition():isDecWeight() then
        if player:getNutrition():isIncWeight() and not player:getNutrition():isIncWeightLot() then
            incDesc = "+";
        end
        if player:getNutrition():isIncWeightLot() then
            incDesc = "++";
        end
        if player:getNutrition():isDecWeight() then
            incDesc = "-";
        end
    end

    return thinFat .. weight .. incDesc;
end

function esFoodsInfo.getFoodFreshness(food)
    local foodAge = food:getAge();
    local foodStaleAge = food:getScriptItem():getDaysFresh();
    local foodRotAge = food:getScriptItem():getDaysTotallyRotten();
    if (foodRotAge > 9000000 or foodStaleAge > 9000000) then return { nil } end;

    local freshnessText, freshnessTime;
    if (foodAge < foodStaleAge) then
        freshnessText = "<G>" .. getText("Tooltip_food_Fresh") .. ": " .. getText("IGUI_Emote_Yes");
        freshnessTime = esqlibNumbers.padding(esqlibNumbers.round(foodStaleAge - foodAge, 4), 0, 4);
    elseif (foodAge < foodRotAge) then
        freshnessText = "<O>" .. getText("Tooltip_food_Fresh") .. ": " .. getText("IGUI_Emote_No");
        freshnessTime = esqlibNumbers.padding(esqlibNumbers.round(foodRotAge - foodAge, 4), 0, 4);
    elseif(foodAge > foodRotAge) then
        freshnessText = "<R>" .. getText("Tooltip_food_Rotten");
        freshnessTime = "";
    end

    return { freshnessText, freshnessTime };
end

function esFoodsInfo.getFoodThaw(food)
    local foodThawStatus, foodThawTime;

    if food:isCookable() and not food:isFrozen() and food:getHeat() > 1.3 then
        local ct = food:getCookingTime();
        local mtc = food:getMinutesToCook();
        local mtb = food:getMinutesToBurn();
        foodThawTime = ct / mtc;
        foodThawStatus = getText("IGUI_invpanel_Cooking");

        if ct > mtb then
            foodThawStatus = getText("IGUI_invpanel_Burnt");
        elseif ct > mtc then
            foodThawStatus = getText("IGUI_invpanel_Burning");
            foodThawTime = (ct - mtc) / (mtb - mtc);
        end
        foodThawStatus = "<R>" .. foodThawStatus;
        foodThawTime = esqlibNumbers.round(foodThawTime * 100, 2);

    elseif food:isFrozen() and food:getFreezingTime() > 0 and food:getFreezingTime() < 100 then
        foodThawStatus = "<B>" .. getText("IGUI_invpanel_Melting");
        foodThawTime = esqlibNumbers.round(food:getFreezingTime(), 2);

    elseif not food:isFrozen() and food:getFreezingTime() > 0 and food:getFreezingTime() < 100 then
        foodThawStatus = "<B>" .. getText("IGUI_invpanel_FreezingTime");
        foodThawTime = esqlibNumbers.round(food:getFreezingTime(), 2);

    elseif food:getFreezingTime() == 100 then
        foodThawStatus = "<B>" .. getText("Tooltip_food_Frozen");

    end

    if (foodThawTime) then
        foodThawTime = esqlibNumbers.padding(foodThawTime, 0, 2);
    end

    return { foodThawStatus, foodThawTime }
end

function esFoodsInfo.getFoodCook(food)

    if food:isbDangerousUncooked() and not food:isCooked() and not food:isBurnt() then
        return "<R>" .. getText("Tooltip_food_Dangerous_uncooked");

    elseif food:isCookable() and food:isBurnt() then
        return "<R>" .. getText("Tooltip_food_Burnt");

    elseif food:isCookable() and not food:isCooked() and not food:isBurnt() then
        return getText("Tooltip_food_Uncooked");

    elseif food:isCookedInMicrowave() then
        return "<G>" .. getText("Tooltip_food_CookedInMicrowave");

    elseif food:isCooked() then
        return "<G>" .. getText("Tooltip_food_Cooked");
    end

end

function esFoodsInfo.getFoodBetterHot(food)
    if (food:isGoodHot() or food:isBadCold()) and (food:getHeat() < 1.3) then
        return "<O>" .. getText("Tooltip_food_BetterHot");
    end
end

function esFoodsInfo.getFoodNutrition(food, player)
    local nutrition = {};
    if food:isPackaged() or player:HasTrait("Nutritionist") or player:HasTrait("Nutritionist2") or player:getPerkLevel(Perks.Cooking) > 5 then
        table.insert(nutrition, { getText("Tooltip_food_Calories"), esqlibNumbers.padding(esqlibNumbers.round(food:getCalories(), 2), 0, 2), esqlibNumbers.round(player:getNutrition():getCalories()) })
        table.insert(nutrition, { getText("Tooltip_food_Carbs"), esqlibNumbers.padding(esqlibNumbers.round(food:getCarbohydrates(), 2), 0, 2) })
        table.insert(nutrition, { getText("Tooltip_food_Prots"), esqlibNumbers.padding(esqlibNumbers.round(food:getProteins(), 2), 0, 2) })
        table.insert(nutrition, { getText("Tooltip_food_Fat"), esqlibNumbers.padding(esqlibNumbers.round(food:getLipids(), 2), 0, 2) })
    end

    return nutrition
end

function esFoodsInfo.getFoodContains(food)
    local contains, spices = {}, {};

    if (food.getExtraItems and food:getExtraItems()) then
        for e = 0, food:getExtraItems():size() - 1 do
            table.insert(contains, food:getExtraItems():get(e));
        end
    end

    if (food.getSpices and food:getSpices()) then
        for e = 0, food:getSpices():size() - 1 do
            table.insert(spices, food:getSpices():get(e));
        end
    end

    return contains, spices;
end

function esFoodsInfo.getFoodEvoRecipes(food)
    local evoRecipe = {};
    local allRecipes = RecipeManager.getAllEvolvedRecipes();
    local recipeTotal = 0;

    for i = 0, allRecipes:size() - 1 do
        local evolvedRecipe = allRecipes:get(i);
        if not evolvedRecipe:isHidden() then
            local possibleItems = evolvedRecipe:getPossibleItems();
            for k = 0, possibleItems:size() - 1 do
                local possibleItem = possibleItems:get(k);
                if food:getFullType() == possibleItem:getFullType() then
                    recipeTotal = recipeTotal + 1;
                    local recipeName = evolvedRecipe:getName();
                    if (evoRecipe[recipeName] ~= nil) then
                        evoRecipe[recipeName] = evoRecipe[recipeName] + 1;
                    else
                        evoRecipe[recipeName] = 1;
                    end
                    break ;
                end
            end
        end

    end

    return evoRecipe, recipeTotal;
end

function esFoodsInfo.getFoodData(ttData, player)
    local food = ttData.item;
    local foodData = {};
    local foodFresh = esFoodsInfo.getFoodFreshness(food);
    local foodThaw = esFoodsInfo.getFoodThaw(food);

    table.insert(foodData, { food:getDisplayName() });
    table.insert(foodData, { "", "<TAB>", "", "<TAB>" });

    table.insert(foodData, { getText("Tooltip_item_Weight"), "", esqlibNumbers.round(food:getActualWeight(), 2), "", esFoodsInfo.getPlayerWeight(player) });
    if (ttData.tooltip:getWeightOfStack() > 0) then
        table.insert(foodData, { getText("Tooltip_item_StackWeight"), "", esqlibNumbers.round(ttData.tooltip:getWeightOfStack(), 3) });
    end
    if (foodFresh[1]) then
        table.insert(foodData, { foodFresh[1], "", foodFresh[2] });
    end

    if (esFoodsInfo.getFoodCook(food)) then
        table.insert(foodData, { esFoodsInfo.getFoodCook(food) });
    end

    if (foodThaw[1]) then
        table.insert(foodData, { foodThaw[1], "", foodThaw[2] });
    end

    if (esFoodsInfo.getFoodBetterHot(food)) then
        table.insert(foodData, { esFoodsInfo.getFoodBetterHot(food) });
    end

    table.insert(foodData, { "", "<TAB>", "", "<TAB>" });
    if (food:getFatigueChange() ~= 0) then
        local color = "<G>";
        local sign = "";
        if (food:getFatigueChange() > 0) then
            color = "<R>";
            sign = "+";
        end
        table.insert(foodData, { color .. getText("Tooltip_food_Fatigue"), "",
                                 color .. sign .. esqlibNumbers.round(food:getFatigueChange() * 100), "",
                                 esqlibNumbers.round(player:getStats():getFatigue() * 100) });
    end

    if (food:getHungerChange() ~= 0) then
        table.insert(foodData, { "<G>" .. getText("Tooltip_food_Hunger"), "",
                                 "<G>" .. esqlibNumbers.round(food:getHungerChange() * 100), "",
                                 esqlibNumbers.round(player:getStats():getHunger() * 100) });
    end

    if (food:getThirstChange() ~= 0) then
        local color = "<G>";
        local sign = "";
        if (food:getThirstChange() > 0) then
            color = "<R>";
            sign = "+";
        end
        table.insert(foodData, { color .. getText("Tooltip_food_Thirst"), "",
                                 color .. sign .. esqlibNumbers.round(food:getThirstChange() * 100), "",
                                 esqlibNumbers.round(player:getStats():getThirst() * 100) });
    end

    if (food:getEnduranceChange() ~= 0) then
        local color = "<R>";
        local sign = "";
        if (food:getEnduranceChange() > 0) then
            color = "<G>";
            sign = "+";
        end
        table.insert(foodData, { color..getText("Tooltip_food_Endurance"), "",
                                 color .. sign .. esqlibNumbers.round(food:getEnduranceChange(), 2) * 100, "",
                                 esqlibNumbers.round(player:getStats():getEndurance() * 100)});
    end

    if (food:getBoredomChange() ~= 0) then
        local color = "<G>";
        local sign = "";
        if (food:getBoredomChange() > 0) then
            color = "<R>";
            sign = "+";
        end
        table.insert(foodData, { color .. getText("Tooltip_food_Boredom"), "",
                                 color .. sign .. esqlibNumbers.round(food:getBoredomChange()), "",
                                 esqlibNumbers.round(player:getBodyDamage():getBoredomLevel()) });
    end

    if (food:getStressChange() ~= 0) then
        local color = "<G>";
        local sign = "";
        if (food:getStressChange() > 0) then
            color = "<R>";
            sign = "+";
        end
        table.insert(foodData, { color..getText("Tooltip_food_Stress"), "",
                                 color .. sign .. esqlibNumbers.round(food:getStressChange(), 2) * 100, "",
                                 esqlibNumbers.round(player:getStats():getStress() * 100)});
    end

    if (food:getUnhappyChange() ~= 0) then
        local color = "<G>";
        local sign = "";
        if (food:getUnhappyChange() > 0) then
            color = "<R>";
            sign = "+";
        end
        table.insert(foodData, { color..getText("Tooltip_food_Unhappiness"), "",
                                 color .. sign .. esqlibNumbers.round(food:getUnhappyChange(), 2), "",
                                 esqlibNumbers.round(player:getBodyDamage():getUnhappynessLevel()) });
    end

    local nutrition = esFoodsInfo.getFoodNutrition(food, player);
    if (#nutrition > 0) then
        table.insert(foodData, { "", "<TAB>", "", "<TAB>" });
        for _,v in pairs(nutrition) do
            if (v[3] ~= nil) then
                table.insert(foodData, { v[1], "", v[2], "", v[3] });
            else
                table.insert(foodData, { v[1], "", v[2] });
            end

        end
    end

    local contains, spices = esFoodsInfo.getFoodContains(food);
    if (#contains > 0) then
        table.insert(foodData, { "", "<TAB>", "", "<TAB>" });
        table.insert(foodData, { getText("Tooltip_item_Contains") .. " (" .. #contains .. "):" });
        for _,v in pairs(contains) do
            table.insert(foodData, { getItemNameFromFullType(v) });
        end
    end
    if (#spices > 0) then
        table.insert(foodData, { "", "<TAB>", "", "<TAB>" });
        table.insert(foodData, { getText("Tooltip_item_Spices") .. " (" .. #spices .. "):" });
        for _,v in pairs(spices) do
            table.insert(foodData, { getItemNameFromFullType(v) });
        end
    end

    local evoRecipe, recipeTotal = esFoodsInfo.getFoodEvoRecipes(food);
    if (recipeTotal > 0 and player:getPerkLevel(Perks.Cooking) > 1) then
        table.insert(foodData, { "", "<TAB>", "", "<TAB>" });

        local recipesText = getText("IGUI_LiteratureUI_Recipes");
        if (food:getPoisonPower() > 0) and food:getHerbalistType() and food:getHerbalistType() ~= "" and player:isRecipeKnown("Herbalist") then
            recipesText = recipesText .. getText("ContextMenu_EvolvedRecipe_Poison");
        end
        if (food:isSpice()) then
            recipesText = recipesText .. getText("ContextMenu_EvolvedRecipe_Spice");
        end

        table.insert(foodData, { recipesText .. " (" .. recipeTotal .. "):" });

        if (player:getPerkLevel(Perks.Cooking) > 3) then
            for k,v in pairs(evoRecipe) do
                if (v > 1) then
                    table.insert(foodData, { k, "", "(" .. v .. ")" });
                else
                    table.insert(foodData, { k });
                end
            end
        end
    end

    return foodData;
end

local baseInvTooltipRender = ISToolTipInv.render;
function ISToolTipInv:render()
    if instanceof(self.item, "Food")
        and esqlibSettings.getSetting("esQMI", "esQMIFoods") > 1
        and self.item:getHungerChange() ~= 0
        and (not ISContextMenu.instance or not ISContextMenu.instance.visibleCheck) then

        local cardinal = esqlibSettings.getCardinal("esQMI", "esQMIFoods");
        local foodData = esFoodsInfo.getFoodData(self, esqlibPlayers.getPlayerObject(self.tooltip:getCharacter()));

        esqlibTooltips.init(self, foodData, { cardinal = cardinal, matrix = { "R", "R", "L", "R", "R" } });
        esqlibTooltips.drawToolTip();
        
        if (cardinal == "O") then return end;
    end

    baseInvTooltipRender(self);
end
