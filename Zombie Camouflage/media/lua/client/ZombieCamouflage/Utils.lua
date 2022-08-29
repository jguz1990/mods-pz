local self = {};
self.Math = {};

self.Math.round = function(number, round)
    local mult = 10 ^ (round or 0)

    return math.floor(number * mult + 0.5) / mult
end

return self