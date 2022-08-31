--***********************************************************
--**                       BitBraven                       **
--***********************************************************

local OnShowRadialMenuOutside = ISVehicleMenu.showRadialMenuOutside
local OnFillMenuOutsideVehicle = ISVehicleMenu.FillMenuOutsideVehicle

local requiredMaterials = { blowtorchFuel = 20, EngineParts = 10, SheetMetal = 5, ScrapMetal = 10, ElectronicsScrap = 10 }

--    /************************ ISVehicleMenu ************************/

-- Don't add door options to the outside radial menu if the vehicle is a bicycle
ISVehicleMenu.showRadialMenuOutside = function(playerObj)
	
	if playerObj:getVehicle() then return end

	OnShowRadialMenuOutside(playerObj)

	local vehicle = playerObj:getNearVehicle()
	if not vehicle then return end

	if not BravensWreckFixMain.isWreck(vehicle) then return end

	local playerIndex = playerObj:getPlayerNum()
	local menu = getPlayerRadialMenu(playerIndex)

	if not(isDebugEnabled() or isAdmin()) then

		local inventory = playerObj:getInventory()
		local vehicleMechanicType = vehicle:getScript():getMechanicType()

		local requirements = getRequirements(player, vehicleMechanicType, inventory)
		if requirements.isRecipeKnown == false then return end
		if requirements.Mechanics < 5 then return end
		if requirements.MetalWelding < 3 then return end
		if requirements.Electricity < 1 then return end
		if requirements.hasWeldingMask == false then return end
		if requirements.hasBlowtorch == false then return end
		if requirements.blowtorchFuel < requiredMaterials.blowtorchFuel then return end
		if requirements.EnginePartsCount < requiredMaterials.EngineParts then return end
		if requirements.SheetMetalCount < requiredMaterials.SheetMetal then return end
		if requirements.ScrapMetalCount < requiredMaterials.ScrapMetal then return end
		if requirements.ElectronicsScrapCount < requiredMaterials.ElectronicsScrap then return end
	end

	menu:addSlice(getText("ContextMenu_Repair_Wreck"), getTexture("profession_engineer"), AttemptFixWreck, playerObj, vehicle)
end

