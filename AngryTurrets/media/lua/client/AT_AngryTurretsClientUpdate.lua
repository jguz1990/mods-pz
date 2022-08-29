
if isClient() == false then return end

--print("AT Turret Client Part is Loaded");
AT_TurretPistolAmmo = {"Bullets9mm", "Bullets45", "Bullets44", "Bullets38"};
AT_TurretShotgunAmmo = {"ShotgunShells"};
AT_TurretSniperAmmo = {"223Bullets", "308Bullets", "556Bullets"};
AT_TurretShootingSound = {["TurretPistol"]="AT_PistolShoot", ["TurretShotgun"]="AT_ShotgunShoot", ["TurretSniper"]="AT_SniperShoot"};
AT_TurretShootingSoundRadius = {["TurretPistol"]=30, ["TurretShotgun"]=50, ["TurretSniper"]=80};
AT_TurretAmmoTypes = {["TurretPistol"]=AT_TurretPistolAmmo, ["TurretShotgun"]=AT_TurretShotgunAmmo, ["TurretSniper"]=AT_TurretSniperAmmo};

local function On_TargetFound(module, command, comboCords)
    if module == "On_TargetFound" then
        local zombie = nil;
        zombie = get_moving_zombie(comboCords[1], comboCords[2], comboCords[3]);

        if not zombie then
            return;
        end

        local player = getPlayer();
        --find turret in gun square
        local gunSquare = getCell():getOrCreateGridSquare(comboCords[4], comboCords[5], comboCords[6]);
        local squareObjects = gunSquare:getObjects();
        local turret = nil;
        for i = 0, squareObjects:size()-1 do
            local obj = squareObjects:get(i);
            local itemContainer = obj:getContainer();
            if itemContainer ~= nil then
                local containerType = itemContainer:getType();
                if string.sub(containerType, 1, 6) == "Turret" then
                    turret = obj;
                    break;
                end
            end
        end

        if turret == nil then
            --sounds bad to shoot without a turret..
            return;
        end

        --shooting start
        local turretType = turret:getContainer():getType();
        local surroundingTable = {};

        if turretType == "TurretShotgun" then
            --if turret is shotgun, kill surrounded zombies.
            local centerSquare = zombie:getCurrentSquare();
            local centralZombieId = zombie:getOnlineID();
            -- 2: MaxRange to look for more zombies around, 4: Max count for killing zombie per shot
            local surrounding_zombies = get_surrounding_zombies(centralZombieId, centerSquare:getX(), centerSquare:getY(), centerSquare:getZ(), 2, 4);
            for k,sZombie in ipairs(surrounding_zombies) do
                if sZombie then
                    local zId = sZombie:getOnlineID();
                    --print("zZombieOnlineId:"..tostring(zId));
                    table.insert(surroundingTable, zId);
                end
            end
        end

        local zombieSquare = zombie:getSquare();
        local assassinationData = {gunX = gunSquare:getX(), gunY = gunSquare:getY(), gunZ = gunSquare:getZ(),
                                   zombX = zombieSquare:getX(), zombY = zombieSquare:getY(), zombZ = zombieSquare:getZ(),
                                   surTable = surroundingTable, mainTarget = zombie:getOnlineID(), gunType = turretType};

        sendClientCommand("On_AssassinationInProcessing", "AssassinationInProcessing", assassinationData);
        --print("Assassination process command sent");
    end
end

