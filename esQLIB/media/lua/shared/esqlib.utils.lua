local esCommonPlug = {};

function esCommonPlug.sizeOf(array)
    local nCount=0;
    for v,k in pairs(array) do
        nCount = nCount + 1;
    end
    return nCount;
end

function esCommonPlug.split(string, delimiter)
    local result = {};
    for match in (string..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

function esCommonPlug.trim(s)
    return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end

function esCommonPlug.shuffle(tbl)
    for i = 1, #tbl do
        local j = ZombRand(1, #tbl)
        tbl[i], tbl[j] = tbl[j], tbl[i]
    end
    return tbl
end

function esCommonPlug.HaloWithArrow(player, text, up, color)
    local haloColor = color or HaloTextHelper.getColorGreen();
    local haloUp = up or false;
    local char = player;
    if (type(player) == "number") then
        char = getSpecificPlayer(player);
    end
    HaloTextHelper.addTextWithArrow(char, text, haloUp, haloColor);
end

function esCommonPlug.modDataGet(item, key)
    if (item == nil) then return nil end;

    local modData = item:getModData();
    if (key ~= nil) then
        return modData[key];
    end
    return modData;
end

function esCommonPlug.modDataSet(item, key, value)
    if (item == nil) then return nil end;
    item:getModData()[key] = value;
end

function esCommonPlug.modDataJsonGet(item, key)
    if (item == nil) then return nil end;
    local json = require "esqlib.imports.json";
    local jsonData = item:getModData()[key] or json.stringify({});
    return json.parse(jsonData);
end

function esCommonPlug.modDataJsonSet(item, tableValue, key)
    if (item == nil) then return nil end;
    local json = require "esqlib.imports.json";
    item:getModData()[key] = json.stringify(tableValue);
end

function esCommonPlug.getMaxWidth(data)
    if not data then
        return 0
    end ;

    local maxWidth = 0;
    for _, v in pairs(data) do
        local lineString = "";
        for _, s in pairs(v) do
            if type(s) == "number" or type(s) == "string" then
                lineString = lineString .. tostring(s);
            end
        end
        maxWidth = math.max(maxWidth, getTextManager():MeasureStringX(UIFont.Small, lineString))
    end

    return maxWidth;
end

return esCommonPlug;