-- OUTDOORSMAN TRAIT
function outdoorsmanTrait(player)
    --print("DT Logger: running outdoorsmanTrait function");
    local climateManager = getClimateManager();
    local rainIntensity = climateManager:getRainIntensity();
    local snowIntensity = climateManager:getSnowIntensity();
    local windIntensity = climateManager:getWindIntensity();
    local fogIntensity = climateManager:getFogIntensity();
    local isThunderstorming = climateManager:getIsThunderStorming();
    if player:isOutside() and player:getVehicle() == nil then -- THE PLAYER IS OUTSIDE AND NOT IN A VEHICLE SO IS GETTING THE OUTDOORSMAN TRAIT
        -- RAIN WEATHER
        if rainIntensity > 0.90 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 10;
            if player:HasTrait("Pluviophile") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 10;
            end
        elseif rainIntensity > 0.80 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 9;
            if player:HasTrait("Pluviophile") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 9;
            end
        elseif rainIntensity > 0.70 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 8;
            if player:HasTrait("Pluviophile") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 8;
            end
        elseif rainIntensity > 0.60 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 7;
            if player:HasTrait("Pluviophile") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 7;
            end
        elseif rainIntensity > 0.50 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 6;
            if player:HasTrait("Pluviophile") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 6;
            end
        elseif rainIntensity > 0.40 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 5;
            if player:HasTrait("Pluviophile") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 5;
            end
        elseif rainIntensity > 0.30 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 4;
            if player:HasTrait("Pluviophile") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 4;
            end
        elseif rainIntensity > 0.20 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 3;
            if player:HasTrait("Pluviophile") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 3;
            end
        elseif rainIntensity > 0.10 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 2;
            if player:HasTrait("Pluviophile") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 2;
            end
        elseif rainIntensity > 0 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 1;
            if player:HasTrait("Pluviophile") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 1;
            end
        end

        -- IS THUNDERSTORMING
        if isThunderstorming then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 10;
        end

        -- SNOW WEATHER
        if snowIntensity > 0.90 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 10;
            if player:HasTrait("Hiker") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 10;
            end
        elseif snowIntensity > 0.80 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 9;
            if player:HasTrait("Hiker") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 9;
            end
        elseif snowIntensity > 0.70 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 8;
            if player:HasTrait("Hiker") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 8;
            end
        elseif snowIntensity > 0.60 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 7;
            if player:HasTrait("Hiker") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 7;
            end
        elseif snowIntensity > 0.50 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 6;
            if player:HasTrait("Hiker") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 6;
            end
        elseif snowIntensity > 0.40 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 5;
            if player:HasTrait("Hiker") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 5;
            end
        elseif snowIntensity > 0.30 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 4;
            if player:HasTrait("Hiker") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 4;
            end
        elseif snowIntensity > 0.20 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 3;
            if player:HasTrait("Hiker") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 3;
            end
        elseif snowIntensity > 0.10 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 2;
            if player:HasTrait("Hiker") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 2;
            end
        elseif snowIntensity > 0 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 1;
            if player:HasTrait("Hiker") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 1;
            end
        end

        -- WINDY WEATHER
        if windIntensity > 0.80 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 5;
            if player:HasTrait("Hiker") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 5;
            end
        elseif windIntensity > 0.60 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 4;
            if player:HasTrait("Hiker") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter +4;
            end
        elseif windIntensity > 0.40 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 3;
            if player:HasTrait("Hiker") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 3;
            end
        elseif windIntensity > 0.20 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 2;
            if player:HasTrait("Hiker") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 2;
            end
        elseif windIntensity > 0 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 1;
            if player:HasTrait("Hiker") then
                player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 1;
            end
        end

        -- FOG
        if fogIntensity > 0.80 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 5;
        elseif fogIntensity > 0.60 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 4;
        elseif fogIntensity > 0.40 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 3;
        elseif fogIntensity > 0.20 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 2;
        elseif fogIntensity > 0 then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 1;
        end

        if player:HasTrait("Formerscout") then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 1;
        end

        -- EXTRA POINTS WHEN BEING OUTSIDE AND HAVING ONE OF THE NEXT PROFESSIONS
        if player:getDescriptor():getProfession() == "parkranger" then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 3;
        elseif player:getDescriptor():getProfession() == "farmer" or player:getDescriptor():getProfession() == "fisherman" then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 2;
        elseif player:getDescriptor():getProfession() == "lumberjack" then
            player:getModData().DTOutdoorsCounter = player:getModData().DTOutdoorsCounter + 1;
        end
    end
    -- CHECK IF THE PLAYER ACHIEVED THE NECESSARY TO WIN OUTDOORSMAN
    if player:getModData().DTOutdoorsCounter >= 500000 then
        player:getTraits():add("Outdoorsman");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_outdoorsman"), true, HaloTextHelper.getColorGreen());
    end
    --print("DT Logger: DTOutdoorsCounter value is " .. player:getModData().DTOutdoorsCounter);
