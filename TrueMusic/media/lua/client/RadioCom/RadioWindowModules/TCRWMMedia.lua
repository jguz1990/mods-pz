--***********************************************************
--**                    THE INDIE STONE                    **
--**				  Author: turbotutone				   **
--***********************************************************
require "RadioCom/RadioWindowModules/RWMPanel"
require "TCMusicDefenitions"

TCRWMMedia = RWMPanel:derive("TCRWMMedia");

local FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small)

function TCRWMMedia:initialise()
    ISPanel.initialise(self)
end

function TCRWMMedia:createChildren()
    --self:setHeight(32);

    local y = 4;
    local ww = math.floor((self:getWidth()-20)/ISLcdBar.charW);
    local charWidth = ww;
    local lcdw = ww*ISLcdBar.charW;
    local x = ((self:getWidth()/2)-(lcdw/2))-2;

    self.lcd = ISLcdBar:new(x,y,charWidth);
    self.lcd:initialise();
    self.lcd:setTextMode(false);
    self:addChild(self.lcd);

    y = self.lcd:getY() + self.lcd:getHeight() + 5;

    x = (self:getWidth()/2)-(24/2);
    self.itemDropBox = ISItemDropBox:new (x, y, 24, 24, false, self, TCRWMMedia.addMedia, TCRWMMedia.removeMedia, TCRWMMedia.verifyItem, nil );
    self.itemDropBox:initialise();
    self.itemDropBox:setBackDropTex( getTexture("Item_Battery"), 0.4, 1,1,1 );
    self.itemDropBox:setDoBackDropTex( true );
    self.itemDropBox:setToolTip( true, getText("IGUI_RadioDragBattery") );
    self:addChild(self.itemDropBox);

    y = self.itemDropBox:getY() + self.itemDropBox:getHeight() + 5;

    local btnHgt = FONT_HGT_SMALL + 1 * 2

    self.toggleOnOffButton = ISButton:new(10, y, self:getWidth()-20, btnHgt, getText("ContextMenu_Turn_On"),self, TCRWMMedia.togglePlayMedia);
    self.toggleOnOffButton:initialise();
    self.toggleOnOffButton.backgroundColor = {r=0, g=0, b=0, a=0.0};
    self.toggleOnOffButton.backgroundColorMouseOver = {r=1.0, g=1.0, b=1.0, a=0.1};
    self.toggleOnOffButton.borderColor = {r=1.0, g=1.0, b=1.0, a=0.3};
    self:addChild(self.toggleOnOffButton);

    y = self.toggleOnOffButton:getY() + self.toggleOnOffButton:getHeight() + 10;

    self:setHeight(y);
end

function TCRWMMedia:connectSpeaker (_item, dx, dy)
	local square = _item:getSquare()
	if square == nil then return end
	for y=square:getY() - dy, square:getY() + dy do
		for x=square:getX() - dx, square:getX() + dx do
			local square2 = getCell():getGridSquare(x, y, square:getZ())
			if square2 ~= nil then
				for i=1,square2:getObjects():size() do
					local object = square2:getObjects():get(i-1)
					if instanceof( object, "IsoWorldInventoryObject") then
						if object:getItem():getType() == "Speaker" then
							if object:getModData().tcmusic and object:getModData().tcmusic.connectTo then
								
							else
								object:getModData().tcmusic = {}
								object:getModData().tcmusic.connectTo = _item
								_item:getModData().tcmusic.connectTo = object
								object:transmitModData()
								return true
							end
						end	
					end
				end
			end
		end
	end
	return false
end


function TCRWMMedia:togglePlayMedia()
    if self:doWalkTo() then
		-- print("TCRWMMedia.togglePlayMedia")
		if not self.device:getModData().tcmusic.needSpeaker or self.device:getModData().tcmusic.connectTo then
			ISTimedActionQueue.add(ISTCBoomboxAction:new("TogglePlayMedia",self.player, self.device ));
		else
			if TCRWMMedia.connectSpeaker(self.player, self.device, 1, 1) then
				
			else
				self.player:Say(getText("IGUI_PlayerText_TC_need_speaker"))
			end
		end
    end
