local currentBearing = 0
local goalBearing = 0
local bodyStatus = {}
local locked = false
local wasLoaded = false

function infiniteDura(player, vehicle)
	local hood = vehicle:getPartById("EngineDoor")
	if hood:getCondition() < 100 then
		hood:setCondition(100)
	end
	partOne = {"Brake", "Suspension", "Tire"}
	partTwo = {"Front", "Rear"}
	partThree = {"Left", "Right"}
	for _, i in ipairs(partOne) do 
		for __, ii in ipairs(partTwo) do
			for ___, iii in ipairs(partThree) do  
				local allThose = vehicle:getPartById(i .. ii .. iii)
				if allThose:getCondition() < 100 then
					allThose:setCondition(100)
				end
			end
		end
	end
end

function rotate(player, vehicle)
	local handItem = player:getPrimaryHandItem()
	local modData = player:getModData()
	if vehicle ~= nil and vehicle:getSeat(player) == 1 then
		if isMouseButtonDown(1) and handItem ~= nil and (string.find( handItem:getDisplayName(), "M256") or string.find( handItem:getDisplayName(), "M240")) then
			print("Enter aim mode")
			modData.AbramsAim = true
			modData.AbramsAimVehicleId = vehicle:getId()
			
			player:setVehicle(nil)
			
			goalBearing = pMod(math.floor(playerDirection(player:getDirectionAngle()) - vehicleDirection(vehicle:getAngleX(), vehicle:getAngleY(), vehicle:getAngleZ()) + 0.5), 360)
		else
			goalBearing = 0
		end
		if goalBearing > currentBearing then
			locked = false
			if goalBearing - currentBearing <= 180 then
				sendClientCommand("Abrams", "Rotate", {newBearing = tostring(pMod(currentBearing + 1, 360)), oldBearing = tostring(pMod(currentBearing, 360)), vehicleId = vehicle:getId()});
				currentBearing = pMod(currentBearing + 1, 360)
			else
				sendClientCommand("Abrams", "Rotate", {newBearing = tostring(pMod(currentBearing - 1, 360)), oldBearing = tostring(pMod(currentBearing, 360)), vehicleId = vehicle:getId()});
				currentBearing = pMod(currentBearing - 1, 360)
			end
		elseif goalBearing < currentBearing then
			locked = false
			if currentBearing - goalBearing <= 180 then
				sendClientCommand("Abrams", "Rotate", {newBearing = tostring(pMod(currentBearing - 1, 360)), oldBearing = tostring(pMod(currentBearing, 360)), vehicleId = vehicle:getId()});
				currentBearing = pMod(currentBearing - 1, 360)
			else
				sendClientCommand("Abrams", "Rotate", {newBearing = tostring(pMod(currentBearing + 1, 360)), oldBearing = tostring(pMod(currentBearing, 360)), vehicleId = vehicle:getId()});
				currentBearing = pMod(currentBearing + 1, 360)
			end
		else
			locked = true
		end
	end
end

