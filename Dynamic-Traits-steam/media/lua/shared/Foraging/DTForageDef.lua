require "Foraging/forageDefinitions"

-- Adds custom traits to the Foraging buffs/debuffs
if forageSkills then
    forageSkills.Pluviophile = {
		name                    = "Pluviophile",
		type                    = "trait",
		visionBonus             = 0.5,
		weatherEffect           = 10,
		darknessEffect          = 0,
		specialisations         = {
			["MedicinalPlants"] = 3,
			["Berries"]         = 5,
            ["Mushrooms"]       = 5,
            ["WildPlants"]      = 5,
		}
	}
	forageSkills.Pluviophobia = {
		name                    = "Pluviophobia",
		type                    = "trait",
		visionBonus             = -0.5,
		weatherEffect           = 0,
		darknessEffect          = 0,
		specialisations         = {
			["MedicinalPlants"] = -5,
			["Berries"]         = -5,
            ["Mushrooms"]       = -5,
            ["WildPlants"]      = -5,
		}
	}
	forageSkills.AMForager = {
        name 					= "AMForager",
        type 					= "trait",
        visionBonus 			= 0.5,
        weatherEffect 			= 10,
        darknessEffect 			= 3,
        specialisations 		= {
            ["Animals"] 		= 3,
	        ["JunkFood"] 		= 3,	
            ["Berries"] 		= 3,
            ["Mushrooms"] 		= 3,
            ["MedicinalPlants"] = 3,
	        ["ForestRarities"] 	= 3,	
	        ["Insects"] 		= 3,	
	        ["WildPlants"]		= 3,	
	        ["Trash"] 			= 3				
		}
	}
	forageSkills.AMTrapper = {	
        name 					= "AMTrapper",
        type 					= "trait",
        specialisations 		= {
            ["Animals"] 		= 15
		}
	}
	forageSkills.AMElectrician = {	
        name 					= "AMElectrician",
        type 					= "trait",
        specialisations 		= {
	        ["Trash"] 			= 5					
		}
	}
	forageSkills.AMMechanic= {	
        name 					= "AMMechanic",
        type 					= "trait",
        specialisations 		= {
	        ["Trash"] 			= 5					
		}
	}
	forageSkills.AMCarpenter = {
        name 					= "AMCarpenter",
        type 					= "trait",
        specialisations 		= {
	        ["Trash"] 			= 5			
		}
	}
	forageSkills.AMMetalworker = {
        name 					= "AMMetalworker",
        type 					= "trait",
        specialisations 		= {
	        ["Trash"] 			= 5			
		}
	}
	forageSkills.AMCook = {
        name 					= "AMCook",
        type 					= "trait",
        specialisations 		= {
			["JunkFood"]		= 3,
			["Animals"]			= 3,
			["Berries"]			= 3,
			["Mushrooms"]		= 3,
		}
	}
end
