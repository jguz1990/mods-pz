require "ISUI/ISCollapsableWindow"
require "ISUI/ISTabPanel"
require "ISUI/ISTextEntryBox"
require "MultiSelectListbox"

local closingWindow = false
MCContainerDataPrefix = 'manageContainerData_'

ISConfigureContainerWindow = ISCollapsableWindow:derive("ISConfigureContainerWindow")
ISConfigureContainerWindow.windows = {}
ISConfigureContainerWindow.leftCategory = Keyboard.KEY_LEFT;
ISConfigureContainerWindow.rightCategory = Keyboard.KEY_RIGHT;
ISConfigureContainerWindow.upArrow = Keyboard.KEY_UP;
ISConfigureContainerWindow.downArrow = Keyboard.KEY_DOWN;
ISConfigureContainerWindow.FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small)

function ISConfigureContainerWindow:createChildren()
	ISCollapsableWindow.createChildren(self)
	local th = self:titleBarHeight()

	self:setInfo(getText("UI_ConfigureContainer"));

	self.infoButton = ISButton:new(self.closeButton:getRight() + 1, 15, 70, 1, getText("UI_InfoBtn"), self, self.onOptionMouseDown);
	self.collapseButton:setX(self:getWidth()- th - 3)
	self.pinButton:setX(self:getWidth()- th - 3)

	local inset = 4
	local textboxPadding = 8
	local rowHeight = self.FONT_HGT_SMALL
	local rowPadding = 2
	self.simplePanel = ISPanel:new(0, th, self.simpleViewWidth, rowHeight*2+inset + rowPadding * 4)
	self.simplePanel:initialise();
	self:addChild(self.simplePanel);

	-- Simple View

	local lblNameText = getText("IGUI_Name") .. ":"
	local lblName = ISLabel:new(4, 2, rowHeight, lblNameText, 1, 1, 1, 1.0, UIFont.Small, true);
	lblName:initialise();
	lblName:instantiate();
	self.simplePanel:addChild(lblName);

	local textboxNameX = getTextManager():MeasureStringX(UIFont.Small, lblNameText) + textboxPadding
	self.textBoxName = ISTextEntryBox:new("", textboxNameX, 0, self.simpleViewWidth-textboxNameX, rowHeight)
	self.textBoxName:initialise()
	self.textBoxName:setAnchorRight(true)
	self.textBoxName:setAnchorTop(true)
	self.simplePanel:addChild(self.textBoxName)

	self.toggleAdvance = ISTickBox:new(4, 2 + rowHeight + rowPadding, 20, rowHeight, "", self, self.onToggleAdvance)
	self.toggleAdvance:initialise()
	self.toggleAdvance:addOption(getText("IGUI_Temp_AdvView"));
	self.toggleAdvance:setWidthToFit()
	self.simplePanel:addChild(self.toggleAdvance)

	local tabStart = th + self.simplePanel:getHeight()
	self.panel = ISTabPanel:new(0, tabStart, self.simpleViewWidth, self:getHeight()-tabStart)
	self.panel:initialise();
	self.panel.target = self
	self.panel.onActivateView = self.onActivateView
	self.panel:setEqualTabWidth(false)
	self:addChild(self.panel)

	self.categoryListBox = MultiSelectListbox:new(0, self.panel.tabHeight, self.simpleViewWidth, self:getHeight()-(tabStart+self.panel.tabHeight), ISConfigureContainerWindow:fetchCategories())
	self.categoryListBox:initialise();
  self.categoryListBox:instantiate();
	--self.categoryListBox:setAnchorLeft(true)
	self.panel:addChild(self.categoryListBox)

	local categories = self.categoryListBox:GetListboxItems()
	for j=1,categories:size() do
		local category = categories:get(j-1)
		local categoryTransKey = "IGUI_ItemCat_" .. category
		local categoryTrans = getText(categoryTransKey)
		--If the translation did not pull, show key val
		categoryTrans = categoryTrans == categoryTransKey and category or categoryTrans
		self.categoryListBox:addItem(categoryTrans, category)
	end
	self.categoryListBox:sort()


	--Advance View
	self.advancePanel = ISPanel:new(self.simpleViewWidth, th, self.advanceViewWidth, self:getHeight())
	self.advancePanel:initialise();
	self:addChild(self.advancePanel);

	self:initList();

	--[[self.excludeRotten = ISTickBox:new(4, 2 + rowHeight + rowPadding + self.advPanel:getHeight(), 20, rowHeight, "", self, self.onToggleExcludeRotten)
	self.excludeRotten:initialise()
	self.excludeRotten:addOption(getText("IGUI_ExcludeRotten"));
	self.excludeRotten:setWidthToFit()
	self.advancePanel:addChild(self.excludeRotten)]]


	self:setObject(self.containers)

	self.panel:activateView(self:getContainerName(self.containers:get(0)))
end

function ISConfigureContainerWindow:addPanels(addNum)
	for i=0, addNum-1 do
		local dummyElem = ISUIElement:new(0, 0, 0, 0)
		local container = self.containers:get(self.containers:size() - addNum + i)
		self.panel:addView(self:getContainerName(container), dummyElem)
	end
