require "ISUI/ISScrollingListBox"

MultiSelectListbox = ISScrollingListBox:derive("ISMultiSelect_ListBox")
local Listbox = MultiSelectListbox
ListboxItems = ArrayList.new()

function ISScrollingListBox:doDrawItem(y, item, alt)
	if not item.height then item.height = self.itemheight end -- compatibililty

	if item.selected then
		self:drawRect(0, (y), self:getWidth(), item.height-1, 0.3, 0.7, 0.35, 0.15)
	end

	local r = self.borderColor.r
	local g = self.borderColor.g
	local b = self.borderColor.b
	local thickness = 0.5
	if item.index == self.joyPadSelected then
		r = 0.2
		g = 1.0
		b = 1.0
		thickness = 2
	end

	self:drawRectBorder(0, (y), self:getWidth(), item.height, thickness, r, g, b)
	local itemPadY = self.itemPadY or (item.height - self.fontHgt) / 2
	self:drawText(item.text, 15, (y)+itemPadY, 0.9, 0.9, 0.9, 0.9, self.font)
	y = y + item.height
	return y

end

function Listbox:onMouseDown(x, y)
	if #self.items == 0 then return end
	local row = self:rowAt(x, y)
	self:setRow(row)
end

function Listbox:setRow(row, preventClear)
	row = row ~= nil and row or self.joyPadSelected
	preventClear = preventClear or false
	if row == -1 then
		self:clearSelection()
		return
	end

	if (self.selectionMode == "single" and not self.items[row].selected) or
		(not isCtrlKeyDown() and not preventClear) then
		self:clearSelection()
	end
	if self.selectionMode == "multi" and isShiftKeyDown() and self.prevSelected > -1 then
		local startNum = math.min(row, self.prevSelected)
		local delta = self.prevSelected - row
		--make sure delta is positive
		local endNum = math.abs(delta)+startNum
		for i=startNum, endNum do
			self.items[i].selected = true
		end
	else
		self.items[row].selected = not self.items[row].selected
		self.prevSelected = row
	end
end

function Listbox:selectEarliest()
	self.joyPadSelected = 1
	for i,item in ipairs(self.items) do
		if (item.selected) then
			self.joyPadSelected = i
			break
		end
	end
	self:ensureVisible(self.joyPadSelected)
end

function Listbox:onJoypadDirUp()
	self.joyPadSelected = math.max(self.joyPadSelected-1,1)
	self:ensureVisible(self.joyPadSelected)
end

function Listbox:onJoypadDirDown()
	self.joyPadSelected = math.min(self.joyPadSelected+1, #self.items)
	self:ensureVisible(self.joyPadSelected)
end

function Listbox:clearSelection()
	for _,item in ipairs(self.items) do
		item.selected = false
	end
end

function Listbox:setSelectedRow(row)
	self:clearSelection()
	if self.items[row] then self.items[row].selected = true end
end

function Listbox:setSelectedRows(rows)
	self:clearSelection()
	for _,row in ipairs(rows) do
		local item = self.items[row]
		if item then item.selected = true end
	end
end

function Listbox:setSelectedByValues(values)
	self:clearSelection()
	for _,value in ipairs(values) do

		for i,item in ipairs(self.items) do
			if (item.item == value) then
				item.selected = true
				break
			end
		end
	end
end

function Listbox:getSelectedItems()
	local selected = {}
	for _,item in ipairs(self.items) do
		if item.selected then
			table.insert(selected, item)
		end
	end
	return selected
end

function Listbox:isSelectedItemByIndex(index)
	return self.items[index].selected
end

function Listbox:getSelectedCount()
	local selected = 0
	for _,item in ipairs(self.items) do
		if item.selected then
			selected = selected + 1
		end
	end
	return selected
end

function Listbox:iteratorSelected()
	return ipairs(self:getSelectedItems())
end

function Listbox:indexOf(text)
	for i,item in ipairs(self.items) do
		if item.text == text then
			return i
		end
	end
	return -1
end

function Listbox:new(x, y, width, height, listboxItems)
	local o = ISScrollingListBox.new(self, x, y, width, height)
	setmetatable(o, self)
	o.selectionMode = "multi"
	o.prevSelected = -1
	o.drawBorder = true
	o.joyPadSelected = -1
	ListboxItems = listboxItems
	return o
end

function Listbox:GetListboxItems()
	return ListboxItems
end