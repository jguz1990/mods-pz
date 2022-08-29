
require("MainCreationMethods");


BaseGameCharacterDetails.DoProfessions = function()

require('NPCs/MainCreationMethods');

    local engineer = ProfessionFactory.addProfession("engineer", getText("UI_prof_Engineer"), "profession_engineer", -4);
    engineer:addXPBoost(Perks.Electricity, 1);
    engineer:addXPBoost(Perks.Woodwork, 1);
    engineer:getFreeRecipes():add("Make Aerosol bomb");
	engineer:getFreeRecipes():add("Make HairsprayBomb");
    engineer:getFreeRecipes():add("Make Flame bomb");
    engineer:getFreeRecipes():add("Make Pipe bomb");
    engineer:getFreeRecipes():add("Make Noise generator");
    engineer:getFreeRecipes():add("Make Smoke Bomb");
	engineer:getFreeRecipes():add("Make Blue Lunchbox Bomb");
	engineer:getFreeRecipes():add("Make Pink Lunchbox Bomb");
	engineer:getFreeRecipes():add("Make Metal Shrapnel Pack");
	engineer:getFreeRecipes():add("Make Stone Shrapnel Pack");
	engineer:getFreeRecipes():add("Make Sharp Stone Shrapnel Pack");
	engineer:getFreeRecipes():add("Make Brick Toy Shrapnel Pack");
	engineer:getFreeRecipes():add("Make Aerosol bomb");
	engineer:getFreeRecipes():add("Make HairsprayBomb");
	engineer:getFreeRecipes():add("Prep NPK Powder");
	engineer:getFreeRecipes():add("Grind up Cooked NPK Powder");
	engineer:getFreeRecipes():add("Grind up Charcoal");
	engineer:getFreeRecipes():add("Make Dicksons Powder");
	engineer:getFreeRecipes():add("Make Fizzy Mixture");
	engineer:getFreeRecipes():add("Combine the Powders");
	engineer:getFreeRecipes():add("Roll up the Boom Powder");
	engineer:getFreeRecipes():add("Make Lightbulb Bomb");
	engineer:getFreeRecipes():add("Make Remote Trigger Alternative");
    	

    
    
    local profList = ProfessionFactory.getProfessions()
    for i = 1, profList:size() do
        local prof = profList:get(i - 1);
        BaseGameCharacterDetails.SetProfessionDescription(prof)
	end
end

Events.OnGameBoot.Add(BaseGameCharacterDetails.DoProfessions);