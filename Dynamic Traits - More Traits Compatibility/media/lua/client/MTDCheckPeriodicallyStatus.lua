-- FUNCTION TO CHECK PERIODICALLY THE CURRENT TRAITS TO SEE IF ADJUSTMENTS NEEDS TO BE DONE
function checkPeriodicallyCurrentTraits()
    for playerIndex = 0, getNumActivePlayers()-1 do
        local player = getSpecificPlayer(playerIndex);
        -- REMOVE FEARFUL TRAIT IF BRAVE IS GAINED
        if player:HasTrait("Brave") and player:HasTrait("fearful") then
            player:getTraits():remove("fearful");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_fearful"), false, HaloTextHelper.getColorGreen());
        end
        -- REMOVE PARANOIA TRAIT IF DESENSITIZED IS GAINED
        if player:HasTrait("Desensitized") and player:HasTrait("paranoia") then
            player:getTraits():remove("paranoia");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_paranoia"), false, HaloTextHelper.getColorGreen());
        end
    end
end