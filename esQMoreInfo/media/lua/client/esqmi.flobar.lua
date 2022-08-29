local esFloBar = ISPanel:derive("esFloBar")
local esqlibColors = require("esqlib.colors");

local barInstances = {
    Wounds = { getText("IGUI_HealthTooltip"), getTexture("media/ui/LootableMaps/map_heart.png") },
    Foods = { getText("IGUI_ItemCat_Food"), getTexture("media/ui/LootableMaps/map_knifefork.png") },
    Winds = { getText("Tooltip_food_Endurance"), getTexture("media/ui/LootableMaps/map_lightning.png") },
    Sleeps = { getText("Tooltip_food_Fatigue"), getTexture("media/ui/LootableMaps/map_tent.png") },
    Stress = { getText("Tooltip_food_Boredom"), getTexture("media/ui/LootableMaps/map_facehappy.png") },
    Weather = { getText("IGUI_SearchMode_Tip_Weather_Title"), getTexture("media/ui/LootableMaps/map_moon.png"), getTexture("media/ui/LootableMaps/map_sun.png") },
}

local function getWeather()
    local climate = getClimateManager();
    local climToday = climate:getClimateForecaster():getForecast();
    local climTomorrow = climate:getClimateForecaster():getForecast(1);
    local todays = {};
    local tomorrows = {};

    if climToday:isHasFog() then
        local v = climToday:getFogStrength();
        if v == 1 then
            table.insert(todays, getRadioText("AEBS_fog_2"))
        elseif v>0.75 then
            table.insert(todays, getRadioText("AEBS_fog_1"))
        else
            table.insert(todays, getRadioText("AEBS_fog_0"))
        end
    end
    if climToday:isHasHeavyRain() then table.insert(todays, getText("UI_esqmi_infobar_rain")) end
    if climToday:isChanceOnSnow() then table.insert(todays, getText("UI_esqmi_infobar_snow")) end
    if climToday:isHasBlizzard() then table.insert(todays, getRadioText("AEBS_weather_blizzard")) end
    if climToday:isHasStorm() then table.insert(todays, getRadioText("AEBS_weather_storm")) end
    if climToday:isHasTropicalStorm() then table.insert(todays, getRadioText("AEBS_weather_tropical")) end

    if climTomorrow:isHasFog() then
        local v = climTomorrow:getFogStrength();
        if v == 1 then
            table.insert(tomorrows, getRadioText("AEBS_fog_2"))
        elseif v>0.75 then
            table.insert(tomorrows, getRadioText("AEBS_fog_1"))
        else
            table.insert(tomorrows, getRadioText("AEBS_fog_0"))
        end
    end
    if climTomorrow:isHasHeavyRain() then table.insert(tomorrows, getText("UI_esqmi_infobar_rain")) end
    if climTomorrow:isChanceOnSnow() then table.insert(tomorrows, getText("UI_esqmi_infobar_snow")) end
    if climTomorrow:isHasBlizzard() then table.insert(tomorrows, getRadioText("AEBS_weather_blizzard")) end
    if climTomorrow:isHasStorm() then table.insert(tomorrows, getRadioText("AEBS_weather_storm")) end
    if climTomorrow:isHasTropicalStorm() then table.insert(tomorrows, getRadioText("AEBS_weather_tropical")) end

    return table.concat(todays, ", "), table.concat(tomorrows, ", ");
end

