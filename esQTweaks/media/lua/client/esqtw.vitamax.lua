local esqlibNumbers = require("esqlib.numbers");
local esqlibPlayers = require("esqlib.players");
local esqlibItems = require("esqlib.items");
local esqlibColors = require("esqlib.colors");
local esqtwAnimate = require("esqlib.animate"):new();
local esqlibSettings = require("esqlib.settings");

local function vitaHUD(player)
    local fatigue = esqlibNumbers.round(player:getStats():getFatigue() * 100);
    local color = esqlibColors.getColorsPercent(fatigue).red;
    local note = getText("Tooltip_food_Fatigue") .. ": " .. fatigue;
    player:setHaloNote(note, color.r * 250, color.g * 250, color.b * 250, 150);
end

local function takePills(pillStack, amount, player)
    for ps = 0, pillStack:size() - 1 do
        if (amount > 0) then
            local bottle = pillStack:get(ps);

            for p = 1, bottle:getDrainableUsesInt() do
                ISInventoryPaneContextMenu.transferIfNeeded(player, bottle)
                local pillAction = esqtwAnimate:new(player, bottle, 20);
                pillAction:setJobType(getText("ContextMenu_Take_pills"));
                pillAction:setAnimation(CharacterActionAnims.TakePills);
                pillAction:setOnComplete(vitaHUD, player);
                pillAction:setStopOn(false, true, false);
                ISTimedActionQueue.add(pillAction);
                amount = amount - 1;
                if amount < 1 then break end;
            end

        else
            break;
        end

    end
end

function esqtwAnimate:doPerform()
    self.item:getContainer():setDrawDirty(true);
    self.character:getBodyDamage():JustTookPill(self.item);
end

local function filterPills(itemStack)
    local pills = LuaList:new();
    for i = 0, itemStack:size() - 1 do
        local testItem = itemStack:get(i);
        if (testItem:getFullType() == "Base.PillsVitamins") then
            pills:add(testItem);
        end
    end
    return pills;
end

local function doMenu(player, context, items)
    if esqlibSettings.getSetting("esQTW", "esQTWVitaMax") > 1 then
        local allSelectedItems = filterPills(esqlibItems.getStackFromSelection(items));
        if (allSelectedItems:size() > 0) then
            local char = esqlibPlayers.getPlayerObject(player);
            local pillsCount = esqlibItems.getItemsDelta(allSelectedItems);
            local perBottle = esqlibNumbers.round(1 / allSelectedItems:get(0):getUseDelta());
            pillsCount = esqlibNumbers.round(pillsCount * perBottle);
            local iterations = { 10, 6, 3, 1 };
            local fatigue = esqlibNumbers.round(char:getStats():getFatigue() * 100);
            local subMenu = context:getNew(context);

            for _,v in pairs(iterations) do
                if (pillsCount >= v) then
                    local recipeName = getText("ContextMenu_Take_pills") .. " x" .. v;
                    local reduced = fatigue - (v * 2);
                    if reduced >= 0 then
                        recipeName = recipeName .. " " .. getText("UI_esQLIB_brackets", getText("Tooltip_food_Fatigue") .. ": " .. reduced);
                        subMenu:addOption(recipeName, allSelectedItems, takePills, v, char);
                    end;
                end
            end

            if (#subMenu.options > 0) then
                if context.removeOptionByName then
                    context:removeOptionByName(getText("ContextMenu_Take_pills"));
                end
                context:addSubMenu(context:addOption(getText("UI_esqtw_vitamax") .. ":"), subMenu);
            end
        end
    end

    return context;
end

Events.OnFillInventoryObjectContextMenu.Add(doMenu);