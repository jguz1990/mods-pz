local esqlibPerks = require("esqlib.perks");
local esqlibNumbers = require("esqlib.numbers");
local fixerMain = {};

function fixerMain.isMelee(selectedItem)
    return selectedItem:IsWeapon() and not selectedItem:isRanged();
end

function fixerMain.isRanged(selectedItem)
    return selectedItem:IsWeapon() and selectedItem:isRanged();
end

function fixerMain.getRepairedAmount(selectedItem, targetItem, player)
    local PerksBonus = 0.30;
    if selectedItem:getFullType() == targetItem:getFullType() then
        PerksBonus = 0.60;
    end

    if fixerMain.isRanged(selectedItem) then
    PerksBonus = PerksBonus + esqlibPerks.getPerksData(player, "MetalWelding").level * 0.02;
    PerksBonus = PerksBonus + esqlibPerks.getPerksData(player, "Aiming").level * 0.03;
    PerksBonus = PerksBonus + esqlibPerks.getPerksData(player, "Reloading").level * 0.02;
    elseif fixerMain.isMelee(selectedItem) then
    PerksBonus = PerksBonus + esqlibPerks.getPerksData(player, "Carpentry").level * 0.02;
    PerksBonus = PerksBonus + esqlibPerks.getPerksData(player, "Maintenance").level * 0.02;
    PerksBonus = PerksBonus + esqlibPerks.getPerksData(player, selectedItem:getCategories():get(0)).level * 0.03;
    end

    local targetCon = targetItem:getCondition() * PerksBonus;

    return esqlibNumbers.round(targetCon + selectedItem:getCondition());
end

function fixerMain.canBeFixedWith(selectedItem, testItem)
    if (testItem == selectedItem) then
        return false;
    end
    if (testItem:isEquipped() or testItem:isFavorite()) then
        return false;
    end
    return true;
end

function fixerMain.getSuccessRate(selectedItem, targetItem)
    local failRate = 0;

    if selectedItem:getHaveBeenRepaired() > 1 then
        local repaired = selectedItem:getHaveBeenRepaired() - 1;
        repaired = repaired * 3;
        failRate = failRate + repaired;
    end
    if targetItem:getHaveBeenRepaired() > 1 then
        local repaired = targetItem:getHaveBeenRepaired() - 1;
        repaired = repaired * 3;
        failRate = failRate + repaired;
    end

    if selectedItem:getCondition() > selectedItem:getConditionMax() then
        local overMax = selectedItem:getCondition() - selectedItem:getConditionMax();
        overMax = overMax / selectedItem:getConditionMax();
        overMax = esqlibNumbers.round(overMax * 100);
        overMax = overMax / 5;
        failRate = failRate + overMax;
    end
    if targetItem:getCondition() > targetItem:getConditionMax() then
        local overMax = targetItem:getCondition() - targetItem:getConditionMax();
        overMax = overMax / targetItem:getConditionMax();
        overMax = esqlibNumbers.round(overMax * 100);
        overMax = overMax / 5;
        failRate = failRate + overMax;
    end

    local successRate = esqlibNumbers.round(100 - failRate);
    if successRate < 10 then
        successRate = 10;
    end

    return successRate;
end

function fixerMain.isSuccess(selectedItem, targetItem)
    local successRate = fixerMain.getSuccessRate(selectedItem, targetItem);
    return esqlibNumbers.roll(successRate)
end

return fixerMain;