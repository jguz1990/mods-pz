require "ISUI/ISCollapsableWindow"
require "ISUI/ISTabPanel"
require "ISUI/ISTextEntryBox"
require "ItemCategoryListbox"


function ISConfigureContainerWindow:toggleOption(listboxIndex)
	self.categoryListBox:setRow(listboxIndex, true)
end

function ISConfigureContainerWindow:onJoypadDown(button)
	if button == Joypad.BButton then
		self:close()
	end
	if button == Joypad.AButton then
		self:toggleOption()
	end
	if button == Joypad.LBumper or button == Joypad.RBumper then
		local nextView = self.panel:getActiveViewIndex()-1

		if button == Joypad.LBumper then
			nextView = nextView - 1
			if nextView < 0 then
				nextView = self.containers:size()-1
			end
		end

		if button == Joypad.RBumper then
			nextView = nextView + 1
			if nextView > self.containers:size()-1 then
				nextView = 0
			end
		end


		self.panel:activateView(self:getContainerName(self.containers:get(nextView)))
		self.categoryListBox:selectEarliest()
	end
end

function ISConfigureContainerWindow:onJoypadDirDown(joypadData)
	self.categoryListBox:onJoypadDirDown()
end

function ISConfigureContainerWindow:onJoypadDirUp(joypadData)
	self.categoryListBox:onJoypadDirUp()
end

function ISConfigureContainerWindow:onGainJoypadFocus(joypadData)
	self.categoryListBox:selectEarliest()
end