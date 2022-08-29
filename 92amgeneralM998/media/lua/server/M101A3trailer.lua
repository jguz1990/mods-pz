--***********************************************************
--**                   KI5 / bikinihorst                   **
--***********************************************************

M101A3 = {
	parts = {
		Cover = {
			M101A3Cover = {
				Cover1 = "M101A3Cover1_Item",
			},
			default = "first",
		},
		Tarp = {
			M101A3Tarp = {
				Tarp1 = "M101A3Tarp1_Item",
			},
		},
		Spare = {
			M101A3Spare = {
				Spare1 = "M998SpareTireMount_Item",
			},
			default = "trve_random",
			noPartChance = 33,
		},
	},
};

KI5:createVehicleConfig(M101A3);