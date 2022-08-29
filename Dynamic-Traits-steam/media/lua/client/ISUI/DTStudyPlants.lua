-- All Credit for this goes to Snake
StudyPlants = {};

StudyPlants.doMenu = function(player, context, items)
	if getSpecificPlayer(player):HasTrait("Herbalist") then
		return
	end
	local Plant = nil;
	local itemsCrafting = {};
    local c = 0;
	for i,v in ipairs(items) do
		local tempitem = v;
        if not instanceof(v, "InventoryItem") then
            tempitem = v.items[1];
        end
		if tempitem:getType() ~= nil and StudyPlantsDefs[tempitem:getType()] then
			Plant = tempitem;
		end
		itemsCrafting[c + 1] = tempitem;
		c = c + 1;
		if c > 1 then
			Plant = nil;
		end
	end
	if Plant == nil then
		return
	end
	if Plant ~= nil then
		local StudyPlantoption = context:addOption(getText("ContextMenu_StudyPlant"), items, nil, player);
		local StudyPlantSubMenu = context:getNew(context);
		context:addSubMenu(StudyPlantoption, StudyPlantSubMenu);
		local tooltip = ISInventoryPaneContextMenu.addToolTip();
		tooltip:setName(getText("ContextMenu_StudyPlant"));
		tooltip.description = getText("ContextMenu_StudyPlantTT");
		tooltip:setTexture(Plant:getTexture():getName());
		
		for i,k in pairs(items) do
			if not instanceof(k, "InventoryItem") then
				if #k.items > 2 then
					local StudyPlantSubMenuOption1 = StudyPlantSubMenu:addOption(getText("ContextMenu_One"), items, StudyPlants.StudyPlant_OnCreate, player, 1);
					StudyPlantSubMenuOption1.toolTip = tooltip;
					local StudyPlantSubMenuOption2 = StudyPlantSubMenu:addOption(getText("ContextMenu_IdentifyHalf"), items, StudyPlants.StudyPlant_OnCreate, player, 2);
					StudyPlantSubMenuOption2.toolTip = tooltip;
					local StudyPlantSubMenuOption3 = StudyPlantSubMenu:addOption(getText("ContextMenu_IdentifyAll"), items, StudyPlants.StudyPlant_OnCreate, player, 3);
					StudyPlantSubMenuOption3.toolTip = tooltip;
					break;
				else
					local StudyPlantSubMenuOption = StudyPlantSubMenu:addOption(getText("ContextMenu_One"), items, StudyPlants.StudyPlant_OnCreate, player, 3);
					StudyPlantSubMenuOption.toolTip = tooltip;
					break;
				end
			else
				local StudyPlantSubMenuOption = StudyPlantSubMenu:addOption(getText("ContextMenu_One"), items, StudyPlants.StudyPlant_OnCreate, player, 3);
				StudyPlantSubMenuOption.toolTip = tooltip;
				break;
			end
		end
	end
end

StudyPlants.StudyPlant_OnCreate = function(items, playernum, directive)
	local player = getSpecificPlayer(playernum);
	local count = 0;
	for i,k in ipairs(items) do
		if not instanceof(k, "InventoryItem") then
			if directive == 1 then
				count = math.floor((#k.items - 1) / (#k.items - 1))
			elseif directive == 2 then
				count =  math.floor((#k.items - 1) / 2)
			else
				count =  math.floor(#k.items - 1)
			end
			-- first in a list is a dummy duplicate, so ignore it.
			for i2=1,count do
				local k2 = k.items[i2+1]
				if luautils.haveToBeTransfered(player, k2) then
					ISTimedActionQueue.add(ISInventoryTransferAction:new(player, k2, k2:getContainer(), player:getInventory()))
				end
				StudyPlants.EquipPlant(k2, player);
				ISTimedActionQueue.add(StudyPlantAction:new(player, k2, 150));
			end
		else
			if luautils.haveToBeTransfered(player, k) then
				ISTimedActionQueue.add(ISInventoryTransferAction:new(player, k, k:getContainer(), player:getInventory()))
			end
			StudyPlants.EquipPlant(k, player);
			ISTimedActionQueue.add(StudyPlantAction:new(player, k, 150));
		end
	end
end

StudyPlants.EquipPlant = function(item, player)
	if not item:isEquipped() then
		-- equip the item first
		ISTimedActionQueue.add(ISEquipWeaponAction:new(player, item, 50, true, false))
	end
end

Events.OnFillInventoryObjectContextMenu.Add(StudyPlants.doMenu);