MTDBaseGameCharacterDetails = {}

MTDBaseGameCharacterDetails.DoNewCharacterInitializations = function(playernum, character)
    local player = getSpecificPlayer(playernum);

    -- EVASIVE TRAIT INITIALIZATION
    if player:getModData().MTDEvasive == nil then
        local total = 0;
        -- AGILITY SKILLS
        total = total + player:getPerkLevel(Perks.Sprinting);
        total = total + player:getPerkLevel(Perks.Sneak);
        total = total + player:getPerkLevel(Perks.Lightfoot);
        total = total + player:getPerkLevel(Perks.Nimble);
        -- COMBAT SKILLS
        total = total + player:getPerkLevel(Perks.Axe);
        total = total + player:getPerkLevel(Perks.Blunt);
        total = total + player:getPerkLevel(Perks.SmallBlunt);
        total = total + player:getPerkLevel(Perks.LongBlade);
        total = total + player:getPerkLevel(Perks.SmallBlade);
        total = total + player:getPerkLevel(Perks.Spear);
        -- MOD DATA = TOTAL
        player:getModData().MTDEvasive = total;
        -- CHECKS IF THE PLAYER HAS THE NECESSARY TO OBTAIN EVASIVE
        if player:getModData().MTDEvasive >= 80 and not player:HasTrait("evasive") then
            player:getTraits():add("evasive");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_evasive"), true, HaloTextHelper.getColorGreen());
        end
    end
end

MTDBaseGameCharacterDetails.DoExistingCharacterInitializations = function(player)

    -- EVASIVE TRAIT INITIALIZATION
    if player:getModData().MTDEvasive == nil then
        local total = 0;
        -- AGILITY SKILLS
        total = total + player:getPerkLevel(Perks.Sprinting);
        total = total + player:getPerkLevel(Perks.Sneak);
        total = total + player:getPerkLevel(Perks.Lightfoot);
        total = total + player:getPerkLevel(Perks.Nimble);
        -- COMBAT SKILLS
        total = total + player:getPerkLevel(Perks.Axe);
        total = total + player:getPerkLevel(Perks.Blunt);
        total = total + player:getPerkLevel(Perks.SmallBlunt);
        total = total + player:getPerkLevel(Perks.LongBlade);
        total = total + player:getPerkLevel(Perks.SmallBlade);
        total = total + player:getPerkLevel(Perks.Spear);
        -- MOD DATA = TOTAL
        player:getModData().MTDEvasive = total;
        -- CHECKS IF THE PLAYER HAS THE NECESSARY TO OBTAIN EVASIVE
        if player:getModData().MTDEvasive >= 80 and not player:HasTrait("evasive") then
            player:getTraits():add("evasive");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_evasive"), true, HaloTextHelper.getColorGreen());
        end
    end
end

Events.OnCreatePlayer.Add(MTDBaseGameCharacterDetails.DoNewCharacterInitializations);