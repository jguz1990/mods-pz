local esqlibSettings = require("esqlib.settings");
local esqlibTooltips = require("esqlib.tooltips");

local esqlibNumbers = require("esqlib.numbers");
local esqlibPlayers = require("esqlib.players");
local esqlibPerks = require("esqlib.perks");

local function getItemType(item)
    if (item:getCategory() == "Literature") then
        if (item.getSkillTrained) then
            if (SkillBook[item:getSkillTrained()]) then return "skill" end;
        end
        if (item.getTeachedRecipes and item:getTeachedRecipes()) then return "recipe" end;
        return "comic";
    end
    if getZomboidRadio():getRecordedMedia():getCategories():contains(item:getScriptItem():getRecordedMediaCat()) then
        return "media";
    end

    return false;
end

local function isUseless(player, item)
    local bookType = getItemType(item);

    if (bookType == "recipe") then
        if player:getAlreadyReadBook():contains(item:getFullType()) then
            return 1;
        elseif item:getTeachedRecipes() and player:getKnownRecipes():containsAll(item:getTeachedRecipes()) then
            return 1;
        end
    elseif (bookType == "media") then
        if item:getMediaData() ~= nil and getZomboidRadio():getRecordedMedia():hasListenedToAll(player, item:getMediaData()) then
            return 1;
        end
    elseif (bookType == "skill") then
        local readPercent = (player:getAlreadyReadPages(item:getFullType()) / item:getNumberOfPages()) * 100;
        if (readPercent == 100) then return 1 end;

        local perksSkill = esqlibPerks.getPerksData(player, item:getSkillTrained());
        if (perksSkill) then
            local playerSkill = perksSkill.level;
            local bookStart = item:getMaxLevelTrained() - item:getNumLevelsTrained();
            local bookEnd = item:getMaxLevelTrained();

            if (playerSkill >= bookEnd) then return 1 end;
            if (bookStart <= playerSkill and playerSkill < bookEnd) then return 0 end;
            if (playerSkill < bookStart) then return 2 end;
        end

        return 2;
    end

    return 0;
end

local function getItemCount(player, item)
    if (getItemType(item) == "media") then
        local itemsFound = player:getInventory():getAllTypeRecurse(item:getFullType());
        local itemCount = 0;
        for i = 0, itemsFound:size() - 1 do
            if (itemsFound:get(i):getDisplayName() == item:getDisplayName()) then
                itemCount = itemCount + 1;
            end
        end
        return itemCount;
    end
    return player:getInventory():getCountTypeRecurse(item:getFullType());
end

