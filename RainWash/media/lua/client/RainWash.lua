---
--- Mod: Rain Wash
--- Workshop: https://steamcommunity.com/sharedfiles/filedetails/?id=2657661246
--- Author: NoctisFalco
--- Profile: https://steamcommunity.com/id/NoctisFalco/
---
--- Redistribution of this mod without explicit permission from the original creator is prohibited
--- under any circumstances. This includes, but not limited to, uploading this mod to the Steam Workshop
--- or any other site, distribution as part of another mod or modpack, distribution of modified versions.
--- You are free to do whatever you want with the mod provided you do not upload any part of it anywhere.
---

RainWash = RainWash or {}

RainWash.character = nil
RainWash.vehicles = {}

RainWash.bodyStats = {}
RainWash.clothStats = {}
RainWash.vehicleStats = {}

local MIN_RAIN_INTENSITY = 0.1
local MIN_WETNESS = 0.1
local BLOOD_TO_DIRT_COEF = 0.8
local BLOOD_COEF = 0.04
local DIRT_COEF = 0.03
local VEHICLE_COEF = 0.003

local VEHICLE_AREAS = {
    { id = "Front", area = "Engine" },
    { id = "Rear", area = "TruckBed" },
    { id = "Left", area = "SeatLeft" },
    { id = "Left", area = "SeatFrontLeft" },
    { id = "Right", area = "SeatRight" },
    { id = "Right", area = "SeatFrontRight" }
}

local nextModelUpdateTime = 0
local lastModelUpdateRainIntensity = 0
local lastOnClothingUpdatedTime = 0
local lastRainIntensity = 0
local lastGameTimeMultiplier = 1

local updateModel = false

function RainWash.onEveryMinute()
    local gameTime = getGameTime()
    local gameTimeMultiplier = gameTime:getTrueMultiplier()
    local timestamp = gameTime:getMinutesStamp()

    local rainIntensity = getClimateManager():getRainIntensity()

    local character = RainWash.character

    if RainWash.Options.washVehicle and lastRainIntensity >= MIN_RAIN_INTENSITY then
        RainWash:updateVehicles()
        for vehicleId, areas in pairs(RainWash.vehicleStats) do
            for areaId, stats in pairs(areas) do
                if stats.blood > 0 then
                    RainWash:updateVehicleArea(vehicleId, areaId)
                end
            end
        end
    end

    if lastRainIntensity >= MIN_RAIN_INTENSITY and character:isOutside() and not character:getVehicle() then
        local characterInv = character:getInventory()

        local wornItems = character:getWornItems()
        for i = 0, wornItems:size() - 1 do
            local item = wornItems:get(i):getItem()
            if item:IsClothing() and not item:isHidden() then
                if item:getWetness() >= MIN_WETNESS or item:getWaterResistance() == 1 then
                    if item:hasBlood() or item:hasDirt() and item:getDirtyness() > RainWash:getClothingMinDirtiness(item) then
                        updateModel = true
                        RainWash:updateClothing(item)
                    end
                end
            end
        end

        local visual = character:getHumanVisual()
        local bodyDamage = character:getBodyDamage()
        local bodyParts = bodyDamage:getBodyParts()
        for i = 0, bodyParts:size() - 1 do
            local bodyPart = bodyParts:get(i)
            local bloodBodyPartType = BloodBodyPartType.FromIndex(bodyPart:getIndex())
            if bodyPart:getWetness() >= MIN_WETNESS then
                if visual:getBlood(bloodBodyPartType) > 0 or visual:getDirt(bloodBodyPartType) > 0.1 then
                    updateModel = true
                    RainWash:updateBodyPart(visual, bodyPart, bloodBodyPartType)
                end
                -- Fix for the back
                if bodyPart:getType() == BodyPartType.Torso_Upper then
                    bloodBodyPartType = BloodBodyPartType.Back
                    if visual:getBlood(bloodBodyPartType) > 0 or visual:getDirt(bloodBodyPartType) > 0.1 then
                        updateModel = true
                        RainWash:updateBodyPart(visual, bodyPart, bloodBodyPartType)
                    end
                end
            end
        end

        local bodyPart = bodyDamage:getBodyPart(BodyPartType.Head)
        if bodyPart:getWetness() == 100 then
            RainWash:removeAllMakeup()
        end

        bodyPart = bodyDamage:getBodyPart(BodyPartType.Hand_R)
        local wetness = bodyPart:getWetness()
        if wetness >= MIN_WETNESS then
            local items = characterInv:getItemsFromCategory("Container")
            for i = 0, items:size() - 1 do
                local item = items:get(i)
                if not item:isHidden() and item:isEquipped() then
                    if item:hasBlood() then
                        updateModel = true
                        RainWash:updateContainer(item, wetness)
                    end
                end
            end

            items = characterInv:getItemsFromCategory("Weapon")
            for i = 0, items:size() - 1 do
                local item = items:get(i)
                if item:isEquipped() or item:getAttachedSlot() > 0 then
                    if item:hasBlood() then
                        updateModel = true
                        RainWash:updateWeapon(item, wetness)
                    end
                end
            end
        end
    end

    if timestamp >= nextModelUpdateTime
            or (gameTimeMultiplier ~= lastGameTimeMultiplier and lastModelUpdateRainIntensity > 0)
            or math.abs(rainIntensity - lastModelUpdateRainIntensity) > 0.1 then
        lastModelUpdateRainIntensity = rainIntensity
        if rainIntensity > 0 then
            nextModelUpdateTime = timestamp + gameTimeMultiplier * (1 / rainIntensity) + 1
        end

        if updateModel then
            updateModel = false
            character:resetModelNextFrame()
            triggerEvent("OnClothingUpdated", character)
        end
    end

    lastRainIntensity = rainIntensity
    lastGameTimeMultiplier = gameTimeMultiplier
