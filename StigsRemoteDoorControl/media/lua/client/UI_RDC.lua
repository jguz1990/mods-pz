
local KEY_DATA = {
  key = Keyboard.KEY_RBRACKET,
  name = "Hot key",  
}

if ModOptions and ModOptions.AddKeyBinding then
	ModOptions:AddKeyBinding("[Hotkeys]",KEY_DATA)
end


local function _abs(val)
	local ret = 0
	if val < 0 then
		ret = -val
	else
		ret = val
	end
	return ret
end

local function toogle_door(x,y)
	local door_toggled = 0
	local cell = getWorld():getCell()
	local sq = cell:getGridSquare(x , y , 0);
	if sq then
		local objs = sq:getObjects()
		local objs_size = objs:size()
		if objs_size > 0 then
			for i = 0, objs_size - 1, 1 do
				local obj = objs:get(i)
				if (instanceof(obj, "IsoDoor") or (instanceof(obj, "IsoThumpable") and obj:isDoor())) then
					--print("Door found: ", objs:get(i))
					obj:ToggleDoor(getSpecificPlayer(0));
					door_toggled = 1
					break
				end
			end
					
		end
	end
	return door_toggled
end

local function call_toggle_door(x,y)
	local RDC_x = x
	local RDC_y = y
	if( toogle_door( RDC_x -1 , RDC_y -1 ) == 0 ) then
		if( toogle_door( RDC_x -1 , RDC_y    ) == 0 ) then
			if( toogle_door( RDC_x -1 , RDC_y +1 ) == 0 ) then
				if( toogle_door( RDC_x    , RDC_y -1 ) == 0 ) then
					if( toogle_door( RDC_x    , RDC_y    ) == 0 ) then
						if( toogle_door( RDC_x    , RDC_y +1 ) == 0 ) then
							if( toogle_door( RDC_x +1 , RDC_y -1 ) == 0 ) then
								if( toogle_door( RDC_x +1 , RDC_y    ) == 0 ) then
									toogle_door( RDC_x +1 , RDC_y +1 )
								end
							end
						end
					end
				end
			end
		end
	end
end
local function find_device(player,id,dist)
	local toggled = {}
	local dist_ = dist
	local absX = round(player:getX())
	local absY = round(player:getY())
	local Xmin = absX - dist
	local Xmax = absX + dist
	local Ymin = absY - dist
	local Ymax = absY + dist
	local cell = getWorld():getCell()
	--print("Original:x: ", absX,", y:", absY);
	--print("id ", id,", dist:", dist);
	local RDC_x=0;
	local RDC_y=0;
	for x = Xmin, Xmax do
		for y = Ymin, Ymax do
			local sq = cell:getGridSquare(x , y , 0);
			if sq then
				local objs = sq:getObjects()
				local objs_size = objs:size()
				if objs_size > 0 then
					for i = 0, objs_size - 1, 1 do
						local obj = objs:get(i)
						-- Should work with all containers that can be picked up
						-- Container is on the tile check inside if there is the receiver inside then check against the remote id
						if instanceof(obj, "IsoThumpable") then 
							it_cont = obj:getItemContainer()
							if it_cont ~= nil then
								items = it_cont:getItems()  
								local items_size = items:size()
								for i = 0, items_size - 1, 1 do
									local item = items:get(i)
									--print("items_id: ",item:getRemoteControlID())
									if string.match(item:getType(), "Simple Remote Door Control Receiver") then
										if id == 0 or item:getRemoteControlID() == id then
											--print("items_id: ",item:getRemoteControlID())
											local disx = _abs( absX - x )
											local disy = _abs( absY - y )
											if( disx <= item:getSensorRange() and disy <= item:getSensorRange()) then
												call_toggle_door(x,y)
											end
										end
									elseif string.match(item:getType(), "Remote Door Control Receiver") then
										if id == 0 or item:getRemoteControlID() == id then
											call_toggle_door(x,y)
										end
									end
								end
							end
						end
						-- on the tile there is the receiver check id 
						if instanceof(obj, "IsoTrap") and obj:getSmokeRange() == 0 and obj:getNoiseRange() == 0 and obj:getFireRange() == 0 and obj:getExplosionRange() == 0 then
							if id == 0 or obj:getRemoteControlID() == id then
								if obj:getSensorRange() ~= 0 then
									local disx = _abs( absX - x )
									local disy = _abs( absY - y )
									if( disx <= obj:getSensorRange() and disy <= obj:getSensorRange()) then
										call_toggle_door(x,y)
									end
								else
									call_toggle_door(x,y)
								end
								end
							--obj:setActivated(true)
							--print("matched: x:", RDC_x, ", y:" ,RDC_y, ", id:" ,obj:getRemoteControlID())
						end
					end
				end
			end
		end
	end

end

local function OnClientCommand(module, command, player, args)
	if command == 'triggerRemote' then 
		local id = 0
		local dist = 0
		for _,v in pairs(args) do
			if id == 0 then 
				id = v;
			else 
				if dist == 0 then 
					dist = v;
				end
			end
		end
		find_device(player,id,dist)
	end
end

local function check_container(container,player)
	master_v2=0
	master_v3=0
	local objs = container:getItems()
	local objs_size = objs:size()
	--print("OBJECTS FOUND: ", objs_size - 1, " ,real", objs_size)
	if objs_size > 0 then
		for i = 0, objs_size - 1, 1 do
			local obj = objs:get(i)
				--print(" " .. tostring(i) .. "-", obj);
			if string.match(obj:getType(), "RemoteCrafted") then
				id = obj:getRemoteControlID() 
				dist = obj:getRemoteRange() 
				find_device(player,id,dist)
			end
			if string.match(obj:getDisplayName(), "Master V2 Remote") then	
				master_v2=1 
			end	
			if string.match(obj:getDisplayName(), "Master V3 Remote") then	
				master_v3=1 
			end	
		end
	end
	if( master_v3 == 1 ) then
		find_device(player,0,15)
	else
		if( master_v2 == 1 ) then
			find_device(player,0,11)
		end
	end
end

local function checkKey(_key)
	if _key == KEY_DATA.key then
		local player = getSpecificPlayer(0)

		local wornItems = player:getWornItems()
        for i=1,wornItems:size() do
            local item = wornItems:get(i-1):getItem()
			if item and item:getCategory() == 'Container' then
				check_container(item:getItemContainer(),player);
			end
		end
			
		check_container(player:getInventory(),player);
	end
end

--Events.EveryTenMinutes.Add(dauer);

Events.OnKeyPressed.Add(checkKey);
Events.OnClientCommand.Add(OnClientCommand)