end

-- CATS EYES TRAIT
function catsEyes(player)
    --print("DT Logger: running catsEyes function");
    local gameTime = getGameTime();
    local currentHour = gameTime:getHour();
    if not player:isAsleep() then
        if currentHour == 22 or currentHour == 23 or currentHour == 4 or currentHour == 5 then
            if player:isOutside() then
                if player:getDescriptor():getProfession() == "securityguard" then
                    player:getModData().DTCatsEyesCounter = player:getModData().DTCatsEyesCounter + 20;
                elseif player:getDescriptor():getProfession() == "burglar" then
                    player:getModData().DTCatsEyesCounter = player:getModData().DTCatsEyesCounter + 18.5;
                elseif player:getDescriptor():getProfession() == "fireofficer" or player:getDescriptor():getProfession() == "policeofficer" then
                    player:getModData().DTCatsEyesCounter = player:getModData().DTCatsEyesCounter + 16.5;
                else
                    player:getModData().DTCatsEyesCounter = player:getModData().DTCatsEyesCounter + 15;
                end
            else
                if player:getDescriptor():getProfession() == "securityguard" then
                    player:getModData().DTCatsEyesCounter = player:getModData().DTCatsEyesCounter + 15;
                elseif player:getDescriptor():getProfession() == "burglar" then
                    player:getModData().DTCatsEyesCounter = player:getModData().DTCatsEyesCounter + 13.5;
                elseif player:getDescriptor():getProfession() == "fireofficer" or player:getDescriptor():getProfession() == "policeofficer" then
                    player:getModData().DTCatsEyesCounter = player:getModData().DTCatsEyesCounter + 11.5;
                else
                    player:getModData().DTCatsEyesCounter = player:getModData().DTCatsEyesCounter + 10;
                end
            end
        elseif currentHour == 0 or currentHour == 1 or currentHour == 2 or currentHour == 3 then
            if player:isOutside() then
                if player:getDescriptor():getProfession() == "securityguard" then
                    player:getModData().DTCatsEyesCounter = player:getModData().DTCatsEyesCounter + 30;
                elseif player:getDescriptor():getProfession() == "burglar" then
                    player:getModData().DTCatsEyesCounter = player:getModData().DTCatsEyesCounter + 28.5;
                elseif player:getDescriptor():getProfession() == "fireofficer" or player:getDescriptor():getProfession() == "policeofficer" then
                    player:getModData().DTCatsEyesCounter = player:getModData().DTCatsEyesCounter + 26.5;
                else
                    player:getModData().DTCatsEyesCounter = player:getModData().DTCatsEyesCounter + 25;
                end
            else
                if player:getDescriptor():getProfession() == "securityguard" then
                    player:getModData().DTCatsEyesCounter = player:getModData().DTCatsEyesCounter + 25;
                elseif player:getDescriptor():getProfession() == "burglar" then
                    player:getModData().DTCatsEyesCounter = player:getModData().DTCatsEyesCounter + 23.5;
                elseif player:getDescriptor():getProfession() == "fireofficer" or player:getDescriptor():getProfession() == "policeofficer" then
                    player:getModData().DTCatsEyesCounter = player:getModData().DTCatsEyesCounter + 21.5;
                else
                    player:getModData().DTCatsEyesCounter = player:getModData().DTCatsEyesCounter + 20;
                end
            end
        end
    end
    -- CHECK IF THE PLAYER ACHIEVED THE NECESSARY TO WIN CATS EYES
    if player:getModData().DTCatsEyesCounter >= 150000 then
        player:getTraits():add("NightVision");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_NightVision"), true, HaloTextHelper.getColorGreen());
    end
    --print("DT Logger: DTCatsEyesCounter value is " .. player:getModData().DTCatsEyesCounter);
