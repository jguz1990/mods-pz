local FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small)

function ISConfigureContainerWindow:initList()
	self.items = getAllItems();

	local top = 28

	local btnHgt = math.max(25, FONT_HGT_SMALL + 3 * 2)
	local padBottom = 10
	self.advPanel = ISTabPanel:new(self.simpleViewWidth + 10, top, self.advanceViewWidth -10 * 2, 450 - padBottom - btnHgt - padBottom - top);
	self.advPanel:initialise();
	self.advPanel.borderColor = { r = 0, g = 0, b = 0, a = 0};
	self.advPanel.target = self;
	self.advPanel.equalTabWidth = false
	self:addChild(self.advPanel);

	-- we gonna separate items by module
	self.module = {};
	local moduleNames = {}
	local allItems = {}
	for i=0,self.items:size()-1 do
			local item = self.items:get(i);
			--The following code is used to generate a list of all items in the game
			--in a format that allows for easier conversion into an excel / google sheets
			--compatible layout. IN THE OUTPUT, replace <<<>>> with a tab.

			--if (item:getDisplayCategory() ~= nil) then
			--    print("<<<>>>" .. item:getName() .. "<<<>>>" .. item:getDisplayCategory())
			--else
			--    print("<<<>>>" .. item:getName() .. "<<<>>>")
			--end

			--The above code activates as soon as the item list viewer is activated.
			if not item:getObsolete() and not item:isHidden() then
					if not self.module[item:getModuleName()] then
							self.module[item:getModuleName()] = {}
							table.insert(moduleNames, item:getModuleName())
					end
					table.insert(self.module[item:getModuleName()], item);
					table.insert(allItems, item)
			end
	end

	table.sort(moduleNames, function(a,b) return not string.sort(a, b) end)
	--TODO: Load values in self.module from the modData
	self.module["Include"] = {}
	table.insert(moduleNames, "Include")

	self.module["Exclude"] = {}
	table.insert(moduleNames, "Exclude")

	local listBox = ISItemsIncludeExclude:new(0, 0, self.advPanel.width, self.advPanel.height - self.advPanel.tabHeight, self);
	self.advPanel:addView("All", listBox);
	listBox:initialise();
	listBox:initList(allItems)

	for _,moduleName in ipairs(moduleNames) do
			-- we ignore the "Moveables" module
			if moduleName ~= "Moveables" then
					local cat1 = ISItemsIncludeExclude:new(0, 0, self.advPanel.width, self.advPanel.height - self.advPanel.tabHeight, self);
					cat1:initialise();
					self.advPanel:addView(moduleName, cat1);
--            cat1.parent = self;
					cat1:initList(self.module[moduleName])
			end
	end
	self.advPanel:activateView("All");
end