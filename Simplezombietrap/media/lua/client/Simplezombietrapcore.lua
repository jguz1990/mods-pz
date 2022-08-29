local function removeobj(square,obj)

    if isClient() then
        sledgeDestroy(obj)
    else
        square:RemoveTileObject(obj);
        square:getSpecialObjects():remove(obj);
        square:getObjects():remove(obj);
    end


end

local function Simplezombietrapcore(zombie)

    -- zombie:DoZombieSpeeds(-1000)
    if zombie:getModData().trapdamage ==nil  or zombie:getModData().trapdamage <= 0 then
        zombie:getModData().trapdamage = 10
    end
    zombie:getModData().trapdamage = zombie:getModData().trapdamage - 60/getAverageFPS()
    if zombie:getModData().trapdamage >0  then return end




    local square = zombie:getSquare()
    local traps = square:getObjects()

    if square==nil or traps==nil then return end
    
    -- if traps == nil then return end
    for i=0, traps:size() - 1 do
        local obj =  traps:get(i)
        if obj:getSprite() == nil then
            return
        end
        local objectname = obj:getSprite():getName()
        if objectname == "simpletrap_0" then
            zombie:addBlood(100)
            zombie:setHealth(zombie:getHealth()-0.06)
            if ZombRand(700)==0 then
                square:AddWorldInventoryItem("Base.UnusableMetal",0.5, 0.5, 0)
                removeobj(square,obj)
            end
        elseif objectname == "simpletrap_1"  then
            zombie:addBlood(100)

            local zombiez = getPlayer() or zombie
            zombie:Kill(zombiez)
            square:AddWorldInventoryItem("Base.UnusableMetal",0.5, 0.5, 0)
            removeobj(square,obj)

        elseif objectname =="simpletrap_2"  or objectname =="simpletrap_3" or objectname =="simpletrap_4" or objectname =="simpletrap_5" then
            zombie:addBlood(100)
            zombie:setHealth(zombie:getHealth()-0.001)
            local dirc = zombie:getForwardDirection():getDirection()
            zombie:setX(zombie:getX())
            zombie:setY(zombie:getY())

            if ZombRand(10)+1<=1 then
                zombie:setCanWalk(false)
                zombie:setFallOnFront(true)
                zombie:toggleCrawling()
            end

            if ZombRand(10)+1<=1 then
                -- zombie:setCanWalk(false)
                zombie:knockDown(false)
                
            end
            if ZombRand(2000)==0 then
                square:AddWorldInventoryItem("Base.UnusableMetal",0.5, 0.5, 0)
                removeobj(square,obj)
                
            end
        elseif objectname =="simpletrap_6" then
            zombie:addBlood(100)
            zombie:setHealth(zombie:getHealth()-0.1)
            if ZombRand(2000)==0 then
                square:AddWorldInventoryItem("Base.UnusableMetal",0.5, 0.5, 0)
                removeobj(square,obj)
            end
            if ZombRand(10)+1<=4 then
                zombie:setCanWalk(false)
                zombie:setFallOnFront(true)
                zombie:toggleCrawling()
            end
        
            
        elseif objectname =="simpletrap_7" then


            for akX=-3,3 do
                for akY=-3,3 do
                    local squarea=getCell():getGridSquare(square:getX()+akX,square:getY()+akY,square:getZ())

                    if squarea then
                        local corenumber = akX^2+akY^2
                        if ZombRand(10)<=8 then
                            local zombie = squarea:getZombie()
                            if zombie then
                                local zombiez = getPlayer() or zombie
                                zombie:Kill(zombiez)
                            
                            end
                            
                        end
        
                        local vehclez = square:getVehicleContainer()
                        if vehclez then
                            local vehicleznme = vehclez:getScript():getFullName()
                            -- print(string.contains("..Burnt", "burnt"))
                            if vehclez and (string.contains(vehicleznme, "Burnt") or string.contains(vehicleznme, "Smashed") ) then
                                if isClient() then
                                    sendClientCommand(self.character, "vehicle", "remove", { vehicle = vehclez:getId() })
                                else
                                    vehclez:permanentlyRemove()
                                end
                            end  
                        end     
                    end
                end
            


            end

            square:playSound("BigExplosion")
            removeobj(square,obj)

            
        elseif objectname =="simpletrap_8" then


            local movingObjects = square:getMovingObjects()

            if movingObjects then
                local zombiesize = movingObjects:size()
                if zombiesize<=3 and not zombie:isUseless() then

                    zombie:setX(square:getX()+0.5)
                    zombie:setY(square:getY()+0.5)
                    zombie:setZ(square:getZ())
                    zombie:setUseless(true)
                    zombie:getModData().zombiesimpletrap = true
                end
            end
        


        elseif zombie:getModData().zombiesimpletrap then
            zombie:setUseless(false)
            zombie:getModData().zombiesimpletrap =nil
            



        end
            

       
    end
end
Events.OnZombieUpdate.Add(Simplezombietrapcore)