end

-- RAIN TRAITS
function rainTraits(player)
    --print("DT Logger: running rainTraits function");
    local climateManager = getClimateManager();
    local rainIntensity = climateManager:getRainIntensity();

    if player:isOutside() and player:getVehicle() == nil and rainIntensity > 0 then -- THE PLAYER NEEDS TO BE OUTSIDE, NOT IN A VEHICLE AND IT MUST BE RAINING
        
        -- Intensity 10
        if rainIntensity > 0.90 then
            if player:HasTrait("Pluviophile") then
                pluviophileTrait(player, 0.033, 3.33, 0.033);
            elseif player:HasTrait("Pluviophobia") then
                pluviophobiaTrait(player, 0.033, 3.33, 0.033);
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 2.8;
            else
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 2.8;
            end
        -- Intensity 9    
        elseif rainIntensity > 0.80 then
            if player:HasTrait("Pluviophile") then
                pluviophileTrait(player, 0.031, 3.1, 0.031);
            elseif player:HasTrait("Pluviophobia") then
                pluviophobiaTrait(player, 0.031, 3.1, 0.031);
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 2.6;
            else
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 2.6;
            end
        -- Intensity 8    
        elseif rainIntensity > 0.70 then
            if player:HasTrait("Pluviophile") then
                pluviophileTrait(player, 0.029, 2.9, 0.029);
            elseif player:HasTrait("Pluviophobia") then
                pluviophobiaTrait(player, 0.029, 2.9, 0.029);
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 2.4;
            else
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 2.4;
            end
        -- Intensity 7    
        elseif rainIntensity > 0.60 then
            if player:HasTrait("Pluviophile") then
                pluviophileTrait(player, 0.027, 2.7, 0.027);
            elseif player:HasTrait("Pluviophobia") then
                pluviophobiaTrait(player, 0.027, 2.7, 0.027);
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 2.2;
            else
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 2.2;
            end
        -- Intensity 6    
        elseif rainIntensity > 0.50 then
            if player:HasTrait("Pluviophile") then
                pluviophileTrait(player, 0.025, 2.5, 0.025);
            elseif player:HasTrait("Pluviophobia") then
                pluviophobiaTrait(player, 0.025, 2.5, 0.025);
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 2;
            else
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 2;
            end
        -- Intensity 5    
        elseif rainIntensity > 0.40 then
            if player:HasTrait("Pluviophile") then
                pluviophileTrait(player, 0.019, 1.9, 0.019);
            elseif player:HasTrait("Pluviophobia") then
                pluviophobiaTrait(player, 0.019, 1.9, 0.019);
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 1.8;
            else
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 1.8;
            end
        -- Intensity 4    
        elseif rainIntensity > 0.30 then
            if player:HasTrait("Pluviophile") then
                pluviophileTrait(player, 0.017, 1.7, 0.017);
            elseif player:HasTrait("Pluviophobia") then
                pluviophobiaTrait(player, 0.017, 1.7, 0.017);
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 1.6;
            else
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 1.6;
            end
        -- Intensity 3    
        elseif rainIntensity > 0.20 then
            if player:HasTrait("Pluviophile") then
                pluviophileTrait(player, 0.015, 1.5, 0.015);
            elseif player:HasTrait("Pluviophobia") then
                pluviophobiaTrait(player, 0.015, 1.5, 0.015);
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 1.4;
            else
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 1.4;
            end
        -- Intensity 2    
        elseif rainIntensity > 0.10 then
            if player:HasTrait("Pluviophile") then
                pluviophileTrait(player, 0.013, 1.3, 0.013);
            elseif player:HasTrait("Pluviophobia") then
                pluviophobiaTrait(player, 0.013, 1.3, 0.013);
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 1.2;
            else
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 1.2;
            end
        -- Intensity 1
        elseif rainIntensity > 0 then
            if player:HasTrait("Pluviophile") then
                pluviophileTrait(player, 0.011, 1.11, 0.011);
            elseif player:HasTrait("Pluviophobia") then
                pluviophobiaTrait(player, 0.011, 1.11, 0.011);
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 1;
            else
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 1;
            end
        end

        -- IF THE PLAYER HAVEN'T OBTAINED PLUVIOPHILE, THEN SOME EXTRA POINTS ARE ADDED IF "Outdoorsman", "Former Scout" AND/OR "Hiker" ARE PRESENT
        if not player:HasTrait("Pluviophile") then
            if player:HasTrait("Outdoorsman") then
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 3;
            end
            if player:HasTrait("Formerscout") then
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 3;
            end
            if player:HasTrait("Hiker") then
                player:getModData().DTRainTraits = player:getModData().DTRainTraits + 3;
            end
        end
    end

    -- CHECK IF THE PLAYER ACHIEVED THE REQUIREMENTS TO REMOVE/GAIN THE TRAITS
    if player:getModData().DTRainTraits >= 0 and player:HasTrait("Pluviophobia") then
        player:getTraits():remove("Pluviophobia");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Pluviophobia"), false, HaloTextHelper.getColorGreen());
    elseif player:getModData().DTRainTraits >= 40000 and not player:HasTrait("Pluviophile") then
        player:getTraits():add("Pluviophile");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Pluviophile"), true, HaloTextHelper.getColorGreen());
    end
    --print("DT Logger: DTRainTraits value is " .. player:getModData().DTRainTraits);
