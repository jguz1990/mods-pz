--[[

ExtraMapSymbolsUI
Copyright (C) Rotators  2021-2022

TODO

- crayons addnote/editnote color picker

]]--

require "ISBaseObject"
require "ISUI/ISButton"
require "ISUI/ISColorPicker"
require "ISUI/ISPanelJoypad"
require "ISUI/ISSpinBox"
require "ISUI/ISTickbox"
require "ISUI/Maps/ISMap"
require "ISUI/Maps/ISWorldMap"
require "ISUI/Maps/ISWorldMapSymbols"

local ISMapSCALE = ISMap.SCALE -- local copy; required, as external mods love to mess with it, creating all kinds of conflicts --

ExtraMapSymbolsUI = ISBaseObject:derive("ExtraMapSymbolsUI")

function ExtraMapSymbolsUI:new()
	local x = 30
	local y = 50
	local colorSize = 23
	local optionsSize = getTextManager():getFontHeight(UIFont.Small) + 2 * 2
	local pad = 5

	local this =
	{
		Crayons = {{ r = 0, g = 0, b = 0 }},
		CrayonsColumns = 1,
		CrayonsRows = 1,

		ScalingSymbol = ISMapSCALE,
		ScalingText = ISMapSCALE,
		ScalingStep = 0.1,

		AlternativeSymbols = true,

		CurrentEvent = nil,

		CONST =
		{
			ColumnsMin = 4,
			ColumnsMax = 16,
			ColumnsDefault = 8,

			Pad = pad,
			PadOptions = pad * 2,

			ColorX = x,
			ColorY = y,
			ColorSize = colorSize,

			OptionsButtonX = x,
			OptionsButtonY = y + colorSize + pad,
			OptionsButtonH = optionsSize,

			SymbolX = x,
			SymbolY = y + colorSize + pad + optionsSize + pad,
			SymbolSize = 30,

			ToolX = x,
			ToolH = optionsSize,

			MarginXY = x / 2,

			ScalingMin = 0.1,
			ScalingMax = 9,
			ScalingStepMin = 0.1,
			ScalingStepMax = 1.0,

			RegexAlternativeSymbol = "^([A-Za-z0-9_:]+)//alt=[0-9]+$",

			ModData = { "Columns", "AlternativeSymbols" }
		},

		ALT = {}
	}

	setmetatable(this, self)
	self.__index = self

	return this
end

--- modData ---

function ExtraMapSymbolsUI:GetModData(name)
	local player = getPlayer()
	local info = "(nil) : no player"
	local value = nil

	if player then -- for main menu debug --
		value = player:getModData()["ExtraMapSymbolsUI:" .. name]
		info = value and tostring(value) or "(nil)"
	end

	if getDebug() then
		print("ExtraMapSymbolsUI:GetModData(" .. name .. ") = " .. info)
	end

	return value
end

function ExtraMapSymbolsUI:SetModData(name, value)
	local player = getPlayer()
	local info = "(not set) : no player"

	if player then -- for main menu debug --
		player:getModData()["ExtraMapSymbolsUI:" .. name] = value
		info = value and tostring(value) or "(nil)"
	end

	if getDebug() then
		print("ExtraMapSymbolsUI:SetModData(" .. name .. ") = " .. info)
	end
end

function ExtraMapSymbolsUI:ResetModData()
	if getDebug() then
		print("ExtraMapSymbolsUI:ResetModData()")
	end

	for _,name in ipairs(ExtraMapSymbolsUI.CONST.ModData) do
		self:SetModData(name, nil)
	end
end

--- events ---

function ExtraMapSymbolsUI:IsEvent(name)
	return Events["ExtraMapSymbolsUI." .. name] ~= nil
end

function ExtraMapSymbolsUI:AddEvent(name)
	if self:IsEvent(name) then
		if getDebug() then
			print( "ExtraMapSymbolsUI:RegisterEvent() : already registered : " .. name)
		end

		return false
	end

	if getDebug() then
		print( "ExtraMapSymbolsUI:RegisterEvent() : ExtraMapSymbolsUI." .. name)
	end

	LuaEventManager.AddEvent("ExtraMapSymbolsUI." .. name)

	return true
