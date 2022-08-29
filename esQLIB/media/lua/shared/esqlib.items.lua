local playerLib =  require("esqlib.players");
local esCommonPlug = {};

function esCommonPlug.destroyItem(item, player)
    local char = player or getPlayer();
    if item:getWorldItem() ~= nil then
        item:getWorldItem():getSquare():transmitRemoveItemFromSquare(item:getWorldItem());
        item:getWorldItem():removeFromWorld();
        item:getWorldItem():removeFromSquare();
        item:getWorldItem():setSquare(nil);
        getPlayerLoot(playerLib.getPlayerNumber(char)):refreshBackpacks();
        return;
    end

    item:getContainer():Remove(item);
end

function esCommonPlug.drainItem(player, items, amount)
    local char = player or getPlayer();
    char = playerLib.getPlayerObject(char);
    for t = 0, items:size() - 1 do
        if not amount then break end
        local item = items:get(t);
        ISInventoryPaneContextMenu.transferIfNeeded(char, item)

        while (amount > 0) do
            if (amount > 0) then
                if (item:getDrainableUsesInt() == 1) then
                    item:setUsedDelta(0);
                    item:Use();
                    amount = amount - 1;
                    break ;
                end
                item:Use();
                amount = amount - 1;
            else
                break ;
            end
        end
    end

end

function esCommonPlug.destroyItems(items, player)
    for _, item in ipairs(items) do
        esCommonPlug.destroyItem(item, player)
    end
end

function esCommonPlug.createItem(item, container, player)
    if container == nil then container = item:getContainer(); end
    if container:getType() == "floor" then
        playerLib.getPlayerObject(player):getCurrentSquare():AddWorldInventoryItem(item, 0, 0, 0);
    end
    container:AddItem(item);
end

function esCommonPlug.createItems(items, container, player)
    for _, item in ipairs(items) do
        esCommonPlug.createItem(item, container, player)
    end
end

function esCommonPlug.getItemCount(fullType, containers)
    local found = 0;
    for _, container in ipairs(containers) do
        container:getCountTypeRecurse(fullType);
        found = found + 1;
    end

    return found;
end

function esCommonPlug.getItemDelta(item)
    return item:getUsedDelta();
end

function esCommonPlug.getItemsDelta(itemStack)
    local totalDelta = 0;
    for i = 0, itemStack:size() - 1 do
        totalDelta = totalDelta + esCommonPlug.getItemDelta(itemStack:get(i));
    end

    return totalDelta;
end

function esCommonPlug.getItemUses(item)
    return item:getDrainableUsesInt();
end

function esCommonPlug.getItemsUses(itemStack)
    local totalDelta = 0;
    for i = 0, itemStack:size() - 1 do
        totalDelta = totalDelta + esCommonPlug.getItemUses(itemStack:get(i));
    end

    return totalDelta;
end

function esCommonPlug.getItemsStack(fullType, containers)
    if (containers.size == nil) then
        return containers:FindAll(fullType);
    end

    local itemStack = LuaList:new();
    for i = 0, containers:size() - 1 do
        itemStack:addAll(containers:get(i):FindAll(fullType));
    end
    return itemStack;
end

function esCommonPlug.getPlayerContainers(player)
    local char = playerLib.getPlayerNumber(player);
    local containerList = ArrayList.new();
    for i,v in ipairs(getPlayerInventory(char).inventoryPane.inventoryPage.backpacks) do
        containerList:add(v.inventory);
    end
    return containerList;
end

function esCommonPlug.getLootContainers(player)
    local char = playerLib.getPlayerNumber(player);
    local containerList = ArrayList.new();
    for i,v in ipairs(getPlayerLoot(char).inventoryPane.inventoryPage.backpacks) do
        containerList:add(v.inventory);
    end
    return containerList;
end

function esCommonPlug.getAllContainers(player)
    local containerList = esCommonPlug.getPlayerContainers(player);
    containerList:addAll(esCommonPlug.getLootContainers(player));
    return containerList;
end

function esCommonPlug.doItemMove(stack, container, player)
    local char = playerLib.getPlayerObject(player);
    if (stack.size) then
        for i = 0, stack:size() - 1 do
            ISTimedActionQueue.add(ISInventoryTransferAction:new(char, stack:get(i), stack:get(i):getContainer(), container));
        end
    else
        ISTimedActionQueue.add(ISInventoryTransferAction:new(char, stack, stack:getContainer(), container));
    end
end

function esCommonPlug.getStackFromSelection(selection)
    local newItemStack = LuaList:new();

    for v, k in pairs(selection) do
        if instanceof(k, "InventoryItem") then
            newItemStack:add(k);
        else
            for x = 2, #k.items do
                if instanceof(k.items[x], "InventoryItem") then
                    newItemStack:add(k.items[x])
                end
            end
        end
    end

    return newItemStack;
end

function esCommonPlug.getContainerItem(container)
    if (container and container.getContainingItem and container:getContainingItem()) then
        return container:getContainingItem()
    end
end

function esCommonPlug.haveOrSimilar(player, fullType)
    local char = player or getPlayer();
    char = playerLib.getPlayerObject(char);

    if char:getInventory():getCountTypeRecurse(fullType) > 0 then return fullType end;

    local itemObj = getScriptManager():FindItem(fullType);
    if itemObj then
        if itemObj.getTags then
            for i = 0, itemObj:getTags():size() - 1 do

                local scriptItems = getScriptManager():getItemsTag(itemObj:getTags():get(i))
                for s = 0, scriptItems:size() - 1 do
                    if char:getInventory():getCountTypeRecurse(scriptItems:get(s):getFullName()) > 0 then
                        return scriptItems:get(s):getFullName();
                    end;
                end

            end
        end
    end

    return nil;
end

return esCommonPlug;