ISVehicleMenu.FillMenuOutsideVehicle = function(player, context, vehicle, test)

	if vehicle:isEngineStarted()  then return end
	if vehicle:isEngineRunning()  then return end
	
	local playerObj = getSpecificPlayer(player)
	local inventory = playerObj:getInventory()

	-- Engine installation
	if (playerObj:getPerkLevel(Perks.Mechanics) >= 7 or isDebugEnabled() or isAdmin()) then

		-- Engine removal
		local engine = vehicle:getPartById("Engine")
		
		if (engine and engine:getCategory() ~= "nodisplay") then

			local removeOption = context:addOption(getText("ContextMenu_Remove_Engine"), playerObj, AttemptRemoveEngine, vehicle);
			local removalTooltip = ISWorldObjectContextMenu.addToolTip();
			removeOption.toolTip = removalTooltip;
			removeOption.iconTexture = getTexture("profession_engineer")
			removalTooltip:setName(getText("ContextMenu_Remove_Engine"));
	
			if engine:getCondition() > 5 then
				removalTooltip.description = "<LINE> <RGB:1,1,1>" .. getText("Tooltip_RemoveEngineInfo") .. ""
			else
				removalTooltip.description = "<LINE> <RGB:1,0,0>" .. getText("Tooltip_EngineUnusable") .. ""
				removeOption.notAvailable = true;
			end
	
			local engineArray = playerObj:getInventory():getItemsFromType("AEEngine");
	
			if (engine:getCondition() == 0 and engineArray:size() ~= 0) then
	
				local installOption = context:addOption(getText("ContextMenu_Install_Engine"));
				installOption.iconTexture = getTexture("profession_engineer")
	
				local insertEngineContext = ISContextMenu:getNew(context);
				context:addSubMenu(installOption, insertEngineContext);
	
				for i = 0, engineArray:size()-1 do
					local engineItem = engineArray:get(i);
					insertEngineContext:addOption(engineItem:getName() .. " (" .. (engineItem:getModData().horsePower / 10) .. " HP" .. ") " , playerObj, AttemptInstallEngine, engineItem, vehicle);
				end
			end
		end
	end

	-- Wreck Repair
	if BravensWreckFixMain.isWreck(vehicle) then

		local vehicleMechanicType = vehicle:getScript():getMechanicType()
		local repairOption = context:addOption(getText("ContextMenu_Repair_Wreck"), playerObj, AttemptFixWreck, vehicle);
		local tooltip = ISWorldObjectContextMenu.addToolTip();
		repairOption.iconTexture = getTexture("profession_engineer")

		if not(isDebugEnabled() or isAdmin()) then

			local requirements = getRequirements(player, vehicleMechanicType, inventory)
			
			-- Prevent the player fom repairing a wreck if they haven't read the required magazine
			if requirements.isRecipeKnown == false then
		
				tooltip:setName(getText("ContextMenu_Repair_Wreck"));
				tooltip.description = "<LINE> <RGB:1,0,0>" .. getText("Tooltip_NeedsWreckMagazine") .. getItemNameFromFullType("Braven.AutoEngineerMagVol" .. vehicleMechanicType .. "") .. ""
				repairOption.toolTip = tooltip;
				repairOption.notAvailable = true;
			else
	
				tooltip:setName(getText("ContextMenu_Repair_Wreck"));
				tooltip.description = getText("Tooltip_WreckFixInfo") .. " <LINE> <LINE> ";
				
				-- Perform skill requirements
				if (requirements.Mechanics < 5 or requirements.MetalWelding < 3 or requirements.Electricity < 1) then

					if requirements.Mechanics >= 5 then
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,1,1> " ..  getText("IGUI_perks_Mechanics") .. " " .. " " .. requirements.Mechanics .. "/" .. 5;
					else
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,0,0> " .. getText("IGUI_perks_Mechanics") .. " " .. " " .. requirements.Mechanics .. "/" .. 5;
						repairOption.notAvailable = true;
					end

					if requirements.MetalWelding >= 3 then
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,1,1> " ..  getText("IGUI_perks_MetalWelding") .. " " .. " " .. requirements.MetalWelding .. "/" .. 3;
					else
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,0,0> " .. getText("IGUI_perks_MetalWelding") .. " " .. " " .. requirements.MetalWelding .. "/" .. 3;
						repairOption.notAvailable = true;
					end

					if requirements.Electricity >= 1 then
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,1,1> " ..  getText("IGUI_perks_Electricity") .. " " .. " " .. requirements.Electricity .. "/" .. 1;
					else
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,0,0> " .. getText("IGUI_perks_Electricity") .. " " .. " " .. requirements.Electricity .. "/" .. 1;
						repairOption.notAvailable = true;
					end
				else -- Perform material requirements

					if requirements.EnginePartsCount >= requiredMaterials.EngineParts then
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,1,1> " .. getItemNameFromFullType("Base.EngineParts") .. " " .. " " .. requirements.EnginePartsCount .. "/" .. requiredMaterials.EngineParts;
					else
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,0,0> " .. getItemNameFromFullType("Base.EngineParts") .. " " .. " " .. requirements.EnginePartsCount .. "/" .. requiredMaterials.EngineParts;
						repairOption.notAvailable = true;
					end
	
					if requirements.SheetMetalCount >= requiredMaterials.SheetMetal then
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,1,1> " .. getItemNameFromFullType("Base.SheetMetal") .. " " .. " " .. requirements.SheetMetalCount .. "/" .. requiredMaterials.SheetMetal;
					else
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,0,0> " .. getItemNameFromFullType("Base.SheetMetal") .. " " .. " " .. requirements.SheetMetalCount .. "/" .. requiredMaterials.SheetMetal;
						repairOption.notAvailable = true;
					end
	
					if requirements.ScrapMetalCount >= requiredMaterials.ScrapMetal then
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,1,1> " .. getItemNameFromFullType("Base.ScrapMetal") .. " " .. " " .. requirements.ScrapMetalCount .. "/" .. requiredMaterials.ScrapMetal;
					else
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,0,0> " .. getItemNameFromFullType("Base.ScrapMetal") .. " " .. " " .. requirements.ScrapMetalCount .. "/" .. requiredMaterials.ScrapMetal;
						repairOption.notAvailable = true;
					end
	
					if requirements.ElectronicsScrapCount >= requiredMaterials.ElectronicsScrap then
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,1,1> " .. getItemNameFromFullType("Base.ElectronicsScrap") .. " " .. " " .. requirements.ElectronicsScrapCount .. "/" .. requiredMaterials.ElectronicsScrap;
					else
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,0,0> " .. getItemNameFromFullType("Base.ElectronicsScrap") .. " " .. " " .. requirements.ElectronicsScrapCount .. "/" .. requiredMaterials.ElectronicsScrap;
						repairOption.notAvailable = true;
					end
	
					if requirements.hasWeldingMask == true then
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,1,1> " .. getItemNameFromFullType("Base.WeldingMask") .. " 1/1";
					else
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,0,0> " .. getItemNameFromFullType("Base.WeldingMask") .. " 0/1";
						repairOption.notAvailable = true;
					end
	
					if requirements.hasBlowtorch == true then
				
						if requirements.blowtorchFuel >= requiredMaterials.blowtorchFuel then
							tooltip.description = tooltip.description .. " <LINE> <RGB:1,1,1> " .. getItemNameFromFullType("Base.BlowTorch") .. " " .. getText("ContextMenu_Uses") .. " " .. requirements.blowtorchFuel .. "/" .. requiredMaterials.blowtorchFuel;
						else
							tooltip.description = tooltip.description .. " <LINE> <RGB:1,0,0> " .. getItemNameFromFullType("Base.BlowTorch") .. " " .. getText("ContextMenu_Uses") .. " " .. requirements.blowtorchFuel .. "/" .. requiredMaterials.blowtorchFuel;
							repairOption.notAvailable = true;
						end
					else
						tooltip.description = tooltip.description .. " <LINE> <RGB:1,0,0> " .. getItemNameFromFullType("Base.BlowTorch") .. " 0/1";
						repairOption.notAvailable = true;
					end
				end
			end
		else -- Bypass if in cheat mode
			tooltip:setName(getText("ContextMenu_Repair_Wreck"));
			tooltip.description = getText("Tooltip_WreckFixInfo") .. " <LINE> <LINE> ";
			tooltip.description = tooltip.description .. " <LINE> <RGB:1,1,1> " .. getItemNameFromFullType("Base.EngineParts") .. " " .. " " .. requiredMaterials.EngineParts .. "/" .. requiredMaterials.EngineParts;
			tooltip.description = tooltip.description .. " <LINE> <RGB:1,1,1> " .. getItemNameFromFullType("Base.SheetMetal") .. " " .. " " .. requiredMaterials.SheetMetal .. "/" .. requiredMaterials.SheetMetal;
			tooltip.description = tooltip.description .. " <LINE> <RGB:1,1,1> " .. getItemNameFromFullType("Base.ScrapMetal") .. " " .. " " .. requiredMaterials.ScrapMetal .. "/" .. requiredMaterials.ScrapMetal;
			tooltip.description = tooltip.description .. " <LINE> <RGB:1,1,1> " .. getItemNameFromFullType("Base.ElectronicsScrap") .. " " .. " " .. requiredMaterials.ElectronicsScrap .. "/" .. requiredMaterials.ElectronicsScrap;
			tooltip.description = tooltip.description .. " <LINE> <RGB:1,1,1> " .. getItemNameFromFullType("Base.BlowTorch") .. " " .. getText("ContextMenu_Uses") .. " " .. requiredMaterials.blowtorchFuel .. "/" .. requiredMaterials.blowtorchFuel;
		end

		repairOption.toolTip = tooltip;
	end

	OnFillMenuOutsideVehicle(player, context, vehicle, test)