local function getBookData(ttData)
    local item = ttData.item;
    local player = esqlibPlayers.getPlayerObject(ttData.character);
    local colorI, colorG, colorO, colorR = "<I>", "<G>", "<O>", "<R";
    local mediaType = getItemType(item);
    local bookInfo = { { item:getDisplayName() }, { "", "<TAB>", "", "<TAB>" } };

    if (mediaType == "comic") then
        if (item:getBoredomChange() < 0) then
            table.insert(bookInfo, { getText("Tooltip_literature_Boredom_Reduction"), "", colorG .. item:getScriptItem():getBoredomChange(),
                                     "", esqlibNumbers.round(player:getBodyDamage():getBoredomLevel()) })
        elseif (item:getBoredomChange() > 0) then
            table.insert(bookInfo, { getText("Tooltip_literature_Boredom_Reduction"), "", colorR .. " +" .. item:getScriptItem():getBoredomChange(),
                                     "", esqlibNumbers.round(player:getBodyDamage():getBoredomLevel()) })
        end

        if (item:getStressChange() < 0) then
            table.insert(bookInfo, { getText("Tooltip_literature_Stress_Reduction"), "", colorG .. item:getScriptItem():getStressChange(),
                                     "", esqlibNumbers.round(player:getStats():getStress() * 100)})
        elseif (item:getStressChange() > 0) then
            table.insert(bookInfo, { getText("Tooltip_literature_Stress_Reduction"), "", colorR .. " +" .. item:getScriptItem():getStressChange(),
                                     "", esqlibNumbers.round(player:getStats():getStress() * 100)})
        end

        if (item:getUnhappyChange() < 0) then
            table.insert(bookInfo, { getText("Tooltip_food_Unhappiness"), "", colorG .. item:getScriptItem():getUnhappyChange(),
                                     "", esqlibNumbers.round(player:getBodyDamage():getUnhappynessLevel()) })
        elseif (item:getUnhappyChange() > 0) then
            table.insert(bookInfo, { getText("Tooltip_food_Unhappiness"), "", colorR .. " +" .. item:getScriptItem():getUnhappyChange(),
                                     "", esqlibNumbers.round(player:getBodyDamage():getUnhappynessLevel()) })
        end
    end

    if (mediaType == "recipe") then
        local recipes = item:getTeachedRecipes();
        local color = colorG;
        if (isUseless(player,item) == 1) then color = colorI end

        for i=0,recipes:size() -1 do
            table.insert(bookInfo, { color .. getText("Tooltip_Literature_TeachedRecipes", recipes:get(i)) })
        end
    end

    if (mediaType == "media") then
        local mediaData = item:getMediaData();
        if (mediaData) then
            local title;
            local color = colorG;
            if (isUseless(player,item) == 1) then color = colorI end

            if mediaData:hasTitle() then
                title = mediaData:getTranslatedTitle()
                if mediaData:hasSubTitle() and (mediaData:getSubtitleEN() ~= "Home VHS") then
                    title = title .. ' ' .. mediaData:getTranslatedSubTitle()
                end
            elseif mediaData:hasSubTitle() then
                title = mediaData:getTranslatedSubTitle()
            else
                title = mediaData:getTranslatedItemDisplayName()
            end

            table.insert(bookInfo, { color .. getText("Tooltip_media_title"), "", color .. title });
            if (mediaData:hasAuthor()) then
                table.insert(bookInfo, { color .. getText("Tooltip_media_author"), "", color .. mediaData:getAuthorEN() });
            end
        end
    end

    if (mediaType == "skill") then
        local color = colorG;
        if (isUseless(player,item) == 1) then
            color = colorI;
        elseif(isUseless(player,item) == 2) then
            color = colorO;
        end

        local perksSkill = esqlibPerks.getPerksData(player, item:getSkillTrained());
        local bookStart = item:getMaxLevelTrained() - item:getNumLevelsTrained() + 1;
        local bookEnd = item:getMaxLevelTrained();

        table.insert(bookInfo, { color .. getText("IGUI_ItemCat_SkillBook") .. "(" .. perksSkill.type .. ")", "", color .. bookStart .. "-" .. bookEnd })
        table.insert(bookInfo, { color .. getText("Tooltip_literature_Number_of_Pages"), "", color .. item:getAlreadyReadPages() .. "/" .. item:getNumberOfPages() })
        table.insert(bookInfo, { color .. perksSkill.type .. " " .. getText("IGUI_PlayerStats_Level"), "", color .. perksSkill.level .. " (" .. perksSkill.percent .. "%)" });
    end

    if (mediaType ~= false) then
        table.insert(bookInfo,{ "" });
    end

    table.insert(bookInfo,{ getText("Tooltip_item_Weight"), "", tostring(esqlibNumbers.round(item:getActualWeight(), 2)) })
    if (ttData.tooltip:getWeightOfStack() > 0) then
        table.insert(bookInfo, { getText("Tooltip_item_StackWeight"), "", esqlibNumbers.round(ttData.tooltip:getWeightOfStack(), 3) });
    end
    table.insert(bookInfo,{ getText("IGUI_InventoryTooltip"), "", getItemCount(player, item) })

    return bookInfo;
end

local baseInvTooltipRender = ISToolTipInv.render;
function ISToolTipInv:render()
    if esqlibSettings.getSetting("esQMI", "esQMIBooks") > 1
        and getItemType(self.item)
        and (not ISContextMenu.instance or not ISContextMenu.instance.visibleCheck)  then

        local cardinal = esqlibSettings.getCardinal("esQMI", "esQMIBooks");
        esqlibTooltips.init(
                self,
                getBookData(self),
                {
                    cardinal = cardinal,
                    matrix = { "R", "R", "L", "R", "R" },
                }
        );

        esqlibTooltips.drawToolTip();
        if (cardinal == "O") then return end;
    end

    baseInvTooltipRender(self);
end