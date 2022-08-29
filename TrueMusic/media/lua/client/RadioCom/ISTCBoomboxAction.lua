--***********************************************************
--**                    THE INDIE STONE                    **
--**				  Author: turbotutone				   **
--***********************************************************

require "TimedActions/ISBaseTimedAction"
require "TCMusicDefenitions"

ISTCBoomboxAction = ISBaseTimedAction:derive("ISTCBoomboxAction")

function ISTCBoomboxAction:actionWhenPlaying()
	if self.device:getModData().tcmusic.isPlaying then
		local musicId = nil
		if not (self.device:getModData().tcmusic.deviceType == "VehiclePart") then
			if self.device:getModData().tcmusic.deviceType == "InventoryItem" then
				if isClient() then
					musicId = self.character:getOnlineID()
				else
					musicId = self.character:getUsername()
				end
			else
				musicId = "#" .. self.device:getX() .. "-" .. self.device:getY() .. "-" .. self.device:getZ()
			end
			-- if isClient() then 
				-- -- ModData.request("trueMusicData") 
			-- end
			ModData.getOrCreate("trueMusicData")["now_play"][musicId] = {
				volume = self.deviceData:getDeviceVolume(),
				headphone = self.deviceData:getHeadphoneType() >= 0,
				timestamp = "update",
				musicName = self.device:getModData().tcmusic.mediaItem,
			}
			if self.device:getModData().tcmusic.deviceType == "InventoryItem" then
				ModData.getOrCreate("trueMusicData")["now_play"][musicId]["itemid"] = self.device:getID()
			end
			if isClient() then ModData.transmit("trueMusicData") end
		end
	end
end


function ISTCBoomboxAction:isValid()
	-- print("ISTCBoomboxAction:isValid()")
    if self.character and self.device and self.deviceData and self.mode then
        if self["isValid"..self.mode] then
            return self["isValid"..self.mode](self);
        end
    end
end

function ISTCBoomboxAction:update()
    if self.character and self.deviceData and self.deviceData:isIsoDevice() then
        self.character:faceThisObject(self.deviceData:getParent())
    end
end

function ISTCBoomboxAction:perform()
	-- print("ISTCBoomboxAction:perform()")
    if self.character and self.device and self.deviceData and self.mode then
        if self["perform"..self.mode] then
            self["perform"..self.mode](self);
        end
    end
    ISBaseTimedAction.perform(self)
end

-- ToggleOnOff
function ISTCBoomboxAction:isValidToggleOnOff()
    return self.deviceData:getIsBatteryPowered() and self.deviceData:getPower() > 0 or self.deviceData:canBePoweredHere();
end

function ISTCBoomboxAction:performToggleOnOff()
-- print("ISTCBoomboxAction:performToggleOnOff")
    if self:isValidToggleOnOff() then
		if self.device:getModData().tcmusic and (self.device:getModData().tcmusic.deviceType == "VehiclePart") then
			sendClientCommand(self.character, 'truemusic', 'setMediaItem', { vehicle = self.device:getVehicle():getId(), mediaItem = self.device:getModData().tcmusic.mediaItem, isPlaying = false })
		end
        self.deviceData:setIsTurnedOn( not self.deviceData:getIsTurnedOn() );
    end
end

-- RemoveBattery
function ISTCBoomboxAction:isValidRemoveBattery()
    return self.deviceData:getIsBatteryPowered() and self.deviceData:getHasBattery();
end

function ISTCBoomboxAction:performRemoveBattery()
    if self:isValidRemoveBattery() and self.character:getInventory() then
        self.deviceData:getBattery(self.character:getInventory());
    end
end

-- AddBattery
function ISTCBoomboxAction:isValidAddBattery()
    return self.deviceData:getIsBatteryPowered() and self.deviceData:getHasBattery() == false;
end

function ISTCBoomboxAction:performAddBattery()
    if self:isValidAddBattery() and self.secondaryItem then
        self.deviceData:addBattery(self.secondaryItem);
    end
end

-- SetVolume
function ISTCBoomboxAction:isValidSetVolume()
    if (not self.secondaryItem) and type(self.secondaryItem)~="number" then return false; end
    return self.deviceData:getIsTurnedOn() and self.deviceData:getPower()>0;
end

function ISTCBoomboxAction:performSetVolume()
    if self:isValidSetVolume() then
        self.deviceData:setDeviceVolume(self.secondaryItem);
		self:actionWhenPlaying()
    end
end

-- MuteMicrophone
-- function ISTCBoomboxAction:isValidMuteMicrophone()
    -- if (not self.secondaryItem) and type(self.secondaryItem)~="boolean" then return false; end
    -- return self.deviceData:getIsTurnedOn() and self.deviceData:getPower()>0;