end

function ISConfigureContainerWindow:removePanels(removeNum)
	--lets say I had 4  and now I have 1, I need to get index 1,2,3
	for i=0, removeNum-1 do
		local removeIndex = self.containers:size() - removeNum + i
		self.panel:removeView(self.panel:getView(self:getContainerName(self.containers:get(removeIndex))))
	end
end

function ISConfigureContainerWindow:setObject(newContainers)
	closingWindow = false
	self:saveChanges()
	self.prevContainerSelection = 0
	local diffContainers = newContainers:size() - self.prevContainersCount
	--reset view names
	for i,curView in ipairs(self.panel.viewList) do
		-- If we have 1 new container and there's more than 1 view,
		if (newContainers:size() < i) then
			break
		end
		curView.name = self:getContainerName(newContainers:get(i-1))
		local newWidth = getTextManager():MeasureStringX(UIFont.Small, curView.name) + self.panel.tabPadX
		curView.tabWidth = newWidth;
	end

	if (diffContainers > 0) then
		self.containers = newContainers
		self:addPanels(diffContainers)
	else
		self:removePanels(diffContainers*-1)
		self.containers = newContainers
	end
	self.panel:activateView(self:getContainerName(self.containers:get(self.containers:size()-1)))
	self.prevContainersCount = self.containers:size()
	self:refreshSelection()
	if JoypadState.players[self.playerNum+1] then
		setJoypadFocus(self.playerNum, self.categoryListBox)
	end
end

function ISConfigureContainerWindow:close()
	closingWindow = true
	self:saveChanges()
	getPlayer():setIgnoreAimingInput(false);
	self:removeFromUIManager()
	if JoypadState.players[self.playerNum+1] then
		setJoypadFocus(self.playerNum, nil)
	end
end

function ISConfigureContainerWindow:onToggleAdvance(index, selected)
	local newWidth = 0
	if selected then
		newWidth = self.simpleViewWidth+self.advanceViewWidth
	else
		newWidth = self.simpleViewWidth
	end
	self.advPanel:setVisible(selected);
	self:setWidth(newWidth)
end

function ISConfigureContainerWindow:onToggleRotten(index, selected)

end


--TODO: Find why this even does not trigger each time a view is clicked
function ISConfigureContainerWindow:onActivateView()
	if self.prevContainerSelection > 0 then
		self:saveChanges(self.prevContainerSelection)
	end
	self:refreshSelection()
	self.prevContainerSelection = self.panel:getActiveViewIndex()
end


ISConfigureContainerWindow.getContainerData = function(container, playerUUID, activeContainerIndex)
	local containerData = container:getModData()[MCContainerDataPrefix .. playerUUID] or {}
	-- Load default vals if not found in modData
	local defaultValues = {containerName="", containersFilters={}, advanceView=false, exclusiveSelection={}--[[, excludeRotten=false]]}
	defaultValues.containersFilters[activeContainerIndex] = {}
	defaultValues.exclusiveSelection[activeContainerIndex] = {Include={}, Exclude={}} --default value sometimes not set
	for dataKey,dataValue in pairs(defaultValues) do
		if (containerData[dataKey] == nil) then
			containerData[dataKey] = dataValue
		end
	end
	return containerData
end

function ISConfigureContainerWindow:refreshSelection()
	local activeIndex = self.panel:getActiveViewIndex()
	local containerData = self.getContainerData(self.containers:get(0):getParent(), self.playerContainerID, activeIndex)

	self.textBoxName:setText(containerData.containerName)
	self.toggleAdvance:setSelected(1, containerData.advanceView)
	self:onToggleAdvance(1, containerData.advanceView)
	self.toggleAdvance:setSelected(1, containerData.advanceView)
	self.exclusiveSelection = containerData.exclusiveSelection[activeIndex] == nil and {Include={}, Exclude={}} or containerData.exclusiveSelection[activeIndex]
	--self.excludeRotten:setSelected(1, containerData.excludeRotten)

	for exclusiveType,itemList in pairs(self.exclusiveSelection) do
		self.advPanel:getView(exclusiveType).datas:clear()
		for itemName,_ in pairs(itemList) do
			local item = getScriptManager():getItem(itemName)
			self.advPanel:getView(exclusiveType).datas:addItem(item:getDisplayName(), item)
		end
	end


	self.categoryListBox:clearSelection()
	local listboxValues = containerData.containersFilters[activeIndex]
	if (listboxValues ~= nil) then
		self.categoryListBox:setSelectedByValues(listboxValues)
	end
end

function ISConfigureContainerWindow:update()
	local containerObj = self.containers:get(0):getParent()
	if self.character:DistTo(containerObj:getX(), containerObj:getY()) > self.closeWinDistance then
			self:setVisible(false);
			self:removeFromUIManager();
	end
end

