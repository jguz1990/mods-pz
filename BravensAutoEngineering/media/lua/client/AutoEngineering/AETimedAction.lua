--***********************************************************
--**                       BitBraven                       **
--***********************************************************

require "TimedActions/ISBaseTimedAction"

ISAETimeAction = ISBaseTimedAction:derive("ISAETimeAction")

ISAETimeAction.isValid = function(self)
    return true
end

ISAETimeAction.update = function(self)

end

ISAETimeAction.start = function(self)
    self:setActionAnim("Loot")
    self:setAnimVariable("LootPosition", "Low")

    if self.typeTimeAction == "fixWreck" then
        BravensUtils.TryPlaySoundClip(self.character, "AE_Welding")
    end

    if self.typeTimeAction == "removeEngine"
    or self.typeTimeAction == "installEngine"
    then
        BravensUtils.TryPlaySoundClip(self.character, "AE_VehicleTweak")
    end

    if self.typeTimeAction == "removeHotwire" then
        BravensUtils.TryPlaySoundClip(self.character, "VehicleHotwireStart")
    end
end

ISAETimeAction.stop = function(self)
    ISBaseTimedAction.stop(self)

    if self.typeTimeAction == "fixWreck" then
        BravensUtils.TryStopSoundClip(self.character, "AE_Welding")
    end

    if self.typeTimeAction == "removeEngine"
    or self.typeTimeAction == "installEngine"
    then
        BravensUtils.TryStopSoundClip(self.character, "AE_VehicleTweak")
    end

    if self.typeTimeAction == "removeHotwire" then
        BravensUtils.TryStopSoundClip(self.character, "VehicleHotwireStart")
    end
end

ISAETimeAction.perform = function(self)

    if self.typeTimeAction == "fixWreck" then
        BravensWreckFixMain.FixWreck(self.character, self.vehicle)
        BravensUtils.TryStopSoundClip(self.character, "AE_Welding")
    end

    if self.typeTimeAction == "removeHotwire" then
        ISVehicleMechanics.onCheatHotwire(self.character, self.vehicle, false, false)
        BravensUtils.TryStopSoundClip(self.character, "VehicleHotwireStart")
    end

    if self.typeTimeAction == "installEngine" then
        local engine = self.vehicle:getPartById("Engine")
        AutoEngineeringSV.SetPartCondition(self.character, engine, self.vehicle, self.engineItem:getCondition())
        AutoEngineeringSV.ChangeVehicleEngine(self.engineItem:getModData().quality, self.engineItem:getModData().horsePower, engine, self.vehicle)
        self.character:getInventory():Remove(self.engineItem)
        BravensUtils.TryStopSoundClip(self.character, "AE_VehicleTweak")
    end

    if self.typeTimeAction == "removeEngine" then

        local engine = self.vehicle:getPartById("Engine")

        if engine:getCondition() > 0 then
            AutoEngineeringSV.AddEngine(self.character, engine, self.vehicle)
        end

        AutoEngineeringSV.SetPartCondition(self.character, self.vehicle:getPartById("Engine"), self.vehicle, 0)
        BravensUtils.TryStopSoundClip(self.character, "AE_VehicleTweak")
    end

    ISBaseTimedAction.perform(self)
end

ISAETimeAction.FixWreck = function(self, character, vehicle, time)

    local action = ISBaseTimedAction.new(self, character)
    action.typeTimeAction = "fixWreck"
    action.vehicle = vehicle
    action.stopOnWalk = true
    action.stopOnRun = true
    action.maxTime = time
    action.fromHotbar = false

    if action.character:isTimedActionInstant() then o.maxTime = 1; end
    return action
end

ISAETimeAction.InstallEngine = function(self, character, engineItem, vehicle, time)

    local action = ISBaseTimedAction.new(self, character)
    action.typeTimeAction = "installEngine"
    action.engineItem = engineItem
    action.vehicle = vehicle
    action.stopOnWalk = true
    action.stopOnRun = true
    action.maxTime = time
    action.fromHotbar = false

    if action.character:isTimedActionInstant() then o.maxTime = 1; end
    return action
end

ISAETimeAction.RemoveEngine = function(self, character, vehicle, time)

    local action = ISBaseTimedAction.new(self, character)
    action.typeTimeAction = "removeEngine"
    action.vehicle = vehicle
    action.stopOnWalk = true
    action.stopOnRun = true
    action.maxTime = time
    action.fromHotbar = false

    if action.character:isTimedActionInstant() then o.maxTime = 1; end
    return action
end

ISAETimeAction.RemoveHotwire = function(self, character, vehicle, time)

    local action = ISBaseTimedAction.new(self, character)
    action.typeTimeAction = "removeHotwire"
    action.vehicle = vehicle
    action.stopOnWalk = true
    action.stopOnRun = true
    action.maxTime = time
    action.fromHotbar = false

    if action.character:isTimedActionInstant() then o.maxTime = 1; end
    return action
end

return ISAETimeAction