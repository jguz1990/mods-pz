
require "TCMusicDefenitions"

local musicClientTable = {}
local musicPlayerTable = {}
local musicVehicleTable = {}

local tickControl = 100 -- Сокращает количество срабатываний скрипта. Больше число - меньше срабатываний
local tickStart = 0

function OnRenderTickClientCheckMusic ()
    tickStart = tickStart + 1
    if tickStart % tickControl == 0 then
        tickStart = 0
        -- Запрашиваем данные с сервера о музыке
        if isClient() then 
            ModData.request("trueMusicData") 
        end
        -- проверяем играет ли музыка в машинах, рядом с нами
        local vehicles = getCell():getVehicles()
        for i=0, vehicles:size()-1 do
            local vehicle = vehicles:get(i)
            local vehicleRadio = vehicle:getPartById("Radio")
            -- Ищем рядом авто, которые должны играть музыку
            if vehicleRadio and vehicleRadio:getModData().tcmusic then
                if vehicleRadio:getModData().tcmusic.mediaItem and 
                        vehicleRadio:getModData().tcmusic.isPlaying then
                    -- если найдено
                    vehicle:updateParts(); -- Выполнить обновление деталей, тем самым, вызвав функцию на сервере Vehicle.Update.Radio
                    -- print("updateParts")
                    if not musicVehicleTable[vehicle:getSqlId()] then
                        -- если авто нет в локальной таблице, значит музыка не играет. Включаем музыку и записываем авто в таблицу.
                        local id = vehicle:getEmitter():playSoundImpl(vehicleRadio:getModData().tcmusic.mediaItem, IsoObject.new())
                        local vol = vehicleRadio:getDeviceData():getDeviceVolume()
                        local vol3d = true
                        if vehicle == getPlayer():getVehicle() then -- Если текущий игрок сидит в "играющей" машине для него повышается громкость и выключается 3д-эффект
                            vol = vol * 5
                            vol3d = false
                        elseif vehicleRadio:getModData().tcmusic.windowsOpen then
                            -- Открытые/разбитые окна влияют на громкость музыку и дальность приманивания зомби
                            vol = vol * 3
                        end
                        musicVehicleTable[vehicle:getSqlId()] = {
                            obj = vehicle,
                            localmusicid = id,
                            volume = vol,
                        }
                        vehicle:getEmitter():setVolume(musicVehicleTable[vehicle:getSqlId()]["localmusicid"], vol / 5)
                        vehicle:getEmitter():set3D(musicVehicleTable[vehicle:getSqlId()]["localmusicid"], vol3d)
                    else
                        -- если авто есть в локальной таблице, значит музыка играет
                        if musicVehicleTable[vehicle:getSqlId()]["obj"]:getEmitter() and 
                                musicVehicleTable[vehicle:getSqlId()]["obj"]:getEmitter():isPlaying(musicVehicleTable[vehicle:getSqlId()]["localmusicid"]) then
                            -- если музыка играет, продолжаем контролировать громкость и необходимость вкл/выкл 3д-эффекта
                            local vol = vehicleRadio:getDeviceData():getDeviceVolume()
                            if vehicle == getPlayer():getVehicle() then
                                vol = vol * 5
                                vehicle:getEmitter():set3D(musicVehicleTable[vehicle:getSqlId()]["localmusicid"], false)
                            else
                                if vehicleRadio:getModData().tcmusic.windowsOpen then
                                    vol = vol * 3
                                end
                                vehicle:getEmitter():set3D(musicVehicleTable[vehicle:getSqlId()]["localmusicid"], true)
                            end
                            if musicVehicleTable[vehicle:getSqlId()]["volume"] ~= vol then
                                vehicle:getEmitter():setVolume(musicVehicleTable[vehicle:getSqlId()]["localmusicid"], vol / 5)
                                musicVehicleTable[vehicle:getSqlId()]["volume"] = vol
                            end
                        else
                        -- если музыка перестала играть, отправляем информацию на сервер и очищаем локальную таблицу
                            sendClientCommand(getPlayer(), 'truemusic', 'setMediaItem', { vehicle = musicVehicleTable[vehicle:getSqlId()]["obj"]:getId(), mediaItem = musicVehicleTable[vehicle:getSqlId()]["obj"]:getPartById("Radio"):getModData().tcmusic.mediaItem, isPlaying = false })
                            musicVehicleTable[vehicle:getSqlId()] = nil
                        end
                    end
                else
                    if musicVehicleTable[vehicle:getSqlId()] then -- авто не должно играть музыка, но оно есть в локальной таблице
                        if musicVehicleTable[vehicle:getSqlId()]["obj"] and musicVehicleTable[vehicle:getSqlId()]["obj"]:getEmitter() then
                            musicVehicleTable[vehicle:getSqlId()]["obj"]:getEmitter():stopSound(musicVehicleTable[vehicle:getSqlId()]["localmusicid"])
                        end
                        musicVehicleTable[vehicle:getSqlId()] = nil
                    end
                end
            end
        end
        for musicId, musicClientData in pairs(musicVehicleTable) do
            -- пока в локальной таблице есть авто, мы продолжаем их мониторить
            if not musicClientData["obj"] then
                musicVehicleTable[musicId] = nil
            else
                if musicClientData["obj"]:getPartById("Radio") and 
                        musicClientData["obj"]:getPartById("Radio"):getModData().tcmusic and 
                        musicClientData["obj"]:getPartById("Radio"):getModData().tcmusic.mediaItem then
                    if musicClientData["obj"]:getEmitter() and not musicClientData["obj"]:getEmitter():isPlaying(musicClientData["localmusicid"]) then
                        -- если авто перестало играть музыку, отправляем информацию на сервер
                        sendClientCommand(getPlayer(), 'truemusic', 'setMediaItem', { vehicle = musicClientData["obj"]:getId(), mediaItem = musicClientData["obj"]:getPartById("Radio"):getModData().tcmusic.mediaItem, isPlaying = false })
                        musicVehicleTable[musicId] = nil
                    end
                else
                    musicClientData["obj"]:getEmitter():stopSound(musicClientData["localmusicid"])
                    musicVehicleTable[musicId] = nil
                end
            end
        end

        local musicServerTable = ModData.getOrCreate("trueMusicData")
        if musicServerTable and musicServerTable["now_play"] then
            for musicId, musicServerData in pairs(musicServerTable["now_play"]) do
                -- print("IN MODDATA:" .. musicId)
                local strCoord = string.match(musicId, '%d*[-]%d*[-]%d*')
                if musicId == "Vehicle" then
                    
                elseif strCoord then -- Музыка из мира
                    local musicData = musicClientTable[musicId] -- musicId = координаты места где стоит музыкальный проигрыватель
                    if not (musicData and musicData["obj"]) then -- если проигрывателя нет в локальной таблице, значит музыка не играет. Ищем проигрыватель, включаем музыку и записываем авто в таблицу.
                        local i = string.find(strCoord, "-")
                        local x = tonumber(string.sub(strCoord, 1, i-1))
                        strCoord = string.sub(strCoord, i+1)
                        i = string.find(strCoord, "-")
                        local y = tonumber(string.sub(strCoord, 1, i-1))
                        local z = tonumber(string.sub(strCoord, i+1))
                        local playerObj = getPlayer()
                        
                        if playerObj and (playerObj:getX() >= x - 60 and playerObj:getX() <= x + 60 and
                                playerObj:getY() >= y - 60 and playerObj:getY() <= y + 60) then -- если игрок рядом с местом, где играет музыка
                            local musicSquare = getSquare(x,y,z)
                            if musicSquare then
                                for i=1,musicSquare:getObjects():size() do
                                    object2 = musicSquare:getObjects():get(i-1)
                                    if instanceof( object2, "IsoWaveSignal") then
                                        local sprite = object2:getSprite()
                                        if sprite ~= nil then
                                            local name_sprite = sprite:getName()
                                            if TCMusic.WorldMusicPlayer[name_sprite] then
                                                getSoundManager():StopMusic()
                                                -- print(getSoundManager():getCurrentMusicName())
                                                -- print(getSoundManager():getCurrentMusicLibrary())
                                                musicClientTable[musicId] = {
                                                    obj = object2, 
                                                    volume = object2:getDeviceData():getDeviceVolume()
                                                }
                                                musicData = musicClientTable[musicId]
                                                if musicData["obj"]:getDeviceData():getEmitter() and musicData["obj"]:getDeviceData():getEmitter():isPlaying(musicData["obj"]:getModData().tcmusic.mediaItem) then
                                                    -- Если музыка уже играет не включать повторно (музыка для игроков в наушниках включается в другом месте)
                                                else
                                                    if musicData["obj"]:getDeviceData():getEmitter() then
                                                        musicData["obj"]:getDeviceData():getEmitter():stopAll()
                                                    end
                                                    musicData["obj"]:getDeviceData():playSound(musicData["obj"]:getModData().tcmusic.mediaItem, musicData["volume"] * 0.4, false)
                                                end
                                                break
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    if musicData and musicData["obj"] then -- если проигрыватель есть в локальной таблице
                        if musicData["obj"]:getModData().tcmusic.isPlaying then
                            if musicData["obj"]:getDeviceData() and musicData["obj"]:getDeviceData():getEmitter() then
                                if not musicData["obj"]:getDeviceData():getEmitter():isPlaying(musicData["obj"]:getModData().tcmusic.mediaItem) then
                                    -- если музыка перестала играть, отправляем информацию на сервер и очищаем локальную таблицу
                                    musicData["obj"]:getDeviceData():getEmitter():stopAll()
                                    musicData["obj"]:getModData().tcmusic.isPlaying = false
                                    musicData["obj"]:transmitModData()
                                    ModData.getOrCreate("trueMusicData")["now_play"][musicId] = nil
                                    musicClientTable[musicId] = nil
                                    if isClient() then ModData.transmit("trueMusicData") end
                                else
                                    -- если музыка играет, контролируем настройки громкости
                                    if musicData["volume"] ~= musicData["obj"]:getDeviceData():getDeviceVolume() then
                                        musicData["obj"]:getDeviceData():getEmitter():setVolumeAll(musicData["obj"]:getDeviceData():getDeviceVolume() * 0.4)
                                        musicClientTable[musicId]["volume"] = musicData["obj"]:getDeviceData():getDeviceVolume()
                                    end
                                end
                            else
                                musicClientTable[musicId] = nil
                            end
                        else
                            if musicData["obj"]:getDeviceData() and musicData["obj"]:getDeviceData():getEmitter() then
                                musicData["obj"]:getDeviceData():getEmitter():stopAll()
                            end
                            ModData.getOrCreate("trueMusicData")["now_play"][musicId] = nil
                            musicClientTable[musicId] = nil
                            if isClient() then ModData.transmit("trueMusicData") end
                        end
                    end
                else -- Музыка "из карманов"
                    local player = nil
                    if isClient() then
                        player = getPlayerByOnlineID(musicId)
                    end
                    if player and not player:isDead() then
                        local x = player:getX()
                        local y = player:getY()
                        local z = player:getZ()
                        local playerObj = getPlayer()
                        if playerObj then 
                            if playerObj == player then -- разбор случая для локального игрока, у которого в руках играем музыка
                                local musicData = musicPlayerTable[musicId]
                                local musicplayer = playerObj:getInventory():getItemById(musicServerData["itemid"])
                                if musicplayer and (not musicplayer:getModData().tcmusic.mediaItem or musicplayer:getDeviceData():getEmitter() and not musicplayer:getDeviceData():getEmitter():isPlaying(musicplayer:getModData().tcmusic.mediaItem)) then
                                    -- если музыка перестала играть, отправляем информацию на сервер
                                    musicplayer:getModData().tcmusic.isPlaying = false
                                    ModData.getOrCreate("trueMusicData")["now_play"][musicId] = nil
                                    if isClient() then ModData.transmit("trueMusicData") end
                                end
                            elseif ((playerObj:getX() >= x - 60 and playerObj:getX() <= x + 60 and
                                    playerObj:getY() >= y - 60 and playerObj:getY() <= y + 60)) then
                                -- если локальный игрок рядом с другим игроком у которого играет музыка
                                local musicData = musicPlayerTable[musicId]
                                if not musicData then
                                    -- если игрока с музыкой нет в локальной таблице
                                    if -- (player:getPrimaryHandItem() and (player:getPrimaryHandItem():getID() == musicServerData["itemid"])) or 
                                            (player:getSecondaryHandItem() and (player:getSecondaryHandItem():getID() == musicServerData["itemid"])) and 
                                            player:getSecondaryHandItem():getDeviceData() and (player:getSecondaryHandItem():getDeviceData():getPower() > 0) then
                                        -- проверяем, что проигрыватель всё еще в руках игрока, запускаем музыку, записываем в локальную таблицу
                                        local id = player:getEmitter():playSoundImpl(musicServerData["musicName"], nil)
                                        local koef = 0.4 -- коэффициент отвечающий за наличие наушников
                                        if musicServerData["headphone"] then
                                            koef = 0.02
                                        end
                                        musicPlayerTable[musicId] = {
                                            localmusicid = id,
                                            volume = musicServerData["volume"] * koef,
                                        }
                                        player:getEmitter():setVolume(musicPlayerTable[musicId]["localmusicid"], musicServerData["volume"] * koef)
                                    end
                                else
                                    if player:getEmitter():isPlaying(musicData["localmusicid"]) then
                                        -- если игрок в локальной таблице и музыка продолжает играть, контролируем громкость
                                        if -- (player:getPrimaryHandItem() and (player:getPrimaryHandItem():getID() == musicServerData["itemid"])) or 
                                            (player:getSecondaryHandItem() and player:getSecondaryHandItem():getDeviceData() and 
                                                player:getSecondaryHandItem():getDeviceData():getIsTurnedOn() and 
                                                (player:getSecondaryHandItem():getDeviceData():getPower() > 0) and 
                                                (player:getSecondaryHandItem():getID() == musicServerData["itemid"])) then
                                            local koef = 0.4  -- коэффициент отвечающий за наличие наушников
                                            if musicServerData["headphone"] then
                                                koef = 0.02
                                            end
                                            if musicData["volume"] ~= musicServerData["volume"] * koef then
                                                player:getEmitter():setVolume(musicData["localmusicid"], musicServerData["volume"] * koef)
                                                musicData["volume"] = musicServerData["volume"] * koef
                                            end
                                        else
                                        -- если у игрока пропал проигрыватель из рук, отключаем музыку
                                            ModData.getOrCreate("trueMusicData")["now_play"][musicId] = nil
                                            if isClient() then ModData.transmit("trueMusicData") end
                                            player:getEmitter():stopSound(musicData["localmusicid"])
                                            musicPlayerTable[musicId] = nil
                                        end
                                    else
                                        -- если музыка закончилась, отправляем информацию на сервер
                                        ModData.getOrCreate("trueMusicData")["now_play"][musicId] = nil
                                        if isClient() then ModData.transmit("trueMusicData") end
                                        musicPlayerTable[musicId] = nil
                                    end
                                end
                            end
                        end
                    else
                        -- если игрок с музыкой вышел из игры или умер
                        if player and musicPlayerTable[musicId] then
                            player:getEmitter():stopSound(musicPlayerTable[musicId]["localmusicid"])
                        end
                        ModData.getOrCreate("trueMusicData")["now_play"][musicId] = nil
                        if isClient() then ModData.transmit("trueMusicData") end
                        musicPlayerTable[musicId] = nil
                    end
                end
            end
        end
        -- очищаем локальные таблицы от "фантомов", о которых не знает сервер
        for musicId, musicClientData in pairs(musicClientTable) do
            if not ModData.getOrCreate("trueMusicData")["now_play"][musicId] then
                if musicClientData["obj"] then
                    if musicClientData["obj"]:getDeviceData() and musicClientData["obj"]:getDeviceData():getEmitter() then
                        musicClientData["obj"]:getDeviceData():getEmitter():stopAll()
                    end
                    if musicClientData["obj"]:getModData() and musicClientData["obj"]:getModData().tcmusic then
                        musicClientData["obj"]:getModData().tcmusic.isPlaying = false
                        if string.match(musicId, '%d*[-]%d*[-]%d*') then
                            musicClientData["obj"]:transmitModData()
                        end
                    end
                end
                musicClientTable[musicId] = nil
            end
        end
        for musicId, musicClientData in pairs(musicPlayerTable) do
            if not ModData.getOrCreate("trueMusicData")["now_play"][musicId] then
                local player = nil
                if isClient() then
                    player = getPlayerByOnlineID(musicId)
                else
                    player = getPlayer()
                end
                if player then
                    player:getEmitter():stopSound(musicClientData["localmusicid"])
                end
                musicPlayerTable[musicId] = nil
            end
        end
    end