end

function pluviophileTrait(player, stress, unhappyness, anger)
    --print("DT Logger: running pluviophileTrait function");
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

    if umbrellaPrimary or umbrellaSecondary then
        if wearingPoncho == true then
            -- Very high protection.
        else
            -- High protection.
            DTdecreaseStress(player, stress / 3);
            DTdecreaseStressFromCigarettes(player, 1);
            DTdecreaseUnhappyness(player, unhappyness / 3);
            DTdecreaseAnger(player, anger / 3);
        end
    else
        if wearingPoncho == true then
            -- Medium protection. 
            DTdecreaseStress(player, stress / 2);
            DTdecreaseStressFromCigarettes(player, 1);
            DTdecreaseUnhappyness(player, unhappyness / 2);
            DTdecreaseAnger(player, anger / 2);
        else
            -- Low protection.
            DTdecreaseStress(player, stress);
            DTdecreaseStressFromCigarettes(player, 1);
            DTdecreaseUnhappyness(player, unhappyness);
            DTdecreaseAnger(player, anger);
        end
    end
end

function pluviophobiaTrait(player, stress, unhappyness, anger)
    --print("DT Logger: running pluviophobiaTrait function");
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

    if umbrellaPrimary or umbrellaSecondary then
        if wearingPoncho == true then
            -- Very high protection.
        else
            -- High protection.
            DTincreaseStress(player, 0, stress / 3);
            DTincreaseUnhappyness(player, 0, unhappyness / 3);
            DTincreaseAnger(player, 0, anger / 3);
        end
    else
        if wearingPoncho == true then
            -- Medium protection. 
            DTincreaseStress(player, 0, stress / 2);
            DTincreaseUnhappyness(player, 0, unhappyness / 2);
            DTincreaseAnger(player, 0, anger / 2);
        else
            -- Low protection.
            DTincreaseStress(player, 0, stress);
            DTincreaseUnhappyness(player, 0, unhappyness);
            DTincreaseAnger(player, 0, anger)
        end
    end
