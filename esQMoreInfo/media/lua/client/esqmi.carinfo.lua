local esqlibSettings = require("esqlib.settings");
local esqlibPinWindow = require("esqlib.pinWindow");
local esqlibColors = require("esqlib.colors");
local esqlibNumbers = require("esqlib.numbers");

local esCarInfoPanel = {};
local esCarPanels = {};

function esCarInfoPanel.getData(vehicle)
    local vehicleData = {};
    local color = {};

    table.insert(vehicleData, { getText("Tooltip_item_Mechanic"), getText("IGUI_VehicleType_" .. vehicle:getScript():getMechanicType()), esqlibColors.getColors().active });

    if vehicle.getOffroadEfficiency then
        local offRoadEfficiency = esqlibNumbers.round((vehicle:getOffroadEfficiency() / 2) * 100);
        if offRoadEfficiency < 100 then
            color = esqlibColors.getColors().red;
        else
            color = esqlibColors.getColors().green;
        end
        table.insert(vehicleData, { getText("UI_esqmi_car_offroad"), offRoadEfficiency, color });
    end

    if vehicle.getEnginePower then
        local enginePower = (vehicle:getEnginePower() / 10);
        table.insert(vehicleData, { getText("IGUI_EnginePower"), enginePower, esqlibColors.getColors().active });
    end

    if vehicle.getMass then
        local carMass = vehicle:getMass();
        local towMass = "";
        if vehicle:getVehicleTowing() then
            local towCar = vehicle:getVehicleTowing();
            towMass = " (+" .. towCar:getMass() .. ")";
        end

        table.insert(vehicleData, { getText("IGUI_char_Weight"), carMass .. towMass, esqlibColors.getColors().active });
    end

    if vehicle.getMaxSpeed then
        local maxSpeed = tostring(vehicle:getMaxSpeed());
        table.insert(vehicleData, { getText("UI_esqmi_car_maxspeed"), maxSpeed, esqlibColors.getColors().active });
    end

    if (vehicle.getEnginePower and vehicle.getMass) then
        local enginePower = esqlibNumbers.round(vehicle:getEnginePower() / 10);
        local carMass = vehicle:getMass();
        local towingPower = esqlibNumbers.round((enginePower / carMass) * 100);
        local towPower = "";

        if vehicle:getVehicleTowing() then
            local towCar = vehicle:getVehicleTowing();
            towPower = esqlibNumbers.round((enginePower / (carMass + towCar:getMass())) * 100);
            towPower = " (" .. towPower .. ")";
        end

        table.insert(vehicleData, { getText("UI_esqmi_car_towing"), towingPower .. towPower, esqlibColors.getColors().active });
    end

    local enginePart = vehicle:getPartById("Engine");
    if enginePart and enginePart.getCondition then
        local engineCondition = "(" .. enginePart:getCondition() .. "%)";
        color = esqlibColors.getColorsPercent(enginePart:getCondition()).green;
        table.insert(vehicleData, { getText("IGUI_VehiclePart" .. enginePart:getId()), engineCondition, color });
    end

    if vehicle.getEngineQuality then
        local engineQuality = "(" .. vehicle:getEngineQuality() .. "%)";
        color = esqlibColors.getColorsPercent(vehicle:getEngineQuality()).green;
        table.insert(vehicleData, { getText("IGUI_Vehicle_EngineQuality"):gsub(": ",""), engineQuality, color });
    end

    local batteryPart = vehicle:getPartById("Battery");
    local batteryItem = batteryPart and batteryPart.getInventoryItem and batteryPart:getInventoryItem() or nil;
    if batteryPart and batteryItem and batteryPart.getCondition then
        local batteryCondition = "(" .. batteryPart:getCondition() .. "%)";
        color = esqlibColors.getColorsPercent(batteryPart:getCondition()).green;
        table.insert(vehicleData, { getText("IGUI_VehiclePart" .. batteryPart:getId()), batteryCondition, color });
    else
        color = esqlibColors.getColors().red;
        table.insert(vehicleData, { getText("IGUI_VehiclePart" .. batteryPart:getId()), getText("IGUI_Missing"), color });
    end

    if batteryPart and batteryItem and vehicle.getBatteryCharge then
        local batteryRemaining = "(" .. round(vehicle:getBatteryCharge() * 100) .. "%)";
        color = esqlibColors.getColorsPercent(vehicle:getBatteryCharge()).green;
        table.insert(vehicleData, { getText("IGUI_VehiclePart" .. batteryPart:getId()) .. " " .. getText("IGUI_invpanel_Remaining"), batteryRemaining, color });
    else
        color = esqlibColors.getColors().red;
        table.insert(vehicleData, { getText("IGUI_VehiclePart" .. batteryPart:getId()).. " " .. getText("IGUI_invpanel_Remaining"), getText("IGUI_Missing"), color });
    end

    local gasPart = vehicle:getPartById("GasTank");
    local gasItem = gasPart and gasPart.getInventoryItem and gasPart:getInventoryItem() or nil;
    if gasPart and gasItem and gasPart.getCondition then
        local pumpLoc = "<<<<";
        local gasAreaIndex = vehicle:getScript():getIndexOfAreaById("GasTank");
        if gasAreaIndex then
            local gasArea = vehicle:getScript():getArea(gasAreaIndex);
            if gasArea:getX() <= 0 then pumpLoc = ">>>>" end;
        end

        local gasCondition = "(" .. gasPart:getCondition() .. "%)";
        color = esqlibColors.getColorsPercent(gasPart:getCondition()).green;
        table.insert(vehicleData, { gasItem:getDisplayName(), gasCondition, color, pumpLoc, esqlibColors.getColors().active });
    else
        color = esqlibColors.getColors().red;
        table.insert(vehicleData, { getText("IGUI_VehiclePart" .. gasPart:getId()), getText("IGUI_Missing"), color });
    end

    if gasPart and gasItem and gasPart.getContainerContentAmount and gasPart.getContainerCapacity and gasItem.getMaxCapacity then
        local gasFuel = round(gasPart:getContainerContentAmount(), 3) .. " / " .. gasPart:getContainerCapacity();
        gasFuel = gasFuel .. " [" .. gasItem:getMaxCapacity() .. "]";
        color = esqlibColors.getColorsPercent(gasPart:getContainerContentAmount() / gasPart:getContainerCapacity()).green;

        table.insert(vehicleData, { getText("IGUI_Vehicle_ContainerCapacity_Gasoline",""):gsub(": ",""), gasFuel, color });
    else
        color = esqlibColors.getColors().red;
        table.insert(vehicleData, { getText("IGUI_VehiclePart" .. gasPart:getId()).. " " .. getText("IGUI_invpanel_Remaining"), getText("IGUI_Missing"), color });
    end

    local trunkPart = vehicle:getPartById("TruckBed") or vehicle:getPartById("TruckBedOpen");
    local trunkItem = trunkPart and trunkPart.getInventoryItem and trunkPart:getInventoryItem() or nil;
    if trunkPart and trunkItem and trunkPart.getContainerCapacity and trunkPart:getContainerCapacity() > 1 then
        local trunkCondition = "(" .. trunkPart:getCondition() .. "%)";
        color = esqlibColors.getColorsPercent(trunkPart:getCondition()).green;
        table.insert(vehicleData, { getText("IGUI_VehiclePartCattrunk"), trunkCondition, color });

        local trunkCapacity = round(trunkPart:getContainerContentAmount(), 3) .. " / " .. trunkPart:getContainerCapacity();
        trunkCapacity = trunkCapacity .. " [" .. trunkItem:getMaxCapacity() .. "]";
        color = esqlibColors.getColorsPercent(trunkPart:getContainerContentAmount() / trunkPart:getContainerCapacity()).red;
        table.insert(vehicleData, { getText("Tooltip_container_Capacity"), trunkCapacity, color });
    end

    return vehicleData;
