local self = {};

self.init = function(source)
    source:getModData().Moodles = source:getModData().Moodles or {}; 
    if source:getModData().Moodles["ZombieHidden"] == nil then
        source:getModData().Moodles["ZombieHidden"] = {};
        source:getModData().Moodles["ZombieHidden"].Level = 0;
        source:getModData().Moodles["ZombieHidden"].Value = 0.0;
    end
end

self.newType = function(source)
    local FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small);
    local FONT_HGT_MEDIUM = getTextManager():getFontHeight(UIFont.Medium);
    local FONT_HGT_LARGE = getTextManager():getFontHeight(UIFont.Large);
    local SCREEN_X = getCore():getScreenWidth();
    local SCREEN_Y = getCore():getScreenHeight();
    local WIDTH = 31;
    local HEIGHT = 50;
    local enableWiggle, wiggle, wiggleX, wiggleY, wiggleBidirectional, wiggleDegradation = false, 0, 0, 0, false, 0;
    self.init(source);

    local ISMoodles = ISUIElement:derive("ISMoodles");

    ISMoodles.initialise = function(self)
        ISUIElement:initialise(self);
    end

    ISMoodles.render = function(self)
        local moodleLevel = self:level();
        local icon = getTexture("media/ui/Hidden.png");

        if enableWiggle then
            if wiggleBidirectional then
                wiggle = wiggle - 13;
                wiggleX = wiggle * math.sin(0.5);
                if wiggle <= -30 then
                    wiggleBidirectional = false;
                    wiggleDegradation = wiggleDegradation + 1;
                end
            else 
                wiggle = wiggle + 13;
                wiggleX = wiggle * math.sin(0.5);
                if wiggle >= 30 then
                    wiggleBidirectional = true;
                    wiggleDegradation = wiggleDegradation + 1;
                end
            end
        end

        if wiggleDegradation > 2 then
            enableWiggle = false;
                
            if wiggle <= 2 and wiggle >= -2 then
                wiggleX = 0;
                wiggleDegradation = 0;
            elseif wiggle < 0 then
                wiggle = wiggle + 5;
                wiggleX = wiggle * math.sin(0.5);
            elseif wiggle > 0 then
                wiggle = wiggle - 5;
                wiggleX = wiggle * math.sin(0.5);
            end
        end

        if moodleLevel == 0 then
            if source:getModData().Moodles["ZombieHidden"].Level ~= 0 then
                source:getModData().Moodles["ZombieHidden"].Level = 0;
            end
        end

        if moodleLevel == 1 then
            self:drawTexture(getTexture("media/ui/Moodle_Bkg_Good_1.png"), wiggleX, 0, 1, 1, 1, 1);
            self:mouseOverMoodle(getText("Moodles_zombiehidden_lvl1"), getText("Moodles_zombiehidden_desc_lvl1"))
                
            if source:getModData().Moodles["ZombieHidden"].Level ~= 1 then
                source:getModData().Moodles["ZombieHidden"].Level = 1;
                enableWiggle = true;
                if ZombRand(2) == 0 then
                    wiggleBidirectional = true;
                else
                    wiggleBidirectional = false;
                end
                print("Level now is 1");
            end
        end

        if moodleLevel == 2 then
            self:drawTexture(getTexture("media/ui/Moodle_Bkg_Good_2.png"), wiggleX, 0, 1, 1, 1, 1);
            self:mouseOverMoodle(getText("Moodles_zombiehidden_lvl2"), getText("Moodles_zombiehidden_desc_lvl2"))

            if source:getModData().Moodles["ZombieHidden"].Level ~= 2 then
                source:getModData().Moodles["ZombieHidden"].Level = 2;
                enableWiggle = true;
                if ZombRand(2) == 0 then
                    wiggleBidirectional = true;
                else
                    wiggleBidirectional = false;
                end
                print("Level now is 2");
            end
        end

        if moodleLevel == 3 then
            self:drawTexture(getTexture("media/ui/Moodle_Bkg_Good_3.png"), wiggleX, 0, 1, 1, 1, 1);
            self:mouseOverMoodle(getText("Moodles_zombiehidden_lvl3"), getText("Moodles_zombiehidden_desc_lvl3"))

            if source:getModData().Moodles["ZombieHidden"].Level ~= 3 then
                source:getModData().Moodles["ZombieHidden"].Level = 3;
                enableWiggle = true;
                if ZombRand(2) == 0 then
                    wiggleBidirectional = true;
                else
                    wiggleBidirectional = false;
                end
                print("Level now is 3");
            end
        end

        if moodleLevel == 4 then
            self:drawTexture(getTexture("media/ui/Moodle_Bkg_Good_4.png"), wiggleX, 0, 1, 1, 1, 1);
            self:mouseOverMoodle(getText("Moodles_zombiehidden_lvl4"), getText("Moodles_zombiehidden_desc_lvl4"))

            if source:getModData().Moodles["ZombieHidden"].Level ~= 4 then
                source:getModData().Moodles["ZombieHidden"].Level = 4;
                enableWiggle = true;
                if ZombRand(2) == 0 then
                    wiggleBidirectional = true;
                else
                    wiggleBidirectional = false;
                end
                print("Level now is 4");
            end
        end

        if moodleLevel ~= 0 then
            self:drawTexture(icon, wiggleX, 0, 1, 1, 1, 1);
            self:bringToTop();
        end

        local x, y = self:updateMoodles();
        if y ~= self:getY() then self:setY(y) end--]]
    end

    ISMoodles.mouseOverMoodle = function(self, title, description)
        local rectWidth = 5;
        local rectHeight = 31;

        if self:isMouseOver() then
            local titleLength = getTextManager():MeasureStringX(UIFont.Small, title) + 7;
            local descriptionLength = getTextManager():MeasureStringX(UIFont.Small, description) + 7;

            if titleLength >= descriptionLength then
                self:drawRect(-4 - (rectWidth + titleLength), 0, rectWidth + titleLength, rectHeight, 0.6, 0, 0, 0);
            elseif titleLength <= descriptionLength then
                self:drawRect(-4 - (rectWidth + descriptionLength), 0, rectWidth + descriptionLength, rectHeight, 0.6, 0, 0, 0);
            end

            self:drawTextRight(title, -10, 2, 1, 1, 1, 1);
            self:drawTextRight(description, -10, 15, 1, 1, 1, 0.7);
        end
    end

    ISMoodles.level = function(self)
        local value = source:getModData().Moodles["ZombieHidden"].Value;

        if value >= 0.7 then
            return 4
        elseif value >= 0.5 then
            return 3
        elseif value >= 0.3 then
            return 2
        elseif value >= 0.15 then
            return 1
        end

        return 0
    end

    ISMoodles.updateMoodles = function(self)
        local x = (SCREEN_X - WIDTH) - 19;
        local y = 101;

        for i = 0, 23 do
            if source:getMoodles():getMoodleLevel(MoodleType.FromIndex(i)) ~= 0 then
                y = y + 36;
            end
        end

        for k, v in pairs(source:getModData().Moodles) do
            if k == "ZombieHidden" then
                break
            else
                if v.Level ~= 0 and source:getModData().Moodles["ZombieHidden"].Level ~= 0 then
                    y = y + 36;
                end
            end
        end

        return x, y
    end

    ISMoodles.new = function(self, width, height)
        local x, y = self:updateMoodles();
        
        local o = {};
        o = ISUIElement:new(x, y, width, height);
        setmetatable(o, self);
        self.__index = self;
        o.borderColor = {r=0, g=0, b=0, a=0};
        o.backgroundColor = {r=0, g=0, b=0, a=0};

        return o;
    end

    return ISMoodles:new(WIDTH, HEIGHT)
end

self.getValue = function()
    local source = getPlayer()
    self.init(source)
    
    return source:getModData().Moodles["ZombieHidden"].Value
end

self.getLevel = function()
    local source = getPlayer()
    self.init(source)

    return source:getModData().Moodles["ZombieHidden"].Level
end

self.setValue = function(value)
    local source = getPlayer()
    self.init(source)

    source:getModData().Moodles["ZombieHidden"].Value = value
end
        
self.createType = function(source)
    local moodleTypeUI = self.newType(source)

    moodleTypeUI:addToUIManager()
    print("CreateType")

    local onCreatePlayer = function(index, player)

        moodleTypeUI = self.newType(player)
        print("onCreatePlayer")

        moodleTypeUI:addToUIManager()
    end

    local onPlayerDeath = function(player)

        moodleTypeUI:removeFromUIManager()
    end
    
    Events.OnCreatePlayer.Add(onCreatePlayer)
    Events.OnPlayerDeath.Add(onPlayerDeath)
end

return self