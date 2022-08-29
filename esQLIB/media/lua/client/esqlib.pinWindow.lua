require "ISUI/ISCollapsableWindow";
local esPinWindow = ISCollapsableWindow:derive("esPinWindow");
local esqlibColors = require("esqlib.colors");
local esqlibUtils = require("esqlib.utils");

function esPinWindow:setVisible(visible)
    self.javaObject:setVisible(visible);
end

function esPinWindow:prerender()
    ISCollapsableWindow.prerender(self);

    if self.isCollapsed then return end;
    if not self.data then return end;

    local x = 5;
    local x2 = (self.width / 2) + x;
    local y = self.lineHeight * 2;

    for i = 1, #self.data do
        local color = self.data[i][3] or  esqlibColors.getColors().active;
        local colorR = self.data[i][5] or  esqlibColors.getColors().active;

        if (i % 2 ~= 0) then
            y = y + self.lineHeight;

            if (self.data[i][1] ~= "") then
                self:drawText(self.data[i][1] .. ": ", x, y, 1, 1, 1, 1, UIFont.Small);
            end
            self:drawText(tostring(self.data[i][2]), x + getTextManager():MeasureStringX(UIFont.Small, self.data[i][1]) + 7, y, color.r, color.g, color.b, color.a, UIFont.Small);

            if (self.data[i][4] and self.data[i][5]) then
                self:drawTextRight(tostring(self.data[i][4]), self.width / 2, y, colorR.r, colorR.g, colorR.b, colorR.a, UIFont.Small);
            end

        else
            if (self.data[i][1] ~= "") then
                self:drawText(self.data[i][1] .. ": ", x2, y, 1, 1, 1, 1, UIFont.Small);
            end
            self:drawText(tostring(self.data[i][2]), x2 + getTextManager():MeasureStringX(UIFont.Small, self.data[i][1]) + 7, y, color.r, color.g, color.b, color.a, UIFont.Small);

            if (self.data[i][4] and self.data[i][5]) then
                self:drawTextRight(tostring(self.data[i][4]), self.width - x, y, colorR.r, colorR.g, colorR.b, colorR.a, UIFont.Small);
            end

        end
    end
end

function esPinWindow:new(options)
    local o = {};
    o = ISCollapsableWindow:new(options.x, options.y, 100, 100);
    setmetatable(o, self);
    self.__index = self;
    o.borderColor = esqlibColors.getColors().borderColor;
    o.backgroundColor = esqlibColors.getColors().backgroundColor;
    o.moveWithMouse = true;
    o.lineHeight = getTextManager():getFontHeight(UIFont.Small);
    o.player = options.player;
    o.data = options.data;
    o.title = options.title;
    o.height = o.lineHeight * round(#o.data / 2) + (o.lineHeight * 4);
    o:setY(options.y - o.height);
    o.width = options.width or 100;
    o.width = math.max(o.width, getTextManager():MeasureStringX(UIFont.Small, o.title) + 60);
    o.width = math.max(o.width, (esqlibUtils.getMaxWidth(options.data) + 30) * 2);
    o:setResizable(options.resize or false);
    return o
end

return esPinWindow;