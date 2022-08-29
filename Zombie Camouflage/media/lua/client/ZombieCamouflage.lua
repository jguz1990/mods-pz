
local ISZombieCamouflageTimedAction = require "ZombieCamouflage/TimeAction"
local Functions = require "ZombieCamouflage/Functions"
local Moodle = require "ZombieCamouflage/Moodle"
local Utils = require "ZombieCamouflage/Utils"
LuaEventManager.AddEvent("ZombieCamouflage:addKnife");

local knivesAllowed = knivesAllowed or {};
knivesAllowed = { "Base.MeatCleaver", "Base.HuntingKnife", "Base.KitchenKnife", "Base.FlintKnife" };


ISWorldMenuElements = ISWorldMenuElements or {};
ISWorldMenuElements.ZombieCamouflageContext = function()
	local self = ISMenuElement.new();

	self.createMenu = function(_data)
        local x = getMouseX();
	    local y = getMouseY();
	    local body = IsoObjectPicker.Instance:PickCorpse(x, y);
		local haveKnives = {};

		if not body then return end
        if body:getModData().hasBlood then return end

		for k in pairs(knivesAllowed) do
			if _data.player:getInventory():contains(knivesAllowed[k]) then
				haveKnives[#haveKnives + 1] = knivesAllowed[k];
			end
		end

		if #haveKnives > 0 then
			_data.context:addOption(getText("ContextMenu_Get_Zombie_Blood"), body, self.gut, haveKnives);
		end
	end

    self.gut = function(body, items)
		local source = getPlayer();
        local x, y, z = math.floor(body:getX()), math.floor(body:getY()), body:getZ();
        local square = getSquare(x, y, z);


		ISTimedActionQueue.add(ISWalkToTimedAction:new(source, square));
		ISTimedActionQueue.add(ISZombieCamouflageTimedAction:new(source, 200, body, items));
    end

	return self
end

local onZombieUpdate = function(zombie)
	local source = getPlayer();
	local sourceCoords = Functions.getCoords(source);
	local zombieCoords = Functions.getCoords(zombie);
	local Vdist = math.sqrt(((sourceCoords.x - zombieCoords.x)^2) + ((sourceCoords.y - zombieCoords.y)^2));
	local levelDetection = 1;

	if Moodle.getLevel() == 1 then
		levelDetection = 1.2;
	elseif Moodle.getLevel() == 2 then
		levelDetection = 1.5;
	elseif Moodle.getLevel() == 3 then
		levelDetection = 1.8;
	elseif Moodle.getLevel() == 4 then
		levelDetection = 2;
	end

	if Vdist >= 1.3 and Vdist <= (10 * levelDetection) then
		if Moodle.getValue() > 0.0 and Functions.allowDetection(source) then
			if zombie:getModData().playerDetected == nil or zombie:getModData().playerDetected == true then
				if not zombie:isUseless() then
					zombie:setUseless(true);

					zombie:getModData().playerDetected = false;
				end
			end
		else
			if zombie:isUseless() then
				zombie:setUseless(false);

				zombie:getModData().playerDetected = false;
			end
		end
	else
		if Vdist < 1.3 then
			if zombie:isUseless() then
				zombie:setUseless(false);

				zombie:getModData().playerDetected = false;
			end
		end

		if Vdist > 10 then
			if zombie:getModData().playerDetected == false then
				if zombie:isUseless() then
					zombie:setUseless(false);
				end

				zombie:getModData().playerDetected = true;
			end
		end
	end
end

local tickTimer = 0;
local onTick = function(numberTicks)
	local source = getPlayer(); if not source then return end

	local sourceInventory = source:getInventory();
	local equippedItems = Functions.getEquippedClothes(sourceInventory);
	local gameTimerMultiplier = getGameTime():getTrueMultiplier();

	if tickTimer >= 100 and Moodle.getValue() > 0.0 then
		local climateManager = getClimateManager();
		
		if climateManager:isRaining() and not source:isInARoom() then
			Moodle.setValue(Utils.Math.round(Moodle.getValue() - (0.008 * gameTimerMultiplier), 3));
		else
			Moodle.setValue(Utils.Math.round(Moodle.getValue() - (0.001 * gameTimerMultiplier), 3));
		end

		for k, v in pairs(equippedItems) do
			if v:getWetness() >= 30 then
				Moodle.setValue(Utils.Math.round(Moodle.getValue() - (0.015 * gameTimerMultiplier), 3));
			end
		end

		if Moodle.getValue() < 0.0 then
			Moodle.setValue(0);
		end

		tickTimer = 0;
	end

	tickTimer = tickTimer + 1;
end

local onGameStart = function()
	Moodle.createType(getPlayer());
end

Events.OnGameStart.Add(onGameStart);
Events.OnZombieUpdate.Add(onZombieUpdate);
Events.OnTick.Add(onTick);
Events["ZombieCamouflage:addKnife"].Add(function(item)
    table.insert(knivesAllowed, item);
end)