end

-- CLAUSTROPHOBIC AND AGORAPHOBIC TRAITS
function agoraphobicClaustrophobicTraits(player)
    --print("DT Logger: running agoraphobicClaustrophobicTraits function");
    if player:isOutside() and player:HasTrait("Agoraphobic") then
        player:getModData().DTagoraClaustroCounter = player:getModData().DTagoraClaustroCounter + 1;
    elseif not player:isOutside() and player:HasTrait("Claustophobic") then
        player:getModData().DTagoraClaustroCounter = player:getModData().DTagoraClaustroCounter + 1;
    end
    -- CHECK IF THE PLAYER ACHIEVED THE NECESSARY TO REMOVE CLAUSTROPHOBIC OR AGORAPHOBIC TRAITS
    if player:getModData().DTagoraClaustroCounter >= 175000 then
        if player:HasTrait("Agoraphobic") then
            player:getTraits():remove("Agoraphobic");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_agoraphobic"), false, HaloTextHelper.getColorGreen());
        elseif player:HasTrait("Claustophobic") then
            player:getTraits():remove("Claustophobic");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_claustro"), false, HaloTextHelper.getColorGreen());
        end
    end
    --print("DT Logger: DTagoraClaustroCounter value is " .. player:getModData().DTagoraClaustroCounter);
end
function luckyUnluckyEffectsForAgoraClaustroTraits(player)
    --print("DT Logger: running luckyUnluckyEffectsForAgoraClaustroTraits function");
    if ZombRand(15) == 0 then
        player:getModData().DTagoraClaustroCounter = player:getModData().DTagoraClaustroCounter + DTluckyUnluckyModifier(player, 10);
    end
end

-- SMOKER TRAIT
function smokerTrait(player)
    --print("DT Logger: running smokerTrait function");
    local currentTimeSinceLastSmoke = player:getTimeSinceLastSmoke();
    if currentTimeSinceLastSmoke == 10 then
        player:getModData().DTdaysSinceLastSmoke = player:getModData().DTdaysSinceLastSmoke + 1;
        if ZombRand(25) == 0 then
            player:getModData().DTdaysSinceLastSmoke = player:getModData().DTdaysSinceLastSmoke + DTluckyUnluckyModifier(player, 7);
        end
    else
        player:getModData().DTdaysSinceLastSmoke = player:getModData().DTdaysSinceLastSmoke - 5;
        if ZombRand(25) == 0 then
            player:getModData().DTdaysSinceLastSmoke = player:getModData().DTdaysSinceLastSmoke + DTluckyUnluckyModifier(player, 7);
        end
    end
    -- CHECK THE VALUE TO KEEP IT INTO THE LIMITS
    if player:getModData().DTdaysSinceLastSmoke < 0 then
        player:getModData().DTdaysSinceLastSmoke = 0;
    end
    -- CHECK IF THE PLAYER ACHIEVED THE REQUIREMENTS TO REMOVE SMOKER
    if player:getModData().DTdaysSinceLastSmoke >= 1080 then
        player:setTimeSinceLastSmoke(0);
        player:getStats():setStressFromCigarettes(0);
        player:getTraits():remove("Smoker");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Smoker"), false, HaloTextHelper.getColorGreen());
    end
    --print("DT Logger: DTdaysSinceLastSmoke value is " .. player:getModData().DTdaysSinceLastSmoke);
end

function smokerCough(player)
    --print("DT Logger: running smokerCough function");
    local currentTimeSinceLastSmoke = player:getTimeSinceLastSmoke();
    local currentEndurance = player:getStats():getEndurance();
    if (currentEndurance < 0.5 or currentTimeSinceLastSmoke < 2) and ZombRand(10) == 0 then
        player:Say(getText("IGUI_PlayerText_Cough"));   
        player:playEmote("dtsmokercough");   
        addSound(player, player:getX(), player:getY(), player:getZ(), 10, 10);
    end
