require("TimedActions/ISBaseTimedAction");
local esAnimate = ISBaseTimedAction:derive("esAnimate");

function esAnimate:new(character, item, time)
    local o = {};
    setmetatable(o, self);
    self.__index = self;
    o.character = character;
    o.item = item;
    o.maxTime = time or 30;

    o.jobType = '';
    o.charActionAnim = CharacterActionAnims.Craft;
    o.extra = {};

    o.stopOnWalk = true;
    o.stopOnRun = true;
    o.stopOnAim = false;
    o.forceProgressBar = true;
    o.caloriesModifier = 1;
    return o;
end

function esAnimate:setCaloriesModifier(calories)
    self.caloriesModifier = calories;
end

function esAnimate:setExtra(extraData)
    self.extra = extraData;
end

function esAnimate:isValid()
    if self.item then
        return (self.item:getContainer() and self.item:getContainer():contains(self.item));
    end
    return true;
end

function esAnimate:doPerform()
    --print('toDo');
end

function esAnimate:perform()
    if self.item then self.item:setJobDelta(0.0) end;
    self:doPerform();
    if self.onCompleteFunc then
        local args = self.onCompleteArgs
        self.onCompleteFunc(args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8])
    end
    ISBaseTimedAction.perform(self);
end

function esAnimate:update()
    if self.item then self.item:setJobDelta(self:getJobDelta()) end;
end

function esAnimate:start()
    self:setActionAnim(self.charActionAnim);
    if self.item then
        self.item:setJobType(self.jobType);
        self.item:setJobDelta(0.0);
    end
end

function esAnimate:stop()
    ISBaseTimedAction.stop(self);
    if self.item then self.item:setJobDelta(0.0) end;
end

function esAnimate:setOnComplete(func, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    self.onCompleteFunc = func
    self.onCompleteArgs = { arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8 }
end

function esAnimate:setAnimation(animation)
    self.charActionAnim = animation;
end

function esAnimate:setJobType(jobType)
    self.jobType = jobType;
end

function esAnimate:setStopOn(walk, run, aim)
    self.stopOnWalk = walk;
    self.stopOnRun = run;
    self.stopOnAim = aim;
end

return esAnimate;