require "TCTickCheckMusic"

function TCFillContextMenu (player, context, worldobjects, test)
    if test and ISWorldObjectContextMenu.Test then return true end
    if getCore():getGameMode()=="LastStand" then
        return;
    end
    
    if test then return ISWorldObjectContextMenu.setTest() end
    local playerObj = getSpecificPlayer(player)
    local playerInv = playerObj:getInventory()
    
    local playerNum = playerObj:getPlayerNum()
	local player = playerNum

    if playerObj:getVehicle() then return; end
    
    local squares = {}
	local doneSquare = {}
	for i,v in ipairs(worldobjects) do
		if v:getSquare() and not doneSquare[v:getSquare()] then
			doneSquare[v:getSquare()] = true
			table.insert(squares, v:getSquare())
		end
	end

	if #squares == 0 then return false end

	local worldObjects = {}
	if JoypadState.players[player+1] then
		for _,square in ipairs(squares) do
			for i=1,square:getWorldObjects():size() do
				local worldObject = square:getWorldObjects():get(i-1)
				table.insert(worldObjects, worldObject)
			end
		end
	else
		local squares2 = {}
		for k,v in pairs(squares) do
			squares2[k] = v
		end
		local radius = 1
		for _,square in ipairs(squares2) do
			local worldX = screenToIsoX(player, context.x, context.y, square:getZ())
			local worldY = screenToIsoY(player, context.x, context.y, square:getZ())
			ISWorldObjectContextMenu.getSquaresInRadius(worldX, worldY, square:getZ(), radius, doneSquare, squares)
		end
        for _,square in pairs(squares) do
            local squareObjects = square:getWorldObjects()
            for i=1,squareObjects:size() do
                local worldObject = squareObjects:get(i-1)
                table.insert(worldObjects, worldObject)
            end
		end
	end
	if #worldObjects == 0 then return false end
	local itemList = {}
	for _,worldObject in ipairs(worldObjects) do
		local itemName = worldObject:getName() or (worldObject:getItem():getName() or "???")
		if not itemList[itemName] then itemList[itemName] = {} end
		table.insert(itemList[itemName], worldObject)
	end

	for name,items in pairs(itemList) do
		local _item = items[1]:getItem()
		local square = items[1]:getSquare()
		if instanceof(_item, "Radio")  then
            if _item:getType() == "TCBoombox" or _item:getType() == "TCVinylplayer" then
                context:removeOptionTsar(context:getOptionFromName(getText("IGUI_DeviceOptions")))
                context:removeOptionTsar(context:getOptionFromName(getText("IGUI_DeviceOptions")))
                context:addOptionOnTop(getText("IGUI_DeviceOptions"), playerObj, ISRadioWindow.activateBoombox, _item );
            end
		end
	end
end


Events.OnFillWorldObjectContextMenu.Add(TCFillContextMenu);