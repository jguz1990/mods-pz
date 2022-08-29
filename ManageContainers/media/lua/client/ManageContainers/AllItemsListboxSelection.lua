require "ISUI/ISPanel"

ISItemsIncludeExclude = ISPanel:derive("ISItemsIncludeExclude");

local FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small)
local FONT_HGT_MEDIUM = getTextManager():getFontHeight(UIFont.Medium)
local FONT_HGT_LARGE = getTextManager():getFontHeight(UIFont.Large)

local HEADER_HGT = FONT_HGT_MEDIUM + 2 * 2

function ISItemsIncludeExclude:initialise()
    ISPanel.initialise(self);
end


function ISItemsIncludeExclude:render()
    ISPanel.render(self);

    local y = self.datas.y + self.datas.height + 5
    self:drawText(getText("IGUI_DbViewer_TotalResult") .. self.totalResult, 0, y, 1,1,1,1,UIFont.Small)

    y = self.filters:getBottom()

    self:drawRectBorder(self.datas.x, y, self.datas:getWidth(), HEADER_HGT, 1, self.borderColor.r, self.borderColor.g, self.borderColor.b);
    self:drawRect(self.datas.x, y+1, self.datas:getWidth(), HEADER_HGT, self.listHeaderColor.a, self.listHeaderColor.r, self.listHeaderColor.g, self.listHeaderColor.b);

    local x = 0;
    for i,v in ipairs(self.datas.columns) do
        local size;
        if i == #self.datas.columns then
            size = self.datas.width - x
        else
            size = self.datas.columns[i+1].size - self.datas.columns[i].size
        end
--        print(v.name, x, v.size)
        self:drawText(v.name, x+10+3, y+2, 1,1,1,1,UIFont.Small);
        self:drawRectBorder(self.datas.x + x, y, 1, self.datas.itemheight + 1, 1, self.borderColor.r, self.borderColor.g, self.borderColor.b);
        x = x + size;
    end
end

function ISItemsIncludeExclude:new (x, y, width, height, viewer)
    local o = ISPanel:new(x, y, width, height);
    setmetatable(o, self);
    o.listHeaderColor = {r=0.4, g=0.4, b=0.4, a=0.3};
    o.borderColor = {r=0.4, g=0.4, b=0.4, a=0};
    o.backgroundColor = {r=0, g=0, b=0, a=1};
    o.buttonBorderColor = {r=0.7, g=0.7, b=0.7, a=0.5};
    o.totalResult = 0;
    o.filterWidgets = {};
    o.filterWidgetMap = {}
    --Tables will be pseudo sets with the value being true and the key the itemIndex
	--Like the name say, the itemIndex can only be in one set at a time
    o.viewer = viewer
    ISItemsIncludeExclude.instance = o;
    return o;
end

function ISItemsIncludeExclude:createChildren()
    ISPanel.createChildren(self);

    local btnWid = 100
    local btnHgt = math.max(25, FONT_HGT_SMALL + 3 * 2)
    local entryHgt = FONT_HGT_MEDIUM + 2 * 2
    local bottomHgt = 5 + FONT_HGT_SMALL * 2 + 5 + btnHgt + 20 + FONT_HGT_LARGE + HEADER_HGT + entryHgt

    self.datas = MultiSelectListbox:new(0, HEADER_HGT, self.width, self.height - bottomHgt - HEADER_HGT, self.viewer.items);
    self.datas:initialise();
    self.datas:instantiate();
    self.datas.itemheight = FONT_HGT_SMALL + 4 * 2
    self.datas.joypadParent = self;
    self.datas.font = UIFont.NewSmall;
    self.datas.doDrawItem = self.drawDatas;
    self.datas.drawBorder = true;