end

-- ALCOHOLIC TRAIT
function alcoholicTrait(player)
    --print("DT Logger: running alcoholicTrait function");
    local currentDrunkenness = player:getStats():getDrunkenness();
    -- Drunkenness is greater than 0 which means the player recently had a drink.
    if currentDrunkenness > 0 then
        player:getModData().DThoursSinceLastDrink = player:getModData().DThoursSinceLastDrink - 72;
        player:getModData().DTthresholdToObtainAlcoholic = player:getModData().DTthresholdToObtainAlcoholic + 72;
        if ZombRand(25) == 0 then
            player:getModData().DThoursSinceLastDrink = player:getModData().DThoursSinceLastDrink + DTluckyUnluckyModifier(player, 20);
            player:getModData().DTthresholdToObtainAlcoholic = player:getModData().DTthresholdToObtainAlcoholic + DTluckyUnluckyModifier(player, 12);
        end
    -- Drunkenness is equal to 0 which means the player recently haven't had a drink.
    else
        player:getModData().DThoursSinceLastDrink = player:getModData().DThoursSinceLastDrink + 1;
        player:getModData().DTthresholdToObtainAlcoholic = player:getModData().DTthresholdToObtainAlcoholic - 1;
        if ZombRand(25) == 0 then
            player:getModData().DThoursSinceLastDrink = player:getModData().DThoursSinceLastDrink + DTluckyUnluckyModifier(player, 7);
            player:getModData().DTthresholdToObtainAlcoholic = player:getModData().DTthresholdToObtainAlcoholic - DTluckyUnluckyModifier(player, 7);
        end
        -- If the player has the Alcoholic trait and haven't drinked for the latest 48 hours the effects starts.
        if player:HasTrait("Alcoholic") and player:getModData().DThoursSinceLastDrink >= 48 then
            -- ANGER
            DTincreaseAnger(player, ZombRand(3), 0.30);
            -- STRESS
            DTincreaseStress(player, ZombRand(3), 0.30);
            -- UNHAPPYNESS
            DTincreaseUnhappyness(player, ZombRand(5), 20);
            -- FATIGUE
            DTincreaseFatigue(player, ZombRand(3), 0.05);
            -- HEADACHE
            DTapplyPain(player, ZombRand(5), "Head", ZombRand(75));
            -- POISON
            DTincreasePoison(player, ZombRand(7), ZombRand(40));
        end
    end
    -- CHECK BOTH VALUES TO KEEP THEM INTO THE LIMITS
    if player:getModData().DThoursSinceLastDrink > 720 then
        player:getModData().DThoursSinceLastDrink = 720;
    elseif player:getModData().DThoursSinceLastDrink < 0 then
        player:getModData().DThoursSinceLastDrink = 0;
    end
    if player:getModData().DTthresholdToObtainAlcoholic > 750 then
        player:getModData().DTthresholdToObtainAlcoholic = 750;
    elseif player:getModData().DTthresholdToObtainAlcoholic < 0 then
        player:getModData().DTthresholdToObtainAlcoholic = 0;
    end
    -- CHECK IF THE PLAYER ACHIEVED THE REQUIREMENTS TO REMOVE/GAIN ALCOHOLIC
    if player:getModData().DThoursSinceLastDrink >= 720 and player:HasTrait("Alcoholic") then
        player:getTraits():remove("Alcoholic");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Alcoholic"), false, HaloTextHelper.getColorGreen());
        player:getModData().DTthresholdToObtainAlcoholic = 0;
    end
    if player:getModData().DTthresholdToObtainAlcoholic >= 750 and not player:HasTrait("Alcoholic") then
        player:getTraits():add("Alcoholic");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Alcoholic"), true, HaloTextHelper.getColorRed());
    end
    --print("DT Logger: DThoursSinceLastDrink value is " .. player:getModData().DThoursSinceLastDrink);
    --print("DT Logger: DTthresholdToObtainAlcoholic value is " .. player:getModData().DTthresholdToObtainAlcoholic);