function get_moving_zombie(x,y,z)
    local zZombie = get_zombie_at(x, y, z);
    if(zZombie~= nil) then
        return zZombie;
    end

    local searchRange = 2;
    for i=1, searchRange, 1  do
        zZombie = get_zombie_at(x, y + i, z);
        if zZombie ~= nil then break end
        zZombie = get_zombie_at(x + i, y, z);
        if zZombie ~= nil then break end
        zZombie = get_zombie_at(x + i, y + i, z);
        if zZombie ~= nil then break end
        zZombie = get_zombie_at(x, y - i, z);
        if zZombie ~= nil then break end
        zZombie = get_zombie_at( x - i, y, z);
        if zZombie ~= nil then break end
        zZombie = get_zombie_at(x - i, y - i, z);
        if zZombie ~= nil then break end
        zZombie = get_zombie_at(x - i, y + i, z);
        if zZombie ~= nil then break end
        zZombie = get_zombie_at(x + i, y - i, z);
        if zZombie ~= nil then break end

        for c = 1, searchRange, 1 do
            zZombie = get_zombie_at(x, y + i + c, z);
            if zZombie ~= nil then break end
            zZombie = get_zombie_at(x + i, y + i + c, z);
            if zZombie ~= nil then break end
            zZombie = get_zombie_at(x + i + c, y, z);
            if zZombie ~= nil then break end
            zZombie = get_zombie_at(x + i + c, y + i, z);
            if zZombie ~= nil then break end
            zZombie = get_zombie_at(x + i + c, y + i + c, z);
            if zZombie ~= nil then break end
            zZombie = get_zombie_at(x, y - i - c, z);
            if zZombie ~= nil then break end
            zZombie = get_zombie_at(x - i, y - i - c, z);
            if zZombie ~= nil then break end
            zZombie = get_zombie_at(x - i - c, y, z);
            if zZombie ~= nil then break end
            zZombie = get_zombie_at(x - i - c, y - i, z);
            if zZombie ~= nil then break end
            zZombie = get_zombie_at(x - i - c, y - i - c, z);
            if zZombie ~= nil then break end
            zZombie = get_zombie_at(x - i, y + i + c, z);
            if zZombie ~= nil then break end
            zZombie = get_zombie_at(x - i - c, y + i, z);
            if zZombie ~= nil then break end
            zZombie = get_zombie_at(x - i - c, y + i + c, z);
            if zZombie ~= nil then break end
            zZombie = get_zombie_at(x + i, y - i - c, z);
            if zZombie ~= nil then break end
            zZombie = get_zombie_at(x + i + c, y - i, z);
            if zZombie ~= nil then break end
            zZombie = get_zombie_at(x + i + c, y - i - c, z);
            if zZombie ~= nil then break end
        end
    end
    return zZombie;
