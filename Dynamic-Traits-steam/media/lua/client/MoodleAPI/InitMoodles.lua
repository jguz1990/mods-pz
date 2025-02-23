local MoodleAPI = require("MoodleAPI/MoodleAPIClient")
local MoodleManager = require("MoodleAPI/MoodleManager")

function CountTableEntries(targetTable)
    local count = 0
    for _ in pairs(targetTable) do
        count = count + 1
    end
    return count
end

local function MoodleAPI_OnGameStart()
    if CountTableEntries(MoodleAPI.MoodleList) ~= 0 then
        getPlayer():getModData().MoodleManager = MoodleManager:new(ModData.getOrCreate("MainPlayerCustomMoodles"))
        getPlayer():getModData().MoodleManager:addRender(getPlayer():getMoodles(), getCore():getScreenWidth() - 50, 100)
    end
end
Events.OnGameStart.Add(MoodleAPI_OnGameStart)

local function MoodleAPI_OnSave()
    if getPlayer():getModData().MoodleManager ~= nil then
        local data = ModData.getOrCreate("MainPlayerCustomMoodles")
        for moodName, moodObj in pairs(getPlayer():getModData().MoodleManager.moodles) do
            data[moodName] = moodObj.value
        end
    end
end
Events.OnSave.Add(MoodleAPI_OnSave)