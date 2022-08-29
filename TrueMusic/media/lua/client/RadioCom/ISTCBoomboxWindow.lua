--***********************************************************
--**                    THE INDIE STONE                    **
--**				  Author: turbotutone				   **
--***********************************************************

require "ISUI/ISCollapsableWindow"
require "RadioCom/ISRadioWindow"
require "TCMusicDefenitions"

ISTCBoomboxWindow = ISCollapsableWindow:derive("ISTCBoomboxWindow");
ISTCBoomboxWindow.instances = {};
ISTCBoomboxWindow.instancesIso = {};

function ISTCBoomboxWindow.activate( _player, _deviceObject )
-- print("ISTCBoomboxWindow.activate")
    local playerNum = _player:getPlayerNum();

    local radioWindow, instances;
    _player:setVariable("ExerciseStarted", false);
    _player:setVariable("ExerciseEnded", true);
    local _isIso = not instanceof(_deviceObject, "Radio")
    if _isIso then
        instances = ISTCBoomboxWindow.instancesIso;
    else
        instances = ISTCBoomboxWindow.instances;
    end

    if instances[ playerNum ] then
        radioWindow = instances[ playerNum ];
        --radioWindow:initialise();
    else
        radioWindow = ISTCBoomboxWindow:new (100, 100, 300, 500, _player);
        radioWindow:initialise();
        radioWindow:instantiate();
        ISLayoutManager.enableLog = true;
        if playerNum == 0 then
            ISLayoutManager.RegisterWindow('radiotelevision'..(_isIso and "Iso" or ""), ISCollapsableWindow, radioWindow);
        end
        ISLayoutManager.enableLog = false;
        instances[ playerNum ] = radioWindow;
    end

    --radioWindow.isJoypadWindow = JoypadState.players[playerNum+1] and true or false;

    radioWindow:readFromObject( _player, _deviceObject );

    radioWindow:addToUIManager();
    radioWindow:setVisible(true);

    --radioWindow:setJoypadPrompt();
    if JoypadState.players[playerNum+1] then
        if getFocusForPlayer(playerNum) then getFocusForPlayer(playerNum):setVisible(false); end
        if getPlayerInventory(playerNum) then getPlayerInventory(playerNum):setVisible(false); end
        if getPlayerLoot(playerNum) then getPlayerLoot(playerNum):setVisible(false); end
        --setJoypadFocus(playerNum, nil);
        setJoypadFocus(playerNum, radioWindow);
    end
    return radioWindow;
end

function ISTCBoomboxWindow:initialise()
    ISCollapsableWindow.initialise(self);
end

function ISTCBoomboxWindow:addModule( _modulePanel, _moduleName, _enable )
    local module = {};
    module.enabled = _enable;
    --module.panel = _modulePanel;
    --module.name = _moduleName;
    module.element = RWMElement:new (0, 0, self.width, 0, _modulePanel, _moduleName, self);
    table.insert(self.modules, module);
    self:addChild(module.element);
end

function ISTCBoomboxWindow:createChildren()
    ISCollapsableWindow.createChildren(self);
    local th = self:titleBarHeight();

    --self:addModule(RWMSignal:new (0, 0, self.width, 0 ), "Signal", false);
    -- self:addModule(RWMGeneral:new (0, 0, self.width, 0), getText("IGUI_RadioGeneral"), true);
    self:addModule(RWMPower:new (0, 0, self.width, 0), getText("IGUI_RadioPower"), true);
    self:addModule(TCRWMGridPower:new (0, 0, self.width, 0), getText("IGUI_RadioPower"), true);
    -- self:addModule(RWMSignal:new (0, 0, self.width, 0), getText("IGUI_RadioSignal"), true);
    self:addModule(TCRWMVolume:new (0, 0, self.width, 0), getText("IGUI_RadioVolume"), true);
    -- self:addModule(RWMMicrophone:new (0, 0, self.width, 0), getText("IGUI_RadioMicrophone"), true);
    self:addModule(TCRWMMedia:new (0, 0, self.width, 0 ), getText("IGUI_RadioMedia"), true);
    -- self:addModule(RWMChannel:new (0, 0, self.width, 0 ), getText("IGUI_RadioChannel"), true);
    -- self:addModule(RWMChannelTV:new (0, 0, self.width, 0 ), getText("IGUI_RadioChannel"), true);