local function getDuskDawns()
    local climate = getClimateManager();
    local forecasts = climate:getClimateForecaster():getForecasts();
    local currentTime = GameTime.getInstance():getTimeOfDay();
    local yesterdays = {};
    local todays = {};
    local tomorrows = {};
    local segmentTime,segmentNow;
    local segmentIcon = 2;

    for i=0, forecasts:size()-1 do
        local forecast = forecasts:get(i);
        if forecast:getIndexOffset()==-1 then
            yesterdays.dawn = forecast:getDawn();
            yesterdays.dusk = forecast:getDusk();
        end
        if forecast:getIndexOffset()==0 then
            todays.dawn = forecast:getDawn();
            todays.dusk = forecast:getDusk();
        end
        if forecast:getIndexOffset()==1 then
            tomorrows.dawn = forecast:getDawn();
            tomorrows.dusk = forecast:getDusk();
            break;
        end
    end

    -- before dawn
    if currentTime < todays.dawn then
        segmentTime = 24 - yesterdays.dusk;
        segmentTime = segmentTime + todays.dawn;
        segmentNow = todays.dawn - currentTime;

    -- daytime
    elseif currentTime > todays.dawn and currentTime < todays.dusk then
        segmentTime = todays.dusk - todays.dawn;
        segmentNow = todays.dusk - currentTime;
        segmentIcon = 3;

    -- after dusk
    elseif currentTime > todays.dusk then
        segmentTime = 24 - todays.dusk;
        segmentTime = segmentTime + tomorrows.dawn;
        segmentNow = (24 - currentTime) + tomorrows.dawn;
    end

    return segmentNow / segmentTime, segmentIcon;
end

local function getWounds(player, item)
    local remedies = {};
    local wounds = {};
    local doctorLevel = player:getPerkLevel(Perks.Doctor);

    if item:bandaged() then
        if item:getBandageLife() > 0 then
            table.insert(remedies, getText("IGUI_health_Bandaged"));
        else
            table.insert(wounds, getText("IGUI_health_DirtyBandage"));
        end
    end
    if item:stitched() then
        table.insert(remedies, getText("IGUI_health_Stitched"));
    end
    if item:getSplintFactor() > 0 then
        table.insert(remedies, getText("IGUI_health_Splinted"));
    end
    if item:getPlantainFactor() > 0 then
        table.insert(remedies, getText("ContextMenu_PlantainCataplasm"));
    end
    if item:getComfreyFactor() > 0 then
        table.insert(remedies, getText("ContextMenu_ComfreyCataplasm"));
    end
    if item:getGarlicFactor() > 0 then
        table.insert(remedies, getText("ContextMenu_GarlicCataplasm"));
    end


    if (item:getBleedingTime() > 0) then
        table.insert(wounds, getText("IGUI_health_Bleeding"));
    end
    if (item:getBiteTime() > 0) then
        table.insert(wounds, getText("IGUI_health_Bitten"));
    end
    if (item:getScratchTime() > 0) then
        table.insert(wounds, getText("IGUI_health_Scratched"));
    end
    if (item:getCutTime() > 0) then
        table.insert(wounds, getText("IGUI_health_Cut"));
    end
    if (item:getDeepWoundTime() > 0) then
        table.insert(wounds, getText("IGUI_health_DeepWound"));
    end
    if (item:getFractureTime() > 0) then
        table.insert(wounds, getText("IGUI_health_Fracture"));
    end
    if (item:isInfectedWound()) then
        if doctorLevel > 8 or (item:getWoundInfectionLevel() * 10 >= (2.5 - doctorLevel)) then
            table.insert(wounds, getText("IGUI_health_Infected"));
        end
    end
    if (item:getBurnTime() > 0) then
        table.insert(wounds, getText("IGUI_health_Burned"));
    end
    if (item:haveBullet()) then
        table.insert(wounds, getText("IGUI_health_LodgedBullet"));
    end
    if (item:haveGlass()) then
        table.insert(wounds, getText("IGUI_health_LodgedGlassShards"));
    end

    if #wounds > 0 or #remedies > 0 then
        return BodyPartType.getDisplayName(item:getType()), remedies, wounds;
    else
        return nil;
    end
end

local function getXY(player, barID)
    local barModKey = "esFloBar_" .. barID;
    local x, y = getCore():getScreenWidth() / 2, getCore():getScreenHeight() / 2;
    if not player then return false end;
    if not player:getModData()[barModKey] then return x,y end;
    return player:getModData()[barModKey].x, player:getModData()[barModKey].y or false;
end

local function getAmmoGun(weapon)
    if (weapon.isJammed and weapon:isJammed()) then return "---/---"; end
    local ammoText = weapon:getCurrentAmmoCount();
    if (weapon:isRoundChambered()) then
        ammoText = ammoText .. " +1";
    elseif (weapon:haveChamber()) then
        ammoText = ammoText .. " +0";
    end
    return ammoText .. "/" .. weapon:getMaxAmmo();
