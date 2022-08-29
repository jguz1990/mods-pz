require "ISUI/Maps/ISMap"
require "ISUI/Maps/ISWorldMapSymbols"

require "ExtraMapSymbolsUI"

--[[ majority of this file is annoying copypaste from vanilla, just to get rid of ONE fricking variable ]]--

--- ExtraMapSymbolsUI_AddSymbol ---

ExtraMapSymbolsUI_AddSymbol = ISWorldMapSymbolTool_AddSymbol:derive("ExtraMapSymbolsUI_AddSymbol")

function ExtraMapSymbolsUI_AddSymbol:onKeyPress(key)
	if key == Keyboard.KEY_ADD then
		return ExtraMapSymbolsUI:ChangeScaling("Symbol", ExtraMapSymbolsUI.ScalingStep)
	elseif key == Keyboard.KEY_SUBTRACT then
		return ExtraMapSymbolsUI:ChangeScaling("Symbol", -ExtraMapSymbolsUI.ScalingStep)
	elseif key == Keyboard.KEY_NUMPADENTER then
		return ExtraMapSymbolsUI:ChangeScaling("Symbol", 1207) -- reset --
	end

	return false
end

function ExtraMapSymbolsUI_AddSymbol:render()
	if (self.symbolsUI.playerNum ~= 0) or (JoypadState.players[self.symbolsUI.playerNum+1] and not wasMouseActiveMoreRecentlyThanJoypad()) then
		self:renderSymbol(self.symbolsUI.selectedSymbol, self.mapUI.width / 2, self.mapUI.height / 2)
	else
		self:renderSymbol(self.symbolsUI.selectedSymbol, self:getMouseX(), self:getMouseY())
	end
end

function ExtraMapSymbolsUI_AddSymbol:renderSymbol(symbol, x, y)
	if not symbol then
		return
	end

	local scale = ExtraMapSymbolsUI.ScalingSymbol * self.mapAPI:getWorldScale()
	local sym = symbol
	local symW = sym.image:getWidth() / 2 * scale
	local symH = sym.image:getHeight() / 2 * scale

	self.symbolsUI.mapUI:drawTextureScaled(sym.image, x-symW, y-symH, sym.image:getWidth() * scale, sym.image:getHeight() * scale, 1, sym.textureColor.r, sym.textureColor.g, sym.textureColor.b)
end

function ExtraMapSymbolsUI_AddSymbol:addSymbol(x, y)
	self:Do(self.symbolsUI.selectedSymbol.tex, ExtraMapSymbolsUI.ScalingSymbol, self.mapAPI:uiToWorldX(x, y), self.mapAPI:uiToWorldY(x, y), self.symbolsUI.currentColor:getR(), self.symbolsUI.currentColor:getG(), self.symbolsUI.currentColor:getB(), 1)

	if self.symbolsUI.character then
		self.symbolsUI.character:playSound("MapAddSymbol") -- v41.65 behavior --
	end
end

