require "TimedActions/ISBaseTimedAction"
require "ISUI/ISLayoutManager"

ISConfigureContainerAction = ISBaseTimedAction:derive("ISConfigureContainerAction")

function ISConfigureContainerAction:isValid()
	local firstContainer = self.containers:get(0)
	return firstContainer ~= nil
end

function ISConfigureContainerAction:perform()
	local window = ISConfigureContainerWindow.windows[self.character]
	if window then
		window:setObject(self.containers)
	else
		local x = getPlayerScreenLeft(self.playerNum)
		local y = getPlayerScreenTop(self.playerNum)
		local w = getPlayerScreenWidth(self.playerNum)
		local h = getPlayerScreenHeight(self.playerNum)
		window = ISConfigureContainerWindow:new(x + 70, y + 50, self.character, self.containers)
		window:initialise()
		window:addToUIManager()
		ISConfigureContainerWindow.windows[self.character] = window
		if self.character:getPlayerNum() == 0 then
			ISLayoutManager.RegisterWindow('configureContainer', ISCollapsableWindow, window)
		end
	end
	window:setVisible(true)
	window:addToUIManager()
	local joypadData = JoypadState.players[self.playerNum+1]
	if joypadData then
		joypadData.focus = window
	end
	-- needed to remove from queue / start next.
	ISBaseTimedAction.perform(self)
end

function ISConfigureContainerAction:new(character, containers)
	local o = {}
	setmetatable(o, self)
	self.__index = self
	o.maxTime = 0
	o.stopOnWalk = true
	o.stopOnRun = true
	o.character = character
	o.playerNum = character:getPlayerNum()
	o.containers = containers
	return o
end


ISWorldObjectContextMenu.AssignContainer = function(playerNum, context, worldobjects, test)
	local joypadData = JoypadState.players[playerNum+1]
	local playerObj = getSpecificPlayer(playerNum)
	local loot = getPlayerLoot(playerNum)
	local container
	if joypadData then
		local choice = loot.backpackChoice
		container = loot.backpacks[choice].inventory
	else
		for _,containerIsoObj in ipairs(worldobjects) do
			container = containerIsoObj:getItemContainer()
			if container ~= nil then
				break
			end
		end
	end

	if container ~= nil then
		local containerIsoObj = container:getParent()
		local playerUUID = ISConfigureContainerWindow:getStoredUUID(playerObj, "playerContainerID", true)
		local playerContainerID = MCContainerDataPrefix .. playerUUID
		--[[local modData = containerIsoObj:getModData()[playerContainerID]
		local containerName = ""
		if modData ~= nil then
			local nameLimit = 50
			local ellipsis = "..."
			local containerName = modData.containerName
			local containerNameCapped = containerName:len() > nameLimit and containerName:sub(1,nameLimit-ellipsis:len()) .. ellipsis or containerName
			containerName = containerName ~= nil and containerName ~= "" and " (" .. containerNameCapped .. ")" or ""
		end]]
		context:addOption(getText("ContextMenu_Configure_Container"), worldobjects, ISWorldObjectContextMenu.OpenContainerFilter, playerObj, containerIsoObj)
	end
end

ISWorldObjectContextMenu.OpenContainerFilter = function(worldobjects, playerObj, containerIsoObj)
	--Example: Fridge/Freezer
	local containers = ArrayList.new();
	containers:add(containerIsoObj:getContainer())
	local index = 1
	while true do
		--getContainerByIndex adds extra containers not counting the first one because reasons
		local curContainer = containerIsoObj:getContainerByIndex(index)
		if curContainer == nil then
			break
		else
			containers:add(curContainer)
			index = index + 1
		end
	end
	ISTimedActionQueue.add(ISConfigureContainerAction:new(playerObj, containers))
end

Events.OnFillWorldObjectContextMenu.Add(ISWorldObjectContextMenu.AssignContainer)