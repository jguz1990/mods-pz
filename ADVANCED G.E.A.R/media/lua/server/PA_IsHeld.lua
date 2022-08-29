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