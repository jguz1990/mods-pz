local function CurrZombRand(num)
    if num >= ZombRand(100)+1 then
        return true
    else
        return false
    end
end


function Recipe.OnCreate.CraftClothbelt(items, result, player)
    -- player:getXp():AddXP(Perks.Strength,1500 + player:getXp():getXP(Perks.Strength))
    -- player:getXp():AddXP(Perks.Fitness,1500 + player:getXp():getXP(Perks.Fitness))

    --1 2 4 5 7 8 
    local level = player:getPerkLevel(Perks.Tailoring)+1
    local itemnum = 0
    local Randlocal = ZombRand(100)+1

    -- print(getPlayer():getPerkLevel(Perks.Tailoring))

    local levelinfo = 
    {
        {80,100,0,0,0,0},
        {60,90,100,0,0,0},
        {40,70,90,100,0,0},
        {20,40,70,90,100,0},
        {10,20,60,90,100,0},
        {5,15,55,90,100,0},
        {0,5,45,85,95,100},
        {0,0,35,75,95,100},
        {0,0,30,65,85,100},
        {0,0,0,0,70,100},
        {0,0,0,0,50,100}
    }
    local levelmatch = {1,2,4,5,7,8}
    for i=1,6 do
        if Randlocal<=levelinfo[level][i] then
            itemnum=levelmatch[i] 
            break
        end
    end

    player:getInventory():AddItem("S_Belt"..tostring(itemnum))
       
    
end

function Recipe.OnCreate.CraftClothstraps(items, result, player)

    local level = player:getPerkLevel(Perks.Tailoring)+1
    local itemnum = 0
    local Randlocal = ZombRand(100)+1

    local levelinfo = 
    {
        {100,0,0},
        {80,100,0},
        {60,90,100},
        {50,80,100},
        {40,70,100},
        {25,65,100},
        {20,60,100},
        {10,50,100},
        {0,40,100},
        {0,20,100},
        {0,10,100},
       
    }
    local levelmatch = {3,6,9}
    for i=1,3 do
        if Randlocal<=levelinfo[level][i] then
            itemnum=levelmatch[i] 
            break
        end
    end

    player:getInventory():AddItem("S_Belt"..tostring(itemnum))


end