end
function get_surrounding_zombies(zombieOnlineId, x,y,z,searchRange,maxZTargets)
    local surrounding_zombies = {};
    local zZombie = get_zombie_at(x, y, z);
    local zCount = 0;

    if(zZombie~= nil) then
        if (zCount < maxZTargets) then
            if zZombie:getOnlineID() ~= zombieOnlineId then
                zCount = zCount + 1;
                table.insert(surrounding_zombies, zZombie);
                if (zCount >= maxZTargets) then
                    return surrounding_zombies;
                end
            end
        end
    end

    for i=1, searchRange, 1  do
        zZombie = get_zombie_at(x, y + i, z);
        if zZombie ~= nil then
            if (zCount < maxZTargets) then
                if zZombie:getOnlineID() ~= zombieOnlineId then
                    zCount = zCount + 1;
                    table.insert(surrounding_zombies, zZombie);
                    if (zCount >= maxZTargets) then
                        break;
                    end
                end
            else
                break;
            end
        end
        zZombie = get_zombie_at(x + i, y, z);
        if zZombie ~= nil then
            if (zCount < maxZTargets) then
                if zZombie:getOnlineID() ~= zombieOnlineId then
                    zCount = zCount + 1;
                    table.insert(surrounding_zombies, zZombie);
                    if (zCount >= maxZTargets) then
                        break;
                    end
                end
            else
                break;
            end
        end
        zZombie = get_zombie_at(x + i, y + i, z);
        if zZombie ~= nil then
            if (zCount < maxZTargets) then
                if zZombie:getOnlineID() ~= zombieOnlineId then
                    zCount = zCount + 1;
                    table.insert(surrounding_zombies, zZombie);
                    if (zCount >= maxZTargets) then
                        break;
                    end
                end
            else
                break;
            end
        end
        zZombie = get_zombie_at(x, y - i, z);
        if zZombie ~= nil then
            if (zCount < maxZTargets) then
                if zZombie:getOnlineID() ~= zombieOnlineId then
                    zCount = zCount + 1;
                    table.insert(surrounding_zombies, zZombie);
                    if (zCount >= maxZTargets) then
                        break;
                    end
                end
            else
                break;
            end
        end
        zZombie = get_zombie_at( x - i, y, z);
        if zZombie ~= nil then
            if (zCount < maxZTargets) then
                if zZombie:getOnlineID() ~= zombieOnlineId then
                    zCount = zCount + 1;
                    table.insert(surrounding_zombies, zZombie);
                    if (zCount >= maxZTargets) then
                        break;
                    end
                end
            else
                break;
            end
        end
        zZombie = get_zombie_at(x - i, y - i, z);
        if zZombie ~= nil then
            if (zCount < maxZTargets) then
                if zZombie:getOnlineID() ~= zombieOnlineId then
                    zCount = zCount + 1;
                    table.insert(surrounding_zombies, zZombie);
                    if (zCount >= maxZTargets) then
                        break;
                    end
                end
            else
                break;
            end
        end
        zZombie = get_zombie_at(x - i, y + i, z);
        if zZombie ~= nil then
            if (zCount < maxZTargets) then
                if zZombie:getOnlineID() ~= zombieOnlineId then
                    zCount = zCount + 1;
                    table.insert(surrounding_zombies, zZombie);
                    if (zCount >= maxZTargets) then
                        break;
                    end
                end
            else
                break;
            end
        end
        zZombie = get_zombie_at(x + i, y - i, z);
        if zZombie ~= nil then
            if (zCount < maxZTargets) then
                if zZombie:getOnlineID() ~= zombieOnlineId then
                    zCount = zCount + 1;
                    table.insert(surrounding_zombies, zZombie);
                    if (zCount >= maxZTargets) then
                        break;
                    end
                end
            else
                break;
            end
        end
        for c = 1, searchRange, 1 do
            zZombie = get_zombie_at(x, y + i + c, z);
            if zZombie ~= nil then
                if (zCount < maxZTargets) then
                    if zZombie:getOnlineID() ~= zombieOnlineId then
                        zCount = zCount + 1;
                        table.insert(surrounding_zombies, zZombie);
                        if (zCount >= maxZTargets) then
                            break;
                        end
                    end
                else
                    break;
                end
            end
            zZombie = get_zombie_at(x + i, y + i + c, z);
            if zZombie ~= nil then
                if (zCount < maxZTargets) then
                    if zZombie:getOnlineID() ~= zombieOnlineId then
                        zCount = zCount + 1;
                        table.insert(surrounding_zombies, zZombie);
                        if (zCount >= maxZTargets) then
                            break;
                        end
                    end
                else
                    break;
                end
            end
            zZombie = get_zombie_at(x + i + c, y, z);
            if zZombie ~= nil then
                if (zCount < maxZTargets) then
                    if zZombie:getOnlineID() ~= zombieOnlineId then
                        zCount = zCount + 1;
                        table.insert(surrounding_zombies, zZombie);
                        if (zCount >= maxZTargets) then
                            break;
                        end
                    end
                else
                    break;
                end
            end
            zZombie = get_zombie_at(x + i + c, y + i, z);
            if zZombie ~= nil then
                if (zCount < maxZTargets) then
                    if zZombie:getOnlineID() ~= zombieOnlineId then
                        zCount = zCount + 1;
                        table.insert(surrounding_zombies, zZombie)
                        if (zCount >= maxZTargets) then
                            break;
                        end
                    end
                else
                    break;
                end
            end
            zZombie = get_zombie_at(x + i + c, y + i + c, z);
            if zZombie ~= nil then
                if (zCount < maxZTargets) then
                    if zZombie:getOnlineID() ~= zombieOnlineId then
                        zCount = zCount + 1;
                        table.insert(surrounding_zombies, zZombie);
                        if (zCount >= maxZTargets) then
                            break;
                        end
                    end
                else
                    break;
                end
            end
            zZombie = get_zombie_at(x, y - i - c, z);
            if zZombie ~= nil then
                if (zCount < maxZTargets) then
                    if zZombie:getOnlineID() ~= zombieOnlineId then
                        zCount = zCount + 1;
                        table.insert(surrounding_zombies, zZombie);
                        if (zCount >= maxZTargets) then
                            break;
                        end
                    end
                else
                    break;
                end
            end
            zZombie = get_zombie_at(x - i, y - i - c, z);
            if zZombie ~= nil then
                if (zCount < maxZTargets) then
                    if zZombie:getOnlineID() ~= zombieOnlineId then
                        zCount = zCount + 1;
                        table.insert(surrounding_zombies, zZombie);
                        if (zCount >= maxZTargets) then
                            break;
                        end
                    end
                else
                    break;
                end
            end
            zZombie = get_zombie_at(x - i - c, y, z);
            if zZombie ~= nil then
                if (zCount < maxZTargets) then
                    if zZombie:getOnlineID() ~= zombieOnlineId then
                        zCount = zCount + 1;
                        table.insert(surrounding_zombies, zZombie);
                        if (zCount >= maxZTargets) then
                            break;
                        end
                    end
                else
                    break;
                end
            end
            zZombie = get_zombie_at(x - i - c, y - i, z);
            if zZombie ~= nil then
                if (zCount < maxZTargets) then
                    if zZombie:getOnlineID() ~= zombieOnlineId then
                        zCount = zCount + 1;
                        table.insert(surrounding_zombies, zZombie);
                        if (zCount >= maxZTargets) then
                            break;
                        end
                    end
                else
                    break;
                end
            end
            zZombie = get_zombie_at(x - i - c, y - i - c, z);
            if zZombie ~= nil then
                if (zCount < maxZTargets) then
                    if zZombie:getOnlineID() ~= zombieOnlineId then
                        zCount = zCount + 1;
                        table.insert(surrounding_zombies, zZombie);
                        if (zCount >= maxZTargets) then
                            break;
                        end
                    end
                else
                    break;
                end
            end
            zZombie = get_zombie_at(x - i, y + i + c, z);
            if zZombie ~= nil then
                if (zCount < maxZTargets) then
                    if zZombie:getOnlineID() ~= zombieOnlineId then
                        zCount = zCount + 1;
                        table.insert(surrounding_zombies, zZombie);
                        if (zCount >= maxZTargets) then
                            break;
                        end
                    end
                else
                    break;
                end
            end
            zZombie = get_zombie_at(x - i - c, y + i, z);
            if zZombie ~= nil then
                if (zCount < maxZTargets) then
                    if zZombie:getOnlineID() ~= zombieOnlineId then
                        zCount = zCount + 1;
                        table.insert(surrounding_zombies, zZombie);
                        if (zCount >= maxZTargets) then
                            break;
                        end
                    end
                else
                    break;
                end
            end
            zZombie = get_zombie_at(x - i - c, y + i + c, z);
            if zZombie ~= nil then
                if (zCount < maxZTargets) then
                    if zZombie:getOnlineID() ~= zombieOnlineId then
                        zCount = zCount + 1;
                        table.insert(surrounding_zombies, zZombie);
                        if (zCount >= maxZTargets) then
                            break;
                        end
                    end
                else
                    break;
                end
            end
            zZombie = get_zombie_at(x + i, y - i - c, z);
            if zZombie ~= nil then
                if (zCount < maxZTargets) then
                    if zZombie:getOnlineID() ~= zombieOnlineId then
                        zCount = zCount + 1;
                        table.insert(surrounding_zombies, zZombie);
                        if (zCount >= maxZTargets) then
                            break;
                        end
                    end
                else
                    break;
                end
            end
            zZombie = get_zombie_at(x + i + c, y - i, z);
            if zZombie ~= nil then
                if (zCount < maxZTargets) then
                    if zZombie:getOnlineID() ~= zombieOnlineId then
                        zCount = zCount + 1;
                        table.insert(surrounding_zombies, zZombie);
                        if (zCount >= maxZTargets) then
                            break;
                        end
                    end
                else
                    break;
                end
            end
            zZombie = get_zombie_at(x + i + c, y - i - c, z);
            if zZombie ~= nil then
                if (zCount < maxZTargets) then
                    if zZombie:getOnlineID() ~= zombieOnlineId then
                        zCount = zCount + 1;
                        table.insert(surrounding_zombies, zZombie);
                        if (zCount >= maxZTargets) then
                            break;
                        end
                    end
                else
                    break;
                end
            end
        end
    end

    local hash = {};
    local result = {};

    for _,v in ipairs(surrounding_zombies) do
        if v then
            local zId = v:getOnlineID();
            if (not hash[zId]) then
                table.insert(result, v);
                hash[zId] = true;
            end
        end
    end

    return result;
