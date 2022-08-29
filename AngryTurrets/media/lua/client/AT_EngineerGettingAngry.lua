function AT_EngineerGettingAngryBuddies()
	local player = getPlayer();
	if not player then return end
	if player:getDescriptor():getProfession() ~= "engineer" then return end
	if not player:isRecipeKnown("Make Angry Pistol Turret") then
		print("Engineer learn angry pistol turret");
		player:learnRecipe("Make Angry Pistol Turret");
	end
	if not player:isRecipeKnown("Make Angry Shotgun Turret") then
		print("Engineer learn angry shotgun turret");
		player:learnRecipe("Make Angry Shotgun Turret");
	end
	if not player:isRecipeKnown("Make Angry Sniper Turret") then
		print("Engineer learn angry sniper turret");
		player:learnRecipe("Make Angry Sniper Turret");
	end
end

Events.OnGameStart.Add(AT_EngineerGettingAngryBuddies)