function ISConfigureContainerWindow:saveChanges(containerIndex)
	if self.prevContainersCount == 0 then return end
	if containerIndex == nil then containerIndex = self.panel:getActiveViewIndex() end

	local filterData = {}

	for _,selCat in ipairs(self.categoryListBox:getSelectedItems()) do
		table.insert(filterData, selCat.item)
	end
	local containerObj = self.containers:get(0)
	local parentContainer = containerObj:getParent()
	if parentContainer == nil then --It's possible the obj despawned because too far
		return
	end
	local modData = parentContainer:getModData()
	local containerKey = MCContainerDataPrefix .. self.playerContainerID
	if modData[containerKey] == nil then
		modData[containerKey] = {}
	end
	local previousName = modData[containerKey]["containerName"] == nil and "" or modData[containerKey]["containerName"]
	local claireEasterEgg = "give me rats"
	if modData[containerKey]["containersFilters"] == nil then
		modData[containerKey]["containersFilters"] = {}
	end
	if modData[containerKey]["exclusiveSelection"] == nil then
		modData[containerKey]["exclusiveSelection"] = {}
	end
	modData[containerKey]["containersFilters"][containerIndex] = filterData
	modData[containerKey]["exclusiveSelection"][containerIndex] = self.exclusiveSelection
	modData[containerKey]["containerName"] = self.textBoxName:getText()
	modData[containerKey]["advanceView"] = self.toggleAdvance:isSelected(1)
	--modData[containerKey]["excludeRotten"] = self.excludeRotten:isSelected(1)

	if self.textBoxName:getText() == claireEasterEgg and previousName ~= claireEasterEgg then
		self.character:playSoundLocal("MCGiveMeRats")
		self.character:getInventory():AddItem("Base.Hat_Claire_Rat")
		modData[containerKey]["containerName"] = previousName
		self.textBoxName:setText(previousName)
	end

	parentContainer:transmitModData()
end

function ISConfigureContainerWindow:new(x, y, character, containers)
	local title = getText("ContextMenu_Configure_Container")
	local iconSpaceTitleRatio = 4.5
	local titlePadding = 20
	local simpleViewWidth = math.max(getTextManager():MeasureStringX(UIFont.Small, title) + (getTextManager():getFontHeight(UIFont.Small) * iconSpaceTitleRatio) + titlePadding, 250)
	local advanceViewWidth = 850
	local height = 600
	local o = ISCollapsableWindow:new(x, y, simpleViewWidth, height)
	setmetatable(o, self)
	self.__index = self
	o.simpleViewWidth = simpleViewWidth
	o.advanceViewWidth = advanceViewWidth
	o.title = title
	o.infoBtn = getTexture("media/ui/Panel_info_button.png")
	o.character = character
	o.playerNum = character:getPlayerNum()
	o.playerContainerID = self:getStoredUUID(character, "playerContainerID", true)
	o.containers = containers
	o.closeWinDistance = 10
	o.prevContainersCount = 0
	o.prevContainerSelection = 0
	o:setResizable(false)

	return o
end

function ISConfigureContainerWindow:onMouseMove(dx, dy)
	ISCollapsableWindow.onMouseMove(self,dx,dy);
	getPlayer():setIgnoreAimingInput(self:isMouseOver() and not closingWindow);
end

function ISConfigureContainerWindow:onMouseMoveOutside(dx, dy)
	ISCollapsableWindow.onMouseMoveOutside(self,dx,dy);
	getPlayer():setIgnoreAimingInput(false);
end

function ISConfigureContainerWindow:getStoredUUID(isoObj, uuidName, createOnNil)
	--Used to be stored in the isoObj, but now these values should be fetched in a ini file
	createOnNil = createOnNil or false
	local storedData = LIP:load("manageContainers", "manageContainers.ini", createOnNil)
	local iniUUID = storedData.playerData ~= nil and storedData.playerData[uuidName] or nil
	local isoObjUUID = isoObj:getModData()[uuidName]

	-- If they are using the isoObj UUID, don't disturb it
	local storedUUID = isoObjUUID or iniUUID

	--Create new UUID
	if storedUUID == nil and createOnNil then
		storedUUID = getRandomUUID()
	elseif not createOnNil then
		return ''
	end

	if iniUUID == nil then
		LIP:save("manageContainers", "manageContainers.ini", {playerData={[uuidName]=storedUUID}})
	end
	if isoObjUUID == nil then
		isoObj:getModData()[uuidName] = storedUUID
	end

	return storedUUID
end

function ISConfigureContainerWindow:getContainerName(container)
	return getTextOrNull("IGUI_ContainerTitle_" .. container:getType())
end

function ISConfigureContainerWindow:fetchCategories()
	local items = getAllItems()
	local cats = ArrayList.new()
	for i=0, items:size()-1 do
		local item = items:get(i)
		local category = item:getDisplayCategory()
		if category == nil then
			local itemInst = instanceItem(item)
			if itemInst ~= nil then
				category = itemInst:getDisplayCategory() or itemInst:getCategory()
			end
		end
		if category ~= nil and not cats:contains(category) then
			cats:add(category)
		end
	end
	return cats
end