end

function AttemptFixWreck(playerObj, vehicle)
	ISTimedActionQueue.add(ISPathFindAction:pathToVehicleAdjacent(playerObj, vehicle));
	ISTimedActionQueue.add(ISAETimeAction:FixWreck(playerObj, vehicle, 5000));
end

function AttemptInstallEngine(playerObj, engineItem, vehicle)
	ISTimedActionQueue.add(ISPathFindAction:pathToVehicleAdjacent(playerObj, vehicle));
	ISTimedActionQueue.add(ISAETimeAction:InstallEngine(playerObj, engineItem, vehicle, 1000));
end

function AttemptRemoveEngine(playerObj, vehicle)
	ISTimedActionQueue.add(ISPathFindAction:pathToVehicleAdjacent(playerObj, vehicle));
	ISTimedActionQueue.add(ISAETimeAction:RemoveEngine(playerObj, vehicle, 1000));
end

function predicateWeldingMask(item)
	return item:hasTag("WeldingMask") or item:getType() == "WeldingMask"
end

function getRequirements(player, vehicleMechanicType, inventory)

	local playerObj = getSpecificPlayer(player)
	local args = {}

	if not(playerObj:isRecipeKnown("RepairWreckType" .. vehicleMechanicType .. "")) then
		args.isRecipeKnown = false
	else
		args.isRecipeKnown = true
	end

	args.Mechanics = playerObj:getPerkLevel(Perks.Mechanics)
	args.MetalWelding = playerObj:getPerkLevel(Perks.MetalWelding)
	args.Electricity = playerObj:getPerkLevel(Perks.Electricity)

	args.EnginePartsCount = ISBuildMenu.countMaterial(player, "Base.EngineParts")
	args.SheetMetalCount = ISBuildMenu.countMaterial(player, "Base.SheetMetal")
	args.ScrapMetalCount = ISBuildMenu.countMaterial(player, "Base.ScrapMetal")
	args.ElectronicsScrapCount = ISBuildMenu.countMaterial(player, "Base.ElectronicsScrap")

	if inventory:containsEvalRecurse(predicateWeldingMask) then
		args.hasWeldingMask = true
	else
		args.hasWeldingMask = false
	end

	local blowTorch = ISBlacksmithMenu.getBlowTorchWithMostUses(inventory);

	if blowTorch then
		args.hasBlowtorch = true
		args.blowtorchFuel = blowTorch:getDrainableUsesInt();
	else
		args.hasBlowtorch = false
	end

	return args
