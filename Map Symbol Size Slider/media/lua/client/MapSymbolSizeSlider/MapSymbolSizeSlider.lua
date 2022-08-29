local MapSymbolSizeSlider = {
	params = {
		defaultScale = ISMap.SCALE,
		currentScale = ISMap.SCALE -- should be moved to ISWorldMapSymbols class
	},
	consts = {
		scaleMin = 0.066,
		scaleMax = 2.266,
		scaleStep = 0.1,
		
		-- Do not change. Used to determine scale from texture
		defaultSymbolHeight = 20, -- 20 px
		defaultTextHeight = getTextManager():getFontHeight(UIFont.Handwritten) -- 36 px
	},
	-- original functions that are being intercepted
	originalPZFuncs = {
		ISWorldMapSymbols = {
			prerender = ISWorldMapSymbols.prerender,
			createChildren = ISWorldMapSymbols.createChildren,
			new = ISWorldMapSymbols.new
		},
		ISWorldMapSymbolTool_EditNote = {
			onMouseDown = ISWorldMapSymbolTool_EditNote.onMouseDown,
			onEditNote = ISWorldMapSymbolTool_EditNote.onEditNote
		}
	},
	compatability = {
		ExtraMapSymbolsUI_installed = false,
		ExtraMapSymbols_installed = false
	},
}

require "RadioCom/ISUIRadio/ISSliderPanel"


local FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small)

local SCALE_MIN = MapSymbolSizeSlider.consts.scaleMin
local SCALE_MAX = MapSymbolSizeSlider.consts.scaleMax
local SCALE_STEP = MapSymbolSizeSlider.consts.scaleStep


MapSymbolSizeSlider.ISScaleSliderPanel = ISSliderPanel:derive("ISScaleSliderPanel");

function MapSymbolSizeSlider.ISScaleSliderPanel:render()
	ISSliderPanel.render(self)

	-- Draw helper hatch on default value
	local relativePos = (MapSymbolSizeSlider.params.defaultScale - SCALE_MIN) / (SCALE_MAX - SCALE_MIN)
	local hatchX = self.sliderBarDim.x + self.sliderBarDim.w * relativePos
	local hatchY = self.sliderBarDim.y + self.sliderDim.h / 2 + 2 
	self:drawRect(hatchX, hatchY, 1, 3, self.sliderBarBorderColor.a, self.sliderBarBorderColor.r, self.sliderBarBorderColor.g, self.sliderBarBorderColor.b)
end


function MapSymbolSizeSlider.onSliderChange(target, _newvalue)
	MapSymbolSizeSlider.params.currentScale = SCALE_MIN + SCALE_STEP * _newvalue
	ISWorldMapSymbols:ChangeGlobalScale(MapSymbolSizeSlider.params.currentScale)
end


function MapSymbolSizeSlider.createSlider(target, x, y, w, h, func)
	local slider = MapSymbolSizeSlider.ISScaleSliderPanel:new(x, y, w, h, target, func)
	slider.currentValue = (MapSymbolSizeSlider.params.currentScale - SCALE_MIN) / SCALE_STEP
	slider:setValues(0, (SCALE_MAX - SCALE_MIN) / SCALE_STEP, 1, 0)
	slider:initialise()
	slider:instantiate()
	slider.doToolTip = false

	return slider
end


function ISWorldMapSymbols:ChangeGlobalScale(newValue)
	ISMap.SCALE = newValue

	-- ExtraMapSymbolsUI mod compatability
	if MapSymbolSizeSlider.compatability.ExtraMapSymbolsUI_installed then
		ExtraMapSymbolsUI.ScalingSymbol = newValue
		ExtraMapSymbolsUI.ScalingText = newValue
	end
end


function ISWorldMapSymbols:prerender()
	MapSymbolSizeSlider.originalPZFuncs.ISWorldMapSymbols.prerender(self)

	-- [ExtraMapSymbols mod compatability] runs once
	MapSymbolSizeSlider.compatability.getBackThePrerender(self)
	-- END [ExtraMapSymbols mod compatability]

	if self.MSSS_anchorElement == nil then return end
	
	local y = self.MSSS_anchorElement:getBottom() + FONT_HGT_SMALL + 2 * 2

	self:drawText(getText("IGUI_Map_MapSymbolSize"), self.width/2 - (getTextManager():MeasureStringX(UIFont.Small, getText("IGUI_Map_MapSymbolSize")) / 2), y, 1,1,1,1, UIFont.Small)
end


function ISWorldMapSymbols:createChildren()
	MapSymbolSizeSlider.originalPZFuncs.ISWorldMapSymbols.createChildren(self)
	
	if self.MSSS_anchorElement == nil then
		self.MSSS_anchorElement = self.children[ISUIElement.IDMax - 1]
	end

	local sldrWid = self.width - 20 * 2
	local sldrHgt = FONT_HGT_SMALL + 2 * 2
	local y = self.MSSS_anchorElement:getBottom() + sldrHgt + 20

	self.scaleSlider = MapSymbolSizeSlider.createSlider(self, 20, y, sldrWid, sldrHgt, MapSymbolSizeSlider.onSliderChange)
	self:addChild(self.scaleSlider)

	self:setHeight(self.scaleSlider:getBottom() + 20)