end

local dist = 4;
function ISTCBoomboxWindow:update()
-- print("ISTCBoomboxWindow:update")
    ISCollapsableWindow.update(self);
    if self:getIsVisible() then
        if self.deviceData and self.deviceType == "VehiclePart" then
            local part = self.deviceData:getParent()
            if part and part:getItemType() and not part:getItemType():isEmpty() and not part:getInventoryItem() then
                self:close()
                return
            end
        end

        if self.deviceType and self.device and self.character and self.deviceData then
            if self.deviceType=="InventoryItem" then -- incase of inventory item check if player has it in a hand
                if -- self.character:getPrimaryHandItem() == self.device or 
				self.character:getSecondaryHandItem() == self.device then
                    return;
                end
            elseif self.deviceType == "IsoObject" or self.deviceType == "VehiclePart" then -- incase of isoobject check distance.
                if self.device:getSquare() and self.character:getX() > self.device:getX()-dist and self.character:getX() < self.device:getX()+dist and self.character:getY() > self.device:getY()-dist and self.character:getY() < self.device:getY()+dist then
                    return;
                end
            end
        end
    end

    if self.deviceData and self.deviceType=="InventoryItem" and
		( -- self.character:getPrimaryHandItem() ~= self.device and 
		self.character:getSecondaryHandItem() ~= self.device) then        -- conveniently turn off radio when unequiped to prevent accidental loss of power.
		-- print("TURN OFF")
		self.device:getModData().tcmusic.isPlaying = false;
        self.deviceData:setIsTurnedOn(false);
    end

    -- otherwise remove
	-- print("ISTCBoomboxWindow:update() close")
    self:close();
    --self:clear();
    --self:removeFromUIManager();
end

function ISTCBoomboxWindow:prerender()
    self:stayOnSplitScreen();
    ISCollapsableWindow.prerender(self);
    local cnt = 0;
    local ymod = self:titleBarHeight()+1;
    for i=1,#self.modules do
        if self.modules[i].enabled then
            self.modules[i].element:setY(ymod);
            ymod = ymod + self.modules[i].element:getHeight()+1;
        else
            self.modules[i].element:setVisible(false);
        end
    end
    self:setHeight(ymod);
    --ISCollapsableWindow.prerender(self);
    --self:stayOnSplitScreen();
    --self:setJoypadPrompt();
end

function ISTCBoomboxWindow:stayOnSplitScreen()
    ISUIElement.stayOnSplitScreen(self, self.characterNum)
end


function ISTCBoomboxWindow:render()
    --self:setJoypadPrompt();
    ISCollapsableWindow.render(self);
end

function ISTCBoomboxWindow:onLoseJoypadFocus(joypadData)
    self.drawJoypadFocus = false;
end

function ISTCBoomboxWindow:onGainJoypadFocus(joypadData)
    self.drawJoypadFocus = true;
end

function ISTCBoomboxWindow:close()
-- print("ISTCBoomboxWindow:close()")
    ISCollapsableWindow.close(self);
    if JoypadState.players[self.characterNum+1] then
        if getFocusForPlayer(self.characterNum)==self or (self.subFocus) then
            setJoypadFocus(self.characterNum, nil);
        end
    end
    self:removeFromUIManager();
    self:clear();
    self.subFocus = nil;
end

function ISTCBoomboxWindow:clear()
-- print("ISTCBoomboxWindow:clear()")
    self.drawJoypadFocus = false;
    self.character = nil;
    self.device = nil;
    self.deviceData = nil;
    self.deviceType = nil;
    self.hotKeyPanels = {};
    for i=1,#self.modules do
        self.modules[i].enabled = false;
        self.modules[i].element:clear();
    end
end

