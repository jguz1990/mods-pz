BHblade = {}
BHblade.Create = {}
BHblade.Init = {}
function BHblade.Create.blader(vehicle, part)
	part = vehicle:getPartById("BHheliblade")
    part:setModelVisible("BHblade1", true)
	part:setModelVisible("BHblade2", false)
    part:setModelVisible("BHblade3", false)
    part:setModelVisible("BHblade4", false)
    part:setModelVisible("BHblade5", false)
    part:setModelVisible("BHblade6", false)
    part:setModelVisible("BHblade7", false)
    part:setModelVisible("BHblade8", false)
end
function BHblade.Init.blader(vehicle, part)
	part = vehicle:getPartById("BHheliblade")
    part:setModelVisible("BHblade1", true)
	part:setModelVisible("BHblade2", false)
    part:setModelVisible("BHblade3", false)
    part:setModelVisible("BHblade4", false)
    part:setModelVisible("BHblade5", false)
    part:setModelVisible("BHblade6", false)
    part:setModelVisible("BHblade7", false)
    part:setModelVisible("BHblade8", false)
end


function Vehicles.Create.BHHeadlight(vehicle, part)
	local item = VehicleUtils.createPartInventoryItem(part)
	-- xOffset,yOffset,distance,intensity,dot,focusing
	-- NOTE: distance,intensity,focusing values are ignored, instead they are
	-- set based on part condition.
	if part:getId() == "HeadlightLeft" then
		part:createSpotLight(10, 5, 8.0+ZombRand(16.0), 2, 0.96, ZombRand(200))
	elseif part:getId() == "HeadlightRight" then
		part:createSpotLight(-10, 5, 8.0+ZombRand(16.0), 2, 0.96, ZombRand(200))
	end
end