end

function ExtraMapSymbolsUI:RunEvent(name, ...)
	if self:IsEvent(name) then
		if getDebug() then
			print( "ExtraMapSymbolsUI:RunEvent() : " .. name)
		end

		self.CurrentEvent = name
		triggerEvent("ExtraMapSymbolsUI." .. name, ...)
		self.CurrentEvent = nil

		return true
	end

	if getDebug() then
		print( "ExtraMapSymbolsUI:RunEvent() unknown name : " .. name)
	end

	return false
end

function ExtraMapSymbolsUI:OnEvent(name, ...)
	if self:IsEvent(name) then
		Events["ExtraMapSymbolsUI." .. name].Add(...)
		return true
	elseif getDebug() then
		print( "ExtraMapSymbolsUI:OnEvent() unknown name : " .. name)
	end

	return false
end

--- crayons ---

function ExtraMapSymbolsUI:AddCrayon(rx, gx, bx)
	local rf = rx / 255
	local gf = gx / 255
	local bf = bx / 255

	for idx = #self.Crayons, 1, -1 do
		if self.Crayons[idx].r == rf and self.Crayons[idx].g == gf and self.Crayons[idx].b == bf then
			return
		end
	end

	table.insert(self.Crayons, { r=rf, g=gf, b=bf })

end

function ExtraMapSymbolsUI:DelCrayon(rx, gx, bx)
	local rf = rx / 255
	local gf = gx / 255
	local bf = bx / 255

	for idx = #self.Crayons, 1, -1 do
		if self.Crayons[idx].r == rf and self.Crayons[idx].g == gf and self.Crayons[idx].b == bf then
			table.remove(self.Crayons, idx)
			-- break
		end
	end
end

function ExtraMapSymbolsUI:SetCrayonSize(columns, rows)
	self.CrayonsColumns = columns
	self.CrayonsRows = rows
end

--- misc ---

function ExtraMapSymbolsUI:ChangeScaling(var, value) -- fragile as heck --
	var = "Scaling" .. var
	local old = self[var]
	local new = self[var] + value
	local const = self.CONST

	if value == 1207 then -- magic value, oh noes! --
		new = ISMapSCALE
	end

	new = math.max(const.ScalingMin, math.min(new, const.ScalingMax)) -- crappy PZMath.clamp() always returns ints --

	if old ~= new then -- prevent pointless event emit --
		self[var] = new
		self:RunEvent(var, old, new)
	end

	return true
end

function ExtraMapSymbolsUI:CloneColorButtons(from, to, clickTarget, clickFunc)
	local inv = to.character and to.character:getInventory() or nil

	-- TIS *insists* on copypasting color buttons code left and right, which makes it pain in all holes to support modded-in colors --
	-- instead, buttons are recreated here basing on those already added to symbols UI --

	local newButtonX = to.colorButtons[1]:getX()
	local newButtonY = to.colorButtons[1]:getY()
	local newButtonW = to.colorButtons[1]:getWidth()
	local newButtonH = to.colorButtons[1]:getHeight()
	local newButtonPad = to.colorButtons[2]:getX() - to.colorButtons[1]:getRight()

	for _,button in ipairs(to.colorButtons) do
		-- just. go. away. --
		to:removeChild(button)
	end

	-- and don't let the door hit you on the way out! --
	to.colorButtons = {}
	to.colorButtonInfo = from.colorButtonInfo

	for _,button in ipairs(from.colorButtons) do
		local newButton = ISButton:new(newButtonX, newButtonY, newButtonW, newButtonH, "", clickTarget, clickFunc)
		newButton:initialise()
		newButton.internal = button.internal
		newButton.backgroundColor = button.backgroundColor
		newButton.borderColor = button.borderColor
		newButton.enable = (inv == nil) or inv:containsTypeRecurse(button.buttonInfo.item)
		if not newButton.enable then
			newButton.tooltip = button.buttonInfo.tooltip
		end
		newButton.buttonInfo = button.buttonInfo
		to:addChild(newButton)
		table.insert(to.colorButtons, newButton)

		newButtonX = newButton:getRight() + newButtonPad
	end
