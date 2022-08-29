require "ItemCategoryListbox"


ISInventoryPaneContextMenu.DetectContainers = function(player, context, items)
	local firstItem = items[1]
	if firstItem == nil then
		return
	end
	local firstItemContainer = firstItem.invPanel and firstItem.invPanel.inventory or firstItem:getContainer()
	if firstItemContainer == nil then
		return
	end
	local playerObj = getSpecificPlayer(player)
	local isInPlayerInventory = firstItemContainer:isInCharacterInventory(playerObj)
	local validContainer = ISInventoryPaneContextMenu.ValidNearbyContainers(playerObj)

	if(isInPlayerInventory and validContainer) and not ISInventoryPaneContextMenu.isAllFav(items) then
		context:addOption(getText("ContextMenu_Put_Assigned_Containers"), items, ISInventoryPaneContextMenu.TransferItems, player, true)
	end
end

ISInventoryPaneContextMenu.ValidNearbyContainers = function(playerObj)
	local playerUUID = ISConfigureContainerWindow:getStoredUUID(playerObj, "playerContainerID", true)
	local playerContainerID = MCContainerDataPrefix .. playerUUID
	local loot = getPlayerLoot(playerObj:getPlayerNum())

	-- Determine if we are nearby valid containers
	local validContainer = false
	for _,container in ipairs(loot.backpacks) do
		local inv = container.inventory
		local isFloor = container.inventory:getType() == "floor"
		local containerIso = inv:getParent() --Portable containers shouldn't have a parent
		if inv ~= nil and not isFloor and playerContainerID ~= nil and containerIso ~= nil and containerIso:getModData()[playerContainerID] ~= nil then -- and ISInventoryPaneContextMenu.isAnyAllowed(container.inventory, items)
			return true
		end
	end
	return false
end


ISInventoryPaneContextMenu.TransferItems = function(items, playerNum, unrestricted)
	local playerObj = getSpecificPlayer(playerNum)
	local playerUUID = ISConfigureContainerWindow:getStoredUUID(playerObj, "playerContainerID", true)
	local hotBar = getPlayerHotbar(playerNum)
	local loot = getPlayerLoot(playerNum)
	local inventories = {}
	--Find valid inventories
	for _,container in ipairs(loot.backpacks) do
		local inv = container.inventory
		if (inv:getType() ~= "floor") then
			local containerIso = inv:getParent()
			if containerIso ~= nil then
				local containerIndex = containerIso:getContainerIndex(inv) + 1
				local containerModata = ISConfigureContainerWindow.getContainerData(containerIso, playerUUID, containerIndex)

				local itemCats = {}
				for _,filter in ipairs(containerModata["containersFilters"][containerIndex]) do
					itemCats[filter] = true
				end
				local itemTypes = containerModata["exclusiveSelection"][containerIndex]

				table.insert(inventories, {itemCats=itemCats, include=itemTypes.Include, exclude=itemTypes.Exclude,
					inv=inv, remainingSpace=inv:getEffectiveCapacity(playerObj) - inv:getContentsWeight(), assignedItems={}})
			end
		end
	end

	-- if no valid inventories found, skip
	if #inventories == 0 then
		return
	end

	local scores = {}
	for itemIndex,bundleItems in ipairs(items) do
		local amountLeft
		local items
		local totalWeight
		if instanceof(bundleItems, "InventoryItem") then
			items = {bundleItems}
			amountLeft = 1
			totalWeight = bundleItems:getActualWeight()
		else
			items = bundleItems.items
			amountLeft = bundleItems.count
			totalWeight = bundleItems.weight
		end
		local firstItem = items[1]
		local itemCategory = firstItem:getDisplayCategory() or firstItem:getCategory()
		local itemType = firstItem:getFullType()

		for invIndex,curInv in ipairs(inventories) do
			local spaceLeft = curInv.remainingSpace - firstItem:getActualWeight()

			if spaceLeft > 0 and ((curInv.itemCats[itemCategory] ~= nil and curInv.exclude[itemType] == nil ) or curInv.include[itemType] ~= nil) then
				--[[
					-- Weight logic --

					Increase score if the container is more exclusive
					single filter match = 20points
					10 filter matches = 0point

					Increase score the less space it leaves relative to the item's weight
					all remaining space filled = 10points
					equal or more than 10 weights lieft = 0points
				]]
				local curScore = 0
				local filterExclusivityWeight = 20
				local spaceLeftWeight = 10
				local numItemsCanFit
				--All can fit?
				if (totalWeight < curInv.remainingSpace) then
					numItemsCanFit = #items
				else
					numItemsCanFit = math.floor(math.min(spaceLeft / math.max(firstItem:getActualWeight(),0.01), amountLeft))
				end

				curScore = curScore + math.max(filterExclusivityWeight - #curInv.itemCats*2, 0)
				curScore = curScore + math.max((spaceLeftWeight-(curInv.remainingSpace/(numItemsCanFit * math.max(firstItem:getActualWeight(),0.01)))), 0)

				table.insert(scores, {map=itemIndex.."_"..invIndex, weight=curScore})
			end
		end
	end

	table.sort(scores, function(a,b) return a.weight > b.weight end)
	--print("number of matches:" .. #scores)

	local placedItems = ArrayList.new()
	for _, v in ipairs(scores) do
		local indexInfo = string.split(v.map, "_")
		local itemIndex = tonumber(indexInfo[1])
		local containerIndex = tonumber(indexInfo[2])
		local inv = inventories[containerIndex]
		local bundleItems = items[itemIndex]

		local amountLeft
		local items
		--local totalWeight
		if instanceof(bundleItems, "InventoryItem") then
			amountLeft = 1
			items = {bundleItems}
			--totalWeight = bundleItems:getActualWeight()
		else
			amountLeft = bundleItems.count - 1
			items = ISInventoryPane.getActualItems(bundleItems.items)
			--totalWeight = bundleItems.weight
		end
		--If we have enough space and item is not placed, yet proceed

			--print("object:" .. item:getName() .. " goes in:"..containerIndex)

		for _,item in ipairs(items) do
			if not placedItems:contains(item) and not item:isFavorite() and inv.remainingSpace > item:getActualWeight() then
				local ok = not item:isEquipped() and item:getType() ~= "KeyRing" and not hotBar:isInHotbar(item)
				if unrestricted or ok then
					amountLeft = amountLeft - 1
					inv.remainingSpace = inv.remainingSpace - item:getActualWeight()
					placedItems:add(item)
					table.insert(inv.assignedItems, item)
				end
			end

		end
	end

	for invIndex,curInv in ipairs(inventories) do
		local sortedItems = table.sort(curInv.assignedItems, function(a,b) return a:getActualWeight() < b:getActualWeight() end)
		for itemIndex, curItem in ipairs(sortedItems) do
			ISTimedActionQueue.add(ISInventoryTransferAction:new(playerObj, curItem, curItem:getContainer(), curInv.inv))
		end
	end
end

-- Overrides the Transfer All function
function ISInventoryPage:transferAll()
	local joypadData = JoypadState.players[self.player+1]

	if isShiftKeyDown() or (joypadData and joypadData.isActive and isJoypadRTPressed(joypadData.id)) then
		local playerObj = getSpecificPlayer(self.player)
		if ISInventoryPaneContextMenu.ValidNearbyContainers(playerObj) then
			ISInventoryPaneContextMenu.TransferItems(self.inventoryPane.itemslist, self.player, false)
		end
	else
		self.inventoryPane:transferAll();
	end
end

Events.OnFillInventoryObjectContextMenu.Add(ISInventoryPaneContextMenu.DetectContainers)