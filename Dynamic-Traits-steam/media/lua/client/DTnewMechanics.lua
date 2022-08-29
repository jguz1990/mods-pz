-- Grant XP multiplier if the regularity is maxed
function exerciseMultiplierIfMaxRegularity(player)
	--print("DT Logger: running exerciseMultiplierIfMaxRegularity function");
	--print("function exerciseMultiplierIfMaxRegularity is called");
	player:getXp():addXpMultiplier(Perks.Fitness, 1, player:getPerkLevel(Perks.Fitness), 10); -- Grant an XP multiplier to avoid lua errors.
	player:getXp():getMultiplierMap():remove(Perks.Fitness); -- Remove the current XP multiplier
    player:getXp():addXpMultiplier(Perks.Strength, 1, player:getPerkLevel(Perks.Strength), 10); -- Grant an XP multiplier to avoid lua errors.
	player:getXp():getMultiplierMap():remove(Perks.Strength); -- Remove the current XP multiplier
	if player:getFitness():getRegularity("squats") == 100 then
		player:getXp():addXpMultiplier(Perks.Fitness, 3, player:getPerkLevel(Perks.Fitness), 10);
	end
	if player:getFitness():getRegularity("pushups") == 100 then
		player:getXp():addXpMultiplier(Perks.Strength, 3, player:getPerkLevel(Perks.Strength), 10);
	end
	if player:getFitness():getRegularity("situp") == 100 then
		player:getXp():addXpMultiplier(Perks.Fitness, 3, player:getPerkLevel(Perks.Fitness), 10);
	end
	if player:getFitness():getRegularity("burpees") == 100 then
		player:getXp():addXpMultiplier(Perks.Fitness, 3, player:getPerkLevel(Perks.Fitness), 10);
		player:getXp():addXpMultiplier(Perks.Strength, 3, player:getPerkLevel(Perks.Strength), 10);
	end
	if player:getFitness():getRegularity("barbellcurl") == 100 then
		player:getXp():addXpMultiplier(Perks.Strength, 3, player:getPerkLevel(Perks.Strength), 10);
	end
	if player:getFitness():getRegularity("dumbbellpress") == 100 then
		player:getXp():addXpMultiplier(Perks.Strength, 3, player:getPerkLevel(Perks.Strength), 10);
	end
	if player:getFitness():getRegularity("bicepscurl") == 100 then
		player:getXp():addXpMultiplier(Perks.Strength, 3, player:getPerkLevel(Perks.Strength), 10);
	end
	-- If Fitness is at Lv10 remove the granted multiplier
	if player:getPerkLevel(Perks.Fitness) == 10 then
		player:getXp():addXpMultiplier(Perks.Fitness, 1, player:getPerkLevel(Perks.Fitness), 10); -- Grant an XP multiplier to avoid lua errors.
		player:getXp():getMultiplierMap():remove(Perks.Fitness); -- Remove the current XP multiplier
	end
	-- If Strength is at Lv10 remove the granted multiplier
	if player:getPerkLevel(Perks.Strength) == 10 then
		player:getXp():addXpMultiplier(Perks.Strength, 1, player:getPerkLevel(Perks.Strength), 10); -- Grant an XP multiplier to avoid lua errors.
		player:getXp():getMultiplierMap():remove(Perks.Strength); -- Remove the current XP multiplier
	end
end

-- OVERDOSE FUNCTIONS
DTOverdose = {}

-- Snake's modpack energy drink & tragos overdose
DTOverdose.energyDrinkOverdose = function(player)
	--print("DT Logger: running DTOverdose.energyDrinkOverdose");
	if player:HasTrait("IronGut") then
		player:getModData().DTOverdose = player:getModData().DTOverdose + (35 * 0.7);
	elseif player:HasTrait("WeakStomach") then
		player:getModData().DTOverdose = player:getModData().DTOverdose + (35 * 1.3);
	else
		player:getModData().DTOverdose = player:getModData().DTOverdose + 35;
	end
	if player:getModData().DTOverdose > 100 then
		player:getModData().DTOverdose = 100;
	end
	--print("DT Logger: DTOverdose value is " .. player:getModData().DTOverdose);
end

DTOverdose.maximumEnergyDrinkOverdose = function(player)
	--print("DT Logger: running DTOverdose.energyDrinkOverdose");
	if player:HasTrait("IronGut") then
		player:getModData().DTOverdose = player:getModData().DTOverdose + (70 * 0.7);
	elseif player:HasTrait("WeakStomach") then
		player:getModData().DTOverdose = player:getModData().DTOverdose + (70 * 1.3);
	else
		player:getModData().DTOverdose = player:getModData().DTOverdose + 70;
	end
	if player:getModData().DTOverdose > 100 then
		player:getModData().DTOverdose = 100;
	end
	--print("DT Logger: DTOverdose value is " .. player:getModData().DTOverdose);
end