end

function esFloBar:barToggle(setting, modKey)
    local playerModKey = modKey or "esFloBar_" .. self.barID;
    local autoHidden = self:getSetting(setting, playerModKey);
    self:setSetting({ [setting] = not autoHidden }, playerModKey);
    if setting == "auto" then
        triggerEvent("esOnAimExit", self.character:getPrimaryHandItem(), self.character:getSecondaryHandItem());
    end
end

function esFloBar:onMouseUp(x, y)
    ISPanel.onMouseUp(self, x, y);
    self:setSetting({ x = self:getX(), y = self:getY() });
end

function esFloBar:setVisible(visible)
    self.javaObject:setVisible(visible);
end

function esFloBar:dataUpdate(data)
    self.data = data;
end

function esFloBar:doBarWoundsUp(x)
    local y = - 3;
    local bodyParts = self.character:getBodyDamage():getBodyParts()
    for i = 0, bodyParts:size() - 1 do
        local name, remedies, wounds = getWounds(self.character, bodyParts:get(i));
        if name then
            local inLine = #remedies + #wounds + 1;
            y = y - (self.lineHeight * inLine);
            self:drawText(name, x, y, 1, 1, 1, 1, UIFont.Small);

            for r = 1, #remedies do
                self:drawText("-" .. remedies[r], x + 15, y + (self.lineHeight * r), 0.28, 0.89, 0.28, 1, UIFont.Small);
            end

            local ww = y + (self.lineHeight * #remedies);
            for w = 1, #wounds do
                self:drawText("-" .. wounds[w], x + 15, ww + (self.lineHeight * w), 0.89, 0.28, 0.28, 1, UIFont.Small);
            end
        end
    end

end

function esFloBar:doBarWounds(x)
    local y = (self.lineHeight * 2) + 3;
    local bodyParts = self.character:getBodyDamage():getBodyParts()
    for i = 0, bodyParts:size() - 1 do
        local name, remedies, wounds = getWounds(self.character, bodyParts:get(i));
        if name then
            self:drawText(name, x, y, 1, 1, 1, 1, UIFont.Small);
            y = y + self.lineHeight;
            for r = 1, #remedies do
                self:drawText("-" .. remedies[r], x + 15, y, 0.28, 0.89, 0.28, 1, UIFont.Small);
                y = y + self.lineHeight;
            end
            for w = 1, #wounds do
                self:drawText("-" .. wounds[w], x + 15, y, 0.89, 0.28, 0.28, 1, UIFont.Small);
                y = y + self.lineHeight;
            end
        end
    end

end

function esFloBar:drawBarIcon(x, y)
    local wh = (self.lineHeight - 3) * 2;
    if self.barID == "Weather" then
        local _,icon = getDuskDawns();
        self:drawTextureScaled(barInstances[self.barID][icon], x, y, wh, wh, 1, 1, 1, 1)
    elseif barInstances[self.barID] then
        self:drawTextureScaled(barInstances[self.barID][2], x, y, wh, wh, 1, 1, 1, 1)
    elseif self.data["item"] and self.data["item"].getTex then
        self:drawTextureScaled(self.data["item"]:getTex(), x, y, wh, wh, 1, 1, 1, 1)
    end
end

function esFloBar:drawBarProgressBar(barFloat, x)
    local displayNameWidth = 120;
    local displayName = getText("IGUI_climate_Daylight");

    if self.barID == "Weather" then
        local _,icon = getDuskDawns();
        if icon == 2 then
            displayName = getText("IGUI_climate_Darkness");
        end

    elseif barInstances[self.barID] then
        displayName = barInstances[self.barID][1];

    elseif self.data["item"] then
        displayName = self.data["item"]:getDisplayName();
    end

    displayNameWidth = getTextManager():MeasureStringX(UIFont.Small, displayName) + 3;
    if displayNameWidth < 120 then displayNameWidth = 120 end;

    self:drawProgressBar(x, 0, displayNameWidth, (self.lineHeight * 2), barFloat, esqlibColors.getColorsPercent(barFloat).green);
    self:drawText(displayName, x, self.lineHeight / 2, 1, 1, 1, 1, UIFont.Small);

    return displayNameWidth;
end

function esFloBar:drawBarSideInfo(x, infoTop, infoBottom)
    local x1 = math.max(getTextManager():MeasureStringX(UIFont.Small, infoTop[2]), getTextManager():MeasureStringX(UIFont.Small, infoBottom[2]))
    x1 = x + x1 + 6;
    if (infoTop[1] or infoTop[2]) and not self:getSetting("side1") then
        self:drawText(infoTop[2], x, 0, 1, 1, 1, 1, UIFont.Small);
        self:drawText(infoTop[1], x1, 0, 1, 1, 1, 1, UIFont.Small);
    end
    if (infoBottom[1] or infoBottom[2]) and not self:getSetting("side2") then
        self:drawText(infoBottom[2], x, self.lineHeight, 1, 1, 1, 1, UIFont.Small);
        self:drawText(infoBottom[1], x1, self.lineHeight, 1, 1, 1, 1, UIFont.Small);
    end
end

function esFloBar:prerender()
    ISPanel.prerender(self);
    if (self.barID == "Prime" or self.barID == "Second") and self.data["item"] == nil then return end;

    local x, y = 3, 3;
    self:drawBarIcon(x, y);
    x = x + (self.lineHeight * 2);

    if self.barID == "Prime" or self.barID == "Second" then
        local f = 1;
        if self.data["type"] == "drain" then
            local maxUses = round(1 / self.data["item"]:getUseDelta());
            local usesLeft = self.data["item"]:getDrainableUsesInt();
            f = usesLeft / maxUses;
        else
            if self.data["item"]:getCondition() < self.data["item"]:getConditionMax() then
                f = self.data["item"]:getCondition() / self.data["item"]:getConditionMax();
            end
        end
        local displayNameWidth = self:drawBarProgressBar(f, x);
        local x1 = x + displayNameWidth + 3;
        if self.data["type"] == "gun" and self.data["extra"] then
            self:drawText(getAmmoGun(self.data["item"]), x1, 0, 1, 1, 1, 1, UIFont.Small);
            self:drawText(tostring(self.data["extra"]) , x1, self.lineHeight, 1, 1, 1, 1, UIFont.Small);
        end

    elseif self.barID == "Wounds" then
        local f = self.character:getBodyDamage():getHealth() / 100;
        self:drawBarProgressBar(f, x);
        if not self:getSetting("side1") then
            self:doBarWoundsUp(x);
        end
        if not self:getSetting("side2") then
            self:doBarWounds(x);
        end

    elseif self.barID == "Foods" then
        local f = (1 - self.character:getStats():getHunger());
        local displayNameWidth = self:drawBarProgressBar(f, x);
        local x1 = x + displayNameWidth + 3;
        local weight = tostring(round(self.character:getNutrition():getWeight()));
        local calories = tostring(round(self.character:getNutrition():getCalories()));
        local incDesc = "";
        if self.character:getNutrition():isIncWeight() or self.character:getNutrition():isIncWeightLot() or self.character:getNutrition():isDecWeight() then
            if self.character:getNutrition():isIncWeight() and not self.character:getNutrition():isIncWeightLot() then
                incDesc = "+";
            end
            if self.character:getNutrition():isIncWeightLot() then
                incDesc = "++";
            end
            if self.character:getNutrition():isDecWeight() then
                incDesc = "-";
            end
        end
        self:drawBarSideInfo(x1, { getText("Tooltip_item_Weight"), weight .. incDesc }, { getText("Tooltip_food_Calories"), calories });

    elseif self.barID == "Winds" then
        local f = self.character:getStats():getEndurance();
        self:drawBarProgressBar(f, x);

    elseif self.barID == "Sleeps" then
        local f = (1 - self.character:getStats():getFatigue());
        local displayNameWidth = self:drawBarProgressBar(f, x);
        local x1 = x + displayNameWidth + 3;
        local wetness = round(self.character:getBodyDamage():getWetness());
        local coreHeat = round(self.character:getBodyDamage():getThermoregulator():getCoreCelcius());
        self:drawBarSideInfo(x1, { getText("IGUI_Temp_BodyWetness"), tostring(wetness) }, { getText("IGUI_Temp_CoreTemp"), tostring(coreHeat) });

    elseif self.barID == "Stress" then
        local f = (100 - self.character:getBodyDamage():getBoredomLevel()) / 100;
        local displayNameWidth = self:drawBarProgressBar(f, x);
        local x1 = x + displayNameWidth + 3;
        local stress = tostring(round(self.character:getStats():getStress() * 100));
        local happy = tostring(round(self.character:getBodyDamage():getUnhappynessLevel()));
        self:drawBarSideInfo(x1, { getText("Tooltip_food_Stress"), stress }, { getText("Tooltip_food_Unhappiness"), happy });

    elseif self.barID == "Weather" then
        local f = getDuskDawns();
        local displayNameWidth = self:drawBarProgressBar(f, x);
        local x1 = x + displayNameWidth + 3;
        local forecast1, forecast2 = getWeather();
        forecast1 = forecast1:gsub("[.]","");
        forecast2 = forecast2:gsub("[.]","");
        self:drawBarSideInfo(x1, { "", forecast1 }, { "", forecast2 });

    end

end

function esFloBar:onRightMouseUp(x, y)
    local contextMenu = ISContextMenu.get(self.character:getPlayerNum(), self:getAbsoluteX(), self:getAbsoluteY());

    if self.barID == "Prime" then
        local menuItem = getText("IGUI_PrimaryTooltip") .. " " .. getText("IGUI_anim_Idle") .. " " .. getText("IGUI_ItemCat_Hidden");
        local prime = contextMenu:addOption(menuItem, self, self.barToggle, "auto");
        prime.checkMark = self:getSetting("auto");

        local m = contextMenu:addOption(getText("IGUI_SecondaryTooltip"), self, self.barToggle, "hide","esFloBar_Second");
        m.checkMark = not self:getSetting("hide","esFloBar_Second");

        for k, v in pairs(barInstances) do
            local m = contextMenu:addOption(v[1], self, self.barToggle, "hide", "esFloBar_" .. k);
            m.checkMark = not self:getSetting("hide", "esFloBar_" .. k);
        end

    elseif self.barID == "Second" then
        local m = contextMenu:addOption(getText("IGUI_SecondaryTooltip"), self, self.barToggle, "hide");
        m.checkMark = not self:getSetting("hide");

    else
        local m = contextMenu:addOption(barInstances[self.barID][1], self, self.barToggle, "hide");
        m.checkMark = not self:getSetting("hide");
        local s1 = contextMenu:addOption(getText("IGUI_Tutorial_MoreInfo").. " 1", self, self.barToggle, "side1");
        s1.checkMark = not self:getSetting("side1");
        local s2 = contextMenu:addOption(getText("IGUI_Tutorial_MoreInfo").. " 2", self, self.barToggle, "side2");
        s2.checkMark = not self:getSetting("side2");
    end
end

function esFloBar:getSetting(setting, modKey)
    local playerModKey = modKey or "esFloBar_" .. self.barID;
    if not self.character:getModData()[playerModKey] then return false end;
    return self.character:getModData()[playerModKey][setting] or false;
end

function esFloBar:setSetting(setting, modKey)
    local playerModKey = modKey or "esFloBar_" .. self.barID;
    self.character:getModData()[playerModKey] = self.character:getModData()[playerModKey] or {};
    for v,k in pairs(setting) do
        self.character:getModData()[playerModKey][v] = k;
    end
end

function esFloBar:new(char, barID)
    local o = {};
    local x, y = getXY(char, barID);
    o = ISPanel:new(x, y, 120, 20);
    setmetatable(o, self)
    self.__index = self
    o.moveWithMouse = true;
    o.character = char;
    o.barID = barID;
    o.lineHeight = getTextManager():getFontHeight(UIFont.Small);
    o.borderColor = esqlibColors.getColors().borderColor;
    o.backgroundColor = esqlibColors.getColors().backgroundColor;
    o.width = (o.lineHeight  * 2);
    o.height = (o.lineHeight  * 2);
    return o;
end

return esFloBar;