local MoodleAPI = require("MoodleAPI/MoodleAPIClient");

local function getDTOverdoseMoodleValue2()
    local player = getPlayer();
    if player:getModData().DTOverdose > 50 and player:getModData().DTOverdose <= 70 then
        return 2;
    end
    return 0;
end
local function getDTOverdoseMoodleValue3()
    local player = getPlayer();
    if player:getModData().DTOverdose > 70 and player:getModData().DTOverdose <= 85 then
        return 3;
    end
    return 0;
end
local function getDTOverdoseMoodleValue4()
    local player = getPlayer();
    if player:getModData().DTOverdose > 85 and player:getModData().DTOverdose <= 100 then
        return 4;
    end
    return 0;
end

MoodleAPI.AddMoodle("DTOverdose2", "media/ui/moodles/dtoverdose.png", "BAD", getDTOverdoseMoodleValue2);
MoodleAPI.AddMoodle("DTOverdose3", "media/ui/moodles/dtoverdose.png", "BAD", getDTOverdoseMoodleValue3);
MoodleAPI.AddMoodle("DTOverdose4", "media/ui/moodles/dtoverdose.png", "BAD", getDTOverdoseMoodleValue4);
