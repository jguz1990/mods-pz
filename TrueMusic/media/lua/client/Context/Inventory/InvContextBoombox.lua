--***********************************************************
--**                    THE INDIE STONE                    **
--**                  Author: turbotutone                   **
--***********************************************************

require "TCMusicDefenitions"
require "TCTickCheckMusic"

ISInventoryMenuElements = ISInventoryMenuElements or {};

function ISInventoryMenuElements.ContextBoombox()
    local self                     = ISMenuElement.new();
    self.invMenu                = ISContextManager.getInstance().getInventoryMenu();

    function self.init()
    end

    function self.createMenu( _item )
        if getCore():getGameMode() == "Tutorial" then
            return;
        end
        if instanceof(_item, "Radio") then
            if _item:getContainer() ~= self.invMenu.inventory then
                if TCMusic.WorldMusicPlayer[_item:getFullType()] and _item:getContainer():getType() == "floor" and _item:getWorldItem() and _item:getWorldItem():getSquare() then
                    if not _item:getModData().tcmusic then
                        -- print("NEW MODDATA")
                        _item:getModData().tcmusic = {}
                        _item:getModData().tcmusic.mediaItem = nil
                        _item:getModData().tcmusic.worldObj = nil
                        _item:getModData().tcmusic.needSpeaker = nil
                    end
                    local old_option_update = self.invMenu.context:getOptionFromName(getText("IGUI_DeviceOptions"))
                    if old_option_update then
                        self.invMenu.context:updateOptionTsar(old_option_update.id, old_option_update.name, old_option_update.target, self.openPanel, _item)
                    else
                        self.invMenu.context:addOption(getText("IGUI_DeviceOptions"), self.invMenu, self.openPanel, _item );
                    end
                end
            else
                if TCMusic.WorldMusicPlayer[_item:getFullType()] then
                    self.invMenu.context:removeOptionTsar(self.invMenu.context:getOptionFromName(getText("IGUI_PlaceObject")))
                    self.invMenu.context:removeOptionTsar(self.invMenu.context:getOptionFromName(getText("ContextMenu_Equip_Primary")))
                    -- запрещаем активировать радио, если оно в основной руке (это заглушка для мультиплеера, чтобы игроки не включали больше одной песни)
                    if self.invMenu.player:getPrimaryHandItem() == _item then
                        self.invMenu.context:removeOptionTsar(self.invMenu.context:getOptionFromName(getText("IGUI_DeviceOptions")))
                    end
                end
            end
            -- if self.invMenu.player:getPrimaryHandItem() == _item or self.invMenu.player:getSecondaryHandItem() == _item then
                -- self.invMenu.context:addOption(getText("IGUI_DeviceOptions"), self.invMenu, self.openPanel, _item );
            -- end
        end
    end        

    function self.openPanel( _p, _item )
        ISRadioWindow.searchBoombox( _p, _item )
        ISTCBoomboxWindow.activate( _p.player, _item:getModData().tcmusic.worldObj );
    end
    return self;
end
