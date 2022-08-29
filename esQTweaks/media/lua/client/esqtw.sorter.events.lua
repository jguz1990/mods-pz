local esSorter = require("esqtw.sorter.main");
local esqlibSettings = require("esqlib.settings");

local baseISTimedActionQueue = ISTimedActionQueue.onCompleted;
function ISTimedActionQueue:onCompleted(action)
    if esqlibSettings.getSetting("esQTW", "esQTWSorter") == 2 then
        if action.Type == "ISCraftAction" then
            triggerEvent("esDoSort", self.character);
        end
    end

    baseISTimedActionQueue(self, action);
end

local function sorterHotKeyPressed(key)
    if esqlibSettings.getSetting("esQTW", "esQTWSorter") == 1 then return end;
    if (isKeyDown(Keyboard.KEY_RSHIFT) or isKeyDown(Keyboard.KEY_LSHIFT)) and key == getCore():getKey("esqtwSortAllLootRS") then
        esSorter.sortLoots(getPlayer());
    elseif (key == getCore():getKey("esqtwSortAllLootNS")) then
        esSorter.sortInventory(getPlayer());
    end
end

local function sorterInitKeyBind()
    table.insert(keyBinding, { value = "[esqtwSorter]" } );
    table.insert(keyBinding, { value = "esqtwSortAllLootNS", key = Keyboard.KEY_NONE } );
    table.insert(keyBinding, { value = "esqtwSortAllLootRS", key = Keyboard.KEY_L } );
end

LuaEventManager.AddEvent("esDoSort");
Events.esDoSort.Add(esSorter.sortInventory);
Events.OnGameBoot.Add(sorterInitKeyBind);
Events.OnGameStart.Add(function() Events.OnKeyPressed.Add(sorterHotKeyPressed); end);