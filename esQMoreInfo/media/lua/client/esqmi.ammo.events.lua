local esAmmoCheckMain = require("esqmi.ammo.main")
local esAmmoCheck = {};

esAmmoCheck.note = {};
esAmmoCheck.rgb = {};
esAmmoCheck.delay = 800;

esAmmoCheck.mouse = { down = false, tick = 0 };
function esAmmoCheck.mouseDown()
    if esAmmoCheck.mouse.down then return end
    esAmmoCheck.mouse.down = true;
    esAmmoCheck.note, esAmmoCheck.rgb = esAmmoCheckMain.getNote(esAmmoCheckMain.getCurrentWeapon());
    esAmmoCheck.mouse.tick = getTimestampMs();
end
function esAmmoCheck.mouseUp()
    esAmmoCheck.mouse.down = false;
    esAmmoCheck.mouse.tick = 0;
end
function esAmmoCheck.mouseShow()
    if esAmmoCheck.mouse.down and (esAmmoCheck.mouse.tick + esAmmoCheck.delay) < getTimestampMs() then
        if not isMouseButtonDown(0) and not isMouseButtonDown(1) and not isMouseButtonDown(2) then
            return esAmmoCheck.mouseUp();
        end
        esAmmoCheckMain.printNote(esAmmoCheck.note, esAmmoCheck.rgb);
        esAmmoCheck.mouse.tick = getTimestampMs() + esAmmoCheck.delay;
    end
end

esAmmoCheck.keyboard = { down = false, tick = 0 };
function esAmmoCheck.kbDown(key)
    if esAmmoCheck.keyboard.down then return end
    if getCore():getKey("Aim") ~= key then return end
    esAmmoCheck.keyboard.down = true;
    esAmmoCheck.note, esAmmoCheck.rgb = esAmmoCheckMain.getNote(esAmmoCheckMain.getCurrentWeapon());
    esAmmoCheck.keyboard.tick = getTimestampMs();
end
function esAmmoCheck.kbUp()
    esAmmoCheck.keyboard.down = false;
    esAmmoCheck.keyboard.tick = 0;
end
function esAmmoCheck.kbShow(key)
    if getCore():getKey("Aim") ~= key then return end
    if esAmmoCheck.keyboard.down and (esAmmoCheck.keyboard.tick + esAmmoCheck.delay) < getTimestampMs() then
        esAmmoCheckMain.printNote(esAmmoCheck.note);
        esAmmoCheck.keyboard.tick = getTimestampMs() + esAmmoCheck.delay;
    end
end

local baseISReloadWeaponActionUpdate = ISReloadWeaponAction.update;
function ISReloadWeaponAction:update()
    baseISReloadWeaponActionUpdate(self);
    esAmmoCheck.note, esAmmoCheck.rgb = esAmmoCheckMain.getNote(self.gun);
    esAmmoCheckMain.printNote(esAmmoCheck.note, esAmmoCheck.rgb);
end

local baseISReloadWeaponActionPerform = ISReloadWeaponAction.perform;
function ISReloadWeaponAction:perform()
    baseISReloadWeaponActionPerform(self);
    esAmmoCheck.note, esAmmoCheck.rgb = esAmmoCheckMain.getNote(self.gun);
    esAmmoCheckMain.printNote(esAmmoCheck.note, esAmmoCheck.rgb);
end

local baseISRackFirearmPerform = ISRackFirearm.perform;
function ISRackFirearm:perform()
    baseISRackFirearmPerform(self);
    esAmmoCheck.note, esAmmoCheck.rgb = esAmmoCheckMain.getNote(self.gun);
    esAmmoCheckMain.printNote(esAmmoCheck.note, esAmmoCheck.rgb);
end

local baseISLoadBulletsInMagazineUpdate = ISLoadBulletsInMagazine.update;
function ISLoadBulletsInMagazine:update()
    baseISLoadBulletsInMagazineUpdate(self);
    esAmmoCheck.note, esAmmoCheck.rgb = esAmmoCheckMain.getNote(self.magazine);
    esAmmoCheckMain.printNote(esAmmoCheck.note, esAmmoCheck.rgb);
end

function esAmmoCheck.onShoot(player, weapon)
    if (esAmmoCheckMain.isValid(weapon)) then
        esAmmoCheck.note, esAmmoCheck.rgb = esAmmoCheckMain.getNote(weapon);
        esAmmoCheckMain.printNote(esAmmoCheck.note, esAmmoCheck.rgb);
    end
end

Events.OnRightMouseDown.Add(esAmmoCheck.mouseDown);
Events.OnCustomUIKeyPressed.Add(esAmmoCheck.kbDow);

Events.OnRightMouseUp.Add(esAmmoCheck.mouseUp);
Events.OnCustomUIKeyReleased.Add(esAmmoCheck.kbUp);

Events.OnRenderTick.Add(esAmmoCheck.mouseShow)
Events.OnKeyKeepPressed.Add(esAmmoCheck.kbShow);

Events.OnPlayerAttackFinished.Add(esAmmoCheck.onShoot);