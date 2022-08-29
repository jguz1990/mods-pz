function PA_IsHeld(item)
	-- local player = getSpecificPlayer(0)
	local player = item:getContainer():getParent()
	if not player then return end
	if not instanceof(player,"IsoPlayer") then return end			
	local hand 
	if player:getPrimaryHandItem() then hand =  player:getPrimaryHandItem() end
	if hand and hand == item then return true end
	return false
end

IsHeld = PA_IsHeld

function PA_TrenchSwap(items, result, player)
	-- print("Player " .. tostring(player))
	-- local player = getSpecificPlayer(player)
	for i=0,items:size()-1 do
		local item = items:get(i)
			result:setCondition(item:getCondition())		
			local modData = result:getModData()
			for k,v in pairs(item:getModData()) do
				modData[k] = v
			end
			result:setBloodLevel(item:getBloodLevel())
			result:setHaveBeenRepaired(item:getHaveBeenRepaired())
			result:setFavorite(item:isFavorite())
			
			
			result:attachWeaponPart(item:getScope())
			result:attachWeaponPart(item:getClip())
			result:attachWeaponPart(item:getSling())
			result:attachWeaponPart(item:getCanon())
			result:attachWeaponPart(item:getStock())
			result:attachWeaponPart(item:getRecoilpad())
	
				player:setPrimaryHandItem(result)
				

			
			
		-- if item:getAttachedSlot() > -1 then
			-- -- print("Hotbar " .. tostring(item:getAttachedSlot()))
				-- -- local hotbar = getPlayerHotbar(player:getPlayerNum())
				-- -- hotbar:removeItem(item, true)
				-- -- ;
				-- local slotIndex = item:getAttachedSlot()
				-- local slot = item:getAttachedToModel()
				
				-- -- player:removeAttachedItem(hotbar.attachedItems[slotIndex])
				-- -- hotbar.attachedItems[slotIndex]:setAttachedSlot(-1);
				-- -- hotbar.attachedItems[slotIndex]:setAttachedSlotType(nil);
				-- -- hotbar.attachedItems[slotIndex]:setAttachedToModel(nil);
				
							-- if slot and slotIndex then 	

								-- player:setAttachedItem(slot, result)
								-- result:setAttachedSlot(slotIndex)
								-- result:setAttachedSlotType(result:getAttachedSlotType())				
								-- result:setAttachedToModel(slot)	
							-- end

				-- -- -- print("SLOT " .. tostring(slot))
			
				-- -- -- result:setAttachedSlot(item:getAttachedSlot())
			
				-- -- result:setAttachedSlot(item:getAttachedSlot())
				-- -- result:setAttachedToModel(slot);
				
				-- -- -- hotbar:reloadIcons();
			
		-- end
	
    end
end