end

function RainWash:getClothingMinDirtiness(item)
    return RainWashUtils.round((1 - item:getWaterResistance()) / 0.2) * 4
end

function RainWash:getWetnessMod(wetness)
    return (wetness / 100) ^ 2
end

function RainWash:getRainIntensityMod()
    return 1.5 * lastRainIntensity ^ 2
end

function RainWash:getUserMod()
    return RainWash.Options.multiplier
end

--
-- BaseVehicle
-- bloodIntensity	[0; 1]
--
function RainWash:updateVehicleArea(vehicleId, areaId)
    local areaStats = self.vehicleStats[vehicleId][areaId]
    local rainIntensityMod = self:getRainIntensityMod() * self:getUserMod()

    local bloodDelta = rainIntensityMod * VEHICLE_COEF
    local newBlood = RainWashUtils.clamp(RainWashUtils.round(areaStats.blood - bloodDelta, 2), 0, 1)

    local args = { vehicle = vehicleId, id = areaId, intensity = newBlood }
    sendClientCommand(self.character, 'vehicle', 'setBloodIntensity', args)

    areaStats.blood = RainWashUtils.clamp(areaStats.blood - bloodDelta, 0, 1)
end

--
-- Clothing
-- bloodLevel  [0; 100]
-- dirtiness   [0; 100]
-- wetness     [0; 100]
-- waterResistance [0; 1]
--
function RainWash:updateClothing(item)
    local bloodLevel = 0
    local dirtiness = 0
    local coveredParts = BloodClothingType.getCoveredParts(item:getBloodClothingType())
    if coveredParts then
        for i = 0, coveredParts:size() - 1 do
            local coveredPart = coveredParts:get(i)
            if coveredPart then
                local partBlood, partDirt = 0, 0
                if item:getBlood(coveredPart) > 0 or item:getDirt(coveredPart) > 0 then
                    partBlood, partDirt = self:updateClothingPart(item, coveredPart)
                end
                bloodLevel = bloodLevel + partBlood * 100
                dirtiness = dirtiness + partDirt * 100
            end
        end
        bloodLevel = bloodLevel / coveredParts:size()
        dirtiness = dirtiness / coveredParts:size()
    end
    item:setBloodLevel(bloodLevel)
    item:setDirtyness(dirtiness)
end

--
-- BloodBodyPartType (ItemVisual)
-- blood   [0; 1]
-- dirt    [0; 1]
--
function RainWash:updateClothingPart(item, part)
    local partStats = self.clothStats[item:getID()][part]

    local wetnessMod = (item:getWetness() / 100 + item:getWaterResistance()) ^ 2
    local rainIntensityMod = self:getRainIntensityMod() * self:getUserMod()

    local newBlood = 0
    local bloodDelta = 0
    if partStats.blood > 0 then
        bloodDelta = rainIntensityMod * wetnessMod * BLOOD_COEF
        newBlood = RainWashUtils.clamp(RainWashUtils.round(partStats.blood - bloodDelta, 2), 0, 1)
        partStats.blood = RainWashUtils.clamp(partStats.blood - bloodDelta, 0, 1)
        item:setBlood(part, newBlood)
    end

    local newDirt = 0
    local dirtDelta = 0
    if bloodDelta > 0 then
        dirtDelta = -bloodDelta * BLOOD_TO_DIRT_COEF
    else
        dirtDelta = rainIntensityMod * wetnessMod * DIRT_COEF
    end
    newDirt = RainWashUtils.clamp(RainWashUtils.round(partStats.dirt - dirtDelta, 2), 0, 1)
    partStats.dirt = RainWashUtils.clamp(partStats.dirt - dirtDelta, 0, 1)
    item:setDirt(part, newDirt)

    return newBlood, newDirt