-- read from item/object and set modules
function ISTCBoomboxWindow:readFromObject( _player, _deviceObject )
	-- print("ISTCBoomboxWindow:readFromObject")
    self:clear();
    self.character = _player;
    self.device = _deviceObject;
    if self.device then
        self.deviceType = (instanceof(self.device, "Radio") and "InventoryItem") or
            (instanceof(self.device, "IsoWaveSignal") and "IsoObject") or
            (instanceof(self.device, "VehiclePart") and "VehiclePart");
        if self.deviceType then
            self.deviceData = _deviceObject:getDeviceData();
            self.title = self.deviceData:getDeviceName();
			-- print(self.device:getModData().tcmusic.deviceType)
			if self.deviceType == "IsoObject" then
				if not self.device:getModData().tcmusic then
					self.device:getModData().tcmusic = {}
				end
				self.device:getModData().tcmusic.deviceType = self.deviceType
				if not isClient() and self.deviceData:getMediaType() == 1 then
					-- self.device:getModData().tcmusic.needSpeaker = true
				end
				self.device:transmitModData()
			elseif self.deviceType == "InventoryItem" then
				if not self.device:getModData().tcmusic then
					self.device:getModData().tcmusic = {}
				end
				self.device:getModData().tcmusic.deviceType = self.deviceType
			else
				-- print("sendClientCommand: readFromObject")
				local mediaItemName = false
				local isPlaying = false
				if self.device:getModData().tcmusic then
					mediaItemName = self.device:getModData().tcmusic.mediaItem
					isPlaying = self.device:getModData().tcmusic.isPlaying
				end
				sendClientCommand(self.character, 'truemusic', 'setMediaItem', { vehicle = self.device:getVehicle():getId(), mediaItem = mediaItemName, isPlaying = isPlaying })
			end
        end
    end

    if (not self.character) or (not self.device) or (not self.deviceData) or (not self.deviceType) then
        self:clear();
        return;
    end

    for i=1,#self.modules do
        self.modules[i].enabled = self.modules[i].element:readFromObject(self.character, self.device, self.deviceData, self.deviceType);
        self.modules[i].element:setVisible(self.modules[i].enabled);
        if self.modules[i].enabled then
            if self.modules[i].element.titleText==getText("IGUI_RadioPower") then -- or self.modules[i].element.titleText=="GridPower" then
                self.hotKeyPanels.power = self.modules[i].element.subpanel;
            elseif self.modules[i].element.titleText==getText("IGUI_RadioVolume") then
                self.hotKeyPanels.volume = self.modules[i].element.subpanel;
            elseif self.modules[i].element.titleText==getText("IGUI_RadioMicrophone") then
                self.hotKeyPanels.microphone = self.modules[i].element.subpanel;
            end
        end
    end

    --[[
    for i=1,#self.modules do
        if self.character and self.device and self.deviceData then
            if self.modules[i].name == "Power" then
                self.modules[i].enabled = self.deviceData:getIsBatteryPowered();
            elseif self.modules[i].name == "GridPower" then
                self.modules[i].enabled = not self.deviceData:getIsBatteryPowered();
            elseif self.modules[i].name == "Signal" then
                self.modules[i].enabled = not self.deviceData:getIsTelevision();
            else
                self.modules[i].enabled = true;
            end

            if self.modules[i].enabled then
                self.modules[i].element:readFromObject(self.character, self.device, self.deviceData, self.deviceType);
                self.modules[i].element:setVisible(true);
            end
        end
    end
    --]]

    --self.moduleTest:readFromObject(_player, _deviceObject);
    --self.moduleTest2:readFromObject(_player, _deviceObject);
end

local interval = 20;
function ISTCBoomboxWindow:onJoypadDirUp()
    self:setY(self:getY()-interval);
end

function ISTCBoomboxWindow:onJoypadDirDown()
    self:setY(self:getY()+interval);
end

function ISTCBoomboxWindow:onJoypadDirLeft()
    self:setX(self:getX()-interval);
end

function ISTCBoomboxWindow:onJoypadDirRight()
    self:setX(self:getX()+interval);
end

