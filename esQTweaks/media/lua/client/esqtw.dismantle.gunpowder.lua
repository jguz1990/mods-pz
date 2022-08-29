local esDismantle = {};
local esqlibSettings = require("esqlib.settings");
local esqlibItems = require("esqlib.items");
local esqlibPlayers = require("esqlib.players");
local esqlibUtils = require("esqlib.utils");
local esDismantleAnimate = require("esqlib.animate"):new();

local function getGunPowderFromRecipe()
    local recipe = ScriptManager.instance:getRecipe("Base.Gather Gunpowder");
    if recipe then
        return recipe:getSource():get(0):getItems();
    end
end

function esDismantle.onMenuGatherGunPowder(stack, player)
    local char = esqlibPlayers.getPlayerObject(player);
    esqlibItems.doItemMove(stack, char:getInventory(), char);

    local animate = esDismantleAnimate:new(char, stack:get(0), 30);
    animate:setOnComplete(esqlibUtils.HaloWithArrow, player,
            getText("IGUI_CraftUI_CountUnits", getItemNameFromFullType("Base.GunPowder"), stack:size()), true);
    animate:setExtra(stack);
    ISTimedActionQueue.add(animate);
end

function esDismantleAnimate:doPerform()
    for i = 0, self.extra:size() - 1 do
        esqlibItems.createItem(
            InventoryItemFactory.CreateItem("Base.GunPowder"),
            self.extra:get(0):getContainer(),
            self.character
        );
    end
    for i = 0, self.extra:size() - 1 do
        esqlibItems.destroyItem(self.extra:get(i));
    end
    triggerEvent("esDoSort", self.character);
end

local function doInventoryMenuAdd(player, context, items)
    if esqlibSettings.getSetting("esQTW", "esQTWPowders") > 1 then
        local bullets = LuaList:new();
        local stackItems = esqlibItems.getStackFromSelection(items);
        local allBullets = getGunPowderFromRecipe();

        for i = 0, stackItems:size() - 1 do
            local item = stackItems:get(i);
            if allBullets:contains(item:getFullType()) then
                bullets:add(item);
            end
        end
        if not bullets:isEmpty() then
            local gather = getRecipeDisplayName("Gather Gunpowder");
            if context.removeOptionByName then
                context:removeOptionByName(gather);
            end

            local recipeName = gather .. " " .. getText("UI_esQLIB_brackets", bullets:size());
            context:addOption(recipeName, bullets, esDismantle.onMenuGatherGunPowder, player);
        end
    end

    return context;
end

Events.OnFillInventoryObjectContextMenu.Add(doInventoryMenuAdd);