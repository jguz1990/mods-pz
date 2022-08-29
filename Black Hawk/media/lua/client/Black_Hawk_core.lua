-- local firecd={20,20,1}--{攻击间隔，数值，是否装弹}
-- local BHboomsfx={0,0}--特效
-- local boomspeed={2,2}--爆炸速度
-- local function BHbooms()
--     if BHboomsfx[1]==0 then return end
--     if BHboomsfx[2]~=13 then
--         BHboomsfx[1]:removeAllWorldObjects()
--         local Script = ScriptManager.instance:getItem("Base.theTigerSFX")
--         Script:DoParam("Icon = tankboom"..tostring(BHboomsfx[2]))
--         BHboomsfx[1]:AddWorldInventoryItem("Base.theTigerSFX", 0.5, 0.5, 0)
--         BHboomsfx[2]=BHboomsfx[2]+1
--     else
--         BHboomsfx[1]:removeAllWorldObjects()
--         BHboomsfx[1]=0
--         BHboomsfx[2]=0
--     end 
-- end


function sqobject(sqa)
    local cell = getWorld():getCell();
	local sq = sqa
	if sq == nil then return false; end
	local sqObjs = sq:getObjects();
	local sqSize = sqObjs:size();
	local tbl = {}
	for i = sqSize-1, 0, -1 do -- enumerate square objects and pack them into a table
		local obj = sqObjs:get(i);
		table.insert(tbl, obj)
	end
	return sq, sqObjs, tbl, cell


    
end
local function BHheli_update(vehicle,playerObj)

    

    -- if not playerObj:getInventory():contains("556Bullets",true) then
    --     return
        
        
    -- end
    -- vehicle:getPartById("GasTank"):setContainerContentAmount(vehicle:getPartById("GasTank"):getContainerContentAmount() - 0.0005)
    if isKeyDown(Keyboard.KEY_D) and playerObj:getInventory():contains("556Bullets") then

        if ZombRand(10)>=8 then
            playerObj:getInventory():Remove("556Bullets")
            
        end
        
        if not vehicle:getEmitter():isPlaying("thetigerfire") then
            vehicle:getEmitter():playSound("thetigerfire")
        end

        local angle = vehicle:getAngleY()
        local deltt = {}
        local angledet = 270
        if math.abs(vehicle:getAngleZ())  > 90 then
            deltt[2] = -math.sin(math.rad(90-vehicle:getAngleY()))
        else
            deltt[2] = math.sin(math.rad(90-vehicle:getAngleY()))
        end

        if deltt[2]<0 then
            if math.abs(vehicle:getAngleZ())  > 90 then
                deltt[2] = -math.sin(math.rad(90-vehicle:getAngleY()-angledet))
            else
                deltt[2] = math.sin(math.rad(90-vehicle:getAngleY()-angledet))
            end
            deltt[1] = math.cos(math.rad(90-vehicle:getAngleY()-angledet))
            
        else
            if math.abs(vehicle:getAngleZ())  > 90 then
                deltt[2] = -math.sin(math.rad(90-vehicle:getAngleY()+angledet))
            else
                deltt[2] = math.sin(math.rad(90-vehicle:getAngleY()+angledet))
            end
            deltt[1] = math.cos(math.rad(90-vehicle:getAngleY()+angledet))
        end
        local xxx =vehicle:getX()
        local yyy = vehicle:getY()
        local isbreak = 5
        for i=3 ,8 do
            xxx  = math.ceil(xxx + i*deltt[1])
            yyy =  math.ceil(yyy + i*deltt[2])
            for xx = -3 , 3 do
                if isbreak <= 0 then
                    break
                end
                for yy = -3 , 3 do
                    if isbreak <= 0 then
                        break
                    end
                    local zsquare = getCell():getGridSquare(xxx + xx,yyy + yy,0)
                    if zsquare then
                        local zombie = zsquare:getZombie()
                        if zombie then
                            zombie:Kill(playerObj)
                            isbreak=isbreak-1
                            
                        end
                    end
                end
                
            end
        
        end
    else
        vehicle:getEmitter():stopSoundByName("thetigerfire")
        
    end
end
-----------------------------------------------------------------------------------------------

local tempVector2 = Vector3f.new()
local helizuobiao = {}
local zhuansu = {3,3}
local curr_z = nil
local bladeround = 1
local vehicle2 = nil
-- local ghostheli = 0

-- local qifeifloor
local wTransformFieldNum = nil

local function getJavaFieldNum(object, fieldName)
    for i = 0, getNumClassFields(object) - 1 do
        local javaField = getClassField(object, i)
        if luautils.stringEnds(tostring(javaField), '.' .. fieldName) then
            return i
        end
    end
end