end

BravensWreckFixMain = {}

BravensWreckFixMain.isWreck = function(vehicle)

	local vehicleIsWreck = false
	local vehicleName

	if not BravensUtils.isNumber(vehicle) then
		vehicleName = vehicle:getScriptName()
	else
		vehicleName = getVehicleById(vehicle):getScriptName()
	end

	if not vehicleName then return vehicleIsWreck end

	if string.contains(vehicleName, "Smashed") then
		vehicleIsWreck = true
	end

	return vehicleIsWreck
end

BravensWreckFixMain.FixWreck = function(playerObj, vehicle)

	local inventory = playerObj:getInventory()

	-- Remove materials needed to fix the wreck
	if not(isDebugEnabled() or isAdmin()) then

		for i = 1, requiredMaterials.EngineParts, 1 do 
			local item = inventory:getItemFromType("Base.EngineParts")
			if item then inventory:Remove(item) end
		end
	
		for i = 1, requiredMaterials.SheetMetal, 1 do 
			local item = inventory:getItemFromType("Base.SheetMetal")
			if item then inventory:Remove(item) end
		end
	
		for i = 1, requiredMaterials.ScrapMetal, 1 do 
			local item = inventory:getItemFromType("Base.ScrapMetal")
			if item then inventory:Remove(item) end
		end
	
		for i = 1, requiredMaterials.ElectronicsScrap, 1 do 
			local item = inventory:getItemFromType("Base.ElectronicsScrap")
			if item then inventory:Remove(item) end
		end
	
		local blowTorch = ISBlacksmithMenu.getBlowTorchWithMostUses(inventory);
	
		if blowTorch then -- Todo: Fix this not working at all!
			blowTorch:setUses(blowTorch:getUses() - requiredMaterials.blowtorchFuel)
		end
	end

	AEClient.SpawnVehicle(vehicle)
	BravensUtils.TirePlayer(playerObj, 0.3)
end