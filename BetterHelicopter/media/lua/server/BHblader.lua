blade = {}
blade.Create = {}
blade.Init = {}
function blade.Create.bladerBig(vehicle, part)
	part = vehicle:getPartById("heliblade")
    part:setModelVisible("blade1", false)
	part:setModelVisible("blade2", false)
    part:setModelVisible("blade3", false)
    part:setModelVisible("blade4", false)
    part:setModelVisible("blade5", false)
    part:setModelVisible("blade6", false)
    part:setModelVisible("blade7", false)
    part:setModelVisible("blade8", false)

    part:setModelVisible("blade" .. ZombRand(1, 9), true)
end

function blade.Init.bladerBig(vehicle, part)
	part = vehicle:getPartById("heliblade")
    part:setModelVisible("blade1", false)
	part:setModelVisible("blade2", false)
    part:setModelVisible("blade3", false)
    part:setModelVisible("blade4", false)
    part:setModelVisible("blade5", false)
    part:setModelVisible("blade6", false)
    part:setModelVisible("blade7", false)
    part:setModelVisible("blade8", false)

    part:setModelVisible("blade" .. ZombRand(1, 9), true)

    if vehicle:isEngineRunning() then
        BHLAST_HELI = vehicle
    end
end

function blade.Create.bladerSmall(vehicle, part)
	part = vehicle:getPartById("helibladeSmall")
    part:setModelVisible("blade1Small", false)
	part:setModelVisible("blade2Small", false)
    part:setModelVisible("blade3Small", false)
    part:setModelVisible("blade4Small", false)

    part:setModelVisible("blade" .. ZombRand(1, 5) .. "Small", true)
end

function blade.Init.bladerSmall(vehicle, part)
	part = vehicle:getPartById("helibladeSmall")
    part:setModelVisible("blade1Small", false)
	part:setModelVisible("blade2Small", false)
    part:setModelVisible("blade3Small", false)
    part:setModelVisible("blade4Small", false)

    part:setModelVisible("blade" .. ZombRand(1, 5) .. "Small", true)
end