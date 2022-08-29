---
--- Mod: Mod Manager
--- Workshop: https://steamcommunity.com/sharedfiles/filedetails/?id=2694448564
--- Author: NoctisFalco
--- Profile: https://steamcommunity.com/id/NoctisFalco/
---
--- Redistribution of this mod without explicit permission from the creator is prohibited
--- under any circumstances. This includes, but not limited to, uploading this mod to the Steam Workshop
--- or any other site, distribution as part of another mod or modpack, distribution of modified versions.
---
--- Copyright 2022 NoctisFalco
---

local ICON_DEFAULT = getTexture("media/ui/MM_Icon_ModDefault.png")

local FONT_HGT_TITLE = getTextManager():getFontHeight(UIFont.Title)
local FONT_HGT_MEDIUM = getTextManager():getFontHeight(UIFont.Medium)
local FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small)

local BUTTON_HGT = math.max(25, FONT_HGT_SMALL + 3 * 2)
local BUTTON_WDH = 100
local BUTTON_WDH2 = 160
local DX, DY = 8, 8

ServerModLoadOrderUI = ISPanel:derive("ServerModLoadOrderUI")

function ServerModLoadOrderUI:new()
    local width, height = ModSelector.instance.width / 2, ModSelector.instance.height
    local x, y = ModSelector.instance.x + width / 2, ModSelector.instance.y
    local o = ISPanel:new(x, y, width, height)
    setmetatable(o, self)
    self.__index = self
    o.borderColor = { r = 0.4, g = 0.4, b = 0.4, a = 1 }
    o.backgroundColor = { r = 0, g = 0, b = 0, a = 0.9 }
    ServerModLoadOrderUI.instance = o
    return o;
end

function ServerModLoadOrderUI:initialise()
    ISPanel.initialise(self)
    self:setAlwaysOnTop(true)
    self:setCapture(true)

    self.titleLabel = ISLabel:new(0, DY, FONT_HGT_TITLE, getText("UI_ModManager_LoadOrder"):upper(), 1, 1, 1, 1, UIFont.Title, true)
    self.titleLabel:setX((self.width - self.titleLabel:getWidth()) / 2)
    self:addChild(self.titleLabel)

    self.richText = ISRichTextLayout:new(self.width - DX * 2)
    self.richText:setMargins(DX, DY, DX, DY)
    self.richText:setText(getText("UI_ModManager_LoadOrder_Info"))
    self.richText:paginate()

    local top = self.titleLabel:getBottom() + self.richText:getHeight()
    self.listBox = ISScrollingListBox:new(
            DX, top, self.width - DX - BUTTON_WDH2 - DX * 2, self.height - top - BUTTON_HGT - DY * 2
    )
    self.listBox.itemheight = FONT_HGT_MEDIUM + DY * 2
    self.listBox.selected = 0
    self.listBox.joypadParent = self
    self.listBox.doDrawItem = self.drawData
    self.listBox.drawBorder = true
    self:addChild(self.listBox)

    self.moveToTopButton = MMButton:new(
            self.width - DX - BUTTON_WDH2, self.listBox:getY(), BUTTON_WDH2, BUTTON_HGT,
            getText("UI_ModManager_LoadOrder_Button_MoveToTop"), self, ServerModLoadOrderUI.onClick
    )
    self.moveToTopButton.internal = "TOP"
    self.moveToTopButton.anchorTop = false
    self.moveToTopButton.anchorBottom = true
    self:addChild(self.moveToTopButton)

    self.moveUpButton = MMButton:new(
            self.width - DX - BUTTON_WDH2, self.moveToTopButton:getBottom() + DY, BUTTON_WDH2, BUTTON_HGT,
            getText("UI_ModManager_LoadOrder_Button_MoveUp"), self, ServerModLoadOrderUI.onClick
    )
    self.moveUpButton.internal = "UP"
    self.moveUpButton.anchorTop = false
    self.moveUpButton.anchorBottom = true
    self:addChild(self.moveUpButton)

    self.moveDownButton = MMButton:new(
            self.width - DX - BUTTON_WDH2, self.moveUpButton:getBottom() + DY, BUTTON_WDH2, BUTTON_HGT,
            getText("UI_ModManager_LoadOrder_Button_MoveDown"), self, ServerModLoadOrderUI.onClick
    )
    self.moveDownButton.internal = "DOWN"
    self.moveDownButton.anchorTop = false
    self.moveDownButton.anchorBottom = true
    self:addChild(self.moveDownButton)

    self.moveToBottomButton = MMButton:new(
            self.width - DX - BUTTON_WDH2, self.moveDownButton:getBottom() + DY, BUTTON_WDH2, BUTTON_HGT,
            getText("UI_ModManager_LoadOrder_Button_MoveToBottom"), self, ServerModLoadOrderUI.onClick
    )
    self.moveToBottomButton.internal = "BOTTOM"
    self.moveToBottomButton.anchorTop = false
    self.moveToBottomButton.anchorBottom = true
    self:addChild(self.moveToBottomButton)

    local cancelButton = MMButton:new(
            DX, self.height - BUTTON_HGT - DY, BUTTON_WDH, BUTTON_HGT,
            getText("UI_ModManager_Button_Cancel"), self, ServerModLoadOrderUI.onClick
    )
    cancelButton.internal = "CANCEL"
    cancelButton.anchorTop = false
    cancelButton.anchorBottom = true
    self:addChild(cancelButton)

    local okButton = MMButton:new(
            self.width - BUTTON_WDH - DX, self.height - BUTTON_HGT - DY, BUTTON_WDH, BUTTON_HGT,
            getText("UI_Ok"), self, ServerModLoadOrderUI.onClick
    )
    okButton.internal = "OK"
    okButton.anchorTop = false
    okButton.anchorBottom = true
    self:addChild(okButton)
