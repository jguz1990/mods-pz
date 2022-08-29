
if isClient() then return end

local tickControl = 50 -- Сокращает количество срабатываний скрипта. Больше число - меньше срабатываний
local tickStart = 0
local RADIUS = 25
local TIMEWAIT = 600 -- Удаление музыки из БД через 6 минут

function OnTickServerCheckMusic ()
	tickStart = tickStart + 1
	if (tickStart % tickControl == 0) then
		-- print("OnTickServerCheckMusic")
		tickStart = 0
		if not ModData.getOrCreate("trueMusicData") then
			local t = ModData.getOrCreate("trueMusicData")
			t["now_play"] = {}
			t["wo"] = {}
		end

		for musicId, musicData in pairs(ModData.get("trueMusicData")["now_play"]) do -- TCMusic.now_play
			local volume = musicData["volume"]
			local timestamp = musicData["timestamp"]
			local headphone = musicData["headphone"]
			
			if timestamp == "update" then
				timestamp = getGametimeTimestamp()
			end
			local strCoord = string.match(musicId, '%d*[-]%d*[-]%d*')
			if strCoord then
				local i = string.find(strCoord, "-")
				local x = tonumber(string.sub(strCoord, 1, i-1))
				strCoord = string.sub(strCoord, i+1)
				i = string.find(strCoord, "-")
				local y = tonumber(string.sub(strCoord, 1, i-1))
				local z = tonumber(string.sub(strCoord, i+1))
				addSound (nil, x, y, z, RADIUS * volume, 1)
			else
				-- Музыка из карманов
				local player = nil
				if isServer() then
					player = getPlayerByOnlineID(musicId)
				else
					player = getPlayer()
				end
				if player then
					if not headphone then
						local x = player:getX()
						local y = player:getY()
						local z = player:getZ()
						addSound (nil, x, y, z, RADIUS * volume, 1)
					end
				else
					ModData.get("trueMusicData")["now_play"][musicId] = nil
				end
			end
			if isServer() and math.abs(getGametimeTimestamp() - timestamp) > TIMEWAIT then
				ModData.get("trueMusicData")["now_play"][musicId] = nil
			end
		end
	end
end

Events.OnTick.Add(OnTickServerCheckMusic)
print("TCMUSIC SERVER LOADING")