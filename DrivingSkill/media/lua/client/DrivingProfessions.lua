DrivingProfessions = function()

	if getActivatedMods():contains("ModernMayhem") ~= true then
		local fireofficer = ProfessionFactory.getProfession("fireofficer");
		fireofficer:addXPBoost(Perks.Driving, 1);
		
		local policeofficer = ProfessionFactory.getProfession("policeofficer");
		policeofficer:addXPBoost(Perks.Driving, 1);

		local mechanics = ProfessionFactory.getProfession("mechanics");
		mechanics:addXPBoost(Perks.Driving, 1);

		local cabdriver = ProfessionFactory.addProfession (
			"cabdriver",
			getText("UI_prof_cabdriver"),
			"profession_cabdriver",
			2,
			getText("UI_prof_cabdriverdesc")
		);
		cabdriver:addXPBoost(Perks.Mechanics, 2);
		cabdriver:addXPBoost(Perks.Driving, 2);

		local profList = ProfessionFactory.getProfessions()
		for i=1,profList:size() do
			local prof = profList:get(i-1)
			BaseGameCharacterDetails.SetProfessionDescription(prof)
		end
	end
end

Events.OnGameBoot.Add(DrivingProfessions);