-- end

-- function ISTCBoomboxAction:performMuteMicrophone()
    -- if self:isValidMuteMicrophone() then
        -- self.deviceData:setMicIsMuted(self.secondaryItem);
    -- end
-- end

-- RemoveHeadphones
function ISTCBoomboxAction:isValidRemoveHeadphones()
    return self.deviceData:getHeadphoneType() >= 0;
end

function ISTCBoomboxAction:performRemoveHeadphones()
    if self:isValidRemoveHeadphones() and self.character:getInventory() then
        self.deviceData:getHeadphones(self.character:getInventory());
		self:actionWhenPlaying()
    end
end

-- AddHeadphones
function ISTCBoomboxAction:isValidAddHeadphones()
    return self.deviceData:getHeadphoneType() < 0;
end

function ISTCBoomboxAction:performAddHeadphones()
    if self:isValidAddHeadphones() and self.secondaryItem then
        self.deviceData:addHeadphones(self.secondaryItem);
		self:actionWhenPlaying()
    end
end

-- TogglePlayMedia
function ISTCBoomboxAction:isValidTogglePlayMedia()
	if self.deviceData:getIsTurnedOn() and self.device:getModData().tcmusic.mediaItem then
		if not self.device:getModData().tcmusic.needSpeaker or self.device:getModData().tcmusic.connectTo then
			return true
		else
			return false
		end
	end
end

function ISTCBoomboxAction:performTogglePlayMedia()
	-- print("ISTCBoomboxAction:performTogglePlayMedia()")
    if self:isValidTogglePlayMedia() then
		if isClient() then 
			-- ModData.request("trueMusicData") 
		end
		if self.device:getModData().tcmusic.deviceType == "VehiclePart" then
			if self.device:getModData().tcmusic.isPlaying then
				self.device:getVehicle():getEmitter():stopAll()
				sendClientCommand(self.character, 'truemusic', 'setMediaItem', { vehicle = self.device:getVehicle():getId(), mediaItem = self.device:getModData().tcmusic.mediaItem, isPlaying = false })
				
			elseif self.device:getVehicle():getEmitter() then
				getSoundManager():StopMusic()
				self.deviceData:setChannelRaw(100)
				sendClientCommand(self.character, 'truemusic', 'setMediaItem', { vehicle = self.device:getVehicle():getId(), mediaItem = self.device:getModData().tcmusic.mediaItem, isPlaying = true })
			end	
		else
			local musicId = nil
			local needTransmit = false
			if self.device:getModData().tcmusic.deviceType == "InventoryItem" then
				if isClient() then
					musicId = self.character:getOnlineID()
				else
					musicId = self.character:getUsername()
				end
			else
				musicId = "#" .. self.device:getX() .. "-" .. self.device:getY() .. "-" .. self.device:getZ()
				needTransmit = true
			end
			
			if self.device:getModData().tcmusic.isPlaying then -- self.deviceData:isPlayingMedia()
				self.device:getModData().tcmusic.isPlaying = false 
				if self.deviceData:getEmitter() then
					self.deviceData:getEmitter():stopAll()
				end
				ModData.getOrCreate("trueMusicData")["now_play"][musicId] = nil
			else
				getSoundManager():StopMusic()
				self.device:getModData().tcmusic.isPlaying = true
				self.deviceData:playSound(self.device:getModData().tcmusic.mediaItem, self.device:getDeviceData():getDeviceVolume() * 0.4, false)
				ModData.getOrCreate("trueMusicData")["now_play"][musicId] = {
					volume = self.deviceData:getDeviceVolume(),
					headphone = self.deviceData:getHeadphoneType() >= 0,
					timestamp = "update",
					musicName = self.device:getModData().tcmusic.mediaItem,
				}
				if self.device:getModData().tcmusic.deviceType == "InventoryItem" then
					ModData.getOrCreate("trueMusicData")["now_play"][musicId]["itemid"] = self.device:getID()
				end
			end
			if needTransmit then
				self.device:transmitModData()
			end
		end
		if isClient() then ModData.transmit("trueMusicData") end
    end
end