--    self.datas.parent = self;
    self.datas:addColumn("Type", 0);
    self.datas:addColumn("Name", 200);
    self.datas:addColumn("Category", 450);
    self.datas:addColumn("DisplayCategory", 650)
    self:addChild(self.datas);

    local btnY = self.datas.y + self.datas.height + 5 + FONT_HGT_SMALL * 2 + 5
    local btnPadding = 10

    self.buttonInclude = ISButton:new(0, btnY, btnWid, btnHgt, getText("IGUI_Include"), self, ISItemsIncludeExclude.onOptionMouseDown);
    self.buttonInclude.internal = "Include";
    self.buttonInclude.borderColor = self.buttonBorderColor;
    self:addChild(self.buttonInclude);

    self.buttonExclude = ISButton:new(btnWid+btnPadding, btnY, btnWid, btnHgt, getText("IGUI_Exclude"), self, ISItemsIncludeExclude.onOptionMouseDown);
    self.buttonExclude.internal = "Exclude";
    self.buttonExclude.borderColor = self.buttonBorderColor;
    self:addChild(self.buttonExclude);

    self.buttonUnassign = ISButton:new((btnWid+btnPadding)*2, btnY, btnWid, btnHgt, getText("IGUI_Unassign"), self, ISItemsIncludeExclude.onOptionMouseDown);
    self.buttonUnassign.internal = "Unassign";
    self.buttonUnassign.borderColor = self.buttonBorderColor;
    self:addChild(self.buttonUnassign);

    self.filters = ISLabel:new(0, self.buttonInclude:getBottom() + 20, FONT_HGT_LARGE, getText("IGUI_DbViewer_Filters"), 1, 1, 1, 1, UIFont.Large, true)
    self.filters:initialise()
    self.filters:instantiate()
    self:addChild(self.filters)

    local x = 0;
    local entryY = self.filters:getBottom() + self.datas.itemheight
    for i,column in ipairs(self.datas.columns) do
        local size;
        if i == #self.datas.columns then -- last column take all the remaining width
            size = self.datas:getWidth() - x;
        else
            size = self.datas.columns[i+1].size - self.datas.columns[i].size
        end
        if column.name == "Category" then
            local combo = ISComboBox:new(x, entryY, size, entryHgt)
            combo.font = UIFont.Medium
            combo:initialise()
            combo:instantiate()
            combo.columnName = column.name
            combo.target = combo
            combo.onChange = self.onFilterChange
            combo.itemsListFilter = self.filterCategory
            self:addChild(combo)
            table.insert(self.filterWidgets, combo)
            self.filterWidgetMap[column.name] = combo
        elseif column.name == "DisplayCategory" then
            local combo = ISComboBox:new(x, entryY, size, entryHgt)
            combo.font = UIFont.Medium
            combo:initialise()
            combo:instantiate()
            combo.columnName = column.name
            combo.target = combo
            combo.onChange = self.onFilterChange
            combo.itemsListFilter = self.filterDisplayCategory
            self:addChild(combo)
            table.insert(self.filterWidgets, combo)
            self.filterWidgetMap[column.name] = combo
        else
            local entry = ISTextEntryBox:new("", x, entryY, size, entryHgt);
            entry.font = UIFont.Medium
            entry:initialise();
            entry:instantiate();
            entry.columnName = column.name;
            entry.itemsListFilter = self['filter'..column.name]
            entry.onTextChange = ISItemsIncludeExclude.onFilterChange;
            entry.target = self;
            entry:setClearButton(true)
            self:addChild(entry);
            table.insert(self.filterWidgets, entry);
            self.filterWidgetMap[column.name] = entry
        end
        x = x + size;
    end
end

function ISItemsIncludeExclude:onOptionMouseDown(button, x, y)
    local selectedItems = self.datas:getSelectedItems()
    for _,item in ipairs(selectedItems) do
        item.state = button.internal
    end
    self.datas:clearSelection()

    self:applySelection(selectedItems, button.internal)
end

function ISItemsIncludeExclude:initList(module)
    self.totalResult = 0;
    local categoryNames = {}
    local displayCategoryNames = {}
    local categoryMap = {}
    local displayCategoryMap = {}
    for x,v in ipairs(module) do
        self.datas:addItem(v:getDisplayName(), v);
        if not categoryMap[v:getTypeString()] then
            categoryMap[v:getTypeString()] = true
            table.insert(categoryNames, v:getTypeString())
        end
        if not displayCategoryMap[v:getDisplayCategory()] then
            displayCategoryMap[v:getDisplayCategory()] = true
            table.insert(displayCategoryNames, v:getDisplayCategory())
        end
        self.totalResult = self.totalResult + 1;
    end
    table.sort(self.datas.items, function(a,b) return not string.sort(a.item:getDisplayName(), b.item:getDisplayName()); end);

    local combo = self.filterWidgetMap.Category
    table.sort(categoryNames, function(a,b) return not string.sort(a, b) end)
    combo:addOption("<Any>")
    for _,categoryName in ipairs(categoryNames) do
        combo:addOption(categoryName)
    end

    local combo = self.filterWidgetMap.DisplayCategory
    table.sort(displayCategoryNames, function(a,b) return not string.sort(a, b) end)
    combo:addOption("<Any>")
    combo:addOption("<No category set>")
    for _,displayCategoryName in ipairs(displayCategoryNames) do
        combo:addOption(displayCategoryName)
    end
end

function ISItemsIncludeExclude:filterDisplayCategory(widget, scriptItem)
    if widget.selected == 1 then return true end -- Any category
    if widget.selected == 2 then return scriptItem:getDisplayCategory() == nil end
    return scriptItem:getDisplayCategory() == widget:getOptionText(widget.selected)
end

function ISItemsIncludeExclude:filterCategory(widget, scriptItem)
    if widget.selected == 1 then return true end -- Any category
    return scriptItem:getTypeString() == widget:getOptionText(widget.selected)
end

function ISItemsIncludeExclude:filterName(widget, scriptItem)
    local txtToCheck = string.lower(scriptItem:getDisplayName())
    local filterTxt = string.lower(widget:getInternalText())
    return string.match(txtToCheck, filterTxt)
end

function ISItemsIncludeExclude:filterType(widget, scriptItem)
    local txtToCheck = string.lower(scriptItem:getName())
    local filterTxt = string.lower(widget:getInternalText())
    return string.match(txtToCheck, filterTxt)
end

