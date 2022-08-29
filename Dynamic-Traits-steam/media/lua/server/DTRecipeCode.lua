function OnEat_Alcohol(food, player)
    --print("DT Logger: running OnEat_Alcohol");
    if player:HasTrait("IronGut") then
		player:getModData().DTOverdose = player:getModData().DTOverdose + (25 * 0.7);
	elseif player:HasTrait("WeakStomach") then
		player:getModData().DTOverdose = player:getModData().DTOverdose + (25 * 1.3);
	else
		player:getModData().DTOverdose = player:getModData().DTOverdose + 25;
	end
    if player:getModData().DTOverdose > 100 then
		player:getModData().DTOverdose = 100;
	end
    --print("DT Logger: DTOverdose value is " .. player:getModData().DTOverdose);
end