end

-- ANOREXY TRAIT
function anorexyTrait(player)
    --print("DT Logger: running anorexyTrait function");
    local currentWeight = player:getNutrition():getWeight();
    if currentWeight < 65 then
        -- Based on the Unhapyness the rate to obtain Anorexy is lower/higher.
        if player:getMoodles():getMoodleLevel(MoodleType.Unhappy) == 1 then
            player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy - 2;
        elseif player:getMoodles():getMoodleLevel(MoodleType.Unhappy) == 2 then
            player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy - 3;
        elseif player:getMoodles():getMoodleLevel(MoodleType.Unhappy) == 3 then
            player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy - 4;
        elseif player:getMoodles():getMoodleLevel(MoodleType.Unhappy) == 4 then
            player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy - 5;
        else
            player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy - 1;
        end
        -- Based on the Stress the rate to obtain Anorexy is lower/higher.
        if player:getMoodles():getMoodleLevel(MoodleType.Stress) == 1 then
            player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy - 2;
        elseif player:getMoodles():getMoodleLevel(MoodleType.Stress) == 2 then
            player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy - 3;
        elseif player:getMoodles():getMoodleLevel(MoodleType.Stress) == 3 then
            player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy - 4;
        elseif player:getMoodles():getMoodleLevel(MoodleType.Stress) == 4 then
            player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy - 5;
        else
            player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy - 1;
        end
        -- Being Lucky or Unlucky may increase/decrease the counter to obtain/remove Anorexy.
        if ZombRand(10) == 0 then
            player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy + DTluckyUnluckyModifier(player, 7);
        end
    else
        if currentWeight >= 65 and currentWeight < 75 then
            if player:getMoodles():getMoodleLevel(MoodleType.Unhappy) == 0 and player:getMoodles():getMoodleLevel(MoodleType.Stress) == 0 then
                player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy + 2;
            else
                player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy + 1;
            end
        elseif currentWeight >= 75 then
            if player:getMoodles():getMoodleLevel(MoodleType.Unhappy) == 0 and player:getMoodles():getMoodleLevel(MoodleType.Stress) == 0 then
                player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy + 3;
            else
                player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy + 2;
            end
        end
        -- Being Lucky or Unlucky may increase/decrease the counter to obtain/remove Anorexy.
        if ZombRand(10) == 0 then
            player:getModData().DTthresholdToObtainLoseAnorexy = player:getModData().DTthresholdToObtainLoseAnorexy + DTluckyUnluckyModifier(player, 7);
        end
    end
    -- CHECK THE VALUE TO KEEP IT INTO THE LIMITS
    if player:getModData().DTthresholdToObtainLoseAnorexy < -1080 then
        player:getModData().DTthresholdToObtainLoseAnorexy = -1080;
    elseif player:getModData().DTthresholdToObtainLoseAnorexy > 1080 then
        player:getModData().DTthresholdToObtainLoseAnorexy = 1080;
    end 
    -- CHECK IF THE PLAYER ACHIEVED THE REQUIREMENTS TO OBTAIN OR REMOVE ANOREXY TRAIT
    if player:getModData().DTthresholdToObtainLoseAnorexy >= 720 and player:HasTrait("Anorexy") then
        player:getTraits():remove("Anorexy");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Anorexy"), false, HaloTextHelper.getColorGreen());
    elseif player:getModData().DTthresholdToObtainLoseAnorexy <= -720 and not player:HasTrait("Anorexy") then
        player:getTraits():add("Anorexy");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Anorexy"), true, HaloTextHelper.getColorRed());
    end
    --print("DT Logger: DTthresholdToObtainLoseAnorexy value is " .. player:getModData().DTthresholdToObtainLoseAnorexy);
end