end

function startTrueMusicTick ()
    Events.OnTick.Add(OnRenderTickClientCheckMusic)
end

Events.OnCreatePlayer.Add(startTrueMusicTick)
    
function TCMusic.searchBoombox (_item, dx, dy)
    local square = _item:getWorldItem():getSquare()
    if square == nil then return end
    for y=square:getY() - dy, square:getY() + dy do
        for x=square:getX() - dx, square:getX() + dx do
            local square2 = getCell():getGridSquare(x, y, square:getZ())
            if square2 ~= nil then
                for i=1,square2:getObjects():size() do
                    local object = square2:getObjects():get(i-1)
                    if instanceof( object, "IsoWaveSignal") then
                        local sprite = object:getSprite()
                        if sprite ~= nil then
                            local name_sprite = object:getSprite():getName()
                            if TCMusic.WorldMusicPlayer[name_sprite] == TCMusic.WorldMusicPlayer[_item:getFullType()] then
                                if object:getModData().tcmusic and 
                                        object:getModData().tcmusic.itemid == 
                                        _item:getWorldItem():getSquare():getX() .. 
                                        _item:getWorldItem():getSquare():getY() .. 
                                        _item:getWorldItem():getSquare():getZ() then
                                    -- print("Boombox found!")
                                    if not _item:getModData().tcmusic then
                                        _item:getModData().tcmusic = {}
                                    end
                                    _item:getModData().tcmusic.worldObj = object
                                    return
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end    