end

--
-- BodyPart
-- wetness     [0; 100]
-- BloodBodyPartType (HumanVisual)
-- blood       [0; 1]
-- dirt        [0; 1]
--
function RainWash:updateBodyPart(visual, bodyPart, bloodBodyPartType)
    local partStats = self.bodyStats[bloodBodyPartType]
    local rainIntensityMod = self:getRainIntensityMod() * self:getUserMod()
    local wetnessMod = self:getWetnessMod(bodyPart:getWetness())

    local newBlood = 0
    local bloodDelta = 0
    if partStats.blood > 0 then
        bloodDelta = rainIntensityMod * wetnessMod * BLOOD_COEF
        newBlood = RainWashUtils.clamp(RainWashUtils.round(partStats.blood - bloodDelta, 2), 0, 1)
        partStats.blood = RainWashUtils.clamp(partStats.blood - bloodDelta, 0, 1)
        visual:setBlood(bloodBodyPartType, newBlood)
    end

    local newDirt = 0
    local dirtDelta = 0
    if bloodDelta > 0 then
        dirtDelta = -bloodDelta * BLOOD_TO_DIRT_COEF
    else
        dirtDelta = rainIntensityMod * wetnessMod * DIRT_COEF
    end
    newDirt = RainWashUtils.clamp(RainWashUtils.round(partStats.dirt - dirtDelta, 2), 0, 1)
    partStats.dirt = RainWashUtils.clamp(partStats.dirt - dirtDelta, 0, 1)
    visual:setDirt(bloodBodyPartType, newDirt)
end

--
-- InventoryContainer
-- bloodLevel  [0; 1]
--
function RainWash:updateContainer(item, wetness)
    local wetnessMod = self:getWetnessMod(wetness)
    local rainIntensityMod = self:getRainIntensityMod() * self:getUserMod()

    local bloodLevel = item:getBloodLevel()
    local bloodLevelDelta = rainIntensityMod * wetnessMod * BLOOD_COEF
    local newBloodLevel = bloodLevel - bloodLevelDelta
    item:setBloodLevel(newBloodLevel)
end

--
-- HandWeapon
-- bloodLevel  [0; 1]
--
function RainWash:updateWeapon(item, wetness)
    local rainIntensityMod = self:getRainIntensityMod() * self:getUserMod()
    local wetnessMod = self:getWetnessMod(wetness)
    if item:getAttachedSlot() > 0 and not self.character:isHandItem(item) then
        wetnessMod = wetnessMod / 2
    end

    local bloodLevel = item:getBloodLevel()
    local bloodLevelDelta = rainIntensityMod * wetnessMod * BLOOD_COEF
    local newBloodLevel = bloodLevel - bloodLevelDelta
    item:setBloodLevel(newBloodLevel)
end

function RainWash:removeAllMakeup()
    local item = self.character:getWornItem("MakeUp_FullFace")
    self:removeMakeup(item)
    item = self.character:getWornItem("MakeUp_Eyes")
    self:removeMakeup(item)
    item = self.character:getWornItem("MakeUp_EyesShadow")
    self:removeMakeup(item)
    item = self.character:getWornItem("MakeUp_Lips")
    self:removeMakeup(item)
end

function RainWash:removeMakeup(item)
    if item then
        self.character:removeWornItem(item)
        self.character:getInventory():Remove(item)
    end
end