end


function ISWorldMapSymbolTool_EditNote:onMouseDown(...)
	if not self.symbolsUI.mouseOverNote then return false end
	if self.modal then return end
	
	-- if note is being edited, update scale for correct size render
	local symbol = self.symbolsAPI:getSymbolByIndex(self.symbolsUI.mouseOverNote)
	local newScale = symbol:getDisplayHeight() / (self.mapAPI:getWorldScale() * MapSymbolSizeSlider.consts.defaultTextHeight)
	ISWorldMapSymbols:ChangeGlobalScale(newScale)
	
	return MapSymbolSizeSlider.originalPZFuncs.ISWorldMapSymbolTool_EditNote.onMouseDown(self, ...)
end


function ISWorldMapSymbolTool_EditNote:onEditNote(...)
	MapSymbolSizeSlider.originalPZFuncs.ISWorldMapSymbolTool_EditNote.onEditNote(self, ...)

	-- return scale back to currentScale after note has been saved
	ISWorldMapSymbols:ChangeGlobalScale(MapSymbolSizeSlider.params.currentScale)
end


-- ExtraMapSymbols and ExtraMapSymbolsUI mod compatability, they constantly refresh ui for some reason

local ISWorldMapSymbols_extraUI_Refresh = nil

local MapSymbolSizeSlider_ISWorldMapSymbols_prerender = ISWorldMapSymbols.prerender


function MapSymbolSizeSlider.compatability.getBackThePrerender(target)
	-- If you are seeing this, I'm sorry 
	-- Had to do this, due to other mod changing the logic of build-in prerender and using it as an init function:
	-- "ExtraMapSymbols\media\lua\client\ExtraMapSymbols.lua" end of the file (prerender manipulation)
	-- ^^^ this blocks the possibility of interception of `prerender` for every other mod below it.

	if not MapSymbolSizeSlider_ISWorldMapSymbols_prerender then return end

	MapSymbolSizeSlider.compatability.ExtraMapSymbols_installed = target:isExtraMapSymbolsInstalled()

	if MapSymbolSizeSlider.compatability.ExtraMapSymbols_installed then 
		MapSymbolSizeSlider.originalPZFuncs.ISWorldMapSymbols.prerender = ISWorldMapSymbols.prerender
		ISWorldMapSymbols.prerender = MapSymbolSizeSlider_ISWorldMapSymbols_prerender
	end

	MapSymbolSizeSlider_ISWorldMapSymbols_prerender = nil  -- set it to nil so this crap never runs again
end

function MapSymbolSizeSlider:extraUI_Refresh(...)
	ISWorldMapSymbols_extraUI_Refresh(self, ...)
	
	local sldrHgt = FONT_HGT_SMALL + 2 * 2
	local x = ExtraMapSymbolsUI.CONST.ToolX
	local y = self.MSSS_anchorElement:getBottom() + sldrHgt + 20

	self.scaleSlider:setX(x)
	self.scaleSlider:setY(y)
	
	-- changing slider width (renders based on sliderBarDim, which is set in paginate func, no other way currently)
	ISUIElement.setWidth(self.scaleSlider, self:getWidth() - ExtraMapSymbolsUI.CONST.ToolX * 2)
	self.scaleSlider:paginate()

	self:setHeight(self.scaleSlider:getBottom() + 20)
end


function MapSymbolSizeSlider.getScalingSymbolHandler(ISWorldMapSymbols_object)
	-- used this approach since I have no time to figure out a better solution
	function scalingSymbolHandler(oldValue, newValue)
		MapSymbolSizeSlider.params.currentScale = newValue
		ISMap.SCALE = MapSymbolSizeSlider.params.currentScale

		ISWorldMapSymbols_object.scaleSlider:setCurrentValue((MapSymbolSizeSlider.params.currentScale - SCALE_MIN) / SCALE_STEP, true)
	end
	
	return scalingSymbolHandler
end

function ISWorldMapSymbols:isExtraMapSymbolsInstalled()
	for index, value in ipairs(self.symbolList) do
		if value == "extra:x_small" then
            return true
        end
    end
	
	return false
end

function ISWorldMapSymbols:new(...)
	local ISWorldMapSymbols_object = MapSymbolSizeSlider.originalPZFuncs.ISWorldMapSymbols.new(self, ...)

	if ExtraMapSymbolsUI ~= nil then
		MapSymbolSizeSlider.compatability.ExtraMapSymbolsUI_installed = true
	end

	-- if ExtraMapSymbolsUI mod is installed and decorator is not applied, apply my decorator
	if MapSymbolSizeSlider.compatability.ExtraMapSymbolsUI_installed and ISWorldMapSymbols_extraUI_Refresh == nil then
		ISWorldMapSymbols_extraUI_Refresh = self.extraUI_Refresh
		self.extraUI_Refresh = MapSymbolSizeSlider.extraUI_Refresh

		ExtraMapSymbolsUI:OnEvent("ScalingSymbol", MapSymbolSizeSlider.getScalingSymbolHandler(ISWorldMapSymbols_object))
	end

	return ISWorldMapSymbols_object
end


-- TODO move current scale to ISWorldMapSymbols class
