local esDismantle = {};
local esqlibSettings = require("esqlib.settings");
local esqlibItems = require("esqlib.items");
local esqlibPlayers = require("esqlib.players");
local esqlibUtils = require("esqlib.utils");
local esqlibNumbers = require("esqlib.numbers");
local esDismantleAnimate = require("esqlib.animate"):new();

function esDismantle.getGunAttach(targetItem)
    local attach = {};

    if (targetItem.isContainsClip and targetItem:isContainsClip()) then
        local newMag = InventoryItemFactory.CreateItem(targetItem:getMagazineType());
        table.insert(attach, { newMag:getFullType(), 1 });
    end

    local ammoCount = targetItem:getCurrentAmmoCount();
    if (targetItem.isRoundChambered and targetItem:isRoundChambered()) then
        ammoCount = ammoCount + 1;
    end

    if (ammoCount > 0) then
        table.insert(attach, { targetItem:getAmmoType(), ammoCount });
    end

    if (targetItem.getScope and targetItem:getScope()) then
        table.insert(attach, { targetItem:getScope():getFullType(), 1 });
    end
    if (targetItem.getClip and targetItem:getClip()) then
        table.insert(attach, { targetItem:getClip():getFullType(), 1 });
    end
    if (targetItem.getSling and targetItem:getSling()) then
        table.insert(attach, { targetItem:getSling():getFullType(), 1 });
    end
    if (targetItem.getCanon and targetItem:getCanon()) then
        table.insert(attach, { targetItem:getCanon():getFullType(), 1 });
    end
    if (targetItem.getStock and targetItem:getStock()) then
        table.insert(attach, { targetItem:getStock():getFullType(), 1 });
    end
    if (targetItem.getRecoilpad and targetItem:getRecoilpad()) then
        table.insert(attach, { targetItem:getRecoilpad():getFullType(), 1 });
    end

    return attach;
end

function esDismantle.destroyItem(selectedItem, player)
    if (selectedItem.getAmmoType and selectedItem:getAmmoType()) then
        local attachments = esDismantle.getGunAttach(selectedItem)
        for k, v in pairs(attachments) do
            if (v[2] > 1) then
                for i = 1, v[2] do
                    local item = InventoryItemFactory.CreateItem(v[1]);
                    esqlibItems.createItem(item, selectedItem:getContainer(), player);
                end
                local haloText = getText("IGUI_CraftUI_CountUnits", getItemNameFromFullType(v[1]), v[2]);
                HaloTextHelper.addTextWithArrow(player, haloText, true, HaloTextHelper.getColorGreen())
            else
                esqlibItems.createItem(InventoryItemFactory.CreateItem(v[1]), selectedItem:getContainer(), player);
                local haloText = getText("IGUI_CraftUI_CountUnits", getItemNameFromFullType(v[1]), v[2]);
                HaloTextHelper.addTextWithArrow(player, haloText, true, HaloTextHelper.getColorGreen())
            end
        end
    end

    esqlibItems.destroyItem(selectedItem);
end

function esDismantle.getMetalValue(item)
    if (item:getFullType() == "Base.ScrapMetal") then return 0 end;
    if (item:isFavorite() or item:isEquipped()) then return 0 end;
    if (item:getCategory() == "Container") then return 0 end;

    if (item:getFullType() == "Base.MetalBar" or
        item:getFullType() == "Base.MetalPipe" or
        tostring(item:getCategory()) == "WeaponPart" or
        tostring(item:getDisplayCategory()) == "WeaponPart" or
        tostring(item:getCategory()) == "Tool" or
        tostring(item:getDisplayCategory()) == "Tool") then
        return 15;
    end;

    if (item.getAmmoType and item:getAmmoType()) then
        if (item:getActualWeight() < 1) then
            return item:getActualWeight() * 36;
        elseif (item:getActualWeight() < 2) then
            return item:getActualWeight() * 24;
        else
            return item:getActualWeight() * 12;
        end
    end

    if (item.getDisplayCategory and item:getDisplayCategory() == "VehicleMaintenance") then
        local partsType = string.lower(item:getFullType());
        if not (partsType:contains("window") or partsType:contains("windshield")) then
            if (item:getActualWeight() < 10) then
                return item:getActualWeight() * 5;
            elseif (item:getActualWeight() < 20) then
                return item:getActualWeight() * 2;
            else
                return item:getActualWeight();
            end
        end
    end

    if (item.getDisplayCategory and item:getDisplayCategory() == "Ammo") then return 0 end;
    if (item.getMetalValue and item:getMetalValue()) then return item:getMetalValue() end;
    return 0;