function ISItemsIncludeExclude.onFilterChange(widget)
    local datas = widget.parent.datas;
    if not datas.fullList then datas.fullList = datas.items; end
    widget.parent.totalResult = 0;
    datas:clear();
--print(entry.parent, combo)
--    local filterTxt = entry:getInternalText();
--    if filterTxt == "" then datas.items = datas.fullList; return; end
    for i,v in ipairs(datas.fullList) do -- check every items
        local add = true;
        for j,widget in ipairs(widget.parent.filterWidgets) do -- check every filters
            if not widget.itemsListFilter(self, widget, v.item) then
                add = false
                break
            end
        end
        if add then
            datas:addItem(i, v.item);
            widget.parent.totalResult = widget.parent.totalResult + 1;
        end
    end
end

function ISItemsIncludeExclude:drawDatas(y, item, alt)
    --TODO: If item is included/excluded, a
    if y + self:getYScroll() + self.itemheight < 0 or y + self:getYScroll() >= self.height then
        return y + self.itemheight
    end

    local a = 0.9;
    local clipX = self.columns[1].size
    local viewerWidth = self.parent.viewer:getWidth()-self.parent.viewer.simpleViewWidth
    local clipY = math.max(0, y + self:getYScroll())
    local clipY2 =self.height

    self:setStencilRect(clipX, clipY, viewerWidth - clipX, clipY2 - clipY)

    if self.items[item.index].selected then
        self:drawRect(0, (y), self:getWidth(), self.itemheight, 0.3, 0.7, 0.35, 0.15);
    end

    if self.parent.viewer.exclusiveSelection["Include"][self.parent:getItemID(item)] ~= nil then
        self:drawRect(0, (y), self:getWidth(), self.itemheight, 0.15, 0.2, 0.8, 0.6);
    elseif self.parent.viewer.exclusiveSelection["Exclude"][self.parent:getItemID(item)] ~= nil then
        self:drawRect(0, (y), self:getWidth(), self.itemheight, 0.15, 0.8, 0.2, 0.6);
    end

    if alt then
        self:drawRect(0, (y), self:getWidth(), self.itemheight, 0.3, 0.6, 0.5, 0.5);
    end

    self:drawRectBorder(0, (y), self:getWidth(), self.itemheight, a, self.borderColor.r, self.borderColor.g, self.borderColor.b);

    local iconX = 4
    local iconSize = FONT_HGT_SMALL;
    local xoffset = 10;

    self:drawText(item.item:getName(), xoffset, y + 4, 1, 1, 1, a, self.font);

    self:drawText(item.item:getDisplayName(), self.columns[2].size + iconX + iconSize + 4, y + 4, 1, 1, 1, a, self.font);

    self:drawText(item.item:getTypeString(), self.columns[3].size + xoffset, y + 4, 1, 1, 1, a, self.font);

    if item.item:getDisplayCategory() ~= nil then
        self:drawText(getText("IGUI_ItemCat_" .. item.item:getDisplayCategory()), self.columns[4].size + xoffset, y + 4, 1, 1, 1, a, self.font);
        else
        self:drawText("Error: No category set", self.columns[4].size + xoffset, y + 4, 1, 1, 1, a, self.font);
    end

    --self:setStencilRect(0, clipY, math.min(self.width, viewerWidth), clipY2 - clipY)
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

    -- Bit hacky, but I've struggle too long to find a cleaner solution to show/hide scrollbar when the advance view is toggled.
    self.vscroll.doSetStencil = viewerWidth > 0
    self:clearStencilRect()

    return y + self.itemheight;
end
--Add boba's white rat named Claire, ask for Jo to make a jingle.  Make

function ISItemsIncludeExclude:RemoveIntersection(itemsToRemove, tabName)
	local tabItems = self.viewer.advPanel:getView(tabName).datas.items
	local itemTypes = {}
	for k,item in pairs(itemsToRemove) do
		itemTypes[self:getItemID(item)] = item
	end
	for itemType,v in pairs(itemTypes) do
        self.viewer.exclusiveSelection[tabName][itemType] = nil
        for index,item in pairs(tabItems) do
            if self:getItemID(item) == itemType then
                table.remove(tabItems, index)
                break
            end
        end
	end
end

function ISItemsIncludeExclude:applySelection(items, applyToSet)
	--Remove the items from the other sets
	for setName,v in pairs(self.viewer.exclusiveSelection) do
		if applyToSet ~= setName then
			self:RemoveIntersection(items, setName)
		end
	end

	local tab = self.viewer.advPanel:getView(applyToSet)
	--This should skip for unassign
	if tab ~= nil then
		local tabItems = tab.datas.items
		for k,v in pairs(items) do
            --If already in set, don't add it twice
			if self.viewer.exclusiveSelection[applyToSet][self:getItemID(v)] == nil then
				table.insert(tabItems, v)
			end
			self.viewer.exclusiveSelection[applyToSet][self:getItemID(v)] = true
		end
	end
end

function ISItemsIncludeExclude:getItemID(item)
    return item.item:getModuleName() .. "." .. item.item:getName()
end