end
function get_zombie_at(x,y,z)
    local doomedZombie = nil;
    local zTargetSquare = getCell():getOrCreateGridSquare(x, y, z);
    doomedZombie = zTargetSquare:getZombie();

    if doomedZombie then
        if doomedZombie:isDead() == true then
            doomedZombie = nil;
        end
    end
    return doomedZombie;
end

-- check if the square has a turret
function AT_CheckSquareHasTurret(turretSquare)
    if not turretSquare then return end
    local squareObjects = turretSquare:getObjects();
    for i = 0, squareObjects:size()-1 do
        local obj = squareObjects:get(i);
        local itemContainer = obj:getContainer();
        if itemContainer ~= nil then
            local containerType = itemContainer:getType();
            if string.sub(containerType, 1, 6) == "Turret" then
                return obj;
            end
        end
    end
end
-- check and return if the turret has the right ammo inside
function AT_GetAmmoInTurret(turretobj)
    local turret = turretobj:getContainer();
    local ammo = nil;
    local ammoTable = AT_TurretAmmoTypes[turret:getType()];
    for key,value in ipairs(ammoTable) do
        ammo = turret:getItemFromType(value);
        if ammo then
            break;
        end
    end
    return ammo;
end

function WeAreInShowRange(gunX, gunY, player)
    local answer = false;

    local tX = gunX;
    local tY = gunY;

    local playerX = player:getX();
    local playerY = player:getY();

    local turretVisualEffectRadius = 120;
    local minX = tX - turretVisualEffectRadius;
    local maxX = tX + turretVisualEffectRadius;
    local minY = tY - turretVisualEffectRadius;
    local maxY = tY + turretVisualEffectRadius;

    if playerX >= minX and playerX <= maxX then
        if playerY >= minY and playerY <= maxY then
            answer = true;
        end
    end

    return answer;