function anorexyTraitHungerSymptoms(player)
    --print("DT Logger: running anorexyTraitHungerSymptoms function");
    if player:getMoodles():getMoodleLevel(MoodleType.FoodEaten) == 1 then
        -- UNHAPPYNESS
        DTincreaseUnhappyness(player, 0, 0.5);
        -- STRESS
        DTincreaseStress(player, 0, 0.05);
        -- POISON
        DTincreasePoison(player, ZombRand(8), ZombRand(10));
    elseif player:getMoodles():getMoodleLevel(MoodleType.FoodEaten) == 2 then
        -- UNHAPPYNESS
        DTincreaseUnhappyness(player, 0, 0.6);
        -- STRESS
        DTincreaseStress(player, 0, 0.06);
        -- POISON
        DTincreasePoison(player, ZombRand(7), ZombRand(15));
    elseif player:getMoodles():getMoodleLevel(MoodleType.FoodEaten) == 3 then
        -- UNHAPPYNESS
        DTincreaseUnhappyness(player, 0, 0.7);
        -- STRESS
        DTincreaseStress(player, 0, 0.07);
        -- POISON
        DTincreasePoison(player, ZombRand(6), ZombRand(20));
    elseif player:getMoodles():getMoodleLevel(MoodleType.FoodEaten) == 4 then
        -- UNHAPPYNESS
        DTincreaseUnhappyness(player, 0, 0.8);
        -- STRESS
        DTincreaseStress(player, 0, 0.08);
        -- POISON
        DTincreasePoison(player, ZombRand(5), ZombRand(25));
    end
end

function anorexyTraitPassiveSymptoms(player)
    --print("DT Logger: running anorexyTraitPassiveSymptoms function");
    if not player:isAsleep() then
        -- While the player is not sleeping the stats are negatively affected every hour.
        -- FATIGUE
        DTincreaseFatigue(player, ZombRand(3), 0.10);
        -- ENDURANCE
        DTdecreaseEndurance(player, ZombRand(3), 0.10);
        local currentWeight = player:getNutrition():getWeight();
        -- IF ANOREXY AND MORE THAN 65KG's
        if currentWeight >= 65 then
            -- UNHAPPYNESS
            DTincreaseUnhappyness(player, ZombRand(5), 10);
            -- STRESS
            DTincreaseStress(player, ZombRand(3), 0.15);
        end
    end
end

-- PHYSICALLY ACTIVE AND SEDENTARY TRAITS
function activeSedentaryTraits(player)
    --print("DT Logger: running activeSedentaryTraits function");
    player:getModData().DTObtainLoseActiveSedentary = player:getModData().DTObtainLoseActiveSedentary - 0.5;
    if player:getModData().DTObtainLoseActiveSedentary < -70000 then
        player:getModData().DTObtainLoseActiveSedentary = -70000;
    end
    -- CHECK IF THE PLAYER ACHIEVED THE NECESSARY TO OBTAIN/REMOVE THE TRAITS
    if player:getModData().DTObtainLoseActiveSedentary <= -20000 and not player:HasTrait("Sedentary") then
        player:getTraits():add("Sedentary");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Sedentary"), true, HaloTextHelper.getColorRed());
    elseif player:getModData().DTObtainLoseActiveSedentary > -20000 and player:getModData().DTObtainLoseActiveSedentary < 40000 and 
    (player:HasTrait("PhysicallyActive") or player:HasTrait("Sedentary")) then
        if player:HasTrait("PhysicallyActive") then
            player:getTraits():remove("PhysicallyActive");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_PhysicallyActive"), false, HaloTextHelper.getColorRed());
        elseif player:HasTrait("Sedentary") then
            player:getTraits():remove("Sedentary");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Sedentary"), false, HaloTextHelper.getColorGreen());
        end
    elseif player:getModData().DTObtainLoseActiveSedentary >= 40000 and not player:HasTrait("PhysicallyActive") then
        player:getTraits():add("PhysicallyActive");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_PhysicallyActive"), true, HaloTextHelper.getColorGreen());
    end
    --print("DT Logger: DTObtainLoseActiveSedentary value is " .. player:getModData().DTObtainLoseActiveSedentary);
end