TCMusic.oldISRadioWindow_activate = ISRadioWindow.activate

function ISRadioWindow.activate( _player, _item, bol)
    if _player == getPlayer() then
        if instanceof(_item, "Radio") then
            if TCMusic.ItemMusicPlayer[_item:getFullType()] then
                if _player:getSecondaryHandItem() == _item then
                    ISTCBoomboxWindow.activate( _player, _item );
                end
            elseif TCMusic.WorldMusicPlayer[_item:getFullType()] then
                
            else
                -- print("1")
                TCMusic.oldISRadioWindow_activate( _player, _item, bol );
            end
        elseif instanceof(_item, "IsoWaveSignal") then
            -- print(_item)
            -- print(_item:getSprite())
            -- print(_item:getSprite():getName())
            -- print(_item:getSprite():getParentObjectName())
            -- print(_item:getSprite():getProperties())
            if _item:getSprite() and TCMusic.WorldMusicPlayer[_item:getSprite():getName()] then
                ISTCBoomboxWindow.activate( _player, _item );
            else
                -- print("2")
                -- ISTCBoomboxWindow.activate( _player, _item );
                TCMusic.oldISRadioWindow_activate( _player, _item, bol );
            end
        else
            -- print("3")
            TCMusic.oldISRadioWindow_activate( _player, _item, bol );
        end
    end