local function move_vehicle(vehicle, x_delta, y_delta, z_delta)
    if wTransformFieldNum == nil then
        wTransformFieldNum = getJavaFieldNum(vehicle, "tempTransform")
    end

    local tmpTransform = getClassFieldVal(vehicle, getClassField(vehicle, wTransformFieldNum))
    local wTranform = vehicle:getWorldTransform(tmpTransform)
    local origin = getClassFieldVal(wTranform, getClassField(wTranform, 1))
    origin:set(origin:x() + x_delta, origin:y() + y_delta, origin:z() + z_delta)
    vehicle:setWorldTransform(wTranform)
end

local function heliround(playerObj,vehicle)
    if vehicle2 == nil then return end
    curr_z = vehicle2:getWorldPos(0, 0, 0, tempVector2):z()
    local emi = vehicle2:getEmitter()
    -- vehicle2:update()

    if vehicle2:isEngineRunning() then
        if zhuansu[1] == 1 then
            if (curr_z <2 and playerObj:isGhostMode()) or vehicle == nil then
                playerObj:setGhostMode(false)
            end

            zhuansu[1] = zhuansu[2]
            local part = vehicle2:getPartById("BHheliblade")
            if part == nil then return end
            if bladeround == 1 then
                part:setModelVisible("BHblade8", false)
                part:setModelVisible("BHblade1", true)
                bladeround = 2
            elseif bladeround == 2 then
                part:setModelVisible("BHblade1", false)
                part:setModelVisible("BHblade2", true)
                bladeround = 3
            elseif bladeround == 3 then
                part:setModelVisible("BHblade2", false)
                part:setModelVisible("BHblade3", true)
                bladeround = 4
            elseif bladeround == 4 then
                part:setModelVisible("BHblade3", false)
                part:setModelVisible("BHblade4", true)
                bladeround = 5
            elseif bladeround == 5 then
                part:setModelVisible("BHblade4", false)
                part:setModelVisible("BHblade5", true)
                bladeround = 6
            elseif bladeround == 6 then
                part:setModelVisible("BHblade5", false)
                part:setModelVisible("BHblade6", true)
                bladeround = 7
            elseif bladeround == 7 then
                part:setModelVisible("BHblade6", false)
                part:setModelVisible("BHblade7", true)
                bladeround = 8
            elseif bladeround == 8 then
                part:setModelVisible("BHblade7", false)
                part:setModelVisible("BHblade8", true)
                bladeround = 1
            end
            vehicle2:update()
            
            -- if emi:isPlaying("HeliSound") and not vehicle2:isEngineRunning() then 
            --     emi:stopSoundByName("HeliSound") 
            -- end
            if emi:isPlaying("HeliSound") then return end
            local songId = emi:playAmbientLoopedImpl("HeliSound")
            playerObj:getModData()["HeliSound"] = songId
            playerObj:getModData()["HeliSoundEmi"] = emi
            playerObj:getModData()["LastHeli"] = vehicle2
            emi:setVolume(songId, 0.9)
        else
            if zhuansu[2] == 0 or zhuansu[1] == 0 then
                zhuansu[2] = 2
                zhuansu[1] = 2
            end
            zhuansu[1] = zhuansu[1] - 1
        end

    else
        if emi:isPlaying("HeliSound")  then 
            emi:stopSoundByName("HeliSound") 
        end
        if emi:isPlaying("VehicleSkid") then
            emi:stopSoundByName("VehicleSkid")
        end
        
        if curr_z > 2 then
            zhuansu[2] = 2
            move_vehicle(vehicle2, 0, -0.06, 0)
        elseif curr_z > 0.8 then
            move_vehicle(vehicle2, 0, -0.1, 0)
            zhuansu[2] = 0
            if playerObj:isGhostMode() then
                playerObj:setGhostMode(false)
            end
        end
        -- if not vehicle2:isEngineRunning() then
        -- getPlayer():setGhostMode(false)
        
        if curr_z < 0.8 then
            vehicle2 = nil
        end
    end
    
end

-- local function heliSoundUpdate()
--     local playerObj = getPlayer()
--     if playerObj == nil then return end
--     local vehicle = playerObj:getVehicle()
--     if vehicle == nil then return end
--     if curr_z == nil then
--         curr_z = vehicle:getWorldPos(0, 0, 0, tempVector2):z()
--     end
--     if toInt(curr_z)> 2 then
--         vehicle:setZ(toInt(curr_z))
--     end

-- end