function rotate2(player)
	local handItem = player:getPrimaryHandItem()
	if not locked and handItem ~= nil and (string.find( handItem:getDisplayName(), "M256") or string.find( handItem:getDisplayName(), "M240")) then
		player:setBannedAttacking(true)
		weapon = getWeapon(player)
		weapon:setHitChance(-1000)
	elseif locked and handItem ~= nil and (string.find( handItem:getDisplayName(), "M256") or string.find( handItem:getDisplayName(), "M240")) then
		player:setBannedAttacking(false)
		weapon = getWeapon(player)
		weapon:setHitChance(100)
	end
	local modData = player:getModData()
	local vehicle = getVehicleById(modData.AbramsAimVehicleId)
	local breechContents = vehicle:getPartById("GunBreech"):getItemContainer():getItems()
	local loaded = false

	for i=0, breechContents:size() - 1 do
		if (string.find( breechContents:get(i):getDisplayName(), "M829A1") or string.find( breechContents:get(i):getDisplayName(), "M830")) then
			loaded = true
		end
	end
	local inv = player:getInventory()
	local cannon = cleanWeapon(inv:getItemFromType("M1A1.M256"))
	if loaded and cannon:isRoundChambered() then
		wasLoaded = true
	elseif loaded and not cannon:isRoundChambered() then
		if wasLoaded then
			vehicle:getPartById("GunBreech"):getItemContainer():clear()
			wasLoaded = false
		else
			cannon:setRoundChambered(true)
			wasLoaded = true
		end
	elseif not loaded and cannon:isRoundChambered() then
		cannon:setRoundChambered(false)
		wasLoaded = false
	elseif not loaded and not cannon:isRoundChambered() then
		wasLoaded = false
	end
	
	--[[if vehicle:getPartById("GunBreech"):getItemContainer():contains("M829A1") or vehicle:getPartById("GunBreech"):getItemContainer():contains​("M830") then
		print("loaded")
	end]]
	if isMouseButtonDown(1) then
		goalBearing = pMod(math.floor(playerDirection(player:getDirectionAngle()) - vehicleDirection(vehicle:getAngleX(), vehicle:getAngleY(), vehicle:getAngleZ()) + 0.5), 360)
	else
		print("Exit aim mode")
		modData.AbramsAim = false
		modData.AbramsAimVehicleId = nil
		
		player:setVehicle(vehicle)
		
		goalBearing = 0
	end
	if goalBearing > currentBearing then
		locked = false
		if goalBearing - currentBearing <= 180 then
			sendClientCommand("Abrams", "Rotate", {newBearing = tostring(pMod(currentBearing + 1, 360)), oldBearing = tostring(pMod(currentBearing, 360)), vehicleId = vehicle:getId()});
			currentBearing = pMod(currentBearing + 1, 360)
		else
			sendClientCommand("Abrams", "Rotate", {newBearing = tostring(pMod(currentBearing - 1, 360)), oldBearing = tostring(pMod(currentBearing, 360)), vehicleId = vehicle:getId()});
			currentBearing = pMod(currentBearing - 1, 360)
		end
	elseif goalBearing < currentBearing then
		locked = false
		if currentBearing - goalBearing <= 180 then
			sendClientCommand("Abrams", "Rotate", {newBearing = tostring(pMod(currentBearing - 1, 360)), oldBearing = tostring(pMod(currentBearing, 360)), vehicleId = vehicle:getId()});
			currentBearing = pMod(currentBearing - 1, 360)
		else
			sendClientCommand("Abrams", "Rotate", {newBearing = tostring(pMod(currentBearing + 1, 360)), oldBearing = tostring(pMod(currentBearing, 360)), vehicleId = vehicle:getId()});
			currentBearing = pMod(currentBearing + 1, 360)
		end
	else
		locked = true
	end
end

function getWeapon(player)
	local weapon = player:getPrimaryHandItem()
	if not weapon then return nil end
	if not instanceof(weapon, "HandWeapon") then return nil end
	if not weapon:isRanged() then return nil end
	return weapon
end

function cleanWeapon(weapon)
	if not weapon then return nil end
	if not instanceof(weapon, "HandWeapon") then return nil end
	if not weapon:isRanged() then return nil end
	return weapon
end

function playerDirection(a)
	if a <= 0 then
		return -a
	else
		return -a+360
	end
end

function pMod(a, b)
	if a % b >= 0 then
		return a % b
	else
		return a % b + b
	end
end

function vehicleDirection(x, y, z)
	if Math.abs(x) >= 45 and Math.abs(x) >= 45 then
		return 90-y
	else
		return 270+y
	end
end

