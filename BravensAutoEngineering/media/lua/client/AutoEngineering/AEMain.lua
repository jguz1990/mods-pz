--***********************************************************
--**                       BitBraven                       **
--***********************************************************

local OnShowRadialMenuInside = ISVehicleMenu.showRadialMenu
local OnCreateMenu = ISInventoryPaneContextMenu.createMenu

function ISVehicleMenu.showRadialMenu(playerObj)

	OnShowRadialMenuInside(playerObj)

	local vehicle = playerObj:getVehicle(); if not vehicle then return end

	local isPaused = UIManager.getSpeedControls() and UIManager.getSpeedControls():getCurrentGameSpeed() == 0
	if isPaused then return end
	if not vehicle:isHotwired() then return end
	if not vehicle:isDriver(playerObj) then return end
	if not playerObj:isRecipeKnown("RemoveHotwire") then return end
	if vehicle:isEngineStarted()  then return end
	if vehicle:isEngineRunning()  then return end
	if SandboxVars.VehicleEasyUse  then return end

	local menu = getPlayerRadialMenu(playerObj:getPlayerNum())
	menu:addSlice(getText("ContextMenu_VehicleHotwireOff"), getTexture("media/ui/vehicles/vehicle_ignitionOFF.png"), RemoveVehicleHotwire, playerObj, vehicle)

end

function RemoveVehicleHotwire(playerObj, vehicle)
	ISTimedActionQueue.add(ISAETimeAction:RemoveHotwire(playerObj, vehicle, 200));
end

function ISInventoryPaneContextMenu.createMenu(player, isInPlayerInventory, items, x, y, origin)

	OnCreateMenu(player, isInPlayerInventory, items, x, y, origin)

	local playerObj = getSpecificPlayer(player);
	local engineArray = playerObj:getInventory():getItemsFromType("AEEngine");

    for i = 0, engineArray:size()-1 do
        local engineItem = engineArray:get(i);
		if not engineItem:getModData().horsePower then return end
		engineItem:setTooltip(getText("Tooltip_EngineForce") .. " " .. (engineItem:getModData().horsePower / 10) .. "<br>" ..  getText("Tooltip_EngineQuality") .. " " .. engineItem:getModData().quality .. "<br>")
	end
end