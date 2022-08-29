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

ModManagerWarningUI = ISPanelJoypad:derive("ModManagerWarningUI")

local FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small)

local BUTTON_HGT = math.max(25, FONT_HGT_SMALL + 3 * 2)
local BUTTON_WDH = 100
local DX, DY = 8, 8

function ModManagerWarningUI:new(text)
    local o = ISPanelJoypad:new(0, 0, 0, 0)
    setmetatable(o, self)
    self.__index = self
    o.backgroundColor = { r = 0, g = 0, b = 0, a = 1 }
    o.maxWidth = getCore():getScreenWidth() * 0.8
    o.maxHeight = getCore():getScreenHeight() * 0.8
    o.text = text
    return o
end

function ModManagerWarningUI:initialise()
    ISPanelJoypad.initialise(self)

    local richText = ISRichTextPanel:new(0, DY, self.maxWidth, self.maxHeight - BUTTON_HGT - DY * 3)
    richText.background = false
    richText.clip = true
    richText:initialise()
    richText:setMargins(DX * 2, 0, DX * 2, 0)
    richText:setText(self.text)
    self:addChild(richText)
    richText:paginate()

    local maxLineWidth = 0
    for i, v in ipairs(richText.lines) do
        local font = richText.defaultFont
        if richText.fonts[i] then
            font = richText.fonts[i]
        end
        local lineWidth = richText.lineX[i] + getTextManager():MeasureStringX(font, v)
        if lineWidth > maxLineWidth then
            maxLineWidth = lineWidth
        end
    end
    richText:setWidth(maxLineWidth + DX * 4)
    richText:paginate()

    if richText:getWidth() > self.maxWidth then
        richText:setWidth(self.maxWidth)
        richText:paginate()
    end

    local richTextMaxHeight = self.maxHeight - BUTTON_HGT - DY * 3
    if richText:getHeight() > self.maxHeight - BUTTON_HGT - DY * 3 then
        richText.autosetheight = false
        richText:setHeight(richTextMaxHeight)
        richText:paginate()
    end

    self:setWidth(richText:getWidth())
    self:setHeight(richText:getHeight() + BUTTON_HGT + DY * 3)

    local okButton = MMButton:new(
            self:getWidth() / 2 - BUTTON_WDH / 2, richText:getBottom() + DY, BUTTON_WDH, BUTTON_HGT,
            getText("UI_Ok"), self, self.onOK
    )
    self:addChild(okButton)

    self:setX((getCore():getScreenWidth() - self:getWidth()) / 2)
    self:setY((getCore():getScreenHeight() - self:getHeight()) / 2)
end

function ModManagerWarningUI:render()
    ISPanelJoypad.render(self)
    self:bringToTop()
end

function ModManagerWarningUI:onMouseWheel(del)
    if self:isMouseOver() then
        ISPanelJoypad.onMouseWheel(self, del)
    else
        return true
    end
end

function ModManagerWarningUI:onOK(button, x, y)
    self:setVisible(false)
    self:removeFromUIManager()
end