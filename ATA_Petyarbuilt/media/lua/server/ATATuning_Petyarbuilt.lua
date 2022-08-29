-- print("Autotsar tunning load start")
if not ATATuningPetyarbuilt then ATATuningPetyarbuilt = {} end
if not ATATuningPetyarbuilt.Create then ATATuningPetyarbuilt.Create = {} end
if not ATATuningPetyarbuilt.Init then ATATuningPetyarbuilt.Init = {} end
if not ATATuningPetyarbuilt.InstallComplete then ATATuningPetyarbuilt.InstallComplete = {} end
if not ATATuningPetyarbuilt.UninstallComplete then ATATuningPetyarbuilt.UninstallComplete = {} end
if not ATATuningPetyarbuilt.Update then ATATuningPetyarbuilt.Update = {} end
if not ATATuningPetyarbuilt.Use then ATATuningPetyarbuilt.Use = {} end

function ATATuningPetyarbuilt.InstallComplete.ATAProtectionSide(vehicle, part)
print("ATATuningPetyarbuilt.InstallComplete.Protection")
    ATATuning.InstallComplete.CommonProtection(vehicle, part)
    local item = part:getInventoryItem();
    if not item then return; end
    local windowPart = part:getParent()
    if windowPart and windowPart:getInventoryItem() then
        if windowPart:getWindow() then
            windowPart:getWindow():setOpen(false)
            vehicle:transmitPartWindow(windowPart)
        end
    elseif item:getModData()["ataProtection"] then
        local partNames = item:getModData()["ataProtection"]:split(";");
        for k, partName in ipairs(partNames) do
            local windowPart = vehicle:getPartById(partName)
            if windowPart and windowPart:getInventoryItem() then
                if windowPart:getWindow() then
                    windowPart:getWindow():setOpen(false)
                    vehicle:transmitPartWindow(windowPart)
                end
            end
        end
    end
end


-- function ATATuningPetyarbuilt.UninstallComplete.CommonProtection(vehicle, part, item)
    -- ATATuningPetyarbuilt.UninstallComplete.CommonProtection(vehicle, part, item)
-- end