end

function TCRWMMedia:removeMedia()
    if self:doWalkTo() then
		-- print("TCRWMMedia.removeMedia")
        ISTimedActionQueue.add(ISTCBoomboxAction:new("RemoveMedia",self.player, self.device ));
    end
end

function TCRWMMedia:addMedia( _items )
    if self.player:getJoypadBind() == -1 then
        self:addMediaAux(_items[1])
        return
     end
    local playerNum = self.player:getPlayerNum()
    local context = ISContextMenu.get(playerNum, self:getAbsoluteX(), self:getAbsoluteY())
    for _,item in ipairs(_items) do
        context:addOption(item:getDisplayName(), self, self.addMediaAux, item)
    end
    context.mouseOver = 1
    if JoypadState.players[playerNum+1] then
        context.origin = JoypadState.players[playerNum+1].focus
        setJoypadFocus(playerNum, context)
    end
end

function TCRWMMedia:addMediaAux(item)
    if self:doWalkTo() then
        ISTimedActionQueue.add(ISTCBoomboxAction:new("AddMedia",self.player, self.device, item ));
    end
end

function TCRWMMedia:verifyItem( _item )
-- print("TCRWMMedia:verifyItem")
	-- print(_item)
	-- print(_item:getType())
	-- print(self.deviceType)
    if GlobalMusic[_item:getType()] then
		if self.deviceType == "InventoryItem" then
			if TCMusic.ItemMusicPlayer[self.device:getFullType()] == GlobalMusic[_item:getType()] then
				return true;
			end
		elseif self.deviceType == "IsoObject" then
			if TCMusic.WorldMusicPlayer[self.device:getSprite():getName()] == GlobalMusic[_item:getType()] then
				return true;
			end
		elseif self.deviceType == "VehiclePart" then
			if self.device:getInventoryItem() and TCMusic.VehicleMusicPlayer[self.device:getInventoryItem():getFullType()] == GlobalMusic[_item:getType()] then
				return true;
			end
		end
	end
end

function TCRWMMedia:clear()
    RWMPanel.clear(self);
end

function TCRWMMedia:readFromObject( _player, _deviceObject, _deviceData, _deviceType )
	-- print("TCRWMMedia:readFromObject")
    if _deviceData:getMediaType() < 0 then
		-- print("_deviceData false")
		if _deviceType == "VehiclePart" then
			_deviceData:setMediaType(0)
		else
			return false;
		end
    end
    self.mediaIndex = -9999;
	-- print(_deviceData:getMediaType())
    if _deviceData:getMediaType()==1 then
        self.itemDropBox:setBackDropTex( self.cdTex, 0.4, 1,1,1 );
        self.itemDropBox:setToolTip( true, getText("IGUI_media_dragVinyl") );
        self.lcd.ledColor = self.lcdBlue.back;
        self.lcd.ledTextColor = self.lcdBlue.text;
    end
    if _deviceData:getMediaType()==0 then
		-- print("MediaType 0")
        self.itemDropBox:setBackDropTex( self.tapeTex, 0.4, 1,1,1 );
        self.itemDropBox:setToolTip( true, getText("IGUI_media_dragCassette") );
        self.lcd.ledColor = self.lcdGreen.back;
        self.lcd.ledTextColor = self.lcdGreen.text;
    end

    local read =  RWMPanel.readFromObject(self, _player, _deviceObject, _deviceData, _deviceType );

    if self.player then
        self.itemDropBox.mouseEnabled = true;
        if JoypadState.players[self.player:getPlayerNum()+1] then
            self.itemDropBox.mouseEnabled = false;
        end
    end

    return read;
end

function TCRWMMedia:getMediaText()
    local text = "";
    local addedSegment = false;
    if self.device:getModData().tcmusic.mediaItem then
        local itemTape = InventoryItemFactory.CreateItem("Tsarcraft." .. self.device:getModData().tcmusic.mediaItem)
		if itemTape then
			addedSegment = true;
			text = itemTape:getDisplayName()
		end
    end
    if addedSegment then
        return text.." *** ";
    end
    return self.deviceData:getMediaType()==0 and self.textNoTape or self.textNoCD;
