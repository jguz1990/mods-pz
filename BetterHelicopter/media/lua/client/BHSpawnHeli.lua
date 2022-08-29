Heli_spawn_points = {
    {5593, 12465},
    {7746, 11802},
    {12850, 6427}
}

local function spawnHeli(x, y)
    local sq = getSquare(x, y, 0)
    if sq then
        addVehicleDebug("Base.BHelicopter", nil, nil, sq)
    end
end

local function spawnHelicopters(square)
    local pl = getPlayer()
    if pl:getModData()["SpawnedHeli"] == nil then
        pl:getModData()["SpawnedHeli"] = {}
    end 

    for i, p in ipairs(Heli_spawn_points) do
        if p[1] == square:getX() and p[2] == square:getY() and pl:getModData()["SpawnedHeli"][i] == nil then
            pl:getModData()["SpawnedHeli"][i] = true
            spawnHeli(p[1], p[2])
        end
    end
end

Events.LoadGridsquare.Add(spawnHelicopters)