function ISTCBoomboxWindow:onJoypadDown(button)
    if button == Joypad.AButton and self.hotKeyPanels.power then
        self.hotKeyPanels.power:onJoypadDown(Joypad.AButton);
    elseif button == Joypad.BButton then
        self:close();
    elseif button == Joypad.YButton and self.hotKeyPanels.volume then
        self.hotKeyPanels.volume:onJoypadDown(Joypad.YButton);
    elseif button == Joypad.XButton and self.hotKeyPanels.microphone then
        self.hotKeyPanels.microphone:onJoypadDown(Joypad.AButton);
    elseif button == Joypad.LBumper then
        self:unfocusSelf(false);
    elseif button == Joypad.RBumper then
        self:focusNext();
    end
end

function ISTCBoomboxWindow:getAPrompt()
    if self.hotKeyPanels.power then
        return getText("IGUI_Hotkey")..": "..self.hotKeyPanels.power:getAPrompt();
    end
    return nil;
end
function ISTCBoomboxWindow:getBPrompt()
    return getText("IGUI_RadioClose");
end
function ISTCBoomboxWindow:getXPrompt()
    if self.hotKeyPanels.microphone then
        return getText("IGUI_Hotkey")..": "..self.hotKeyPanels.microphone:getAPrompt();
    end
    return nil;
end
function ISTCBoomboxWindow:getYPrompt()
    if self.hotKeyPanels.volume then
        return getText("IGUI_Hotkey")..": "..self.hotKeyPanels.volume:getYPrompt();
    end
    return nil;
end
function ISTCBoomboxWindow:getLBPrompt()
    return getText("IGUI_RadioReleaseFocus");
end
function ISTCBoomboxWindow:getRBPrompt()
    return getText("IGUI_RadioSelectInner");
end

function ISTCBoomboxWindow:unfocusSelf()
    setJoypadFocus(self.characterNum, nil);
end

function ISTCBoomboxWindow:focusSelf()
    self.subFocus = nil;
    setJoypadFocus(self.characterNum, self);
end

function ISTCBoomboxWindow:isValidPrompt()
    return (self.character and self.device and self.deviceData)
end

function ISTCBoomboxWindow:focusNext(_up)
    --print("focus next ")
    local first = nil;
    local last = nil;
    local found = false;
    local nextFocus = nil;
    for i=1,#self.modules do
        if self.modules[i].enabled then
            if not first then first = self.modules[i]; end
            if found and not _up and not nextFocus then
                nextFocus = self.modules[i];
            end
            if self.subFocus and self.subFocus==self.modules[i] then
                found = true;
                if last~=nil and _up then
                    nextFocus = last;
                end
            end
            last = self.modules[i];
        end
    end
    if not nextFocus then
        if _up then
            nextFocus = last;
        else
            nextFocus = first;
        end
    end
    self:setSubFocus(nextFocus)
end

--hocus pocus set subfocus
function ISTCBoomboxWindow:setSubFocus( _newFocus )
    --print("subfocus "..tostring(_newFocus))
    if not _newFocus or not _newFocus.element then
        self:focusSelf();
    else
        self.subFocus = _newFocus;
        _newFocus.element:setFocus(self.characterNum, self);
    end
end

function ISTCBoomboxWindow:new (x, y, width, height, player)
    local o = {}
    --o.data = {}
    o = ISCollapsableWindow:new(x, y, width, height);
    setmetatable(o, self)
    self.__index = self
    o.x = x;
    o.y = y;
    o.character = player;
    o.characterNum = player:getPlayerNum();
    o.borderColor = {r=0.4, g=0.4, b=0.4, a=1};
    o.backgroundColor = {r=0, g=0, b=0, a=0.8};
    o.width = width;
    o.height = height;
    o.anchorLeft = true;
    o.anchorRight = false;
    o.anchorTop = true;
    o.anchorBottom = false;
    o.pin = true;
    o.isCollapsed = false;
    o.collapseCounter = 0;
    o.title = "Radio/Television Window";
    --o.viewList = {}
    o.resizable = false;
    o.drawFrame = true;

    o.device = nil;     -- item or object linked to panel
    o.deviceData = nil; -- deviceData
    o.modules = {};     -- table of modules to use
    o.overrideBPrompt = true;
    o.subFocus = nil;
    o.hotKeyPanels = {};
    o.isJoypadWindow = false;
    return o
end