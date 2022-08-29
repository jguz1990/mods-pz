if not TCOldVehUpdateRadio then
	TCOldVehUpdateRadio = Vehicles.Update.Radio
end

local windowsTable = {
	"WindowFrontLeft", 
	"WindowFrontRight", 
	"WindowMiddleLeft", 
	"WindowMiddleRight", 
	"WindowRearLeft", 
	"WindowRearRight", 
	"Windshield",
	"WindshieldRear"
}
local function WindowsIsOpen (vehicle)
	for i, windowName in ipairs(windowsTable) do
		local part = vehicle:getPartById(windowName)
		if part and (not part:getInventoryItem() or (part:getWindow() and part:getWindow():isOpen())) then
			return true
		end
	end
	return false
end

local tickControl = 100 -- Сокращает количество срабатываний скрипта. Больше число - меньше срабатываний
local tickStart = 0

function Vehicles.Update.Radio(vehicle, part, elapsedMinutes)
	tickStart = tickStart + 1
	-- print("Vehicles.Update.Radio")
	TCOldVehUpdateRadio(vehicle, part, elapsedMinutes)
	local deviceData = part:getDeviceData()
	if deviceData then
		if part:getModData().tcmusic and 
				part:getModData().tcmusic.isPlaying and 
				part:getModData().tcmusic.mediaItem then
			-- print("deviceData:getIsTurnedOn()")
			if deviceData:getIsTurnedOn() then 
				-- print(deviceData:getIsTurnedOn())
				local windowsOpen = WindowsIsOpen(vehicle)
				if windowsOpen ~= part:getModData().tcmusic.windowsOpen then
					part:getModData().tcmusic.windowsOpen = windowsOpen
					vehicle:transmitPartModData(part);
					vehicle:updateParts();
				end
				if tickStart % tickControl == 0 then
					tickStart = 0
					if windowsOpen then
						addSound (nil, vehicle:getX(), vehicle:getY(), vehicle:getZ(), 30 * deviceData:getDeviceVolume(), 1)
					else
						addSound (nil, vehicle:getX(), vehicle:getY(), vehicle:getZ(), 10 * deviceData:getDeviceVolume(), 1)
					end
				end
			else
				-- print(deviceData:getIsTurnedOn())
				part:getModData().tcmusic.isPlaying = false
				vehicle:transmitPartModData(part);
				vehicle:updateParts();
			end
		end
	else
		print("ERROR TRUE MUSIC: deviceData not found")
	end
end