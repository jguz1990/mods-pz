
function addSkillBooks()

SkillBook["Driving"] = {};
SkillBook["Driving"].perk = Perks.Driving;
SkillBook["Driving"].maxMultiplier1 = 3;
SkillBook["Driving"].maxMultiplier2 = 5;
SkillBook["Driving"].maxMultiplier3 = 8;
SkillBook["Driving"].maxMultiplier4 = 12;
SkillBook["Driving"].maxMultiplier5 = 16;
end

Events.OnGameStart.Add(addSkillBooks);