end

---

ExtraMapSymbolsUI = ExtraMapSymbolsUI:new()

ExtraMapSymbolsUI:AddEvent("Init")
ExtraMapSymbolsUI:AddEvent("Refresh")
ExtraMapSymbolsUI:AddEvent("AddSymbol")
ExtraMapSymbolsUI:AddEvent("AddText")
ExtraMapSymbolsUI:AddEvent("ScalingSymbol")
ExtraMapSymbolsUI:AddEvent("ScalingText")

--- main hooks ---

local ISWMS_prerender = ISWorldMapSymbols.prerender
function ISWorldMapSymbols:prerender()
	ISWMS_prerender(self)
	self:extraUI_Init()
	--self:extraUI_Refresh()
end

local ISWMS_undisplay = ISWorldMapSymbols.undisplay
function ISWorldMapSymbols:undisplay()
	self:extraUI_OptionsHide()
	ISWMS_undisplay(self)
end

local ISM_canWrite = ISMap.canWrite
function ISMap:canWrite()
	local result = ISM_canWrite(self) or self.character:getInventory():contains("Crayons", true)

	return result
end

--- core functionality ---

function ISWorldMapSymbols:extraUI_Init()
	if self.extraUI ~= nil then
		return
	end

	--ExtraMapSymbolsUI:ResetModData()

	-- required to play nice with external mods which adds new buttons --

	if ExtraMapSymbolsUI.CONST.ColumnsMin < #self.colorButtonInfo then
		ExtraMapSymbolsUI.CONST.ColumnsMin = #self.colorButtonInfo
	end

	--

	local const = ExtraMapSymbolsUI.CONST

	self.extraUI =
	{
		Columns = PZMath.clamp(ExtraMapSymbolsUI:GetModData("Columns") or const.ColumnsDefault, const.ColumnsMin, const.ColumnsMax)
	}

	-- create crayons button --

	local crayons = { item="Base.Crayons", colorInfo=ColorInfo.new(ExtraMapSymbolsUI.Crayons[1].r, ExtraMapSymbolsUI.Crayons[1].g, ExtraMapSymbolsUI.Crayons[1].b, 0.9), tooltip=getText("Tooltip_ExtraMapSymbolsUI_NeedCrayons") }
	self.extraUI.CrayonsButton = ISButton:new(0, 0, 0, 0, "", self, self.extraUI_CrayonsShow)
	self.extraUI.CrayonsButton:initialise()
	self.extraUI.CrayonsButton.internal = "COLOR"
	self.extraUI.CrayonsButton.backgroundColor = {r=crayons.colorInfo:getR(), g=crayons.colorInfo:getG(), b=crayons.colorInfo:getB(), a=1}
	self.extraUI.CrayonsButton.borderColor = {r=1, g=1, b=1, a=0.4}
	self.extraUI.CrayonsButton.buttonInfo = crayons

	self.extraUI.CrayonsButton.ColorPicker = ISColorPicker:new(0, 0)
	self.extraUI.CrayonsButton.ColorPicker:initialise()
	self.extraUI.CrayonsButton.ColorPicker.resetFocusTo = self
	self.extraUI.CrayonsButton.ColorPicker.pickedTarget = self
	self.extraUI.CrayonsButton.ColorPicker.pickedFunc = self.extraUI_CrayonsPick
	self.extraUI.CrayonsButton.ColorPicker.backgroundColor = self.backgroundColor
	self.extraUI.CrayonsButton.ColorPicker:setColors(ExtraMapSymbolsUI.Crayons, ExtraMapSymbolsUI.CrayonsColumns, ExtraMapSymbolsUI.CrayonsRows)

	self:addChild(self.extraUI.CrayonsButton)
	table.insert(self.colorButtons, self.extraUI.CrayonsButton)
	table.insert(self.colorButtonInfo, self.extraUI.CrayonsButton.buttonInfo)

	-- create options button and panel; button *must* be somewhere near top to allow changing columns count on lower resolution and/or symbols spam

	self.extraUI.OptionsButton = ISButton:new(0, 0, 0, const.ToolH, getText("UI_ExtraMapSymbolsUI_Options"), self, self.extraUI_OptionsToggle)
	self:addChild(self.extraUI.OptionsButton)

	local option
	local optionW = 150

	self.extraUI.OptionsPanel = ISPanelJoypad:new(0, 0, 100, 100)
	self.extraUI.OptionsPanel:initialise()
	self.extraUI.OptionsPanel.backgroundColor = self.backgroundColor
	self.extraUI.OptionsPanel.Options = {}

	option = ISSpinBox:new(0, 0, optionW, const.ToolH, self, self.extraUI_ColumnsSet)
	option:initialise()
	for count = const.ColumnsMin, const.ColumnsMax, 1 do
		option:addOption(getText("UI_ExtraMapSymbolsUI_OptionsColumns") .. " : " .. count)
	end
	option.selected = self.extraUI.Columns + 1 - const.ColumnsMin
	self.extraUI.OptionsPanel:addChild(option)

	option = ISSpinBox:new(0, 0, optionW, const.ToolH, self, self.extraUI_ScalingStepSet)
	option:initialise()
	for step = const.ScalingStepMin, const.ScalingStepMax, const.ScalingStepMin do
		option:addOption(string.format("%s : %.1f", getText("UI_ExtraMapSymbolsUI_OptionsScalingStep"), step))
	end
	option.tooltip = getText("UI_ExtraMapSymbolsUI_OptionsScalingTooltip")
	self.extraUI.OptionsPanel:addChild(option)

	-- create alternative symbols lookup table --

	local alt = false
	for symbolIdx = 0, MapSymbolDefinitions.getInstance():getSymbolCount() - 1 do
		local tex = MapSymbolDefinitions.getInstance():getSymbolByIndex(symbolIdx):getId()

		local test = string.match(tex, const.RegexAlternativeSymbol)
		if test then
			ExtraMapSymbolsUI.ALT[test] = ExtraMapSymbolsUI.ALT[test] or { test }
			table.insert(ExtraMapSymbolsUI.ALT[test], tex)
			alt = true
		end
	end

	if alt then
		alt = ExtraMapSymbolsUI:GetModData("AlternativeSymbols")
		if alt ~= nil then
			ExtraMapSymbolsUI.AlternativeSymbols = alt
		end

		option = ISTickBox:new(0, 0, optionW, const.ToolH, "", self, self.extraUI_AltToggle)
		option:initialise()
		option.autoWidth = true
		option:addOption(getText("UI_ExtraMapSymbolsUI_OptionsAlternativeSymbols"))
		option:setSelected(1, ExtraMapSymbolsUI.AlternativeSymbols)
		self.extraUI.OptionsPanel:addChild(option)
	end

	-- create scaling-aware tools; unused vanilla tools are still stored in case some external mod need them, for w/e reason --

	self.extraUI.AddSymbol_Vanilla = self.tools.AddSymbol
	self.extraUI.AddSymbol_ExtraUI = ExtraMapSymbolsUI_AddSymbol:new(self)
	self.tools.AddSymbol = self.extraUI.AddSymbol_ExtraUI

	self.extraUI.AddNote_Vanilla = self.tools.AddNote
	self.extraUI.AddNote_ExtraUI = ExtraMapSymbolsUI_AddNote:new(self)
	self.tools.AddNote = self.extraUI.AddNote_ExtraUI

	self.extraUI.EditNote_Vanilla = self.tools.EditNote
	self.extraUI.EditNote_ExtraUI = ExtraMapSymbolsUI_EditNote:new(self)
	self.tools.EditNote = self.extraUI.EditNote_ExtraUI

	ExtraMapSymbolsUI:RunEvent("Init", self)

	self:extraUI_RefreshOptionsPanel()
	self:extraUI_Refresh("Init")