function armorOn(player, vehicle)
	local partsList = {"Foot_L", "Foot_R", "ForeArm_L", "ForeArm_R", "Groin", "Hand_L", "Hand_R", "Head", "LowerLeg_L", "LowerLeg_R", "Neck", "Torso_Lower", "Torso_Upper", "UpperArm_L", "UpperArm_R", "UpperLeg_L", "UpperLeg_R"}
	for i=1,17 do
		local roll = ZombRand(0,20)
		bodyStatus[partsList[i]] = bodyStatus[partsList[i]] or {}
		local part = player:getBodyDamage():getBodyPart(BodyPartType.FromString(partsList[i]))
		--HP, scratch, cut, bullet, bleed, burns, deepwound, fracture, glass
		if bodyStatus[partsList[i]]["HP"] ~= nil and bodyStatus[partsList[i]]["HP"] > part:getHealth() + 5 then
			part:SetHealth(math.max(bodyStatus[partsList[i]]["HP"]-5, 0))
		end
		if bodyStatus[partsList[i]]["scratch"] ~= nil and bodyStatus[partsList[i]]["scratch"] < part:getScratchTime() then
			if roll ~= 0 then
				part:setScratchTime(bodyStatus[partsList[i]]["scratch"])
				if bodyStatus[partsList[i]]["scratch"] == 0 then
					part:setScratched(false, false)
				end
			else
				print("Missed scratch")
			end
		end
		if bodyStatus[partsList[i]]["cut"] ~= nil and bodyStatus[partsList[i]]["cut"] < part:getCutTime() then
			if roll ~= 0 then
				part:setCutTime(bodyStatus[partsList[i]]["cut"])
				if bodyStatus[partsList[i]]["cut"] == 0 then
					part:setCut(false, false)
				end
			else
				print("Missed cut")
			end
		end
		if bodyStatus[partsList[i]]["bullet"] ~= nil and bodyStatus[partsList[i]]["bullet"] ~= part:haveBullet() and bodyStatus[partsList[i]]["bullet"] == false then
			part:setHaveBullet(false, 0)
		end
		if bodyStatus[partsList[i]]["bleed"] ~= nil and bodyStatus[partsList[i]]["bleed"] < part:getBleedingTime() then
			if roll ~= 0 then
				part:setBleedingTime(bodyStatus[partsList[i]]["bleed"])
				if bodyStatus[partsList[i]]["bleed"] == 0 then
					part:setBleeding(false)
				end
			else
				print("Missed bleed")
			end
		end
		if bodyStatus[partsList[i]]["burns"] ~= nil and bodyStatus[partsList[i]]["burns"] < part:getBurnTime() then
			part:setBurnTime(bodyStatus[partsList[i]]["burns"])
			if bodyStatus[partsList[i]]["burns"] == 0 then
				part:setBurned()
			end
		end
		if bodyStatus[partsList[i]]["deepwound"] ~= nil and bodyStatus[partsList[i]]["deepwound"] < part:getDeepWoundTime() then
			if roll ~= 0 then
				part:setDeepWoundTime(bodyStatus[partsList[i]]["deepwound"])
				if bodyStatus[partsList[i]]["deepwound"] == 0 then
					part:setDeepWounded(false)
				end
			else
				print("Missed deep wound")
			end
		end
		if bodyStatus[partsList[i]]["fracture"] ~= nil and bodyStatus[partsList[i]]["fracture"] < part:getFractureTime() then
			if roll ~= 0 then
				part:setFractureTime(bodyStatus[partsList[i]]["fracture"])
			else
				print("Missed fracture")
			end
		end
		if bodyStatus[partsList[i]]["glass"] ~= nil and bodyStatus[partsList[i]]["glass"] ~= part:haveBullet() and bodyStatus[partsList[i]]["glass"] == false then
			part:setHaveGlass(false)
		end
		bodyStatus[partsList[i]]["HP"] = part:getHealth()
		bodyStatus[partsList[i]]["scratch"] = part:getScratchTime()
		bodyStatus[partsList[i]]["cut"] = part:getCutTime()
		bodyStatus[partsList[i]]["bullet"] = part:haveBullet()
		bodyStatus[partsList[i]]["bleed"] = part:getBleedingTime()
		bodyStatus[partsList[i]]["burns"] = part:getBurnTime()
		bodyStatus[partsList[i]]["deepwound"] = part:getDeepWoundTime()
		bodyStatus[partsList[i]]["fracture"] = part:getFractureTime()
		bodyStatus[partsList[i]]["glass"] = part:haveGlass()
	end
end

function reduceTankWeight(player, vehicle)
    if (vehicle:getSeat(player) == 0) then
		if vehicle:getMass() > 2200 then
			vehicle:setMass(2200)
		end
	end
end

function inTankHandler(player)
    local vehicle = player:getVehicle() or nil
	if (vehicle and string.find( vehicle:getScriptName(), "m1a1" )) then
		armorOn(player, vehicle)
		infiniteDura(player, vehicle)
		rotate(player, vehicle)
		reduceTankWeight(player, vehicle)
	end
	
	local modData = player:getModData()
	if modData.AbramsAim ~= nil and modData.AbramsAim == true and modData.AbramsAimVehicleId ~= nil then
		rotate2(player)
	end
end

Events.OnPlayerUpdate.Add(inTankHandler)

