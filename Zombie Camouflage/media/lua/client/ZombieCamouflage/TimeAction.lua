require "TimedActions/ISBaseTimedAction"

local Moodle = require "ZombieCamouflage/Moodle"
local Utils = require "ZombieCamouflage/Utils"
local TimeAction = ISBaseTimedAction:derive("TimeAction");

TimeAction.isValid = function(self)
    return true
end

TimeAction.update = function(self)

end

TimeAction.start = function(self)
    self:setActionAnim("Loot");
    self:setAnimVariable("LootPosition", "Low");

    if self.character:getPrimaryHandItem() ~= nil then
        local found = false;

        for k in pairs(self.items) do
            if self.character:getPrimaryHandItem():getFullType() == self.items[k] then
                found = true;

                break
            end
        end
        if not found then
            self:setOverrideHandModels(self.items[1], nil);
        end
    else
        self:setOverrideHandModels(self.items[1], nil);
    end
end

TimeAction.stop = function(self)
    ISBaseTimedAction.stop(self);
end

TimeAction.perform = function(self)
    self.body:getModData().hasBlood = true;

    local bodyDamage = self.character:getBodyDamage();
    local stats = self.character:getStats();
    local newValue = Utils.Math.round(ZombRand(25,30)*0.01, 2);

    if Moodle.getValue() + newValue >= 1.0 then
        Moodle.setValue(1.0);
    else
        Moodle.setValue(Moodle.getValue() + newValue);
    end

    if bodyDamage:getUnhappynessLevel() + 15 >= 100 then
        bodyDamage:setUnhappynessLevel(100);
    else
        bodyDamage:setUnhappynessLevel(bodyDamage:getUnhappynessLevel() + 15);
    end

    if bodyDamage:getFoodSicknessLevel() + 15 >= 100 then
        bodyDamage:setFoodSicknessLevel(100);
    else
        bodyDamage:setFoodSicknessLevel(bodyDamage:getFoodSicknessLevel() + 15);
    end

    for i = 0, 16 do
        if i ~= 8 then
            self.character:addBlood(BloodBodyPartType[BodyPartType.FromIndex(i)], false, true, false);
        end
    end

    ISBaseTimedAction.perform(self);
end

TimeAction.new = function(self, character, time, body, items)
    local o = ISBaseTimedAction.new(self, character);
    o.body = body;
    o.items = items;
    o.stopOnWalk = true;
    o.stopOnRun = true;
    o.maxTime = time;
    o.fromHotbar = false;
    if o.character:isTimedActionInstant() then o.maxTime = 1; end
    return o;
end

return TimeAction