local function heli_update()
    local playerObj = getPlayer()
    if playerObj == nil then return end
    

    -- if ghostheli == 1 then
    --     playerObj:setGhostMode(false)
    --     ghostheli = 0
    -- end
    local vehicle = playerObj:getVehicle()
    heliround(playerObj,vehicle)
    if vehicle == nil then return end
    if vehicle:getScript():getFullName() ~= "Base.Black_Hawk" then return end


    

    BHheli_update(vehicle,playerObj)

    
    
    -- heliSoundUpdate()
    vehicle2 = vehicle

    if not vehicle:isEngineRunning() then return end

    vehicle:getPartById("GasTank"):setContainerContentAmount(vehicle:getPartById("GasTank"):getContainerContentAmount() - 0.001)
    curr_z = vehicle:getWorldPos(0, 0, 0, tempVector2):z()
    if curr_z > 1.5  then
        if not playerObj:isGhostMode() then
            playerObj:setGhostMode(true)
        end
        
        -- ghostheli = 1
        -- if not playerObj:isGhosthMode() then
            
        -- end

        if helizuobiao == nil then
            helizuobiao = {0, vehicle:getAngleY(), 0,0,0,0}
            vehicle:setAngles(0, helizuobiao[2], 0)
        else
            if helizuobiao[6]> 0 then
                helizuobiao[6] = helizuobiao[6] - 0.0003
            end
            move_vehicle(vehicle, helizuobiao[6]*helizuobiao[4], 0.00005, helizuobiao[6]*helizuobiao[5])
            if (math.abs(helizuobiao[1]) ~= 180 and math.abs(helizuobiao[3]) ~= 180 ) or (math.abs(helizuobiao[1]) ~= 0 and math.abs(helizuobiao[3]) ~= 0 ) then
                if math.abs(helizuobiao[3]) ~= 0 then
                    helizuobiao[3] = helizuobiao[3] - 0.5*math.abs(helizuobiao[3])/helizuobiao[3]
                    vehicle:setAngles(helizuobiao[1], helizuobiao[2], helizuobiao[3])
                end
                if math.abs(helizuobiao[1]) ~= 0 then
                    helizuobiao[1] = helizuobiao[1]- 0.5*math.abs(helizuobiao[1])/helizuobiao[1]
                    vehicle:setAngles( helizuobiao[1],  helizuobiao[2],  helizuobiao[3])
                end
            end
        end

        if isKeyDown(Keyboard.KEY_UP) then
            helizuobiao[4] = math.sin(math.rad(helizuobiao[2]+90))
            helizuobiao[5] = math.cos(math.rad(helizuobiao[2]+90))
            if helizuobiao[3] > -40 then
                helizuobiao[3] = helizuobiao[3] - 0.6
                vehicle:setAngles(helizuobiao[1], helizuobiao[2], helizuobiao[3])
            end
            if helizuobiao[6] < 2.1 then
                helizuobiao[6] = helizuobiao[6]+0.001
            end
            zhuansu[2] = 1
        end
    
        if isKeyDown(Keyboard.KEY_DOWN) then
            helizuobiao[4] = math.sin(math.rad(helizuobiao[2]+90))
            helizuobiao[5] = math.cos(math.rad(helizuobiao[2]+90))
            if helizuobiao[3] < 40 then
                helizuobiao[3] = helizuobiao[3] + 0.8
                vehicle:setAngles(helizuobiao[1], helizuobiao[2], helizuobiao[3])
            end
            if helizuobiao[6] > -0.05 then
                helizuobiao[6] = helizuobiao[6] - 0.004
            end
            zhuansu[2] = 2
            
        end
    
        if isKeyDown(Keyboard.KEY_RIGHT) then
            if helizuobiao[2]~=-180 then
                helizuobiao[2]= helizuobiao[2] - 1
            else
                helizuobiao[2]=180
            end
            vehicle:setAngles(helizuobiao[1], helizuobiao[2], helizuobiao[3])
            zhuansu[2] = 1
        end
    
        if isKeyDown(Keyboard.KEY_LEFT) then
            if helizuobiao[2]~=180 then
                helizuobiao[2]= helizuobiao[2] + 1
            else
                helizuobiao[2]=-180
            end
            vehicle:setAngles(helizuobiao[1], helizuobiao[2], helizuobiao[3])
            zhuansu[2] = 1
        end

        if  curr_z < 7 then
            if isKeyDown(Keyboard.KEY_W) and vehicle:getRemainingFuelPercentage() > 0 then   
                move_vehicle(vehicle, 0, 0.04, 0)
                zhuansu[2] = 1
            end
        end
    else

        if isKeyDown(Keyboard.KEY_W) and vehicle:getRemainingFuelPercentage() > 0 then   
            move_vehicle(vehicle, 0, 0.04, 0)
        end
        zhuansu[2] = 1
        helizuobiao = nil
        if playerObj:isGhostMode() then
            playerObj:setGhostMode(false)
        end
        -- playerObj:setGhostMode(false)
        -- ghostheli = 0
    end

    if (isKeyDown(Keyboard.KEY_S) or vehicle:getRemainingFuelPercentage() <= 0 ) and curr_z > 0.6 then 
        move_vehicle(vehicle, 0, -0.03, 0)
        zhuansu[2] = 2
    end

end








Events.OnTick.Add(heli_update)
-- Events.OnTick.Add(heliSoundUpdate)








