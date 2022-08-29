local esCommonPlug = {};

function esCommonPlug.round(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0);
    return math.floor(num * mult + 0.5) / mult;
end

function esCommonPlug.padding(number, wholePadding, fractionPadding)
    local wholeNum = string.split(number,"\\.")[1];
    local fractionNum = string.split(number,"\\.")[2];

    while (string.len(wholeNum) < wholePadding) do
        wholeNum = '0' .. wholeNum;
    end

    if (fractionPadding == nil) then
        if (fractionNum ~= nil) then
            return wholeNum..'.'..fractionNum;
        end
        return wholeNum;
    end

    if (fractionNum == nil) then fractionNum = '' end;
    while (string.len(fractionNum) < fractionPadding) do
        fractionNum = fractionNum .. '0';
    end

    return wholeNum..'.'..fractionNum;
end

function esCommonPlug.roll(percent)
    if (percent < 1) then
        return (percent * 100) >= ZombRand(100);
    end
    return percent >= ZombRand(100);
end

return esCommonPlug;