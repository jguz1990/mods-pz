

if isClient() then return end
local TrueMCommands = {}

function TrueMCommands.setMediaItem(player, args)
-- print("Commands.setMediaItem")
    local vehicle = getVehicleById(args.vehicle)
    if vehicle then
        local part = vehicle:getPartById("Radio");
        if part then
            -- print("PART FOUND")
            if not part:getModData().tcmusic then
                part:getModData().tcmusic = {}
            end
            if args.mediaItem == "nil" then
                part:getModData().tcmusic.mediaItem = nil;
            else
                part:getModData().tcmusic.mediaItem = args.mediaItem;
            end
            part:getModData().tcmusic.isPlaying = args.isPlaying;
            part:getModData().tcmusic.volume = part:getDeviceData():getDeviceVolume();
            part:getModData().tcmusic.deviceType = "VehiclePart";
            vehicle:transmitPartModData(part);
            vehicle:updateParts();
        else
            -- print("NO RADIO")
        end
    else
        noise('no such vehicle id='..tostring(args.vehicle))
    end
end

function TrueMCommands.createWO(player, args)
-- print("TrueMCommands.createWO")
    local sqr = getSquare(args.x, args.y, args.z)
    if sqr then
        local t = ModData.getOrCreate("trueMusicData")["wo"]
        local id = "#" .. args.x .. "-" .. args.y .. "-" .. args.z
        t[id] = true
        -- print(t[id])
    else
        noise('no such square')
    end
end

function TrueMCommands.deleteWO(player, args)
-- print("TrueMCommands.deleteWO")
-- print(args.obj)
    -- if args.obj then
    local sqr = getSquare(args.x, args.y, args.z)
    if sqr then
        local t = ModData.getOrCreate("trueMusicData")["wo"]
        -- print(args.x)
        -- print(args.y)
        -- print(args.z)
        local objDelete = false
        if sqr:getObjects():size() > 0 then
            for i=1,sqr:getObjects():size() do
                local object = sqr:getObjects():get(i-1)
                if instanceof( object, "IsoWaveSignal") then
                    local sprite = object:getSprite()
                    -- print(sprite)
                    if sprite ~= nil then
                        local name_sprite = sprite:getName()
                        -- print(nameSprite)
                        if name_sprite == args.nameSprite then
                            sqr:transmitRemoveItemFromSquare(object)
                            objDelete = true
                        end
                    end
                end
            end
            local id = "#" .. args.x .. "-" .. args.y .. "-" .. args.z
            if t[id] and objDelete then
                -- print("OBJECT IN DB")
                t[id] = nil
            else
                -- print("OBJECT NOT IN DB")
            end
        end
    else
        noise('no such square')
    end
end

TrueMCommands.OnClientCommand = function(module, command, player, args)
-- print("TrueMVehicleCommands.OnClientCommand")
    if module == 'truemusic' and TrueMCommands[command] then
        local argStr = ''
        args = args or {}
        for k,v in pairs(args) do
            argStr = argStr..' '..k..'='..tostring(v)
        end
        -- print('received '..module..' '..command..' '..tostring(player)..argStr)
        TrueMCommands[command](player, args)
    end
end

Events.OnClientCommand.Add(TrueMCommands.OnClientCommand)
-- print("TRUE MUSIC EVENT ADD")