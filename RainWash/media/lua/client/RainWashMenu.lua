RainWash = RainWash or {}

function RainWash.doMenu(player, context, worldObjects)
    local character = getSpecificPlayer(player)
    if not character:isOutside() then return end

    local rainIntensity = getClimateManager():getRainIntensity()
    if rainIntensity <= 0 then return end

    --local square
    --for _, v in ipairs(worldObjects) do
    --    square = v:getSquare()
    --    break
    --end
    --player = square:getPlayer()
    --if player == nil or player ~= character then
    --    return
    --end

    if not RainWashYourself.needsWash(character) then return end

    -- Soaps
    local characterInv = character:getInventory()
    local soapList = {}
    local barList = characterInv:getItemsFromType("Soap2", true)
    for i = 0, barList:size() - 1 do
        local item = barList:get(i)
        if item:getRemainingUses() > 0 then
            table.insert(soapList, item)
        end
    end
    local bottleList = characterInv:getItemsFromType("CleaningLiquid2", true)
    for i = 0, bottleList:size() - 1 do
        local item = bottleList:get(i)
        if item:getRemainingUses() > 0 then
            table.insert(soapList, item)
        end
    end

    -- Option
    local option = context:addOptionOnTop(getText("IGUI_RainWash_Option"), character, RainWash.onWashYourself, soapList)
    local tooltip = ISWorldObjectContextMenu.addToolTip()

    if rainIntensity < 0.5 then
        option.notAvailable = true
        tooltip.description = getText("IGUI_RainWash_Option_Tooltip_RainLow")
    else
        tooltip.description = getText("ContextMenu_WaterSource") .. ": " .. getText("ContextMenu_NaturalWaterSource") .. " <LINE> "

        local soapRequired = ISWashYourself.GetRequiredSoap(character)
        local soapRemaining = ISWashClothing.GetSoapRemaining(soapList)
        tooltip.description = tooltip.description .. getText("IGUI_Washing_Soap") .. ": " .. tostring(math.min(soapRemaining, soapRequired)) .. " / " .. tostring(soapRequired)
        if soapRemaining < soapRequired then
            tooltip.description = tooltip.description .. " <LINE> " .. getText("IGUI_Washing_WithoutSoap")
        end

        local visual = character:getHumanVisual()
        local bodyBlood = 0
        local bodyDirt = 0
        for i = 0, BloodBodyPartType.MAX:index() - 1 do
            local part = BloodBodyPartType.FromIndex(i)
            bodyBlood = bodyBlood + visual:getBlood(part)
            bodyDirt = bodyDirt + visual:getDirt(part)
        end
        if bodyBlood > 0 then
            tooltip.description = tooltip.description .. " <LINE> " .. getText("Tooltip_clothing_bloody") .. ": " .. math.ceil(bodyBlood / BloodBodyPartType.MAX:index() * 100) .. " / 100"
        end
        if bodyDirt > 0 then
            tooltip.description = tooltip.description .. " <LINE> " .. getText("Tooltip_clothing_dirty") .. ": " .. math.ceil(bodyDirt / BloodBodyPartType.MAX:index() * 100) .. " / 100"
        end
    end
    option.toolTip = tooltip
end

function RainWash.onWashYourself(character, soapList)
    local items = {}
    local wornItems = character:getWornItems()
    for i = 0, wornItems:size() - 1 do
        local item = wornItems:get(i):getItem()
        if (item:IsClothing() and not item:isHidden() or instanceof(item, "InventoryContainer"))
                and not item:getAttachmentsProvided() then
            table.insert(items, item)
            ISTimedActionQueue.add(ISUnequipAction:new(character, item, 50))
        end
    end

    ISTimedActionQueue.add(RainWashYourself:new(character, soapList))

    for _, item in pairs(items) do
        ISTimedActionQueue.add(ISWearClothing:new(character, item, 50))
    end
end

Events.OnFillWorldObjectContextMenu.Add(RainWash.doMenu)