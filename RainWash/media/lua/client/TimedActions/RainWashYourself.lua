require('TimedActions/ISBaseTimedAction')

RainWashYourself = ISBaseTimedAction:derive("RainWashYourself")

function RainWashYourself:isValid()
    return true
end

function RainWashYourself:update()
    if getClimateManager():getRainIntensity() < 0.5 then
        self:forceComplete()
        return
    end

    self.character:setMetabolicTarget(Metabolics.LightDomestic)

    self.ticksPassed = self.ticksPassed + getGameTime():getMultiplier()
    if self.ticksPassed < self.ticks then return end

    local washedPart
    local visual = self.character:getHumanVisual()
    for i = self.partIndex, BloodBodyPartType.MAX:index() - 1 do
        local part = BloodBodyPartType.FromIndex(i)
        if visual:getBlood(part) + visual:getDirt(part) > 0 then
            if washedPart then break end

            washedPart = true
            self.partIndex = i + 1
            if visual:getBlood(part) > 0 then
                -- Soap is used for blood but not for dirt
                for j, soap in ipairs(self.soaps) do
                    if soap:getRemainingUses() > 0 then
                        soap:Use()
                        if soap:getRemainingUses() == 0 then
                            table.remove(self.soaps, j)
                        end
                        break
                    end
                end
            end
            visual:setBlood(part, 0)
            visual:setDirt(part, 0)

            self.character:resetModelNextFrame()
            triggerEvent("OnClothingUpdated", self.character)
        end

        if i == BloodBodyPartType.MAX:index() - 1 then
            self:forceComplete()
            return
        end
    end

    self:resetTicks()
end

function RainWashYourself:start()
    self:setActionAnim("WashFace")
    self:setOverrideHandModels(nil, nil)
    self.sound = self.character:playSound("WashYourself")
    self.character:reportEvent("EventWashClothing")
    self.partIndex = 0
    self:resetTicks()
end

function RainWashYourself:resetTicks()
    self.ticksPassed = 0
    self.ticks = 350
    if #self.soaps == 0 then
        self.ticks = self.ticks * 1.8
    end
end

function RainWashYourself:stop()
    if self.sound and self.character:getEmitter():isPlaying(self.sound) then
        self.character:stopOrTriggerSound(self.sound)
    end
    ISBaseTimedAction.stop(self)
end

function RainWashYourself:perform()
    if self.sound and self.character:getEmitter():isPlaying(self.sound) then
        self.character:stopOrTriggerSound(self.sound)
    end
    -- Remove makeup
    RainWash:removeAllMakeup()
    ISBaseTimedAction.perform(self)
end

function RainWashYourself.needsWash(character)
    local visual = character:getHumanVisual()
    for i = 0, BloodBodyPartType.MAX:index() - 1 do
        local part = BloodBodyPartType.FromIndex(i)
        if visual:getBlood(part) + visual:getDirt(part) > 0 then
            return true
        end
    end
    return false
end

function RainWashYourself:new(character, soapList)
    local o = {}
    setmetatable(o, self)
    self.__index = self
    o.character = character
    o.soaps = soapList
    o.maxTime = -1
    return o
end