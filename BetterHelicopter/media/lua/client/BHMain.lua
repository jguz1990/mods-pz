local tempVector1 = Vector3f.new()
local tempVector2 = Vector3f.new()
local bladeRound = 0
local bladeRoundSmall = 0
local wTransformFieldNum = nil
local lastHeli = nil

-------------------------
local function getJavaFieldNum(object, fieldName)
    for i = 0, getNumClassFields(object) - 1 do
        local javaField = getClassField(object, i)
        if luautils.stringEnds(tostring(javaField), '.' .. fieldName) then
            return i
        end
    end
end

local function moveVehicle(vehicle, x_delta, y_delta, z_delta)
    if wTransformFieldNum == nil then
        wTransformFieldNum = getJavaFieldNum(vehicle, "tempTransform")
    end

    local tmpTransform = getClassFieldVal(vehicle, getClassField(vehicle, wTransformFieldNum))
    local wTranform = vehicle:getWorldTransform(tmpTransform)
    local origin = getClassFieldVal(wTranform, getClassField(wTranform, 1))
    origin:set(origin:x() + x_delta, origin:y() + y_delta, origin:z() + z_delta)
    vehicle:setWorldTransform(wTranform)
end

local function stopSoundExcept(emi, exception)
    if emi:isPlaying("HeliSound1") and "HeliSound1" ~= exception then
        emi:stopSoundByName("HeliSound1")
        return
    end
    if emi:isPlaying("HeliSound2") and "HeliSound2" ~= exception  then
        emi:stopSoundByName("HeliSound2")
        return
    end
    if emi:isPlaying("HeliSound3") and "HeliSound3" ~= exception  then
        emi:stopSoundByName("HeliSound3")
        return
    end
    if emi:isPlaying("HeliSound4") and "HeliSound4" ~= exception  then
        emi:stopSoundByName("HeliSound4")
        return
    end
end

local function updateHelicopterSound(helicopter, player)
    local dist = IsoUtils.DistanceTo(player:getX(), player:getY(), helicopter:getX(), helicopter:getY())
    local emi = helicopter:getEmitter()
    if not helicopter:isEngineRunning() or dist > 40 then 
        stopSoundExcept(emi, "NONE")
    else
        emi:setPos(0, 0, 0)

        if player:getVehicle() == helicopter then
            stopSoundExcept(emi, "HeliSound2")
            if emi:isPlaying("HeliSound2") then return end
            emi:playSound("HeliSound2", helicopter)
        else
            if dist < 10 then
                stopSoundExcept(emi, "HeliSound1")
                if emi:isPlaying("HeliSound1") then return end
                emi:playSound("HeliSound1", helicopter)
            elseif dist < 20 then
                stopSoundExcept(emi, "HeliSound2")
                if emi:isPlaying("HeliSound2") then return end
                emi:playSound("HeliSound2", helicopter)
            elseif dist < 30 then
                stopSoundExcept(emi, "HeliSound3")
                if emi:isPlaying("HeliSound3") then return end
                emi:playSound("HeliSound3", helicopter)
            elseif dist < 40 then
                stopSoundExcept(emi, "HeliSound4")
                if emi:isPlaying("HeliSound4") then return end
                emi:playSound("HeliSound4", helicopter)
            else
                stopSoundExcept(emi, "NONE")
            end
        end
    end
    helicopter:update()
end