end

function TCRWMMedia:update()
-- print("TCRWMMedia:update()")
    ISPanel.update(self);
	-- print(self.device:getModData().tcmusic)
	
    if self.player and self.device and self.deviceData and self.device:getModData().tcmusic then
		-- print("---------------------------------")
        local isOn = self.deviceData:getIsTurnedOn();

        self.lcd:toggleOn(isOn);

        if (not isOn) and self.device:getModData().tcmusic.mediaItem and self.device:getDeviceData():getEmitter() and self.device:getDeviceData():getEmitter():isPlaying(self.device:getModData().tcmusic.mediaItem) then
			self.deviceData:getEmitter():stopAll()
			ISBaseTimedAction.perform(self)
        end
		
		
		if self.device:getModData().tcmusic.deviceType == "VehiclePart" then
			-- print(self.device:getModData().tcmusic)
			-- print(self.device:getModData().tcmusic.mediaItem)
			if self.device:getModData().tcmusic.mediaItem and self.device:getModData().tcmusic.isPlaying then
				self.toggleOnOffButton:setTitle(self.textStop);
			else
				self.toggleOnOffButton:setTitle(self.textPlay);
			end
		else
			if self.device:getModData().tcmusic.mediaItem and self.device:getModData().tcmusic.isPlaying then
				self.toggleOnOffButton:setTitle(self.textStop);
			else
				if self.device:getModData().tcmusic.needSpeaker and not self.device:getModData().tcmusic.connectTo then
					self.toggleOnOffButton:setTitle(self.textSpeaker);
				else
					self.toggleOnOffButton:setTitle(self.textPlay);
				end
			end
		end

        if self.device:getModData().tcmusic.mediaItem then
            if self.deviceData:getMediaType()==1 then
                self.itemDropBox:setStoredItemFake( self.cdTex );
            end
            if self.deviceData:getMediaType()==0 then
                self.itemDropBox:setStoredItemFake( self.tapeTex );
            end

            if self.device:getModData().tcmusic.mediaItem and (self.device:getModData().tcmusic.isPlaying or (self.device:getModData().tcmusic.deviceType == "VehiclePart" and self.device:getVehicle():getEmitter() and self.device:getVehicle():getEmitter():isPlaying(self.device:getModData().tcmusic.mediaItem))) then
                self.lcd:setText(self:getMediaText());
                self.lcd:setDoScroll(true);
            else
                self.lcd:setText(self.idleText);
                self.lcd:setDoScroll(false);
            end
        else
            self.itemDropBox:setStoredItemFake( nil );
            self.lcd:setText(self.mediaText);
            self.lcd:setDoScroll(false);
        end
    end
end

function TCRWMMedia:prerender()
    ISPanel.prerender(self);
end


function TCRWMMedia:render()
    ISPanel.render(self);
end

function TCRWMMedia:onJoypadDown(button)
    if button == Joypad.AButton then
        self:togglePlayMedia()
    elseif button == Joypad.BButton then
        if self.device:getModData().tcmusic.mediaItem then
            self:removeMedia();
        else
            local inv = self.player:getInventory();
            -- local type = self.deviceData:getMediaType();
            local medias = {};
			
			if self.device:getModData().tcmusic.deviceType == "InventoryItem" then
				musicPlayer = TCMusic.ItemMusicPlayer[self.device:getFullType()]
			elseif self.device:getModData().tcmusic.deviceType == "IsoObject" then
				musicPlayer = TCMusic.WorldMusicPlayer[self.device:getSprite():getName()]
			elseif self.device:getModData().tcmusic.deviceType == "VehiclePart" then
				musicPlayer = TCMusic.VehicleMusicPlayer[self.device:getInventoryItem():getFullType()]
			end
			-- print(musicPlayer)
			for i=0, inv:getItemsFromCategory("Item"):size()-1 do
				local itemInContainer = inv:getItemsFromCategory("Item"):get(i)
				local musicCarrier = GlobalMusic[itemInContainer:getType()]
				-- print(musicCarrier)
				if musicCarrier and musicCarrier == musicPlayer then	
					table.insert(medias, itemInContainer);
				end
			end
            if #medias>0 then
				-- print("addMedia")
                self:addMedia( medias );
            end
        end
    else
		-- print("button ", button)
	end