end

function ISWorldMapSymbols:extraUI_Refresh(reason)
	local const = ExtraMapSymbolsUI.CONST
	local column = 0

	-- pre-resize --

	local w = ((self.extraUI.Columns + 2) * const.SymbolSize) + ((self.extraUI.Columns - 1) * const.Pad)
	self:setWidth(w)

	-- process colors --

	x = self:getWidth() / 2 - (#self.colorButtons * const.ColorSize + (#self.colorButtons - 1) * const.Pad) / 2
	y = const.ColorY

	for _,button in ipairs(self.colorButtons) do
		button:setX(x)
		button:setY(y)
		button:setWidth(const.ColorSize)
		button:setHeight(const.ColorSize)

		x = button:getRight() + const.Pad
	end

	-- process options button --

	self.extraUI.OptionsButton:setX(const.OptionsButtonX)
	self.extraUI.OptionsButton:setY(const.OptionsButtonY)
	self.extraUI.OptionsButton:setWidth(self:getWidth() - const.SymbolSize * 2)

	-- process symbols --

	for _,button in ipairs(self.buttonList) do
		local visible = true

		if string.match(button.tex, const.RegexAlternativeSymbol) then
			visible = false
		-- elseif TODO? filter --
		end

		button:setVisible(visible)
	end

	x = const.SymbolX
	y = const.SymbolY

	for _,button in ipairs(self.buttonList) do
		if button:isVisible() then
			button:setX(x)
			button:setY(y)
			button:setWidth(const.SymbolSize)
			button:setHeight(const.SymbolSize)

			x = button:getRight() + const.Pad
			column = column + 1
			if column == self.extraUI.Columns then
				x = const.SymbolX
				y = button:getBottom() + const.Pad
				column = 0
			end
		else
			button:setX(0)
			button:setY(0)
		end
	end

	-- process tools --

	x = const.ToolX
	y = self.buttonList[#self.buttonList]:getBottom() + const.Pad * 2

	for _,name in ipairs({"addNoteBtn", "editNoteBtn", "moveBtn", "removeBtn"}) do
		self[name]:setX(x)
		self[name]:setY(y)
		self[name]:setWidth(self:getWidth() - const.ToolX * 2)
		y = self[name]:getBottom() + const.Pad
	end

	-- resize and reposition whole ui --

	y = y + const.Pad * 2

	if self:getParent() ~= nil then
		self:setX(self:getParent():getWidth() - self:getWidth() - const.MarginXY)
	end

	self:setY(const.MarginXY)
	self:setWidth(w)
	self:setHeight(y)

	if type(reason) == "string" then
		ExtraMapSymbolsUI:RunEvent("Refresh", self, reason)
	end

	self.extraUI.OptionsPanel:setX(self:getX() - self.extraUI.OptionsPanel:getWidth() - const.MarginXY / 2)
	self.extraUI.OptionsPanel:setY(self:getY())
end

function ISWorldMapSymbols:extraUI_RefreshOptionsPanel()
	-- automagically reposition all option elements and resize options panel, just for fun --

	local pad = ExtraMapSymbolsUI.CONST.PadOptions
	local w = 0
	local y = pad

	for _,val in pairs(self.extraUI.OptionsPanel:getChildren()) do
		w = math.max(w, val:getWidth())

		val:setX(pad)
		val:setY(y)

		y = y + val:getHeight() + pad
	end

	for _,val in pairs(self.extraUI.OptionsPanel:getChildren()) do
		val:setWidth(w)
	end

	self.extraUI.OptionsPanel:setWidth(w + pad * 2)
	self.extraUI.OptionsPanel:setHeight(y)
	self.extraUI.OptionsPanel.Attach = false
end

-- scaling --

function ISWorldMapSymbols:extraUI_renderNoteBeingAddedOrEdited(modal, scale)
	if not modal or not modal:isReallyVisible() then
		return
	end
	local mx = modal.x - self.mapUI:getAbsoluteX()
	local my = modal.y - self.mapUI:getAbsoluteY() - getTextManager():getFontHeight(UIFont.Handwritten) * scale * self.mapAPI:getWorldScale()
	self.noteX = self.mapAPI:uiToWorldX(mx, my)
	self.noteY = self.mapAPI:uiToWorldY(mx, my)
	local color = modal.currentColor
	local r,g,b = color:getR(),color:getG(),color:getB()
	local text = modal.entry:getText()

	if modal:isTranslation() then
		text = getText(text)
	end

	self.mapUI:drawTextZoomed(text, self.mapAPI:worldToUIX(self.noteX, self.noteY), self.mapAPI:worldToUIY(self.noteX, self.noteY), scale * self.mapAPI:getWorldScale(), r, g, b, 1, UIFont.Handwritten)
end

-- options --

function ISWorldMapSymbols:extraUI_OptionsToggle()
	self.selectedSymbol = nil
	self:setCurrentTool(nil)

	self.extraUI.OptionsPanel.Attach = not self.extraUI.OptionsPanel.Attach

	if self.extraUI.OptionsPanel.Attach then
		self:getParent():addChild(self.extraUI.OptionsPanel)
	else
		self:getParent():removeChild(self.extraUI.OptionsPanel)
	end
end

function ISWorldMapSymbols:extraUI_OptionsHide()
	if not self.extraUI then
		return
	end

	if self.extraUI.OptionsPanel.Attach then
		self.extraUI.OptionsPanel.Attach = not self.extraUI.OptionsPanel.Attach
		self:getParent():removeChild(self.extraUI.OptionsPanel)
	end
end

function ISWorldMapSymbols:extraUI_ColumnsSet(spinbox)
	self.extraUI.Columns = ExtraMapSymbolsUI.CONST.ColumnsMin + spinbox.selected - 1
	ExtraMapSymbolsUI:SetModData("Columns", self.extraUI.Columns)
	self:extraUI_Refresh("Columns")
end

function ISWorldMapSymbols:extraUI_ScalingStepSet(spinbox)
	ExtraMapSymbolsUI.ScalingStep = spinbox.selected * ExtraMapSymbolsUI.CONST.ScalingStepMin
end

function ISWorldMapSymbols:extraUI_AltToggle()
	ExtraMapSymbolsUI.AlternativeSymbols = not ExtraMapSymbolsUI.AlternativeSymbols
	ExtraMapSymbolsUI:SetModData("AlternativeSymbols", ExtraMapSymbolsUI.AlternativeSymbols)
end

-- crayons --

function ISWorldMapSymbols:extraUI_CrayonsShow(button)
	self.selectedSymbol = nil
	self:setCurrentTool(nil)

	self:removeChild(self.extraUI.CrayonsButton.ColorPicker)
	self.extraUI.CrayonsButton.ColorPicker:setX(button:getX() - self.extraUI.CrayonsButton.ColorPicker:getWidth() - ExtraMapSymbolsUI.CONST.Pad)
	self.extraUI.CrayonsButton.ColorPicker:setY(button:getY())
	self:addChild(self.extraUI.CrayonsButton.ColorPicker)
end

function ISWorldMapSymbols:extraUI_CrayonsPick(color, mouseUp)
	if color == nil then
		return
	end

	self.selectedSymbol = nil
	self:setCurrentTool(nil)

	self.extraUI.CrayonsButton.buttonInfo.colorInfo = ColorInfo.new(color.r, color.g, color.b, 0.9)
	self.extraUI.CrayonsButton.backgroundColor = {r=color.r, g=color.g, b=color.b, a=1}

	self:checkInventory()
	self:onButtonClick(self.extraUI.CrayonsButton)
end

---

--[[
    local icon = item.item:getIcon()
    if item.item:getIconsForTexture() and not item.item:getIconsForTexture():isEmpty() then
        icon = item.item:getIconsForTexture():get(0)
    end
    if icon then
        local texture = getTexture("Item_" .. icon)
        if texture then
            self:drawTextureScaledAspect2(texture, self.columns[2].size + iconX, y + (self.itemheight - iconSize) / 2, iconSize, iconSize,  1, 1, 1, 1);
        end
    end
]]--