end

function ISRadioWindow.activateBoombox( _player, _item, bol)
    if _player == getPlayer() then
        ISRadioWindow.searchBoombox( _player, _item)
        ISTCBoomboxWindow.activate( _player, _item:getModData().tcmusic.worldObj );
    end
end

function ISRadioWindow.searchBoombox( _p, _item)
    if not _item:getModData().tcmusic then
        _item:getModData().tcmusic = {}
        _item:getModData().tcmusic.mediaItem = nil
        _item:getModData().tcmusic.worldObj = nil
        _item:getModData().tcmusic.needSpeaker = nil
    end
    if not _item:getModData().tcmusic.worldObj then
        TCMusic.searchBoombox (_item, 1, 1)
    end
    if not _item:getModData().tcmusic.worldObj then
        -- print("BOOMBOX NOT FOUND!")
        local radio = IsoRadio.new(getCell(), _item:getWorldItem():getSquare(), getSprite(TCMusic.WorldMusicPlayer[_item:getFullType()])) -- 34 62
        _item:getWorldItem():getSquare():AddTileObject(radio)
        radio:getModData().tcmusic = _item:getModData().tcmusic
        radio:getModData().tcmusic.itemid = _item:getWorldItem():getSquare():getX() .. 
                                            _item:getWorldItem():getSquare():getY() .. 
                                            _item:getWorldItem():getSquare():getZ()
        _item:getModData().tcmusic.worldObj = radio
        radio:getModData().tcmusic.deviceType = "IsoObject"
        radio:getModData().RadioItemID = _item:getID()
        radio:getDeviceData():setIsTurnedOn(false)
        radio:getDeviceData():setPower(_item:getDeviceData():getPower())
        radio:getDeviceData():setDeviceVolume(_item:getDeviceData():getDeviceVolume())
        if _item:getDeviceData():getIsBatteryPowered() and _item:getDeviceData():getHasBattery() then
            radio:getDeviceData():setPower(_item:getDeviceData():getPower())
        else
            radio:getDeviceData():setHasBattery(false)
        end

        if _item:getDeviceData():getHeadphoneType() >= 0 then
            _item:getDeviceData():getHeadphones(_p.player:getInventory())
        end
        if isClient() then 
            radio:transmitCompleteItemToServer(); 
        end
        -- local id = "#" .. radio:getX() .. "-" .. radio:getY() .. "-" .. radio:getZ()
        sendClientCommand(_p.player, 'truemusic', 'createWO', { x = radio:getX(), y = radio:getY(), z = radio:getZ() })
    end
