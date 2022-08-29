-- function PA_TrapLog(trapLog)
	-- print(trapLog)
-- end

if not isServer() then return end 
local Commands = {}
Commands.PA_Trap = {}

Commands.PA_Trap.TrapLog = function(origin, args)
	local trapLog = args.trapLog
	print(tostring(trapLog))
end

local onClientCommand = function(module, command, player, args)
	if Commands[module] and Commands[module][command] then
		Commands[module][command](player, args)
	end
end

Events.OnClientCommand.Add(onClientCommand)