end

function ServerModLoadOrderUI:populateList()
    self.listBox:clear()

    local mods = ServerModSelector.instance.modsListBox.items
    if mods then
        for _, i in ipairs(mods) do
            local item = i.item
            local data = {}
            data.modID = item.modID
            data.modInfo = item.modInfo
            data.name = item.name
            data.workshopID = item.workshopID
            self.listBox:addItem(item.modID, data)
        end
    end
end

function ServerModLoadOrderUI:drawData(y, i, alt)
    local h, s = self.itemheight, self:isVScrollBarVisible() and 13 or 0

    -- Check real line visibility
    local localY = self:getYScroll() + y
    if s ~= 0 and (localY < -h or localY > self:getHeight()) then
        return y + h - 1
    end

    if self.selected == i.index then
        self:drawRect(0, y, self:getWidth(), h, 0.3, 0.7, 0.35, 0.15)
    elseif self.mouseoverselected == i.index and not self:isMouseOverScrollBar() then
        self:drawRect(0, y, self:getWidth(), h, 0.95, 0.05, 0.05, 0.05)
    end
    self:drawRectBorder(0, y, self:getWidth(), h, 0.5, self.borderColor.r, self.borderColor.g, self.borderColor.b)

    self:drawTextureScaled(ICON_DEFAULT, DX, y + DY, FONT_HGT_MEDIUM, FONT_HGT_MEDIUM, 1)

    local text = i.item.name or i.item.modID
    self:drawText(text, DX + FONT_HGT_MEDIUM + DX, y + DY, 1, 1, 1, 0.9, UIFont.Medium)

    return y + h - 1
end

function ServerModLoadOrderUI:prerender()
    self:bringToTop()
    self:updateButtons()

    self:drawRect(0, 0, self.width, self.height, self.backgroundColor.a, self.backgroundColor.r, self.backgroundColor.g, self.backgroundColor.b)
    self:drawRectBorder(0, 0, self.width, self.height, self.borderColor.a, self.borderColor.r, self.borderColor.g, self.borderColor.b)
end

function ServerModLoadOrderUI:render()
    ISPanel.render(self)
    self.richText:render(DX, self.titleLabel:getBottom(), self)
end

function ServerModLoadOrderUI:onMouseMoveOutside(dx, dy)
    return true
end

function ServerModLoadOrderUI:onMouseDownOutside(x, y)
    return true
end

function ServerModLoadOrderUI:onMouseUpOutside(x, y)
    return true
end

function ServerModLoadOrderUI:updateButtons()
    self.moveUpButton.enable = true
    self.moveDownButton.enable = true
    self.moveToTopButton.enable = true
    self.moveToBottomButton.enable = true
    if self.listBox.selected == 1 then
        self.moveUpButton.enable = false
        self.moveToTopButton.enable = false
    end
    if self.listBox.selected == #self.listBox.items then
        self.moveDownButton.enable = false
        self.moveToBottomButton.enable = false
    end
end

function ServerModLoadOrderUI:onClick(button)
    if button.internal == "CANCEL" then
        ServerModSelector.instance:setVisible(true)
        self:setVisible(false)
        self:removeFromUIManager()
    elseif button.internal == "OK" then
        local indices = {}
        for index, i in ipairs(self.listBox.items) do
            indices[i.item.modID] = index
        end
        ServerModSelector.instance:onChangeLoadOrder(indices)
        ServerModSelector.instance:setVisible(true)
        self:setVisible(false)
        self:removeFromUIManager()
    elseif button.internal == "UP" then
        local selected = self.listBox.selected
        local item = self.listBox.items[selected]
        self.listBox:removeItemByIndex(selected)
        self.listBox:insertItem(selected - 1, item.text, item.item)
        self.listBox.selected = selected - 1
        self.listBox:ensureVisible(self.listBox.selected)
    elseif button.internal == "DOWN" then
        local selected = self.listBox.selected
        local item = self.listBox.items[selected]
        self.listBox:removeItemByIndex(selected)
        self.listBox:insertItem(selected + 1, item.text, item.item)
        self.listBox.selected = selected + 1
        self.listBox:ensureVisible(self.listBox.selected)
    elseif button.internal == "TOP" then
        local selected = self.listBox.selected
        local item = self.listBox.items[selected]
        self.listBox:removeItemByIndex(selected)
        self.listBox:insertItem(1, item.text, item.item)
        self.listBox.selected = 1
        self.listBox:ensureVisible(self.listBox.selected)
    elseif button.internal == "BOTTOM" then
        local selected = self.listBox.selected
        local item = self.listBox.items[selected]
        self.listBox:removeItemByIndex(selected)
        self.listBox:insertItem(#self.listBox.items + 1, item.text, item.item)
        self.listBox.selected = #self.listBox.items
        self.listBox:ensureVisible(self.listBox.selected)
    end
end