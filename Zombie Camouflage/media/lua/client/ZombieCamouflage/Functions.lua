local self = {}

self.getCoords = function(source)
    return {x = math.floor(source:getX()), y = math.floor(source:getY()), z = math.floor(source:getZ())}
end

self.getEquippedClothes = function(inventory)
    local newItemsList = {}
    local itemsList = inventory:getItems()

    for i = 0, itemsList:size() - 1 do
        if itemsList:get(i):IsClothing() and itemsList:get(i):isEquipped() then
            newItemsList[tostring(itemsList:get(i):getFullType())] = itemsList:get(i)
        end
    end

    return newItemsList
end

self.allowDetection = function(player)

	if player:getPrimaryHandItem() ~= nil then
		if player:getPrimaryHandItem():isRanged() and player:isAttackStarted() then

            return false
        end
	end

    if not player:isPlayerMoving() then
        return true
    end

    if player:isStrafing() then
        return true
    end

    if player:isSneaking() and not player:isRunning() then
        return true
    end

    return false
end

self.addKnife = function(item)
    triggerEvent("ZombieCamouflage:addKnife", item)
end

return self