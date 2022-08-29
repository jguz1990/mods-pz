require "ExpandedHelicopter01a_MainVariables"

eventSoundHandler = {}

function eventSoundHandler:handleLooperEvent(reusableID, DATA, command)
	if isClient() then
		---@type BaseSoundEmitter | FMODSoundEmitter
		local soundEmitter = storedLooperEvents[reusableID]
		if not soundEmitter and command ~= "drop" then
			storedLooperEvents[reusableID] = getWorld():getFreeEmitter()
			soundEmitter = storedLooperEvents[reusableID]
			if command=="setPos" then
				command = "play"
			end
		end
		if soundEmitter then

			storedLooperEventsUpdateTimes[reusableID] = getTimeInMillis()

			if command ~= "setPos" then
				local emitterDebugText = "--loopedSound: "..getClientUsername().." ["..command.."]:"..tostring(soundEmitter).." - "..tostring(reusableID)
				if type(DATA)=="table" then
					for k,v in pairs(DATA) do
						emitterDebugText = emitterDebugText.." - ("..k.."="..tostring(v)..")"
					end
				else
					emitterDebugText = emitterDebugText.." - (DATA = "..tostring(DATA)..")"
				end
				print(emitterDebugText)
			end

			if command == "play" then
				if soundEmitter:isPlaying(DATA.soundEffect) then
					print("--soundEmitter is already playing"..DATA.soundEffect)
					--local square = getSquare(DATA.x, DATA.y, DATA.z)
				else
					storedLooperEventsSoundEffects[reusableID] = storedLooperEventsSoundEffects[reusableID] or {}
					storedLooperEventsSoundEffects[reusableID][DATA.soundEffect] = true
					soundEmitter:playSound(DATA.soundEffect, DATA.x, DATA.y, DATA.z)
				end
			end

			if command == "setPos" then
				--print("--setPos:"..tostring(soundEmitter).." - x:"..DATA.x..","..DATA.y)
				soundEmitter:setPos(DATA.x,DATA.y,DATA.z)
			elseif command == "stop" then
				print("--stop:"..tostring(soundEmitter).." - "..tostring(DATA).." - "..tostring(DATA.soundEffect))
				soundEmitter:stopSoundByName(DATA.soundEffect)
			elseif command == "stopAll" then
				soundEmitter:stopAll()
			end
		end
	end
end


---@param soundEvent string
---@param otherLocation IsoGridSquare
---@param saveEmitter boolean
---@param stopSound boolean
---@param delay number
function eventSoundHandler:playEventSound(heli, soundEvent, otherLocation, saveEmitter, stopSound, delay)

	local soundEffect = heli.eventSoundEffects[soundEvent] or eHelicopter.eventSoundEffects[soundEvent] or soundEvent

	if soundEffect and type(soundEffect)=="table" then
		for _,sound in pairs(soundEffect) do
			eventSoundHandler:playEventSound(heli, sound, otherLocation, saveEmitter, stopSound, delay)
		end
		return
	end

	if not soundEffect or soundEffect=="IGNORE" then
		return
	end

	if delay then
		table.insert(heli.delayedEventSounds, { ["event"]=soundEvent, ["otherLocation"]=otherLocation,
			["saveEmitter"]=saveEmitter, ["stopSound"]=stopSound, ["delay"]=getGametimeTimestamp()+delay })
		return
	end

	if type(soundEffect)=="table" then
		soundEffect = soundEffect[ZombRand(1,#soundEffect+1)]
	end

	local oL = (otherLocation~=nil)

	---@type FMODSoundEmitter | BaseSoundEmitter emitter
	local soundEmitter

	if oL then
		soundEmitter = heli.placedEventSoundEffectEmitters[soundEvent]
	else
		soundEmitter = heli.heldEventSoundEffectEmitters[soundEvent]
	end

	if stopSound then
		if isClient() and heli.looperEventIDs[soundEvent] then
			sendClientCommand("sendLooper", "ping", {reusableID=("HELI"..heli.ID), soundEffect=soundEffect, command="stop"})
		end
		if soundEmitter then
			soundEmitter:stopSoundByName(soundEffect)
		end
		return
	end

	--if otherlocation provided use it; if not use heli
	otherLocation = otherLocation or heli:getIsoGridSquare()

	if heli.looperEventIDs[soundEvent] and isClient() then
		local heliX, heliY, heliZ = heli:getXYZAsInt()
		sendClientCommand("sendLooper", "ping",
				{reusableID=("HELI"..heli.ID), soundEffect=soundEffect, coords={x=heliX,y=heliY,z=heliZ}, command="play"})
		return
	end
	
	if not soundEmitter then
		soundEmitter = getWorld():getFreeEmitter()
		if saveEmitter then
			if oL then
				heli.placedEventSoundEffectEmitters[soundEvent] = soundEmitter
			else
				heli.heldEventSoundEffectEmitters[soundEvent] = soundEmitter
			end
		end

		if soundEmitter:isPlaying(soundEffect) then
			--print("--soundEmitter:isPlaying:"..soundEffect)
		else
			--print("--event:"..soundEvent..":"..soundEffect)
			soundEmitter:playSound(soundEffect, otherLocation)
		end
	end
end


function eventSoundHandler:updatePos(heli,heliX,heliY)
	--Move held emitters to position

	if isClient() and heli.looperEventIDs then
		sendClientCommand("sendLooper", "ping", {reusableID=("HELI"..heli.ID), coords={x=heliX,y=heliY,z=heli.height}, command="setPos"})
	end

	for _,emitter in pairs(heli.heldEventSoundEffectEmitters) do
		emitter:setPos(heliX,heliY,heli.height)
	end
end


function eventSoundHandler:checkEventSounds(heli)
	--check delayed event sounds
	local currentTime = getGametimeTimestamp()
	for placeInList,EventSound in pairs(heli.delayedEventSounds) do
		--event, otherLocation, saveEmitter, stopSound, delay
		if currentTime <= EventSound["delay"] then
			eventSoundHandler:playEventSound(heli, EventSound["otherLocation"], EventSound["saveEmitter"], EventSound["stopSound"])
			heli.delayedEventSounds[placeInList] = nil
		end
	end
end


function eventSoundHandler:stopAllHeldEventSounds(heli)
	--[[DEBUG]] local soundsStopped = false

	if isClient() then
		for soundID,_ in pairs(heli.looperEventIDs) do
			local soundEffect = heli.eventSoundEffects[soundID]
			soundsStopped = true
			sendClientCommand("sendLooper", "ping", {reusableID=("HELI"..heli.ID), soundEffect=soundEffect, command="stop"})
		end
		sendClientCommand("sendLooper", "ping", {reusableID=("HELI"..heli.ID), command="stopAll"})
	end

	for event,emitter in pairs(heli.heldEventSoundEffectEmitters) do
		local soundEffect = heli.eventSoundEffects[event] or eHelicopter.eventSoundEffects[event] or event
		if soundEffect then
			soundsStopped = true
			emitter:stopSoundByName(soundEffect)
		end
	end
	for event,emitter in pairs(heli.placedEventSoundEffectEmitters) do
		local soundEffect = heli.eventSoundEffects[event] or eHelicopter.eventSoundEffects[event] or event
		if soundEffect then
			soundsStopped = true
			emitter:stopSoundByName(soundEffect)
		end
	end
	heli.delayedEventSounds = {}
	--[[DEBUG]] if soundsStopped then print(" - EHE: stopAllHeldEventSounds for "..heli:heliToString()) end
end