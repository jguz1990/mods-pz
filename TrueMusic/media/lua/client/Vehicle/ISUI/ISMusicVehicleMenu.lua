if ISMusicVehicleMenu == nil then ISMusicVehicleMenu = {} end

if not ISMusicVehicleMenu.oldShowRadialMenu then
	ISMusicVehicleMenu.oldShowRadialMenu = ISVehicleMenu.showRadialMenu
end

function ISVehicleMenu.showRadialMenu(playerObj)
	ISMusicVehicleMenu.oldShowRadialMenu(playerObj)
	ISMusicVehicleMenu.showRadialMenu(playerObj)
end

function ISMusicVehicleMenu.showRadialMenu(playerObj)
	local isPaused = UIManager.getSpeedControls() and UIManager.getSpeedControls():getCurrentGameSpeed() == 0
	if isPaused then return end
	local vehicle = playerObj:getVehicle()
	if vehicle then
		local menu = getPlayerRadialMenu(playerObj:getPlayerNum())
		local seat = vehicle:getSeat(playerObj)
		if seat <= 1 then -- only front seats can access the radio
			-- print("ISMusicVehicleMenu")
			for partIndex=1,vehicle:getPartCount() do
				local part = vehicle:getPartByIndex(partIndex-1)
				if part:getDeviceData() and part:getInventoryItem() and TCMusic.VehicleMusicPlayer[part:getInventoryItem():getFullType()]then
					menu:addSlice(getText("IGUI_MusicOptionsCar"), getTexture("media/ui/vehicle_tape.png"), ISMusicVehicleMenu.onSignalDevice, playerObj, part)
				end
			end
		end
		
	end
end


function ISMusicVehicleMenu.onSignalDevice(playerObj, part)
	ISTCBoomboxWindow.activate(playerObj, part)
end