end

function esDismantle.onMenuGatherMetal(stack, player)
    local char = esqlibPlayers.getPlayerObject(player);

    for i = 0, stack:size() - 1 do
        local item = stack:get(i);
        ISInventoryPaneContextMenu.transferIfNeeded(char, item)
        local timeExecute = (esDismantle.getMetalValue(item) / 5) * 10;
        if (timeExecute > 90) then timeExecute = 90 end;
        local animate = esDismantleAnimate:new(char, item, timeExecute);
        ISTimedActionQueue.add(animate);
    end
end

function esDismantleAnimate:doPerform()
    local metalValue = esDismantle.getMetalValue(self.item);
    local metalPerks = self.character:getPerkLevel(Perks.MetalWelding);
    local metalSheets = metalValue >= 20 and self.item:getWeight() >= 10;
    local Zrandom, haloText;

    while (metalValue > 0) do
        metalValue = metalValue - 5;
        if (esqlibNumbers.roll((metalPerks * 3) + 10)) then
            Zrandom = ZombRand(1, 4);
            self.character:getXp():AddXP(Perks.MetalWelding, Zrandom);
            haloText = getText("IGUI_CraftUI_CountUnits", getItemNameFromFullType("Base.ScrapMetal"), Zrandom);
            HaloTextHelper.addTextWithArrow(self.character, haloText, true, HaloTextHelper.getColorGreen())
            for z = 1, Zrandom do
                esqlibItems.createItem(
                        InventoryItemFactory.CreateItem("Base.ScrapMetal"),
                        self.item:getContainer(),
                        self.character
                );
            end

            if (metalSheets) then
                metalSheets = false;
                Zrandom = ZombRand(1, 4);
                haloText = getText("IGUI_CraftUI_CountUnits", getItemNameFromFullType("Base.SmallSheetMetal"), Zrandom);
                HaloTextHelper.addTextWithArrow(self.character, haloText, true, HaloTextHelper.getColorGreen())
                for z = 1, Zrandom do
                    esqlibItems.createItem(
                            InventoryItemFactory.CreateItem("Base.SmallSheetMetal"),
                            self.item:getContainer(),
                            self.character
                    );
                end
            end

        end
    end

    esDismantle.destroyItem(self.item, self.character);
    triggerEvent("esDoSort", self.character);
end

local function filterMetal(itemStack)
    local metals = LuaList:new();
    local selectedItem = {};
    for i = 0, itemStack:size() - 1 do
        local testItem = itemStack:get(i);
        if (esDismantle.getMetalValue(testItem) > 0) then
            metals:add(testItem);
            selectedItem[testItem:getFullType()] = testItem;
        end
    end
    return metals, selectedItem;
end

local function doMenu(player, context, items)
    if esqlibSettings.getSetting("esQTW", "esQTWMetals") > 1 then
        local metals, selectedItem = filterMetal(esqlibItems.getStackFromSelection(items));
        if (metals:size() > 0) then
            local recipeName = getText("UI_esQLIB_make") .. " " .. getItemNameFromFullType("Base.ScrapMetal") .. " " ..
                    getText("UI_esQLIB_from") .. " " .. metals:get(0):getDisplayName() .. " (" .. metals:size() .. ")";
            if (esqlibUtils.sizeOf(selectedItem) > 1) then
                recipeName = getText("UI_esQLIB_make") .. " " .. getItemNameFromFullType("Base.ScrapMetal") ..
                        " " .. getText("UI_esQLIB_from") .. " " .. getText("UI_esQLIB_selected") ..
                        " (" .. metals:size() .. ")";
            end

            context:addOption(recipeName, metals, esDismantle.onMenuGatherMetal, player);
        end


    end
    return context;
end

Events.OnFillInventoryObjectContextMenu.Add(doMenu);