DTOverdose.tragosOverdose = function(player)
	--print("DT Logger: running DTOverdose.tragosOverdose");
	if player:HasTrait("IronGut") then
		player:getModData().DTOverdose = player:getModData().DTOverdose + (12 * 0.7);
	elseif player:HasTrait("WeakStomach") then
		player:getModData().DTOverdose = player:getModData().DTOverdose + (12 * 1.3);
	else
		player:getModData().DTOverdose = player:getModData().DTOverdose + 12;
	end
	if player:getModData().DTOverdose > 100 then
		player:getModData().DTOverdose = 100;
	end
	--print("DT Logger: DTOverdose value is " .. player:getModData().DTOverdose);
end

DTOverdose.overdoseDecrease = function(player)
	--print("DT Logger: running pillsOverdoseDecrease function");
	if player:HasTrait("IronGut") then
		player:getModData().DTOverdose = player:getModData().DTOverdose + (-4 * 1.3);
	elseif player:HasTrait("WeakStomach") then
		player:getModData().DTOverdose = player:getModData().DTOverdose + (-4 * 0.7);
	else
		player:getModData().DTOverdose = player:getModData().DTOverdose + -4;
	end
	if player:getModData().DTOverdose < 0 then
		player:getModData().DTOverdose = 0;
	end
	--print("DT Logger: DTOverdose value is " .. player:getModData().DTOverdose)
end

DTOverdose.overdoseMoodleLv2 = function(player)
	--print("DT Logger: running overdoseMoodleLv2 function");
	if player:getModData().DTOverdose > 50 then
		DTincreaseStress(player, ZombRand(7), 0.10);
		DTincreaseWetness(player, ZombRand(7), 10);
	end
end

DTOverdose.overdoseMoodleLv3 = function(player)
	--print("DT Logger: running overdoseMoodleLv3 function");
	if player:getModData().DTOverdose > 70 then
		DTincreaseFatigue(player, ZombRand(5), 0.07);
	end
end

DTOverdose.overdoseMoodleLv4 = function(player)
	--print("DT Logger: running overdoseMoodleLv4 function");
	if player:getModData().DTOverdose > 85 then
		DTincreasePoison(player, ZombRand(5), (ZombRand(player:getModData().DTOverdose) / 2));
	end
end

function increaseClothingWetnessUnderRain(player)
    --print("DT Logger: running increaseClothingWetnessUnderRain function");
    local climateManager = getClimateManager();
    local rainIntensity = climateManager:getRainIntensity();
    local windIntensity = climateManager:getWindIntensity();
    local wornItems = player:getWornItems();
    local wearingPoncho = false;
    local primaryItem = player:getPrimaryHandItem();
	local secondaryItem = player:getSecondaryHandItem();
	local umbrellaPrimary = primaryItem and primaryItem:isProtectFromRainWhileEquipped();
	local umbrellaSecondary = secondaryItem and secondaryItem:isProtectFromRainWhileEquipped();
        
    -- FIRST FOR
    for i = 0, wornItems:size() - 1 do
        local item = wornItems:get(i):getItem();
        if string.find(item:getClothingItemName(), "Poncho") then
            wearingPoncho = true;
        end
    end
    if rainIntensity > 0 and player:isOutside() and player:getVehicle() == nil then
        -- SECOND FOR
        for i = 0, wornItems:size() - 1 do
            local item = wornItems:get(i):getItem();
            if item:IsClothing() then
                -- Wearing umbrella
                if umbrellaPrimary or umbrellaSecondary then
                    if wearingPoncho == true then
                        -- Very high protection against rain.
                        if string.find(item:getClothingItemName(), "Poncho") then
                            DTincreaseItemWetness(item, rainIntensity, windIntensity, 1);
                        else
                            DTincreaseItemWetness(item, rainIntensity, windIntensity, 0);
                        end
                    else
                        -- Medium protection against rain, increase wetness.
                        DTincreaseItemWetness(item, rainIntensity, windIntensity, 0.2);
                    end
                -- Don't wearing umbrella
                else
                    if wearingPoncho == true then
                        -- Little protection against rain, slightly increase wetness.
                        -- The Poncho covers most of the wetness for clothes under it.
                        if string.find(item:getClothingItemName(), "Poncho") then
                            DTincreaseItemWetness(item, rainIntensity, windIntensity, 3);
                        else
                            DTincreaseItemWetness(item, rainIntensity, windIntensity, 0.3);
                        end
                    else
                        -- No protection against rain, greatly increase wetness.
                        DTincreaseItemWetness(item, rainIntensity, windIntensity, 3);
                    end
                end
                --print("El item " .. item:getName() .. " tiene " .. item:getWetness() .. " de humedad");
                --print("El item " .. item:getName() .. " tiene " .. item:getWaterResistance() .. " de impermeabilidad");
            end
        end
    end
end

function increaseBodyWetnessByItemWetness(player)
    --print("DT Logger: running increaseBodyWetnessByItemWetness function");
    local wornItems = player:getWornItems();
    local wetnessByClothes = 0;
    for i = 0, wornItems:size() - 1 do
        local item = wornItems:get(i):getItem();
        if item:IsClothing() then
            wetnessByClothes = wetnessByClothes + item:getWetness();
        end
    end
    DTincreaseWetness(player, 0, wetnessByClothes / 100);
end