-- AddMedia
function ISTCBoomboxAction:isValidAddMedia()
	-- print("ISTCBoomboxAction:isValidAddMedia()")
	-- print((not self.deviceData:getParent():getModData().tcmusic.mediaItem) and self.deviceData:getMediaType() == TCMusicData[self.secondaryItem:getType()])
	-- print(self.device:getModData().tcmusic.deviceType)
	-- print(self.device:getModData().tcmusic.mediaItem)
	local musicPlayer = nil
	if self.device:getModData().tcmusic.deviceType == "InventoryItem" then
		musicPlayer = TCMusic.ItemMusicPlayer[self.device:getFullType()]
	elseif self.device:getModData().tcmusic.deviceType == "IsoObject" then
		musicPlayer = TCMusic.WorldMusicPlayer[self.device:getSprite():getName()]
	elseif self.device:getModData().tcmusic.deviceType == "VehiclePart" then
		musicPlayer = TCMusic.VehicleMusicPlayer[self.device:getInventoryItem():getFullType()]
	end
	if self.secondaryItem then
		local music = self.secondaryItem:getType()
		return (not self.device:getModData().tcmusic.mediaItem) and GlobalMusic[music] and musicPlayer == GlobalMusic[music];
	end
end

function ISTCBoomboxAction:performAddMedia()
-- print("ISTCBoomboxAction:performAddMedia()")
    if self:isValidAddMedia() and self.secondaryItem then
		local inventoryItem = self.secondaryItem
		local container = self.secondaryItem:getContainer()
		if container then
			if (container:getType() == "floor" and inventoryItem:getWorldItem() and inventoryItem:getWorldItem():getSquare()) then
				inventoryItem:getWorldItem():getSquare():transmitRemoveItemFromSquare(inventoryItem:getWorldItem());
				inventoryItem:getWorldItem():getSquare():getWorldObjects():remove(inventoryItem:getWorldItem());
				inventoryItem:getWorldItem():getSquare():getChunk():recalcHashCodeObjects();
				inventoryItem:getWorldItem():getSquare():getObjects():remove(inventoryItem:getWorldItem());
				inventoryItem:setWorldItem(nil);
			end
			
			if self.device:getModData().tcmusic.deviceType == "IsoObject" then
				self.device:getModData().tcmusic.mediaItem = inventoryItem:getType();
				self.device:transmitModData()
			elseif self.device:getModData().tcmusic.deviceType == "VehiclePart" then
				-- print("vehilceTransmit")
				-- print(self.device)
				-- print(self.device:getModData().tcmusic.mediaItem)
				local mediaItemName = inventoryItem:getType()
				sendClientCommand(self.character, 'truemusic', 'setMediaItem', { vehicle = self.device:getVehicle():getId(), mediaItem = mediaItemName, isPlaying = false })
                if isClient() then
                    container:removeItemOnServer(inventoryItem);
                end
			else
				self.device:getModData().tcmusic.mediaItem = inventoryItem:getType();
			end
			container:DoRemoveItem(inventoryItem);
		end
    end
end

-- RemoveMedia
function ISTCBoomboxAction:isValidRemoveMedia()
	-- print("ISTCBoomboxAction:isValidRemoveMedia()")
	if self.device:getModData().tcmusic.mediaItem then
		return true
	else
		return false
	end
end

function ISTCBoomboxAction:performRemoveMedia()
-- print("ISTCBoomboxAction:performRemoveMedia()")
    if self:isValidRemoveMedia() and self.character:getInventory() then
		local itemTape = InventoryItemFactory.CreateItem("Tsarcraft." .. self.device:getModData().tcmusic.mediaItem)
		if itemTape then
			self.character:getInventory():AddItem(itemTape)
			if self.device:getModData().tcmusic.deviceType == "VehiclePart" then
				if self.device:getVehicle() then
					self.device:getVehicle():getEmitter():stopAll()
				end
			else
				if self.deviceData:getEmitter() then
					self.deviceData:getEmitter():stopAll()
				end
			end
			self.device:getModData().tcmusic.mediaItem = nil
			if self.device:getModData().tcmusic.deviceType == "IsoObject" then
				self.device:transmitModData()
			elseif self.device:getModData().tcmusic.deviceType == "VehiclePart" then
				-- print("vehilceTransmit")
				sendClientCommand(self.character, 'truemusic', 'setMediaItem', { vehicle = self.device:getVehicle():getId(), mediaItem = "nil", isPlaying = false })
				-- self.device:getVehicle():transmitPartModData(self.device)
			end
		end
    end
end

function ISTCBoomboxAction:new(mode, character, device, secondaryItem)
    local o             = {};
    setmetatable(o, self);
    self.__index        = self;
    o.mode              = mode;
    o.character         = character;
    o.device            = device;
    o.deviceData        = device and device:getDeviceData();
    o.secondaryItem     = secondaryItem;

    o.stopOnWalk        = false;
    o.stopOnRun         = true;
    o.maxTime           = 30;

    return o;
end
