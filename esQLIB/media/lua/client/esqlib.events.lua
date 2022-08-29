local aimEnter = false;

local function esEventsMouseUp()
    if getPlayer():isAiming() then
        triggerEvent("esOnAimExit", getPlayer():getPrimaryHandItem(), getPlayer():getSecondaryHandItem());
    end
    aimEnter = false;
end

local function esEventsMouseShow()
    if getPlayer() and getPlayer():isAiming() and not aimEnter then
        aimEnter = true;
        triggerEvent("esOnAimEnter", getPlayer():getPrimaryHandItem(), getPlayer():getSecondaryHandItem());

    elseif getPlayer() and getPlayer():isAiming() then
        triggerEvent("esOnAiming", getPlayer():getPrimaryHandItem(), getPlayer():getSecondaryHandItem());
    end

end

LuaEventManager.AddEvent("esOnAimEnter");
LuaEventManager.AddEvent("esOnAiming");
LuaEventManager.AddEvent("esOnAimExit");

Events.OnRightMouseUp.Add(esEventsMouseUp);
Events.OnRenderTick.Add(esEventsMouseShow)