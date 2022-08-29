require "TimedActions/ISTakePillAction"

local DTtraitsByPills = {}
DTtraitsByPills.ISTakePillAction = {}

DTtraitsByPills.ISTakePillAction.perform = ISTakePillAction.perform
function ISTakePillAction:perform()
    DTtraitsByPills.ISTakePillAction.perform(self)
    --print("DT Logger: running ISTakePillAction:perform function");
    --print("DT Logger: Just took a " .. self.item:getType() .. " pill (getType)");
    local player = self.character;
    local pill = self.item;
    -- ANTIDEPRESSANTS
    if pill:getType() == "PillsAntiDep" and player:getModData().DTisMelancholic == true then
        player:getModData().DTPillsAntiDep = player:getModData().DTPillsAntiDep - 24;
        if player:getModData().DTPillsAntiDep < 0 then
            player:getModData().DTPillsAntiDep = 0;
        end
        if player:getModData().DTPillsAntiDep <= 24 and player:HasTrait("Melancholic") then
            player:getTraits():remove("Melancholic");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Melancholic"), false, HaloTextHelper.getColorGreen());
        end
    -- BETABLOCKERS
    elseif pill:getType() == "PillsBeta" and player:getModData().DTisNervousWreck == true then
        player:getModData().DTPillsBeta = player:getModData().DTPillsBeta - 24;
        if player:getModData().DTPillsBeta < 0 then
            player:getModData().DTPillsBeta = 0;
        end
        if player:getModData().DTPillsBeta <= 24 and player:HasTrait("NervousWreck") then
            player:getTraits():remove("NervousWreck");
            HaloTextHelper.addTextWithArrow(player, getText("UI_trait_NervousWreck"), false, HaloTextHelper.getColorGreen());
        end
    --elseif pill:getType() == "Pills" then
    end
    -- If too many pills are taken together an overdose can occur
    if player:HasTrait("IronGut") then
		player:getModData().DTOverdose = player:getModData().DTOverdose + (12 * 0.7);
	elseif player:HasTrait("WeakStomach") then
		player:getModData().DTOverdose = player:getModData().DTOverdose + (12 * 1.3);
	else
		player:getModData().DTOverdose = player:getModData().DTOverdose + 12;
	end
    --print("DT Logger: DTOverdose value is " .. player:getModData().DTOverdose);
end

function nervousWreckTrait(player)
    --print("DT Logger: running nervousWreckTrait function");
    player:getModData().DTPillsBeta = player:getModData().DTPillsBeta + 1;
    if player:getModData().DTPillsBeta > 240 then
        player:getModData().DTPillsBeta = 240;
    end
    if player:getModData().DTPillsBeta > 24 and not player:HasTrait("NervousWreck") then
        player:getTraits():add("NervousWreck");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_NervousWreck"), true, HaloTextHelper.getColorRed());
    end
    if player:HasTrait("NervousWreck") then
        DTincreaseStress(player, 0, 0.1);
    end
    --print("DT Logger: DTPillsBeta value is " .. player:getModData().DTPillsBeta);
end

function melancholicTrait(player)
    --print("DT Logger: running melancholicTrait function");
    player:getModData().DTPillsAntiDep = player:getModData().DTPillsAntiDep + 1;
    if player:getModData().DTPillsAntiDep > 240 then
        player:getModData().DTPillsAntiDep = 240;
    end
    if player:getModData().DTPillsAntiDep > 24 and not player:HasTrait("Melancholic") then
        player:getTraits():add("Melancholic");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Melancholic"), true, HaloTextHelper.getColorRed());
    end
    if player:HasTrait("Melancholic") then
        DTincreaseUnhappyness(player, 0, 3);
    end
    --print("DT Logger: DTPillsAntiDep value is " .. player:getModData().DTPillsAntiDep);
end