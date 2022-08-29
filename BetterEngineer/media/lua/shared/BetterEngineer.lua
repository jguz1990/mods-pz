require('NPCs/MainCreationMethods');

local function initBetterEngi()
	local originaltraits = TraitFactory.getTraits();
	for traitCount = 1, 500 do
		if (originaltraits[traitCount] ~= nil) then originaltraits[traitCount].cost = originaltraits[traitCount].cost * 2; end
	end
	
	local EngiToolbox = TraitFactory.addTrait("EngiToolbox", "Electrical Toolbox", 1, "Spawn with a toolbox with electrical wire, electrical scrap, screwdriver, TV remote, and glue.", false, false)
	EngiToolbox:getFreeRecipes():add("Make Remote Controller V1");
    EngiToolbox:getFreeRecipes():add("Make Remote Controller V2");
    EngiToolbox:getFreeRecipes():add("Make Remote Controller V3");
	
end

local function initBetterEngiToolBox(_player)
    local p = _player;
    local inv = p:getInventory();
	local gotfreepencil = false;

	if p:HasTrait("EngiToolbox") then
        local item = inv:AddItem("Base.Toolbox");
		iteminv = item:getInventory();
		iteminv:AddItem("Radio.ElectricWire");
		iteminv:AddItem("Base.ElectronicsScrap");
		iteminv:AddItem("Base.Screwdriver");
		iteminv:AddItem("Base.Remote");
		iteminv:AddItem("Base.Glue");
    end
	
end

Events.OnGameBoot.Add(initBetterEngi);
Events.OnNewGame.Add(initBetterEngiToolBox);