end

function TCRWMMedia:getAPrompt()
    if self.device:getModData().tcmusic.mediaItem and self.device:getDeviceData():getEmitter():isPlaying(self.device:getModData().tcmusic.mediaItem) then
        return self.textStop;
    else
        return self.textPlay;
    end
end
function TCRWMMedia:getBPrompt()
    if self.device:getModData().tcmusic.mediaItem then
        return getText("IGUI_media_removeMedia");
    else
        local inv = self.player:getInventory();
        -- local type = self.deviceData:getMediaType();
        local medias = {};
        if self.device:getModData().tcmusic.deviceType == "InventoryItem" then
			musicPlayer = TCMusic.ItemMusicPlayer[self.device:getFullType()]
		elseif self.device:getModData().tcmusic.deviceType == "IsoObject" then
			musicPlayer = TCMusic.WorldMusicPlayer[self.device:getSprite():getName()]
		elseif self.device:getModData().tcmusic.deviceType == "VehiclePart" then
			musicPlayer = TCMusic.VehicleMusicPlayer[self.device:getInventoryItem():getFullType()]
		end
		-- print(musicPlayer)
		for i=0, inv:getItemsFromCategory("Item"):size()-1 do
			local itemInContainer = inv:getItemsFromCategory("Item"):get(i)
			-- print(itemInContainer)
			local musicCarrier = GlobalMusic[itemInContainer:getType()]
			-- print(musicCarrier)
			-- print("--------------------------")
			if musicCarrier and musicCarrier == musicPlayer then	
				table.insert(medias, itemInContainer);
			end
		end
        if #medias>0 then
            return getText("IGUI_media_addMedia");
        end
    end
    return nil;
end
function TCRWMMedia:getXPrompt()
    return nil;
end
function TCRWMMedia:getYPrompt()
    return nil;
end


function TCRWMMedia:new (x, y, width, height)
    local o = RWMPanel:new(x, y, width, height);
    setmetatable(o, self)
    self.__index = self
    o.x = x;
    o.y = y;
    o.background = true;
    o.backgroundColor = {r=0, g=0, b=0, a=0.0};
    o.borderColor = {r=0.4, g=0.4, b=0.4, a=1};
    o.width = width;
    o.height = height;
    o.anchorLeft = true;
    o.anchorRight = false;
    o.anchorTop = true;
    o.anchorBottom = false;
    o.fontheight = getTextManager():MeasureStringY(UIFont.Small, "AbdfghijklpqtyZ")+2;
    o.cdTex = getTexture("media/textures/TCRWMMedia/TCVinylrecord.png");
    o.tapeTex = getTexture("media/textures/TCRWMMedia/TCTape.png");
    o.mediaIndex = -9999;
    o.mediaText = "";
    o.idleText = getText("IGUI_media_idle");
    o.lcdBlue = {
        text = { r=0.039, g=0.180, b=0.2, a=1.0 },
        back = { r=0.172, g=0.686, b=0.764, a=1.0 }
    };
    o.lcdGreen = {
        text = { r=0.180, g=0.2, b=0.039, a=1.0 },
        back = { r=0.686, g=0.764, b=0.172, a=1.0 },
    };
    o.textPlay = getText("IGUI_media_play");
    o.textSpeaker = getText("IGUI_TC_connect_speaker");
    o.textStop = getText("IGUI_media_stop");
    o.textNoCD = getText("IGUI_media_nocd");
    o.textNoTape = getText("IGUI_media_notape");
    return o
end

