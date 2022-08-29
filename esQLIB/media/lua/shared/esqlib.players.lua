local esCommonPlug = {};

function esCommonPlug.getPlayerNumber(player)
    if (player == nil) then
        return 0;
    elseif (type(player) == "number") then
        return player;
    else
        return player:getPlayerNum();
    end
end

function esCommonPlug.getPlayerObject(player)
    if (player == nil) then
        return getSpecificPlayer(0);
    elseif (type(player) == "number") then
        return getSpecificPlayer(player);
    else
        return player;
    end
end

return esCommonPlug;