local function BAEProfession()

	local autoEngineer = ProfessionFactory.addProfession("AutoEngineer", getText("UI_prof_AutoEngineer"), "UI_prof_AutoEngineer", -8);
	
	autoEngineer:addXPBoost(Perks.Mechanics, 3)
	autoEngineer:addXPBoost(Perks.MetalWelding, 2)
	autoEngineer:addXPBoost(Perks.Electricity, 1)
	autoEngineer:getFreeRecipes():add("RemoveHotwire");
	autoEngineer:getFreeRecipes():add("RepairWreckType1");
    autoEngineer:getFreeRecipes():add("RepairWreckType2");
    autoEngineer:getFreeRecipes():add("RepairWreckType3");
	autoEngineer:addFreeTrait("AutoEngineer");
end

local function BAETraits()
	TraitFactory.addTrait("AutoEngineer", getText("UI_prof_AutoEngineer"), 0, getText("UI_trait_AutoEngineerDesc"), true);
end

Events.OnCreateSurvivor.Add(BAEProfession);
Events.OnGameBoot.Add(BAETraits);