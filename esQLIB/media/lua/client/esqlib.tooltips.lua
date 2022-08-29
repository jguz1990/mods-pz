local esqlibColors = require("esqlib.colors");
local esqlibUtils = require("esqlib.utils");

local esTooltips = {};
esTooltips.config = {};

esTooltips.tooltip = {
    cardinal = "S",
    leftPad = 15,
    rightPad = 15,
    matrix = { "R" },
}

function esTooltips.isVanilla(item)
    if (item:getModID() ~= nil) then
        return item:getModID() == "pz-vanilla";
    end
end

function esTooltips.getTextWidth(text)
    if (text == "<TAB>") then return 6 end;

    if (text.gsub) then
        text = text:gsub("<R>", "");
        text = text:gsub("<G>", "");
        text = text:gsub("<B>", "");
        text = text:gsub("<Y>", "");
        text = text:gsub("<O>", "");
        text = text:gsub("<A>", "");
        text = text:gsub("<I>", "");
        text = text:gsub("<BG>", "");
        text = text:gsub("<BD>", "");
    end

    return getTextManager():MeasureStringX(esTooltips.tooltip.fontSize, tostring(text or ""));
end

function esTooltips.getLongestWidth(sampleTexts)
    local longLength = 0;
    for k,v in pairs(sampleTexts) do
        local textWidth = esTooltips.getTextWidth(v);
        if (textWidth > longLength) then
            longLength = textWidth;
        end
    end

    return longLength;
end

function esTooltips.setMinWidth(column)
    local minColumn = {};
    for k,v in pairs(esTooltips.data) do
        table.insert(minColumn, v[column]);
    end

    local minColumnWidth = esTooltips.tooltip.rightPad + esTooltips.tooltip.leftPad + esTooltips.getLongestWidth(minColumn);
    if (esTooltips.tooltip.width < minColumnWidth) then
        esTooltips.tooltip.width = minColumnWidth;
    end
end

function esTooltips.hideDefault()
    local mx = getMouseX() + 24;
    local my = getMouseY() + 24;
    if not esTooltips.base.followMouse then
        mx = esTooltips.base:getX()
        my = esTooltips.base:getY()
        if esTooltips.base.anchorBottomLeft then
            mx = esTooltips.base.anchorBottomLeft.x
            my = esTooltips.base.anchorBottomLeft.y
        end
    end
    esTooltips.base:setX(mx);
    esTooltips.base.tooltip:setX(mx);
    esTooltips.base:setY(my);
    esTooltips.base.tooltip:setY(my);
end

function esTooltips.getColor(text)
    local colors = esqlibColors.getColors();

    local color = colors.active;
    if (text:contains("<R>")) then
        color = colors.red;
        text = text:gsub("<R>","");

    elseif (text:contains("<G>")) then
        color = colors.green;
        text = text:gsub("<G>","");

    elseif (text:contains("<B>")) then
        color = colors.blue;
        text = text:gsub("<B>","");

    elseif (text:contains("<Y>")) then
        color = colors.yellow;
        text = text:gsub("<Y>","");

    elseif (text:contains("<O>")) then
        color = colors.orange;
        text = text:gsub("<O>","");

    elseif (text:contains("<A>")) then
        color = colors.active;
        text = text:gsub("<A>","");

    elseif (text:contains("<I>")) then
        color = colors.inActive;
        text = text:gsub("<I>","");

    elseif (text:contains("<BG>")) then
        color = colors.backgroundColor;
        text = text:gsub("<BG>","");

    elseif (text:contains("<BD>")) then
        color = colors.borderColor;
        if (not esTooltips.isVanilla(esTooltips.base.item)) then
            color = colors.blue;
        end
        text = text:gsub("<BD>","");

    end

    text = text:gsub("<TAB>","");
    return color, text;
end

function esTooltips.doColumns()
    local columns = {};
    local columnsX = {};
    local pointerPos = esTooltips.tooltip.leftPad;

    for k, v in pairs(esTooltips.tooltip.matrix) do
        local x = {};
        for i, a in pairs(esTooltips.data) do
            if (esqlibUtils.sizeOf(a) > 1) then
                table.insert(x, a[k]);
            end
        end

        columns[k] = esTooltips.getLongestWidth(x);
    end

    for k,v in pairs(esTooltips.tooltip.matrix) do
        if (v == "R") then
            columnsX[k] = pointerPos;
            pointerPos = pointerPos + columns[k];
        else
            columnsX[k] = pointerPos + columns[k];
            pointerPos = columnsX[k];
        end
    end

    esTooltips.tooltip.width = esTooltips.tooltip.rightPad + pointerPos;
    esTooltips.tooltip.columns = columnsX;
end

