function traitsByMoods(player)
    --print("DT Logger: running traitsByMoods function");
    -- Gain trait "Needs More Sleep" when Bored Moodle is Lv2 or more and remove it otherwise.
    if player:getMoodles():getMoodleLevel(MoodleType.Bored) >= 2 then
        if not player:HasTrait("NeedsMoreSleep") then
            if player:HasTrait("NeedsLessSleep") then
                player:getTraits():remove("NeedsLessSleep");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_LessSleep"), false, HaloTextHelper.getColorRed());
            end
            player:getTraits():add("NeedsMoreSleep");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_MoreSleep"), true, HaloTextHelper.getColorRed());
        end
    else
        if player:HasTrait("NeedsMoreSleep") then
            player:getTraits():remove("NeedsMoreSleep");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_MoreSleep"), false, HaloTextHelper.getColorGreen());
        end
    end
    -- Gain trait "Insomniac" when Unhappy or Hungry Moodles are at Lv3 or more and remove it otherwise.
    if player:getMoodles():getMoodleLevel(MoodleType.Unhappy) >= 3 or player:getMoodles():getMoodleLevel(MoodleType.Hungry) >= 3 then
        if not player:HasTrait("Insomniac") then
            if player:HasTrait("NeedsLessSleep") then
                player:getTraits():remove("NeedsLessSleep");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_LessSleep"), false, HaloTextHelper.getColorRed());
            end
            player:getTraits():add("Insomniac");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Insomniac"), true, HaloTextHelper.getColorRed());
        end
    else
        if player:HasTrait("Insomniac") then
            player:getTraits():remove("Insomniac");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Insomniac"), false, HaloTextHelper.getColorGreen());
        end
    end
    -- Gain trait "Nightmares" when Stress Moodle is Lv3 or more and remove it otherwise.
    if player:getMoodles():getMoodleLevel(MoodleType.Stress) >= 3 and not player:HasTrait("Desensitized") then
        if not player:HasTrait("Nightmares") then
            if player:HasTrait("NeedsLessSleep") then
                player:getTraits():remove("NeedsLessSleep");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_LessSleep"), false, HaloTextHelper.getColorRed());
            end
            player:getTraits():add("Nightmares");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Nightmares"), true, HaloTextHelper.getColorRed());
        end
    else
        if player:HasTrait("Nightmares") then
            player:getTraits():remove("Nightmares");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Nightmares"), false, HaloTextHelper.getColorGreen());
        end
    end
    -- Gain trait "Hearty Appitite" when Stress or Unhappy Moodles are Lv3 or more and remove it otherise.
    if player:getMoodles():getMoodleLevel(MoodleType.Stress) >= 3 or player:getMoodles():getMoodleLevel(MoodleType.Unhappy) >= 3 then
        if not player:HasTrait("HeartyAppitite") then
            if player:HasTrait("LightEater") then
                player:getTraits():remove("LightEater");
                HaloTextHelper.addTextWithArrow(player, getText("UI_trait_lighteater"), false, HaloTextHelper.getColorRed());
            end
            player:getTraits():add("HeartyAppitite");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_heartyappetite"), true, HaloTextHelper.getColorRed());
        end
    else
        if player:HasTrait("HeartyAppitite") and not (player:HasTrait("Overweight") or player:HasTrait("Obese")) then
            player:getTraits():remove("HeartyAppitite");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_heartyappetite"), false, HaloTextHelper.getColorGreen());
        end
    end
end

-- NIGHTMARES TRAITS
function nightmaresTrait(player)
    --print("DT Logger: running nightmaresTrait function");
    if player:HasTrait("Nightmares") and player:isAsleep() and ZombRand(100) == 0 then
        player:forceAwake();
        player:getStats():setPanic(95);
        DTincreaseStress(player, 0, 0.5);
        DTincreaseWetness(player, 0, ZombRand(99));
    end
end