end

function TCMusic.OnObjectAboutToBeRemoved(object)
-- Удаление невидимого бумбокса
    if instanceof(object, "IsoWorldInventoryObject") then
        local _item = object:getItem()
        if _item and instanceof(_item, "Radio") and TCMusic.WorldMusicPlayer[_item:getFullType()] then
            TCMusic.searchBoombox (_item, 1, 1)
        end
        if _item:getModData().tcmusic and _item:getModData().tcmusic.worldObj then
            local radio = _item:getModData().tcmusic.worldObj
            if radio then
                local _sqr = radio:getSquare()
                _item:getModData().tcmusic = radio:getModData().tcmusic
                if radio:getDeviceData():getIsBatteryPowered() and radio:getDeviceData():getHasBattery() then
                    _item:getDeviceData():setHasBattery(true)
                    _item:getDeviceData():setPower(radio:getDeviceData():getPower())
                else
                    _item:getDeviceData():setHasBattery(false)
                end
                _item:getDeviceData():setDeviceVolume(radio:getDeviceData():getDeviceVolume())
                sendClientCommand(getPlayer(), 'truemusic', 'deleteWO', { 
                    x = radio:getX(), 
                    y = radio:getY(), 
                    z = radio:getZ(),
                    nameSprite = TCMusic.WorldMusicPlayer[_item:getFullType()],
                })
                _item:getModData().tcmusic.isPlaying = false
                _item:getModData().tcmusic.worldObj = nil
                _item:getModData().tcmusic.deviceType = "InventoryItem"
            end
        end
    end
end

Events.OnObjectAboutToBeRemoved.Add(TCMusic.OnObjectAboutToBeRemoved)

function TCMusic.AdvancedSoundOptions()
    SystemDisabler.setEnableAdvancedSoundOptions(true)
end

Events.OnGameBoot.Add(TCMusic.AdvancedSoundOptions)