function RainWash:updateVehicles()
    local vehicles = {}

    if self.character:getVehicle() then
        RainWashUtils.wipe(self.vehicles)

        local vehicle1 = self.character:getVehicle()
        if RainWashUtils.isVehicleOutside(vehicle1) then
            table.insert(vehicles, vehicle1)
            table.insert(self.vehicles, { id = vehicle1:getId(), x = vehicle1:getX(), y = vehicle1:getY() })
        end
        local vehicle2 = vehicle1:getVehicleTowing() or vehicle1:getVehicleTowedBy()
        if vehicle2 and RainWashUtils.isVehicleOutside(vehicle2) then
            table.insert(vehicles, vehicle2)
            table.insert(self.vehicles, { id = vehicle2:getId(), x = vehicle2:getX(), y = vehicle2:getY() })
        end
    elseif RainWash.Options.washRecentVehicle then
        for _, vehicleData in ipairs(self.vehicles) do
            -- Vehicle ids are not unique!
            local vehicle = RainWashUtils.getVehicleById(vehicleData.id)
            if not vehicle or vehicle:getX() ~= vehicleData.x or vehicle:getY() ~= vehicleData.y then
                vehicle = nil
            end
            table.insert(vehicles, vehicle)
        end
    end

    local stats = {}
    for _, vehicle in ipairs(vehicles) do
        local vehicleId = vehicle:getId()
        stats[vehicleId] = {}

        for _, area in ipairs(VEHICLE_AREAS) do
            if vehicle:getScript():getAreaById(area.area) then
                local blood = vehicle:getBloodIntensity(area.id)

                if self.vehicleStats[vehicleId] then
                    stats[vehicleId][area.id] = self.vehicleStats[vehicleId][area.id]
                    local areaStats = stats[vehicleId][area.id]
                    if math.abs(areaStats.blood - blood) > 0.01 then
                        areaStats.blood = blood
                    end
                else
                    stats[vehicleId][area.id] = { blood = blood }
                end
            end
        end
    end

    RainWashUtils.wipe(self.vehicleStats)
    self.vehicleStats = stats
end

function RainWash.onClothingUpdated(character)
    if not character:isLocalPlayer() or character:getPlayerNum() ~= RainWash.character:getPlayerNum() then return end

    if getTimestampMs() - lastOnClothingUpdatedTime < 50 then return end
    lastOnClothingUpdatedTime = getTimestampMs()

    local visual = character:getHumanVisual()
    for i = 0, BloodBodyPartType.MAX:index() - 1 do
        local bloodBodyPartType = BloodBodyPartType.FromIndex(i)
        local blood = visual:getBlood(bloodBodyPartType)
        local dirt = visual:getDirt(bloodBodyPartType)

        if RainWash.bodyStats[bloodBodyPartType] then
            local partStats = RainWash.bodyStats[bloodBodyPartType]
            if math.abs(partStats.blood - blood) > 0.01 then
                partStats.blood = blood
            end
            if math.abs(partStats.dirt - dirt) > 0.01 then
                partStats.dirt = dirt
            end
        else
            RainWash.bodyStats[bloodBodyPartType] = { blood = blood, dirt = dirt }
        end
    end

    local clothes = {}
    local wornItems = character:getWornItems()
    for i = 0, wornItems:size() - 1 do
        local item = wornItems:get(i):getItem()
        if item:IsClothing() and not item:isHidden() then
            local coveredParts = BloodClothingType.getCoveredParts(item:getBloodClothingType())
            if coveredParts then
                local itemID = item:getID()
                clothes[itemID] = {}

                for j = 0, coveredParts:size() - 1 do
                    local coveredPart = coveredParts:get(j)
                    if coveredPart then
                        local blood = item:getBlood(coveredPart)
                        local dirt = item:getDirt(coveredPart)

                        if RainWash.clothStats[itemID] then
                            clothes[itemID][coveredPart] = RainWash.clothStats[itemID][coveredPart]
                            local partStats = clothes[itemID][coveredPart]
                            if math.abs(partStats.blood - blood) > 0.01 then
                                partStats.blood = blood
                            end
                            if math.abs(partStats.dirt - dirt) > 0.01 then
                                partStats.dirt = dirt
                            end
                        else
                            clothes[itemID][coveredPart] = { blood = blood, dirt = dirt }
                        end
                    end
                end
            end
        end
    end

    RainWashUtils.wipe(RainWash.clothStats)
    RainWash.clothStats = clothes
end

function RainWash.onVehicle(character)
    if instanceof(character, 'IsoPlayer') and character:isLocalPlayer()
            and character:getPlayerNum() == RainWash.character:getPlayerNum() then
        RainWash:updateVehicles()
    end
end

function RainWash.initVehicles()
    if RainWash.Options.washVehicle then
        RainWash.onVehicle(RainWash.character)
        Events.OnEnterVehicle.Add(RainWash.onVehicle)
        Events.OnExitVehicle.Add(RainWash.onVehicle)
    else
        Events.OnEnterVehicle.Remove(RainWash.onVehicle)
        Events.OnExitVehicle.Remove(RainWash.onVehicle)
    end
end

local function onGameStart()
    RainWash.character = getPlayer()

    RainWash.initVehicles()
    RainWash.onClothingUpdated(RainWash.character)

    Events.OnClothingUpdated.Add(RainWash.onClothingUpdated)
    Events.EveryOneMinute.Add(RainWash.onEveryMinute)
end

Events.OnGameStart.Add(onGameStart)