function ISSwitchVehicleSeat:perform()
	local vehicle = self.character:getVehicle()
	local modDataVehicle = vehicle:getModData()
	if (string.find( vehicle:getScriptName(), "m1a1" )) then
		if self.seatTo == 1 then
			local inv = self.character:getInventory()
			inv:AddItem("M1A1.M256")
			inv:AddItem("M1A1.M240")
			local cannon = inv:getItemFromType("M1A1.M256")
			local coaxial = inv:getItemFromType("M1A1.M240")
			self.character:setPrimaryHandItem(cannon)
			self.character:setSecondaryHandItem(cannon)
			cannon:setFavorite(true)
			coaxial:setFavorite(true)
			if modDataVehicle.ammoCount ~= nil and modDataVehicle.clipLoaded ~= nil then
				coaxial:setCurrentAmmoCount(modDataVehicle.ammoCount)
				coaxial:setContainsClip(modDataVehicle.clipLoaded)
				coaxial:setRoundChambered(modDataVehicle.chambered)
			else
				modDataVehicle.ammoCount = 0
				modDataVehicle.clipLoaded = false
				modDataVehicle.chambered = false
			end
			if modDataVehicle.cannonLoaded ~= nil then
				cannon:setRoundChambered(modDataVehicle.cannonLoaded)
			else
				modDataVehicle.cannonLoaded = false
			end
		else
			local inv = self.character:getInventory()
			local cannon = inv:getItemFromType("M1A1.M256")
			local coaxial = inv:getItemFromType("M1A1.M240")
			if cannon ~= nil then inv:DoRemoveItem(cannon) end
			if coaxial ~= nil then
				inv:DoRemoveItem(coaxial)
				modDataVehicle.ammoCount = coaxial:getCurrentAmmoCount()
				modDataVehicle.clipLoaded = coaxial:isContainsClip()
				modDataVehicle.chambered = coaxial:isRoundChambered()
				modDataVehicle.cannonLoaded = cannon:isRoundChambered()
			end
			self.character:setPrimaryHandItem(nil)
			self.character:setSecondaryHandItem(nil)
		end
		vehicle:setCharacterPosition(self.character, self.seatTo, "inside")
	end
	vehicle:switchSeat(self.character, self.seatTo)
	vehicle:playPassengerAnim(self.seatTo, "idle")
	triggerEvent("OnSwitchVehicleSeat", self.character)
	-- needed to remove from queue / start next.
	local pdata = getPlayerData(self.character:getPlayerNum());
	if pdata ~= nil then
		pdata.playerInventory:refreshBackpacks();
		pdata.lootInventory:refreshBackpacks();
	end
	ISBaseTimedAction.perform(self)
end

local removeRack = ISReloadWeaponAction.canRack
ISReloadWeaponAction.canRack = function(weapon)
	if string.find( weapon:getName(), "M256" ) then
		return false
	end
	return true
end

local removeBullets = ISInventoryPaneContextMenu.doBulletMenu
ISInventoryPaneContextMenu.doBulletMenu = function(playerObj, weapon, context)
	if not string.find( weapon:getName(), "M256" ) then
		removeBullets(playerObj, weapon, context)
	end
end

local removePlace = ISInventoryPaneContextMenu.doPlace3DItemOption
ISInventoryPaneContextMenu.doPlace3DItemOption = function(items, player, context)
    local testItem = nil
    local editItem = nil
    for i,v in ipairs(items) do
        testItem = v
        if not instanceof(v, "InventoryItem") then
            if #v.items == 2 then
                editItem = v.items[1]
            end
            testItem = v.items[1]
        else
            editItem = v
        end
        if instanceof(testItem, "InventoryItem") then
			if string.find( testItem:getDisplayName(), "M256" ) or string.find( testItem:getDisplayName(), "M240" ) then
				context:remove("Unfavorite")
				return
			end
		end
	end
	return removePlace(items, player, context)
end

function ISContextMenu:remove(a)
	local removed = false
	for i,option in ipairs(self.options) do
		if string.find( option.name, a ) and not removed then
			table.insert(self.optionPool, option)
			table.removevalue(self.options, option.name)
			self.numOptions = self.numOptions - 1
			removed = true
		elseif removed then
			self.options[i-1] = self.options[i]
		end
	end
	if removed then self.options[self.numOptions] =  nil end
	self:calcHeight()
end

function table.removevalue(table, value)
	for k, v in pairs(table) do
		if v.name == value then
			table[k] = nil
		end
	end
end