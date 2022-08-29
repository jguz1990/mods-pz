TrueMusicOnInitGlobalModData = function(_module, _packet)
	if not ModData.exists("trueMusicData") then
		local t = ModData.create("trueMusicData")
		t["now_play"] = {};
		t["wo"] = {};
	end
end

TrueMusicOnReceiveGlobalModData = function(_module, _packet)
	if _module ~= "trueMusicData" then return; end;
	-- print("SERVER" .. _module)
	if (not _packet) then
		print("aborted OnReceiveGlobalModData in trueClient "
				.. (_packet or "missing _packet."));
	else
		ModData.add(_module, _packet);
	end;
end

Events.OnInitGlobalModData.Add(TrueMusicOnInitGlobalModData);
Events.OnReceiveGlobalModData.Add(TrueMusicOnReceiveGlobalModData);