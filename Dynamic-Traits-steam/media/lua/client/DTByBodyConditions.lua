-- Traits gains based on body conditions are going to be handled in this function.
function traitsGainsByBodyConditions(player)
    --print("DT Logger: running traitsGainsByBodyConditions function");
    --------------- TRAITS APPLIED/REMOVED FOR "EMACIATED" ---------------
    if player:HasTrait("Emaciated") then
        --
    --------------- TRAITS APPLIED/REMOVED FOR "VERY UNDERWEIGHT" ---------------
    elseif player:HasTrait("Very Underweight") then
        -- Removing Traits
        if player:HasTrait("Flimsy") then
            player:getTraits():remove("Flimsy");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Flimsy"), false, HaloTextHelper.getColorGreen());
            player:LevelPerk(Perks.Strength);
            player:getXp():setXPToLevel(Perks.Strength, player:getPerkLevel(Perks.Strength));
        end
        if player:HasTrait("Athletic") then
            if player:HasTrait("Asthmatic") then
                player:getTraits():remove("Asthmatic");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Asthmatic"), false, HaloTextHelper.getColorGreen());
            end
        end
        -- Gaining Traits 
        if not player:HasTrait("Frail") then
            player:getTraits():add("Frail");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Frail"), true, HaloTextHelper.getColorRed());
            player:LoseLevel(Perks.Strength);
            player:getXp():setXPToLevel(Perks.Strength, player:getPerkLevel(Perks.Strength));
            player:LoseLevel(Perks.Strength);
            player:getXp():setXPToLevel(Perks.Strength, player:getPerkLevel(Perks.Strength));
        end
        if not player:HasTrait("Thinskinned") then
            player:getTraits():add("Thinskinned");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_ThinSkinned"), true, HaloTextHelper.getColorRed());
        end
        if not player:HasTrait("ProneToIllness") then
            player:getTraits():add("ProneToIllness");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_pronetoillness"), true, HaloTextHelper.getColorRed());
        end
        if not player:HasTrait("SlowHealer") then
            player:getTraits():add("SlowHealer");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_SlowHealer"), true, HaloTextHelper.getColorRed());
        end
        if not player:HasTrait("Athletic") then
            if not player:HasTrait("Asthmatic") then
                player:getTraits():add("Asthmatic");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Asthmatic"), true, HaloTextHelper.getColorRed());
            end
        end
    --------------- TRAITS APPLIED/REMOVED FOR "UNDERWEIGHT" ---------------
    elseif player:HasTrait("Underweight") then
        -- Removing Traits
        if player:HasTrait("Frail") then
            player:getTraits():remove("Frail");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Frail"), false, HaloTextHelper.getColorGreen());
            player:LevelPerk(Perks.Strength);
            player:getXp():setXPToLevel(Perks.Strength, player:getPerkLevel(Perks.Strength));
            --player:LevelPerk(Perks.Strength);
            --player:getXp():setXPToLevel(Perks.Strength, player:getPerkLevel(Perks.Strength));
        end
        if player:HasTrait("LightEater") then
            player:getTraits():remove("LightEater");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_lighteater"), false, HaloTextHelper.getColorRed());
        end
        if player:HasTrait("LowThirst") then
            player:getTraits():remove("LowThirst");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_LowThirst"), false, HaloTextHelper.getColorRed());
        end
        if player:HasTrait("Asthmatic") then
            player:getTraits():remove("Asthmatic");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Asthmatic"), false, HaloTextHelper.getColorGreen());
        end
        if player:HasTrait("Thinskinned") then
            player:getTraits():remove("Thinskinned");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_ThinSkinned"), false, HaloTextHelper.getColorGreen());
        end
        if player:HasTrait("NeedsLessSleep") then
            player:getTraits():remove("NeedsLessSleep");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_LessSleep"), false, HaloTextHelper.getColorRed());
        end
        -- Gaining Traits
        if not player:HasTrait("Flimsy") then
            player:getTraits():add("Flimsy");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Flimsy"), true, HaloTextHelper.getColorRed());
            player:LoseLevel(Perks.Strength);
            player:getXp():setXPToLevel(Perks.Strength, player:getPerkLevel(Perks.Strength));
        end
        if player:HasTrait("ThickSkinned") then
            player:getTraits():remove("ThickSkinned");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_thickskinned"), false, HaloTextHelper.getColorRed());
        end
        -- If "Athletic" is present "Resilient" is removed but ProneToIllness is not obtained.
        if player:HasTrait("Athletic") then
            if player:HasTrait("Resilient") then
                player:getTraits():remove("Resilient");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_resilient"), false, HaloTextHelper.getColorRed());
            end
        else
            if not player:HasTrait("ProneToIllness") then
                player:getTraits():add("ProneToIllness");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_pronetoillness"), true, HaloTextHelper.getColorRed());
            end
        end
        -- If "Athletic" or "Fit" are present, FastHealer is removed but SlowHealer is not obtained.
        if player:HasTrait("Athletic") or player:HasTrait("Fit") then
            if player:HasTrait("FastHealer") then
                player:getTraits():remove("FastHealer");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_FastHealer"), false, HaloTextHelper.getColorRed());
            end
        else
            if not player:HasTrait("SlowHealer") then
                player:getTraits():add("SlowHealer");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_SlowHealer"), true, HaloTextHelper.getColorRed());
            end
        end
    --------------- TRAITS APPLIED/REMOVED FOR A HEALTHY CHARACTER ---------------
    elseif not player:HasTrait("Emaciated") and not player:HasTrait("Very Underweight") 
    and not player:HasTrait("Underweight") and not player:HasTrait("Overweight") 
    and not player:HasTrait("Obese") then
        -- Removing traits
        if player:HasTrait("Flimsy") then
            player:getTraits():remove("Flimsy");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Flimsy"), false, HaloTextHelper.getColorGreen());
            --player:LevelPerk(Perks.Strength);
            --player:getXp():setXPToLevel(Perks.Strength, player:getPerkLevel(Perks.Strength));
        end
        if player:HasTrait("ProneToIllness") then
            player:getTraits():remove("ProneToIllness");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_pronetoillness"), false, HaloTextHelper.getColorGreen());
        end
        if player:HasTrait("SlowHealer") then
            player:getTraits():remove("SlowHealer");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_SlowHealer"), false, HaloTextHelper.getColorGreen());
        end
        if player:HasTrait("HeartyAppitite") and not (player:getMoodles():getMoodleLevel(MoodleType.Stress) >= 3 or 
        player:getMoodles():getMoodleLevel(MoodleType.Unhappy) >= 3) then
            player:getTraits():remove("HeartyAppitite");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_heartyappetite"), false, HaloTextHelper.getColorGreen());
        end
        if player:HasTrait("HighThirst") then
            player:getTraits():remove("HighThirst");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_HighThirst"), false, HaloTextHelper.getColorGreen());
        end
        -- Gaining Traits
        -- If "Strong" is present "ThickSkinned" is added, otherwise is removed.
        if player:HasTrait("Strong") then
            if not player:HasTrait("ThickSkinned") then
                player:getTraits():add("ThickSkinned");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_thickskinned"), true, HaloTextHelper.getColorGreen());
            end
        else
            if player:HasTrait("ThickSkinned") then
                player:getTraits():remove("ThickSkinned");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_thickskinned"), false, HaloTextHelper.getColorRed());
            end
        end
        -- If "Athletic" is present "Resilient" is added, otherwise is removed.
        if player:HasTrait("Athletic") then
            if not player:HasTrait("Resilient") then
                player:getTraits():add("Resilient");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_resilient"), true, HaloTextHelper.getColorGreen());
            end
        else
            if player:HasTrait("Resilient") then
                player:getTraits():remove("Resilient");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_resilient"), false, HaloTextHelper.getColorRed());
            end
        end
        -- If "Athletic" or "Fit" are present, FastHealer is added, otherwise is removed.
        -- If "Athletic" or "Fit" are present and no Mood problems and no Hungry, "NeedsLessSleep" is added, otherwise is removed.
        if player:HasTrait("Athletic") or player:HasTrait("Fit") then
            if not player:HasTrait("FastHealer") then
                player:getTraits():add("FastHealer");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_FastHealer"), true, HaloTextHelper.getColorGreen());
            end
            if player:getMoodles():getMoodleLevel(MoodleType.Stress) == 0 and player:getMoodles():getMoodleLevel(MoodleType.Bored) == 0 and 
            player:getMoodles():getMoodleLevel(MoodleType.Unhappy) == 0 and player:getMoodles():getMoodleLevel(MoodleType.Hungry) <= 1 then
                if not player:HasTrait("NeedsLessSleep") then
                    player:getTraits():add("NeedsLessSleep");
                    HaloTextHelper.addTextWithArrow(player, getText("UI_trait_LessSleep"), true, HaloTextHelper.getColorGreen());
                end
            end
        else
            if player:HasTrait("FastHealer") then
                player:getTraits():remove("FastHealer");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_FastHealer"), false, HaloTextHelper.getColorRed());
            end
            if player:HasTrait("NeedsLessSleep") then
                player:getTraits():remove("NeedsLessSleep");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_LessSleep"), false, HaloTextHelper.getColorRed());
            end
        end
        -- If "Fit/Athletic" and "Stout/Strong" are present, "LowThirst" and "LightEater" are added, otherwise they are removed.
        if (player:HasTrait("Fit") or player:HasTrait("Athletic")) and (player:HasTrait("Stout") or player:HasTrait("Strong")) then
            if not player:HasTrait("LightEater") and not (player:getMoodles():getMoodleLevel(MoodleType.Stress) >= 3 or 
            player:getMoodles():getMoodleLevel(MoodleType.Unhappy) >= 3) then
                player:getTraits():add("LightEater");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_lighteater"), true, HaloTextHelper.getColorGreen());
            end
            if not player:HasTrait("LowThirst") then
                player:getTraits():add("LowThirst");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_LowThirst"), true, HaloTextHelper.getColorGreen());
            end
        else
            if player:HasTrait("LightEater") then
                player:getTraits():remove("LightEater");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_lighteater"), false, HaloTextHelper.getColorRed());
            end
            if player:HasTrait("LowThirst") then
                player:getTraits():remove("LowThirst");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_LowThirst"), false, HaloTextHelper.getColorRed());
            end
        end
    --------------- TRAITS APPLIED/REMOVED FOR "OVERWEIGHT" ---------------
    elseif player:HasTrait("Overweight") then
        -- Removing Traits
        if player:HasTrait("LightEater") then
            player:getTraits():remove("LightEater");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_lighteater"), false, HaloTextHelper.getColorRed());
        end
        if player:HasTrait("LowThirst") then
            player:getTraits():remove("LowThirst");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_LowThirst"), false, HaloTextHelper.getColorRed());
        end
        if player:HasTrait("Asthmatic") then
            player:getTraits():remove("Asthmatic");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Asthmatic"), false, HaloTextHelper.getColorGreen());
        end
        if player:HasTrait("NeedsLessSleep") then
            player:getTraits():remove("NeedsLessSleep");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_LessSleep"), false, HaloTextHelper.getColorRed());
        end
        -- Gaining Traits
        if player:HasTrait("Strong") then
            if not player:HasTrait("ThickSkinned") then
                player:getTraits():add("ThickSkinned");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_thickskinned"), true, HaloTextHelper.getColorGreen());
            end
        else
            if player:HasTrait("ThickSkinned") then
                player:getTraits():remove("ThickSkinned");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_thickskinned"), false, HaloTextHelper.getColorRed());
            end
        end
        if not player:HasTrait("HeartyAppitite") and not ((player:HasTrait("Fit") or player:HasTrait("Athletic")) and (player:HasTrait("Stout") or player:HasTrait("Strong"))) then
            player:getTraits():add("HeartyAppitite");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_heartyappetite"), true, HaloTextHelper.getColorRed());
        end
        if not player:HasTrait("HighThirst") and not ((player:HasTrait("Fit") or player:HasTrait("Athletic")) and (player:HasTrait("Stout") or player:HasTrait("Strong"))) then
            player:getTraits():add("HighThirst");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_HighThirst"), true, HaloTextHelper.getColorRed());
        end
    --------------- TRAITS APPLIED/REMOVED FOR "OBESE" ---------------
    elseif player:HasTrait("Obese") then
        -- Removing Traits
        if player:HasTrait("Resilient") then
            player:getTraits():remove("Resilient");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_resilient"), false, HaloTextHelper.getColorRed());
        end
        if player:HasTrait("FastHealer") then
            player:getTraits():remove("FastHealer");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_FastHealer"), false, HaloTextHelper.getColorRed());
        end
        if player:HasTrait("Athletic") then
            if player:HasTrait("Asthmatic") then
                player:getTraits():remove("Asthmatic");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Asthmatic"), false, HaloTextHelper.getColorGreen());
            end
        end
        -- Gaining Traits
        if not player:HasTrait("Athletic") then
            if not player:HasTrait("Asthmatic") then
                player:getTraits():add("Asthmatic");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Asthmatic"), true, HaloTextHelper.getColorRed());
            end
        end
        if not player:HasTrait("HeartyAppitite") then
            player:getTraits():add("HeartyAppitite");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_heartyappetite"), true, HaloTextHelper.getColorRed());
        end
        if not player:HasTrait("HighThirst") then
            player:getTraits():add("HighThirst");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_HighThirst"), true, HaloTextHelper.getColorRed());
        end
        if player:HasTrait("Strong") then
            if not player:HasTrait("ThickSkinned") then
                player:getTraits():add("ThickSkinned");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_thickskinned"), true, HaloTextHelper.getColorGreen());
            end
        else
            if player:HasTrait("ThickSkinned") then
                player:getTraits():remove("ThickSkinned");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_thickskinned"), false, HaloTextHelper.getColorRed());
            end
        end
    end
end