function ExtraMapSymbolsUI_AddSymbol:Do(symbolName, scale, x, y, r, g, b, a)
	if ExtraMapSymbolsUI.AlternativeSymbols and ExtraMapSymbolsUI.ALT[symbolName] ~= nil then
		symbolName = ExtraMapSymbolsUI.ALT[symbolName][ZombRand(#ExtraMapSymbolsUI.ALT[symbolName])+1]
	end

	local textureSymbol = self.symbolsAPI:addTexture(symbolName, x, y)

	textureSymbol:setRGBA(r, g, b, a)
	textureSymbol:setAnchor(0.5, 0.5)
	textureSymbol:setScale(scale)

	ExtraMapSymbolsUI:RunEvent("AddSymbol", textureSymbol, symbolName, scale)
end

function ExtraMapSymbolsUI_AddSymbol:new(symbolsUI)
	local this = ISWorldMapSymbolTool.new(self, symbolsUI)
	return this
end

--- ExtraMapSymbolsUI_AddNote ---

ExtraMapSymbolsUI_AddNote = ISWorldMapSymbolTool_AddNote:derive("ExtraMapSymbolsUI_AddNote")

function ExtraMapSymbolsUI_AddNote:new(symbolsUI)
	local this = ISWorldMapSymbolTool.new(self, symbolsUI)

	return this
end

function ExtraMapSymbolsUI_AddNote:onKeyPress(key)
	if key == Keyboard.KEY_ADD then
		return ExtraMapSymbolsUI:ChangeScaling("Text", ExtraMapSymbolsUI.ScalingStep)
	elseif key == Keyboard.KEY_SUBTRACT then
		return ExtraMapSymbolsUI:ChangeScaling("Text", -ExtraMapSymbolsUI.ScalingStep)
	elseif key == Keyboard.KEY_NUMPADENTER then
		return ExtraMapSymbolsUI:ChangeScaling("Text", 1207) -- reset --
	end

	return false
end

function ExtraMapSymbolsUI_AddNote:addNote(x, y)
	self.symbolsUI.noteX = self.mapAPI:uiToWorldX(x, y)
	self.symbolsUI.noteY = self.mapAPI:uiToWorldY(x, y)
	local mx = self.mapUI:getAbsoluteX() + x
	local my = self.mapUI:getAbsoluteY() + y + getTextManager():getFontHeight(UIFont.Handwritten) * ExtraMapSymbolsUI.ScalingText * self.mapAPI:getWorldScale()
	local playerNum = self.symbolsUI.character and self.symbolsUI.playerNum or nil
	self.modal = ISTextBoxMap:new(mx, my, 350, 180, getText("IGUI_Map_AddNote"), "", self, self.onAddNote, playerNum)
	self.modal:initialise()
	self.modal.noEmpty = true
	self.modal:addToUIManager()
	--
	ExtraMapSymbolsUI:CloneColorButtons(self.symbolsUI, self.modal, self.modal, ISTextBoxMap.onClick)
	--
	self.modal:setAlwaysOnTop(true)
	self.modal:selectColor(self.symbolsUI.currentColor:getR(), self.symbolsUI.currentColor:getG(), self.symbolsUI.currentColor:getB())
	if self.symbolsUI.showTranslationOption then
		self.modal:showTranslationTickBox(self.showTranslationOption == true)
	end
	self.modal.entry:focus()
	self.modal.maxChars = 45

	if self.mapUI.joyfocus then
		self.mapUI.joyfocus.focus = self.modal
	end
end

function ExtraMapSymbolsUI_AddNote:render()
	if self.modal and self.modal:isReallyVisible() then
		self.symbolsUI:extraUI_renderNoteBeingAddedOrEdited(self.modal, ExtraMapSymbolsUI.ScalingText)
	else
		local color = self.symbolsUI.currentColor
		local r, g, b = color:getR(), color:getG(), color:getB()
		local x, y

		if (self.symbolsUI.playerNum ~= 0) or (JoypadState.players[self.symbolsUI.playerNum+1] and not wasMouseActiveMoreRecentlyThanJoypad()) then
			x, y = self.mapUI.width / 2, self.mapUI.height / 2
		else
			x, y = self:getMouseX(), self:getMouseY()
		end

		self.mapUI:drawTextZoomed(getText("IGUI_Map_AddNote"), x, y, ExtraMapSymbolsUI.ScalingText * self.mapAPI:getWorldScale(), r, g, b, 1, UIFont.Handwritten)
	end
end

function ExtraMapSymbolsUI_AddNote:onAddNote(button, playerNum)
	self.modal = nil
	if button.internal == "OK" then
		local text = string.trim(button.parent.entry:getText())
		if text == "" then return end
		local newNote = {}
		newNote.text = text
		newNote.x = self.symbolsUI.noteX
		newNote.y = self.symbolsUI.noteY
		newNote.r = button.parent.currentColor:getR()
		newNote.g = button.parent.currentColor:getG()
		newNote.b = button.parent.currentColor:getB()
		--newNote.a = button.parent.currentColor:getA()
		local textSymbol
		if button.parent:isTranslation() then
			textSymbol = self.symbolsAPI:addUntranslatedText(newNote.text, UIFont.Handwritten, newNote.x, newNote.y)
		else
			textSymbol = self.symbolsAPI:addTranslatedText(newNote.text, UIFont.Handwritten, newNote.x, newNote.y)
		end
		textSymbol:setRGBA(newNote.r, newNote.g, newNote.b, newNote.a or 1.0)
		textSymbol:setAnchor(0.0, 0.0)
		textSymbol:setScale(ExtraMapSymbolsUI.ScalingText)

		ExtraMapSymbolsUI:RunEvent("AddText", textSymbol, newNote.text, ExtraMapSymbolsUI.ScalingText)

		if self.symbolsUI.character then
			self.symbolsUI.character:playSound("MapAddNote") -- v41.65 behavior --
		end

		local isJoypad = JoypadState.players[self.symbolsUI.playerNum+1]
		if isJoypad then
			local width = getTextManager():MeasureStringX(UIFont.Handwritten, text) * ExtraMapSymbolsUI.ScalingText * self.mapAPI:getWorldScale()
			local height = getTextManager():getFontHeight(UIFont.Handwritten) * ExtraMapSymbolsUI.ScalingText * self.mapAPI:getWorldScale()
			local uiX = self.mapAPI:worldToUIX(newNote.x, newNote.y) + width / 2
			local uiY = self.mapAPI:worldToUIY(newNote.x, newNote.y) + height / 2
			local worldX = self.mapAPI:uiToWorldX(uiX, uiY)
			local worldY = self.mapAPI:uiToWorldY(uiX, uiY)
			self.mapAPI:centerOn(worldX, worldY)
		end
	end
end

--- ExtraMapSymbolsUI_EditNote ---

ExtraMapSymbolsUI_EditNote = ISWorldMapSymbolTool_EditNote:derive("ExtraMapSymbolsUI_EditNote")

function ExtraMapSymbolsUI_EditNote:new(symbolsUI)
	local this = ISWorldMapSymbolTool.new(self, symbolsUI)

	return this
end

function ExtraMapSymbolsUI_EditNote:editNote(x, y)
	local symbol = self.symbolsAPI:getSymbolByIndex(self.symbolsUI.mouseOverNote)
	--
	self.NoteScaleCalc = symbol:getDisplayHeight() / (getTextManager():getFontHeight(UIFont.Handwritten) * self.mapAPI:getWorldScale()) -- not great, not terrible --
	--
	symbol:setVisible(false)
	local uiX = symbol:getDisplayX()
	local uiY = symbol:getDisplayY()
	self.symbolsUI.noteX = self.mapAPI:uiToWorldX(uiX, uiY)
	self.symbolsUI.noteY = self.mapAPI:uiToWorldY(uiX, uiY)
	local mx = self.mapUI:getAbsoluteX() + uiX
	local my = self.mapUI:getAbsoluteY() + uiY + getTextManager():getFontHeight(UIFont.Handwritten) * self.NoteScaleCalc * self.mapAPI:getWorldScale()
	local playerNum = self.symbolsUI.character and self.symbolsUI.playerNum or nil
	local isTranslation = symbol:getUntranslatedText() ~= nil
	local text = symbol:getUntranslatedText() or symbol:getTranslatedText()
	self.modal = ISTextBoxMap:new(mx, my, 350, 180, getText("IGUI_Map_EditNote"), text, self, self.onEditNote, playerNum, symbol)
	self.modal:initialise()
	self.modal.noEmpty = true
	self.modal:addToUIManager()
	--
	ExtraMapSymbolsUI:CloneColorButtons(self.symbolsUI, self.modal, self.modal, ISTextBoxMap.onClick)
	--
	self.modal:setAlwaysOnTop(true)
	self.modal:selectColor(symbol:getRed(), symbol:getGreen(), symbol:getBlue())

	if self.symbolsUI.showTranslationOption then
		self.modal:showTranslationTickBox(isTranslation)
	end

	self.modal.entry:focus()
	self.modal.maxChars = 45

	if self.mapUI.joyfocus then
		self.mapUI.joyfocus = self.modal
	end
end

function ExtraMapSymbolsUI_EditNote:render()
	if self.modal == nil then
		self.symbolsUI:checkTextForEditMouse()
		self.symbolsUI:checkTextForEditJoypad()
	end

	self.symbolsUI:extraUI_renderNoteBeingAddedOrEdited(self.modal, self.NoteScaleCalc)
end