end

function On_AssassinationContract(module, command, args)
    if module ~= "On_AssassinationContract" then return end
    --print("On_AssassinationContract received");

    local neo = nil;
    local mainTarget = args.mainTarget;
    if not mainTarget then
        --print("No target - No Deal");
        return;
    end

    local currentPlayer = getPlayer();
    if currentPlayer:getOnlineID() == args.neo then
        neo = currentPlayer;
        --print("Welcome Sir, You are now promoted to Neo");
    end

    if not neo then
        if WeAreInShowRange(args.gunX, args.gunY, currentPlayer) == false then
            --print("You are skipping turelko show");
            return;
        end
    end

    local mainZombie = nil;
    local zombieSquare = getCell():getOrCreateGridSquare(args.zombX, args.zombY, args.zombZ);
    zZombieList = zombieSquare:getCell():getZombieList();

    if zZombieList then
        for i = 0, zZombieList:size()-1, 1 do
            if (zZombieList:get(i):getOnlineID() == args.mainTarget) then
                mainZombie = zZombieList:get(i);
                break;
            end
        end
    end

    if not mainZombie then
        --print("No main zombie - No big Deal");
        return;
    end

    if args.surTable then
        if zZombieList then
            for i = 0, zZombieList:size()-1, 1 do
                local zZombie = zZombieList:get(i);
                for k, v  in ipairs(args.surTable) do
                    if k then
                        if (zZombie:getOnlineID() == v) then
                            if neo then
                                zZombie:addRandomBloodDirtHolesEtc();
                                zZombie:Kill(currentPlayer);
                            else
                                zZombie:applyDamageFromVehicle(777, 777);
                            end
                        end
                    end
                end
            end
        end
    end

    if neo then
        local gunSquare = getCell():getOrCreateGridSquare(args.gunX, args.gunY, args.gunZ);
        local soundString = AT_TurretShootingSound[args.gunType]..tostring(ZombRand(3));
        local sound = getSoundManager():PlayWorldSound(soundString, gunSquare, 0, 4, 1.0, false);
        mainZombie:addRandomBloodDirtHolesEtc();
        mainZombie:startMuzzleFlash();
        mainZombie:Kill(currentPlayer);
    else
        mainZombie:applyDamageFromVehicle(777, 777);
    end

    --print("Assassination accomplished");
    local turretCords = { gunX = args.gunX, gunY = args.gunY, gunZ = args.gunZ};
    if neo then
        sendClientCommand("On_PremiumAssassinationAccomplished", "PremiumAssassinationAccomplished", turretCords);
        --print("PremiumAssassinationAccomplished command sent");
    end
end

function On_JobDone(module, command, args)
    if module ~= "On_JobDone" then return end
    --print("On_JobDone");

    local gunSquare = getCell():getOrCreateGridSquare(args.x, args.y, args.z);
    local turretObj = AT_CheckSquareHasTurret(gunSquare);
    if not turretObj then
        --print("Turelko moved out");
        return;
    end

    local ammo = AT_GetAmmoInTurret(turretObj);
    if ammo then
        turretObj:getContainer():Remove(ammo);
        --print("Ammo sacrificed (visually)");
    end
end

Events.OnServerCommand.Add(On_TargetFound);
Events.OnServerCommand.Add(On_JobDone);
Events.OnServerCommand.Add(On_AssassinationContract);