local function rotateBlades(helicopter)
    local part = helicopter:getPartById("heliblade")
    if part == nil then return end
    if bladeRound == 1 then
        part:setModelVisible("blade8", false)
        part:setModelVisible("blade1", true)
    elseif bladeRound == 2 then
        part:setModelVisible("blade1", false)
        part:setModelVisible("blade2", true)
    elseif bladeRound == 3 then
        part:setModelVisible("blade2", false)
        part:setModelVisible("blade3", true)
    elseif bladeRound == 4 then
        part:setModelVisible("blade3", false)
        part:setModelVisible("blade4", true)
    elseif bladeRound == 5 then
        part:setModelVisible("blade4", false)
        part:setModelVisible("blade5", true)
    elseif bladeRound == 6 then
        part:setModelVisible("blade5", false)
        part:setModelVisible("blade6", true)
    elseif bladeRound == 7 then
        part:setModelVisible("blade6", false)
        part:setModelVisible("blade7", true)
    elseif bladeRound == 8 then
        part:setModelVisible("blade7", false)
        part:setModelVisible("blade8", true)
    end

    part = helicopter:getPartById("helibladeSmall")
    if part == nil then return end
    if bladeRoundSmall == 1 then
        part:setModelVisible("blade4Small", false)
        part:setModelVisible("blade1Small", true)
    elseif bladeRoundSmall == 2 then
        part:setModelVisible("blade1Small", false)
        part:setModelVisible("blade2Small", true)
    elseif bladeRoundSmall == 3 then
        part:setModelVisible("blade2Small", false)
        part:setModelVisible("blade3Small", true)
    elseif bladeRoundSmall == 4 then
        part:setModelVisible("blade3Small", false)
        part:setModelVisible("blade4Small", true)
    end

    helicopter:update()
    
    bladeRoundSmall = bladeRoundSmall + 1
    if bladeRoundSmall > 4 then
        bladeRoundSmall = 1
    end

    bladeRound = bladeRound + 1
    if bladeRound > 8 then
        bladeRound = 1
    end
end