end

function esCarInfoPanel.toggle(x, y, player)
    if esCarPanels[player:getVehicle():getId()] ~= nil
    and esCarPanels[player:getVehicle():getId()]:isVisible() then
        esCarInfoPanel.off(player);
    else
        esCarInfoPanel.on(x, y, player);
    end
end

function esCarInfoPanel.on(x, y, player)
    if esCarPanels[player:getVehicle():getId()] ~= nil then
        esCarInfoPanel.off(player)
    end
    local newPanel = esqlibPinWindow:new({
        x = x,
        y = y,
        title = getText("IGUI_VehicleName" .. player:getVehicle():getScript():getName());
        data = esCarInfoPanel.getData(player:getVehicle()),
        player = player,
        width = 400,
    });
    esCarPanels[player:getVehicle():getId()] = newPanel;
    esCarPanels[player:getVehicle():getId()]:initialise();
    esCarPanels[player:getVehicle():getId()]:addToUIManager();
    esCarPanels[player:getVehicle():getId()]:bringToTop();
end

function esCarInfoPanel.off(player)
    if esCarPanels[player:getVehicle():getId()] ~= nil then
        esCarPanels[player:getVehicle():getId()]:setVisible(false);
        esCarPanels[player:getVehicle():getId()]:removeFromUIManager();
        esCarPanels[player:getVehicle():getId()] = nil;
    end
end

function ISVehicleDashboard:onGearsClick()
    esCarInfoPanel.toggle(self:getX() + 60, self:getY(), self.character);
end

local OGCreateRender = ISVehicleDashboard.render;
function ISVehicleDashboard:render()
    OGCreateRender(self)
    if esqlibSettings.getSetting("esQMI", "esQMICarInfo") > 1 then
        if not self.gearsTex then
            local gearIcon = getTexture("media/ui/Panel_Icon_Gear.png")
            self.gearsTex = ISImage:new(60, 10, gearIcon:getWidthOrig(), gearIcon:getHeightOrig(), gearIcon);
            self.gearsTex:initialise();
            self.gearsTex:instantiate();
            self.gearsTex.onclick = self.onGearsClick;
            self.gearsTex.target = self;
            self:addChild(self.gearsTex);
        end
    else
        if self.gearsTex then
            self:removeChild(self.gearsTex);
            self.gearsTex = nil;
        end
    end
end
