ZTanks = {}
ZTanks.Create = {}
ZTanks.ContainerAccess = {}

function ZTanks.Create.Default(vehicle, part)
	for i = 1,359,1 do
		part:setModelVisible(tostring(i), false)
	end
	part:setModelVisible(tostring(0), true)
end

function ZTanks.ContainerAccess.AmmoStor(vehicle, part, chr)
	if chr:getVehicle() == vehicle then
		local seat = vehicle:getSeat(chr)
		return seat == 3
	else
		return false
	end
end