function esTooltips.init(base, data, options)
    esTooltips.base = base;
    esTooltips.data = data;

    if (not esTooltips.isVanilla(base.item) and getCore():getOptionShowItemModInfo()) then
        local modName = " " .. base.item:getModName();
        table.insert(esTooltips.data, { "" });
        table.insert(esTooltips.data, { "<B>" .. getText("UI_LoadGameScreen_Mods") .. modName });
    end


    esTooltips.doColumns();
    esTooltips.setMinWidth(1);

    esTooltips.tooltip.leftPad = options.leftPad or esTooltips.tooltip.leftPad;
    esTooltips.tooltip.rightPad = options.rightPad or esTooltips.tooltip.rightPad;
    esTooltips.tooltip.cardinal = options.cardinal or esTooltips.tooltip.cardinal;
    esTooltips.tooltip.matrix = options.matrix or esTooltips.tooltip.matrix;
    esTooltips.tooltip.lineHeight = base.tooltip:getLineSpacing();
    esTooltips.tooltip.fontSize = base.tooltip:getFont();
    esTooltips.tooltip.height = esTooltips.tooltip.lineHeight * (#data + 1);
end

function esTooltips.drawToolTip()
    local BGColor = esTooltips.getColor("<BG>");
    local BDColor = esTooltips.getColor("<BD>");

    esTooltips.tooltip.ttY = 0;
    esTooltips.tooltip.ttX = 0;

    if (esTooltips.tooltip.cardinal == "S") then
        esTooltips.tooltip.ttY = esTooltips.base.tooltip:getHeight();

        if (esTooltips.tooltip.width < esTooltips.base.tooltip:getWidth()) then
            esTooltips.tooltip.width = esTooltips.base.tooltip:getWidth() + 15;
        end

        -- keep things on screen:
        if (esTooltips.base.tooltip:getY() + esTooltips.tooltip.ttY + esTooltips.tooltip.height > getCore():getScreenHeight()) then
            esTooltips.tooltip.ttY = esTooltips.tooltip.ttY - (esTooltips.base.tooltip:getHeight() + esTooltips.tooltip.height);

            if (esTooltips.base.tooltip:getX() + esTooltips.tooltip.ttX + esTooltips.tooltip.width > getCore():getScreenWidth()) then
                esTooltips.tooltip.ttY = esTooltips.tooltip.ttY + (esTooltips.base.tooltip:getHeight() * 2);
            end
        end
        if (esTooltips.base.tooltip:getX() + esTooltips.tooltip.ttX + esTooltips.tooltip.width > getCore():getScreenWidth()) then
            esTooltips.tooltip.width = esTooltips.tooltip.width + 24;
            esTooltips.tooltip.ttX = esTooltips.tooltip.ttX - esTooltips.tooltip.width;
            esTooltips.tooltip.ttY = esTooltips.tooltip.ttY - esTooltips.base.tooltip:getHeight();
        end
    elseif (esTooltips.tooltip.cardinal == "E") then
        esTooltips.tooltip.ttX = esTooltips.base.tooltip:getWidth() + 11;

        -- keep things on screen:
        if (esTooltips.base.tooltip:getY() + esTooltips.tooltip.ttY + esTooltips.tooltip.height > getCore():getScreenHeight()) then
            esTooltips.tooltip.ttY = esTooltips.tooltip.ttY - esTooltips.tooltip.height + esTooltips.base.tooltip:getHeight();
        end
        if (esTooltips.base.tooltip:getX() + esTooltips.tooltip.ttX + esTooltips.tooltip.width > getCore():getScreenWidth()) then
            esTooltips.tooltip.width = esTooltips.tooltip.width + 24;
            esTooltips.tooltip.ttX = esTooltips.tooltip.ttX - (esTooltips.base.tooltip:getWidth() + esTooltips.tooltip.width + 11);
        end
    else
        esTooltips.hideDefault();

        -- keep things on screen:
        if (esTooltips.base.tooltip:getY() + esTooltips.tooltip.ttY + esTooltips.tooltip.height > getCore():getScreenHeight()) then
            esTooltips.tooltip.ttY = esTooltips.tooltip.ttY - esTooltips.tooltip.height - 24;
        end
        if (esTooltips.base.tooltip:getX() + esTooltips.tooltip.ttX + esTooltips.tooltip.width > getCore():getScreenWidth()) then
            esTooltips.tooltip.ttX = esTooltips.tooltip.ttX - esTooltips.tooltip.width + 24;
        end
    end

    esTooltips.base:drawRect(esTooltips.tooltip.ttX, esTooltips.tooltip.ttY, esTooltips.tooltip.width, esTooltips.tooltip.height, BGColor.a, BGColor.r, BGColor.g, BGColor.b);
    esTooltips.base:drawRectBorder(esTooltips.tooltip.ttX, esTooltips.tooltip.ttY, esTooltips.tooltip.width, esTooltips.tooltip.height, BDColor.a, BDColor.r, BDColor.g, BDColor.b);

    esTooltips.drawData();
end

function esTooltips.drawData()
    local lineY = esTooltips.tooltip.ttY + (esTooltips.tooltip.lineHeight / 3);

    for k, v in pairs(esTooltips.data) do
        for i, val in pairs(v) do
            if (esTooltips.tooltip.columns[i]) then
                local color, textPrint = esTooltips.getColor(tostring(val));
                local ttX = esTooltips.tooltip.columns[i] + esTooltips.tooltip.ttX;
                if (esTooltips.tooltip.matrix[i] == 'R') then
                    esTooltips.base:drawText(textPrint, ttX,
                            lineY, color.r, color.g, color.b, color.a, esTooltips.tooltip.fontSize);
                else
                    esTooltips.base:drawTextRight(textPrint, ttX,
                            lineY, color.r, color.g, color.b, color.a, esTooltips.tooltip.fontSize);
                end
            end
        end
        lineY = lineY + esTooltips.tooltip.lineHeight;
    end
end

return esTooltips;