local function helicopterUpdate()
    local playerObj = getPlayer()
    if playerObj == nil then return end
    local helicopter = playerObj:getVehicle()
    if helicopter == nil or helicopter:getScript():getFullName() ~= "Base.BHelicopter" then 
        if lastHeli == nil and BHLAST_HELI ~= nil then
            lastHeli = BHLAST_HELI
            BHLAST_HELI = nil
        end        
        if lastHeli ~= nil then
            if lastHeli:getSquare() ~= nil then
                if lastHeli:isEngineRunning() then
                    lastHeli:getPartById("GasTank"):setContainerContentAmount(lastHeli:getPartById("GasTank"):getContainerContentAmount() - 0.0003)
                    rotateBlades(lastHeli)
                end
                updateHelicopterSound(lastHeli, playerObj)
            else
                lastHeli = nil
            end
        end
        return 
    end
    lastHeli = helicopter

    -- Can use only if know how to
    if not playerObj:isRecipeKnown("Heli driving") then 
        if helicopter:isEngineRunning() then
            helicopter:engineDoShuttingDown()
            playerObj:Say(getText("Tooltip_I_dont_know"))
        end
        return 
    end
    updateHelicopterSound(helicopter, playerObj)
    if not helicopter:isEngineRunning() then return end
    
    rotateBlades(helicopter)
    
    local curr_z = helicopter:getWorldPos(0, 0, 0, tempVector2):z()
    playerObj:setZ(curr_z)

    -- Use fuel
    if curr_z > 1 then
        helicopter:getPartById("GasTank"):setContainerContentAmount(helicopter:getPartById("GasTank"):getContainerContentAmount() - 0.001)
    else
        helicopter:getPartById("GasTank"):setContainerContentAmount(helicopter:getPartById("GasTank"):getContainerContentAmount() - 0.0003)
    end

    if curr_z > 1.5 then  
        local vec0 = Vector3f.new(0, 0, curr_z)
        local vec1 = helicopter:getWorldPos(0, 0, 1, Vector3f.new()):add(-helicopter:getX(), -helicopter:getY(), -curr_z)
        local angleZ = vec1:angle(vec0)
        vec1 = helicopter:getWorldPos(1, 0, 0, Vector3f.new()):add(-helicopter:getX(), -helicopter:getY(), -curr_z)
        local angleX = vec1:angle(vec0)

        local dq = CustomQuaternion.fromEulerAngles(math.rad(helicopter:getAngleX()), math.rad(helicopter:getAngleY()), math.rad(helicopter:getAngleZ()))

        local ax = 0
        local ay = 0
        local az = 0

        if isKeyDown(Keyboard.KEY_A) then
            ay = 1
        end
    
        if isKeyDown(Keyboard.KEY_D) then
            ay = -1
        end
    
        if isKeyDown(Keyboard.KEY_UP) then
            if angleZ < 2 then
                ax = 1
            end
        end
    
        if isKeyDown(Keyboard.KEY_DOWN) then
            if angleZ > 1.1 then
                ax = -1
            end
        end
    
        if isKeyDown(Keyboard.KEY_LEFT) then
            if angleX < 2.2 then
                az = -1
            end
        end
    
        if isKeyDown(Keyboard.KEY_RIGHT) then
            if angleX > 1 then
                az = 1
            end
        end

        local nqx = CustomQuaternion.fromAngleAxis(math.rad(ax), 1, 0, 0)
        local nqy = CustomQuaternion.fromAngleAxis(math.rad(ay), 0, 1, 0)
        local nqz = CustomQuaternion.fromAngleAxis(math.rad(az), 0, 0, 1)
        local rs = dq * nqx * nqy * nqz
        local resx, resy, resz = CustomQuaternion.toEulerAngles(CustomQuaternion.toRotationMatrix(rs))
        helicopter:setAngles(resx, resy, resz)

        local forceVec = helicopter:getWorldPos(0, 0, 1, Vector3f.new()):add(-helicopter:getX(), -helicopter:getY(), -curr_z)
        forceVec = forceVec:normalize()
        if angleZ > math.pi / 2 then
            forceVec:mul(math.abs(math.cos(angleZ))/2)
            forceVec:mul(1.5)
            forceVec:set(forceVec:x(), 0, forceVec:y())
            moveVehicle(helicopter, forceVec:x(), forceVec:y(), forceVec:z())
        else
            forceVec:mul(-math.cos(angleZ)/2)
            forceVec:mul(1.5)
            forceVec:set(forceVec:x(), 0, forceVec:y())
            moveVehicle(helicopter, forceVec:x(), forceVec:y(), forceVec:z())
        end

        forceVec = helicopter:getWorldPos(1, 0, 0, Vector3f.new()):add(-helicopter:getX(), -helicopter:getY(), -curr_z)
        forceVec = forceVec:normalize()
        if angleX > math.pi / 2 then
            forceVec:mul(math.abs(math.cos(angleX))/2)
            forceVec:mul(1.5)
            forceVec:set(forceVec:x(), 0, forceVec:y())
            moveVehicle(helicopter, forceVec:x(), forceVec:y(), forceVec:z())
        else
            forceVec:mul(-math.cos(angleX)/2)
            forceVec:mul(1.5)
            forceVec:set(forceVec:x(), 0, forceVec:y())
            moveVehicle(helicopter, forceVec:x(), forceVec:y(), forceVec:z())
        end

        if curr_z < 5.5 then
            if isKeyDown(Keyboard.KEY_W) and helicopter:getRemainingFuelPercentage() > 0 then   
                moveVehicle(helicopter, 0, 0.04, 0)
            end
        end
    else
        if isKeyDown(Keyboard.KEY_W) and helicopter:getRemainingFuelPercentage() > 0 then   
            moveVehicle(helicopter, 0, 0.04, 0)
        end
    end

    if (isKeyDown(Keyboard.KEY_S) or helicopter:getRemainingFuelPercentage() <= 0 ) and curr_z > 0 then 
        moveVehicle(helicopter, 0, -0.03, 0)
    end
end
Events.OnTick.Add(helicopterUpdate)

--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

local function setHeliTransformFieldNum(player)
    player:getModData().Heli_transform_num = getJavaFieldNum(player:getVehicle(), "tempTransform")
end
Events.OnEnterVehicle.Add(setHeliTransformFieldNum)


