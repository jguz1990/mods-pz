local esqlibItems = require("esqlib.items");
local esBagMergeAnimate = require("esqlib.animate"):new();

local function getSuccessAmount(player, selectedItem, levels)
    local returnArray = {};
    local tailoring = (player:getPerkLevel(Perks.Tailoring) * 10) / 100;
    local level = levels - 1;

    returnArray.impCapacity = { round(tailoring * selectedItem:getCapacity()) + level, selectedItem:getCapacity() };
    returnArray.impWeightReduction = { level, round(selectedItem:getWeightReduction() / 10) }

    return returnArray;
end

local function isHaveTools(player)
    local allContainers = esqlibItems.getAllContainers(player);
    local allThreads = esqlibItems.getItemsStack("Base.Thread", allContainers);
    local usesThreads = esqlibItems.getItemsUses(allThreads);

    return esqlibItems.haveOrSimilar(player, "Base.Needle"),
    esqlibItems.haveOrSimilar(player, "Base.Scissors"),
    usesThreads > 9;
end

local function doToolTip(player, selectedItem, levels)
    local hasNeedle, hasScissors, hasThreads = isHaveTools(player);
    local impItem = getSuccessAmount(player, selectedItem, levels);
    local rgbRed = " <RGB:1,0,0> ";
    local rgbWhite = " <RGB:1,1,1> ";
    local canMerge = true;

    local description = getText("Tooltip_container_Capacity") .. ": +" .. impItem.impCapacity[1] .. " -> +" .. impItem.impCapacity[2] .. " <LINE> ";
    if levels > 1 then
        description = description .. getText("Tooltip_container_Weight_Reduction") .. ": +" .. impItem.impWeightReduction[1] .. " -> +" .. impItem.impWeightReduction[2] .. " <LINE> ";
    end
    description = description .. " <LINE> ";

    if levels > 1 then
        description = description .. getText("IGUI_CraftUI_SourceKeep") .. " <LINE> ";
        if hasNeedle then
            description = description .. rgbWhite;
            description = description .. getItemNameFromFullType(hasNeedle)  .. " <LINE> ";
        else
            description = description .. rgbRed;
            description = description .. getItemNameFromFullType("Base.Needle")  .. " <LINE> ";
            canMerge = false;
        end

        if hasScissors then
            description = description .. rgbWhite;
            description = description .. getItemNameFromFullType(hasScissors)  .. " <LINE> <LINE> " .. rgbWhite;
        else
            description = description .. rgbRed;
            description = description .. getItemNameFromFullType("Base.Scissors")  .. " <LINE> <LINE> " .. rgbWhite;
            canMerge = false;
        end

    end

    description = description .. getText("IGUI_CraftUI_SourceUse") .. " <LINE> ";
    description = description .. getText("IGUI_CraftUI_CountUnits", getItemNameFromFullType(selectedItem:getFullType()), 1) .. " <LINE> ";
    if levels > 2 then
        if hasThreads then
            description = description .. rgbWhite;
        else
            description = description .. rgbRed;
            canMerge = false;
        end
        description = description .. getText("IGUI_CraftUI_CountUnits", getItemNameFromFullType("Base.Thread"), 10);
    end

    return description, (not canMerge);
end

local function doBagMerge(player, selectedItem, levels)
    local animate = esBagMergeAnimate:new(player, selectedItem, 70);
    animate:setExtra(levels);
    ISTimedActionQueue.add(animate);
end

function esBagMergeAnimate:doPerform()
    local impItem = getSuccessAmount(self.character, self.item, self.extra);
    local targetItem = esqlibItems.getContainerItem(self.item:getContainer());
    local impWeightReduction;

    local impCapacity = ZombRand(impItem.impCapacity[1], impItem.impCapacity[2] + 1);
    if self.extra > 1 then
        impWeightReduction = ZombRand(impItem.impWeightReduction[1], impItem.impWeightReduction[2] + 1);
    end

    targetItem:setCapacity(targetItem:getCapacity() + impCapacity);
    if impWeightReduction then
        targetItem:setWeightReduction(targetItem:getWeightReduction() + impWeightReduction);
    end

    local allThreads = esqlibItems.getItemsStack("Base.Thread", esqlibItems.getAllContainers(self.character));
    esqlibItems.drainItem(self.character, allThreads, 10);

    HaloTextHelper.addTextWithArrow(self.character, getText("Tooltip_container_Capacity") .. ": +" .. impCapacity, true, HaloTextHelper.getColorGreen())
    if impWeightReduction then
        HaloTextHelper.addTextWithArrow(self.character, getText("Tooltip_container_Weight_Reduction") .. ": +" .. impWeightReduction, true, HaloTextHelper.getColorGreen())
    end

    esqlibItems.destroyItem(self.item);
end

local function isCanMergeBag(selectedItem)
    if not selectedItem then return false end;
    if (tostring(selectedItem:getCategory()) ~= "Container") then return false; end
    if (tostring(selectedItem:getType()) == "KeyRing") then return false; end

    local parentItem = esqlibItems.getContainerItem(selectedItem:getContainer());
    if not parentItem then return false end;
    if not parentItem.getDisplayCategory then return false end;
    if selectedItem:getDisplayCategory() ~= parentItem:getDisplayCategory() then return false end;
    return selectedItem:getInventory():isEmpty();
end

local function doMenu(player, context, items)
    local selectedItem = esqlibItems.getStackFromSelection(items):get(0);
    if isCanMergeBag(selectedItem) then
        local playerObj = getSpecificPlayer(player);
        local parentItem = esqlibItems.getContainerItem(selectedItem:getContainer());
        local recipeName = getText("ContextMenu_Add_Weapon_Upgrade") .. ": " .. parentItem:getDisplayName() .. " (" .. parentItem:getCapacity() .. ")";
        local submenu = context:getNew(context);

        for level = 1, 3 do
            local fixOption = submenu:addOption(recipeName, playerObj, doBagMerge, selectedItem, level);
            local toolTip = ISToolTip:new();

            toolTip:initialise();
            toolTip.texture = parentItem:getTex();
            toolTip:setName(getText("ContextMenu_Add_Weapon_Upgrade") .. " " .. getItemNameFromFullType(parentItem:getFullType()));
            toolTip.description, fixOption.notAvailable = doToolTip(playerObj, selectedItem, level);
            fixOption.toolTip = toolTip;
        end

        context:addSubMenu(context:addOption(getText("Bagmerge") .. ":"), submenu);
    end

    return context;
end

Events.OnFillInventoryObjectContextMenu.Add(doMenu);