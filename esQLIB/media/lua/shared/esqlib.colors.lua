local esCommonPlug = {};

function esCommonPlug.getColors()
    local colors = {
        red = { r = 0.83, g = 0.10, b = 0.10, a = 1.0 },
        green = { r = 0.41, g = 0.80, b = 0.41, a = 0.9 },
        blue = { r = 0.55, g = 0.55, b = 0.87, a = 0.9 },
        yellow = { r = 0.84, g = 0.78, b = 0.30, a = 0.9 },
        orange = { r = 0.79, g = 0.44, b = 0.19, a = 0.9 },
        active = { r = 1, b = 1, g = 1, a = 0.8 },
        inActive = { r = 0.5, b = 0.5, g = 0.5, a = 0.8 },
        backgroundColor = { r = 0, g = 0, b = 0, a = 0.7 },
        borderColor = { r = 0.4, g = 0.4, b = 0.4, a = 1.0 },
    }
    return colors;
end

function esCommonPlug.getColorsPercent(percentage)
    if (percentage > 1) then percentage = percentage/100 end;
    local rgb = {};
    local colors = esCommonPlug.getColors();

    if (percentage < 0.20) then
        rgb.green = colors.red;
        rgb.red = colors.green;
    elseif (percentage >= 0.20 and percentage < 0.40) then
        rgb.green = colors.orange;
        rgb.red = colors.blue;
    elseif (percentage >= 0.40 and percentage < 0.60) then
        rgb.green = colors.yellow;
        rgb.red = colors.yellow;
    elseif (percentage >= 0.60 and percentage < 0.80) then
        rgb.green = colors.blue;
        rgb.red = colors.orange;
    elseif (percentage >= 0.80) then
        rgb.green = colors.green;
        rgb.red = colors.red;
    end

    return rgb;
end

function esCommonPlug.toRGBTag(color)
    local rgb = "<RGB:";
    rgb = rgb .. color.r .. "," .. color.g .. "," .. color.b .. ">";
    return rgb;
end

return esCommonPlug;