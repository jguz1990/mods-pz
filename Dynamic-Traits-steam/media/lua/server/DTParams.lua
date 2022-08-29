-- Change to fatigue decrease by Vitamins due to new Overdose mechanic
local vitamins = ScriptManager.instance:getItem("Base.PillsVitamins");
if vitamins then
	vitamins:DoParam("FatigueChange = -7");
end
-- Adds OnEat to Alcoholic drinks
if not getActivatedMods():contains("LeGourmetRevolution") then
	local wine = ScriptManager.instance:getItem("Base.Wine");
	if wine then
		wine:DoParam("OnEat = OnEat_Alcohol");
	end
	local wine2 = ScriptManager.instance:getItem("Base.Wine2");
	if wine2 then
		wine2:DoParam("OnEat = OnEat_Alcohol");
	end
end
local whiskey = ScriptManager.instance:getItem("Base.WhiskeyFull");
if whiskey then
	whiskey:DoParam("OnEat = OnEat_Alcohol");
end
local beerBottle = ScriptManager.instance:getItem("Base.BeerBottle");
if beerBottle then
	beerBottle:DoParam("OnEat = OnEat_Alcohol");
end
local beerCan = ScriptManager.instance:getItem("Base.BeerCan");
if beerCan then
	beerCan:DoParam("OnEat = OnEat_Alcohol");
end
