if getActivatedMods():contains("Arsenal(26)GunFighter") then
else return end


function getWeightVars()
	if SandboxVars.CustomizableAmmo.Weight == 1 then  -- Weight = Weightless
		
		
		getScriptManager():getItem("Base.Bullets9mm"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Base.Bullets9mmBox"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.556Bullets"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.556Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.ShotgunShells"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.ShotgunShellsBox"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.223Bullets"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.223Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.308Bullets"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.308Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets357"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets357Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets38"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets38Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.BB177"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.BB177Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets22"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets22Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets57"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets57Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets44"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets44Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets50MAG"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets50MAGBox"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets45"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets45Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets45LC"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets45LCBox"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets4570"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bullets4570Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.410gShotgunShells"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.410gShotgunShellsBox"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.20gShotgunShells"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.20gShotgunShellsBox"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.10gShotgunShells"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.10gShotgunShellsBox"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.4gShotgunShells"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.4gShotgunShellsBox"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.762x39Bullets"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.762x39Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.762x51Bullets"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.762x51Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.762x54rBullets"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.762x54rBox"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.3006Bullets"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.3006Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.50BMGBullets"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.50BMGBox"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.40HERound"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.40INCRound"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.545x39Bullets"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.545x39Box"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.40INCRound"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.HERocket"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.FlameFuel"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.WaterAmmo"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bolt_Bear"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bolt_Bear_Pack"):DoParam("Weight = 0.0")
		
		
	elseif SandboxVars.CustomizableAmmo.Weight == 2 then  -- Weight = 0.0001


		getScriptManager():getItem("Base.Bullets9mm"):DoParam("Weight = 0.0001")

        getScriptManager():getItem("Base.Bullets9mmBox"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.556Bullets"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.556Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.ShotgunShells"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.ShotgunShellsBox"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.223Bullets"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.223Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.308Bullets"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.308Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets357"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets357Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets38"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets38Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.BB177"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.BB177Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets22"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets22Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets57"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets57Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets44"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets44Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets50MAG"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets50MAGBox"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets45"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets45Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets45LC"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets45LCBox"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets4570"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets4570Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.410gShotgunShells"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.410gShotgunShellsBox"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.20gShotgunShells"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.20gShotgunShellsBox"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.10gShotgunShells"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.10gShotgunShellsBox"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.4gShotgunShells"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.4gShotgunShellsBox"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.762x39Bullets"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.762x39Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.762x51Bullets"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.762x51Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.762x54rBullets"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.762x54rBox"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.3006Bullets"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.3006Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.50BMGBullets"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.50BMGBox"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.40HERound"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.40INCRound"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.545x39Bullets"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.545x39Box"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.40INCRound"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.HERocket"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.FlameFuel"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.WaterAmmo"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bolt_Bear"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bolt_Bear_Pack"):DoParam("Weight = 0.0001")


	elseif SandboxVars.CustomizableAmmo.Weight == 3 then  -- Weight = 0.0005


		getScriptManager():getItem("Base.Bullets9mm"):DoParam("Weight = 0.0005")

        getScriptManager():getItem("Base.Bullets9mmBox"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.556Bullets"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.556Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.ShotgunShells"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.ShotgunShellsBox"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.223Bullets"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.223Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.308Bullets"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.308Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets357"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets357Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets38"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets38Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.BB177"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.BB177Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets22"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets22Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets57"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets57Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets44"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets44Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets50MAG"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets50MAGBox"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets45"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets45Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets45LC"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets45LCBox"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets4570"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bullets4570Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.410gShotgunShells"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.410gShotgunShellsBox"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.20gShotgunShells"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.20gShotgunShellsBox"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.10gShotgunShells"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.10gShotgunShellsBox"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.4gShotgunShells"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.4gShotgunShellsBox"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.762x39Bullets"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.762x39Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.762x51Bullets"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.762x51Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.762x54rBullets"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.762x54rBox"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.3006Bullets"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.3006Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.50BMGBullets"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.50BMGBox"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.40HERound"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.40INCRound"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.545x39Bullets"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.545x39Box"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.40INCRound"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.HERocket"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.FlameFuel"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.WaterAmmo"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bolt_Bear"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bolt_Bear_Pack"):DoParam("Weight = 0.0005")
		
		
	elseif SandboxVars.CustomizableAmmo.Weight == 4 then  -- Weight = 0.001
	
		
        getScriptManager():getItem("Base.Bullets9mm"):DoParam("Weight = 0.001")

        getScriptManager():getItem("Base.Bullets9mmBox"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.556Bullets"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.556Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.ShotgunShells"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.ShotgunShellsBox"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.223Bullets"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.223Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.308Bullets"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.308Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets357"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets357Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets38"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets38Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.BB177"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.BB177Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets22"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets22Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets57"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets57Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets44"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets44Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets50MAG"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets50MAGBox"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets45"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets45Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets45LC"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets45LCBox"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets4570"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bullets4570Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.410gShotgunShells"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.410gShotgunShellsBox"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.20gShotgunShells"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.20gShotgunShellsBox"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.10gShotgunShells"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.10gShotgunShellsBox"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.4gShotgunShells"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.4gShotgunShellsBox"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.762x39Bullets"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.762x39Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.762x51Bullets"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.762x51Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.762x54rBullets"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.762x54rBox"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.3006Bullets"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.3006Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.50BMGBullets"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.50BMGBox"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.40HERound"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.40INCRound"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.545x39Bullets"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.545x39Box"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.40INCRound"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.HERocket"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.FlameFuel"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.WaterAmmo"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bolt_Bear"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bolt_Bear_Pack"):DoParam("Weight = 0.001")


    elseif SandboxVars.CustomizableAmmo.Weight == 5 then  -- Weight = 0.005


		getScriptManager():getItem("Base.Bullets9mm"):DoParam("Weight = 0.005")

        getScriptManager():getItem("Base.Bullets9mmBox"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.556Bullets"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.556Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.ShotgunShells"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.ShotgunShellsBox"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.223Bullets"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.223Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.308Bullets"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.308Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets357"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets357Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets38"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets38Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.BB177"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.BB177Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets22"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets22Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets57"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets57Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets44"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets44Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets50MAG"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets50MAGBox"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets45"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets45Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets45LC"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets45LCBox"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets4570"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets4570Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.410gShotgunShells"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.410gShotgunShellsBox"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.20gShotgunShells"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.20gShotgunShellsBox"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.10gShotgunShells"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.10gShotgunShellsBox"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.4gShotgunShells"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.4gShotgunShellsBox"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.762x39Bullets"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.762x39Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.762x51Bullets"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.762x51Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.762x54rBullets"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.762x54rBox"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.3006Bullets"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.3006Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.50BMGBullets"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.50BMGBox"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.40HERound"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.40INCRound"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.545x39Bullets"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.545x39Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.40INCRound"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.HERocket"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.FlameFuel"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.WaterAmmo"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bolt_Bear"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bolt_Bear_Pack"):DoParam("Weight = 0.005")


	elseif SandboxVars.CustomizableAmmo.Weight == 6 then  -- Weight = 0.01


		getScriptManager():getItem("Base.Bullets9mm"):DoParam("Weight = 0.01")

        getScriptManager():getItem("Base.Bullets9mmBox"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.556Bullets"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.556Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.ShotgunShells"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.ShotgunShellsBox"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.223Bullets"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.223Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.308Bullets"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.308Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets357"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets357Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets38"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets38Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.BB177"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.BB177Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets22"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets22Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets57"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets57Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets44"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets44Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets50MAG"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets50MAGBox"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets45"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets45Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets45LC"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets45LCBox"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets4570"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bullets4570Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.410gShotgunShells"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.410gShotgunShellsBox"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.20gShotgunShells"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.20gShotgunShellsBox"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.10gShotgunShells"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.10gShotgunShellsBox"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.4gShotgunShells"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.4gShotgunShellsBox"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.762x39Bullets"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.762x39Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.762x51Bullets"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.762x51Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.762x54rBullets"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.762x54rBox"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.3006Bullets"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.3006Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.50BMGBullets"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.50BMGBox"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.40HERound"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.40INCRound"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.545x39Bullets"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.545x39Box"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.40INCRound"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.HERocket"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.FlameFuel"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.WaterAmmo"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bolt_Bear"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bolt_Bear_Pack"):DoParam("Weight = 0.01")
		
		
	elseif SandboxVars.CustomizableAmmo.Weight == 7 then  -- Weight = -25

		
		getScriptManager():getItem("Base.Bullets9mm"):DoParam("Weight = 0.0075")

        getScriptManager():getItem("Base.Bullets9mmBox"):DoParam("Weight = 0.375")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.006")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.3")
        
        getScriptManager():getItem("Base.556Bullets"):DoParam("Weight = 0.011")
        
        getScriptManager():getItem("Base.556Box"):DoParam("Weight = 0.225")
        
        getScriptManager():getItem("Base.ShotgunShells"):DoParam("Weight = 0.0225")
        
        getScriptManager():getItem("Base.ShotgunShellsBox"):DoParam("Weight = 0.56")
        
        getScriptManager():getItem("Base.223Bullets"):DoParam("Weight = 0.011")
        
        getScriptManager():getItem("Base.223Box"):DoParam("Weight = 0.225")
        
        getScriptManager():getItem("Base.308Bullets"):DoParam("Weight = 0.018")
        
        getScriptManager():getItem("Base.308Box"):DoParam("Weight = 0.375")
        
        getScriptManager():getItem("Base.Bullets357"):DoParam("Weight = 0.00975")
        
        getScriptManager():getItem("Base.Bullets357Box"):DoParam("Weight = 0.48")
        
        getScriptManager():getItem("Base.Bullets38"):DoParam("Weight = 0.009")
        
        getScriptManager():getItem("Base.Bullets38Box"):DoParam("Weight = 0.45")
        
        getScriptManager():getItem("Base.BB177"):DoParam("Weight = 0.00075")
        
        getScriptManager():getItem("Base.BB177Box"):DoParam("Weight = 0.375")
        
        getScriptManager():getItem("Base.Bullets22"):DoParam("Weight = 0.00375")
        
        getScriptManager():getItem("Base.Bullets22Box"):DoParam("Weight = 0.375")
        
        getScriptManager():getItem("Base.Bullets57"):DoParam("Weight = 0.0075")
        
        getScriptManager():getItem("Base.Bullets57Box"):DoParam("Weight = 0.375")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.006")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.3")
        
        getScriptManager():getItem("Base.Bullets44"):DoParam("Weight = 0.010")
        
        getScriptManager():getItem("Base.Bullets44Box"):DoParam("Weight = 0.525")
        
        getScriptManager():getItem("Base.Bullets50MAG"):DoParam("Weight = 0.0195")
        
        getScriptManager():getItem("Base.Bullets50MAGBox"):DoParam("Weight = 0.39")
        
        getScriptManager():getItem("Base.Bullets45"):DoParam("Weight = 0.00975")
        
        getScriptManager():getItem("Base.Bullets45Box"):DoParam("Weight = 0.48")
        
        getScriptManager():getItem("Base.Bullets45LC"):DoParam("Weight = 0.010")
        
        getScriptManager():getItem("Base.Bullets45LCBox"):DoParam("Weight = 0.525")
        
        getScriptManager():getItem("Base.Bullets4570"):DoParam("Weight = 0.0195")
        
        getScriptManager():getItem("Base.Bullets4570Box"):DoParam("Weight = 0.39")
        
        getScriptManager():getItem("Base.410gShotgunShells"):DoParam("Weight = 0.0195")
        
        getScriptManager():getItem("Base.410gShotgunShellsBox"):DoParam("Weight = 0.48")
        
        getScriptManager():getItem("Base.20gShotgunShells"):DoParam("Weight = 0.021")
        
        getScriptManager():getItem("Base.20gShotgunShellsBox"):DoParam("Weight = 0.525")
        
        getScriptManager():getItem("Base.10gShotgunShells"):DoParam("Weight = 0.024")
        
        getScriptManager():getItem("Base.10gShotgunShellsBox"):DoParam("Weight = 0.6")
        
        getScriptManager():getItem("Base.4gShotgunShells"):DoParam("Weight = 0.48")
        
        getScriptManager():getItem("Base.4gShotgunShellsBox"):DoParam("Weight = 0.48")
        
        getScriptManager():getItem("Base.762x39Bullets"):DoParam("Weight = 0.015")
        
        getScriptManager():getItem("Base.762x39Box"):DoParam("Weight = 0.3")
        
        getScriptManager():getItem("Base.762x51Bullets"):DoParam("Weight = 0.018")
        
        getScriptManager():getItem("Base.762x51Box"):DoParam("Weight = 0.375")
        
        getScriptManager():getItem("Base.762x54rBullets"):DoParam("Weight = 0.020")
        
        getScriptManager():getItem("Base.762x54rBox"):DoParam("Weight = 0.40")
        
        getScriptManager():getItem("Base.3006Bullets"):DoParam("Weight = 0.021")
        
        getScriptManager():getItem("Base.3006Box"):DoParam("Weight = 0.42")
        
        getScriptManager():getItem("Base.50BMGBullets"):DoParam("Weight = 0.0375")
        
        getScriptManager():getItem("Base.50BMGBox"):DoParam("Weight = 0.375")
        
        getScriptManager():getItem("Base.40HERound"):DoParam("Weight = 0.18")
        
        getScriptManager():getItem("Base.40INCRound"):DoParam("Weight = 0.18")
        
        getScriptManager():getItem("Base.545x39Bullets"):DoParam("Weight = 0.015")
        
        getScriptManager():getItem("Base.545x39Box"):DoParam("Weight = 0.3")
        
        getScriptManager():getItem("Base.HERocket"):DoParam("Weight = 1.5")
        
        getScriptManager():getItem("Base.FlameFuel"):DoParam("Weight = 0.0075")
        
        getScriptManager():getItem("Base.WaterAmmo"):DoParam("Weight = 0.18")
        
        getScriptManager():getItem("Base.Bolt_Bear"):DoParam("Weight = 0.0075")
        
        getScriptManager():getItem("Base.Bolt_Bear_Pack"):DoParam("Weight = 0.48")
		
		
	elseif SandboxVars.CustomizableAmmo.Weight == 8 then  -- Weight = -50

		
		getScriptManager():getItem("Base.Bullets9mm"):DoParam("Weight = 0.004")

        getScriptManager():getItem("Base.Bullets9mmBox"):DoParam("Weight = 0.25")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.004")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.2")
        
        getScriptManager():getItem("Base.556Bullets"):DoParam("Weight = 0.0075")
        
        getScriptManager():getItem("Base.556Box"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.ShotgunShells"):DoParam("Weight = 0.015")
        
        getScriptManager():getItem("Base.ShotgunShellsBox"):DoParam("Weight = 0.475")
        
        getScriptManager():getItem("Base.223Bullets"):DoParam("Weight = 0.0075")
        
        getScriptManager():getItem("Base.223Box"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.308Bullets"):DoParam("Weight = 0.0125")
        
        getScriptManager():getItem("Base.308Box"):DoParam("Weight = 0.25")
        
        getScriptManager():getItem("Base.Bullets357"):DoParam("Weight = 0.0675")
        
        getScriptManager():getItem("Base.Bullets357Box"):DoParam("Weight = 0.325")
        
        getScriptManager():getItem("Base.Bullets38"):DoParam("Weight = 0.006")
        
        getScriptManager():getItem("Base.Bullets38Box"):DoParam("Weight = 0.3")
        
        getScriptManager():getItem("Base.BB177"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.BB177Box"):DoParam("Weight = 0.25")
        
        getScriptManager():getItem("Base.Bullets22"):DoParam("Weight = 0.0025")
        
        getScriptManager():getItem("Base.Bullets22Box"):DoParam("Weight = 0.25")
        
        getScriptManager():getItem("Base.Bullets57"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets57Box"):DoParam("Weight = 0.25")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.004")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.2")
        
        getScriptManager():getItem("Base.Bullets44"):DoParam("Weight = 0.007")
        
        getScriptManager():getItem("Base.Bullets44Box"):DoParam("Weight = 0.35")
        
        getScriptManager():getItem("Base.Bullets50MAG"):DoParam("Weight = 0.013")
        
        getScriptManager():getItem("Base.Bullets50MAGBox"):DoParam("Weight = 0.26")
        
        getScriptManager():getItem("Base.Bullets45"):DoParam("Weight = 0.0065")
        
        getScriptManager():getItem("Base.Bullets45Box"):DoParam("Weight = 0.325")
        
        getScriptManager():getItem("Base.Bullets45LC"):DoParam("Weight = 0.007")
        
        getScriptManager():getItem("Base.Bullets45LCBox"):DoParam("Weight = 0.35")
        
        getScriptManager():getItem("Base.Bullets4570"):DoParam("Weight = 0.013")
        
        getScriptManager():getItem("Base.Bullets4570Box"):DoParam("Weight = 0.26")
        
        getScriptManager():getItem("Base.410gShotgunShells"):DoParam("Weight = 0.013")
        
        getScriptManager():getItem("Base.410gShotgunShellsBox"):DoParam("Weight = 0.325")
        
        getScriptManager():getItem("Base.20gShotgunShells"):DoParam("Weight = 0.014")
        
        getScriptManager():getItem("Base.20gShotgunShellsBox"):DoParam("Weight = 0.35")
        
        getScriptManager():getItem("Base.10gShotgunShells"):DoParam("Weight = 0.016")
        
        getScriptManager():getItem("Base.10gShotgunShellsBox"):DoParam("Weight = 0.4")
        
        getScriptManager():getItem("Base.4gShotgunShells"):DoParam("Weight = 0.0325")
        
        getScriptManager():getItem("Base.4gShotgunShellsBox"):DoParam("Weight = 0.325")
        
        getScriptManager():getItem("Base.762x39Bullets"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.762x39Box"):DoParam("Weight = 0.2")
        
        getScriptManager():getItem("Base.762x51Bullets"):DoParam("Weight = 0.013")
        
        getScriptManager():getItem("Base.762x51Box"):DoParam("Weight = 0.25")
        
        getScriptManager():getItem("Base.762x54rBullets"):DoParam("Weight = 0.0135")
        
        getScriptManager():getItem("Base.762x54rBox"):DoParam("Weight = 0.27")
        
        getScriptManager():getItem("Base.3006Bullets"):DoParam("Weight = 0.014")
        
        getScriptManager():getItem("Base.3006Box"):DoParam("Weight = 0.28")
        
        getScriptManager():getItem("Base.50BMGBullets"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.50BMGBox"):DoParam("Weight = 0.25")
        
        getScriptManager():getItem("Base.40HERound"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.40INCRound"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.545x39Bullets"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.545x39Box"):DoParam("Weight = 0.2")
        
        getScriptManager():getItem("Base.HERocket"):DoParam("Weight = 1.0")
        
        getScriptManager():getItem("Base.FlameFuel"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.WaterAmmo"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.Bolt_Bear"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bolt_Bear_Pack"):DoParam("Weight = 0.325")
		
		
	elseif SandboxVars.CustomizableAmmo.Weight == 9 then  -- Weight = -75
	
	
	    getScriptManager():getItem("Base.Bullets9mm"):DoParam("Weight = 0.0025")

        getScriptManager():getItem("Base.Bullets9mmBox"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.556Bullets"):DoParam("Weight = 0.0035")
        
        getScriptManager():getItem("Base.556Box"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.ShotgunShells"):DoParam("Weight = 0.0075")
        
        getScriptManager():getItem("Base.ShotgunShellsBox"):DoParam("Weight = 0.18")
        
        getScriptManager():getItem("Base.223Bullets"):DoParam("Weight = 0.0035")
        
        getScriptManager():getItem("Base.223Box"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.308Bullets"):DoParam("Weight = 0.00625")
        
        getScriptManager():getItem("Base.308Box"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.Bullets357"):DoParam("Weight = 0.00325")
        
        getScriptManager():getItem("Base.Bullets357Box"):DoParam("Weight = 0.16")
        
        getScriptManager():getItem("Base.Bullets38"):DoParam("Weight = 0.004")
        
        getScriptManager():getItem("Base.Bullets38Box"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.BB177"):DoParam("Weight = 0.00025")
        
        getScriptManager():getItem("Base.BB177Box"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.Bullets22"):DoParam("Weight = 0.0013")
        
        getScriptManager():getItem("Base.Bullets22Box"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.Bullets57"):DoParam("Weight = 0.0025")
        
        getScriptManager():getItem("Base.Bullets57Box"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.Bullets44"):DoParam("Weight = 0.0035")
        
        getScriptManager():getItem("Base.Bullets44Box"):DoParam("Weight = 0.18")
        
        getScriptManager():getItem("Base.Bullets50MAG"):DoParam("Weight = 0.0625")
        
        getScriptManager():getItem("Base.Bullets50MAGBox"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.Bullets45"):DoParam("Weight = 0.00325")
        
        getScriptManager():getItem("Base.Bullets45Box"):DoParam("Weight = 0.1625")
        
        getScriptManager():getItem("Base.Bullets45LC"):DoParam("Weight = 0.0035")
        
        getScriptManager():getItem("Base.Bullets45LCBox"):DoParam("Weight = 0.18")
        
        getScriptManager():getItem("Base.Bullets4570"):DoParam("Weight = 0.0035")
        
        getScriptManager():getItem("Base.Bullets4570Box"):DoParam("Weight = 0.18")
        
        getScriptManager():getItem("Base.410gShotgunShells"):DoParam("Weight = 0.0625")
        
        getScriptManager():getItem("Base.410gShotgunShellsBox"):DoParam("Weight = 0.1675")
        
        getScriptManager():getItem("Base.20gShotgunShells"):DoParam("Weight = 0.007")
        
        getScriptManager():getItem("Base.20gShotgunShellsBox"):DoParam("Weight = 0.18")
        
        getScriptManager():getItem("Base.10gShotgunShells"):DoParam("Weight = 0.008")
        
        getScriptManager():getItem("Base.10gShotgunShellsBox"):DoParam("Weight = 0.2")
        
        getScriptManager():getItem("Base.4gShotgunShells"):DoParam("Weight = 0.018")
        
        getScriptManager():getItem("Base.4gShotgunShellsBox"):DoParam("Weight = 0.18")
        
        getScriptManager():getItem("Base.762x39Bullets"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.762x39Box"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.762x51Bullets"):DoParam("Weight = 0.00625")
        
        getScriptManager():getItem("Base.762x51Box"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.762x54rBullets"):DoParam("Weight = 0.00675")
        
        getScriptManager():getItem("Base.762x54rBox"):DoParam("Weight = 0.135")
        
        getScriptManager():getItem("Base.3006Bullets"):DoParam("Weight = 0.007")
        
        getScriptManager():getItem("Base.3006Box"):DoParam("Weight = 0.14")
        
        getScriptManager():getItem("Base.50BMGBullets"):DoParam("Weight = 0.013")
        
        getScriptManager():getItem("Base.50BMGBox"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.40HERound"):DoParam("Weight = 0.0625")
        
        getScriptManager():getItem("Base.40INCRound"):DoParam("Weight = 0.0625")
        
        getScriptManager():getItem("Base.545x39Bullets"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.545x39Box"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.HERocket"):DoParam("Weight = 0.5")
        
        getScriptManager():getItem("Base.FlameFuel"):DoParam("Weight = 0.0025")
        
        getScriptManager():getItem("Base.WaterAmmo"):DoParam("Weight = 0.0625")
        
        getScriptManager():getItem("Base.Bolt_Bear"):DoParam("Weight = 0.0025")
        
        getScriptManager():getItem("Base.Bolt_Bear_Pack"):DoParam("Weight = 0.18")
	
	
	elseif SandboxVars.CustomizableAmmo.Weight == 10 then  -- Weight = -99
	
	
	    getScriptManager():getItem("Base.Bullets9mm"):DoParam("Weight = 0.0001")

        getScriptManager():getItem("Base.Bullets9mmBox"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.00008")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.004")
        
        getScriptManager():getItem("Base.556Bullets"):DoParam("Weight = 0.00015")
        
        getScriptManager():getItem("Base.556Box"):DoParam("Weight = 0.003")
        
        getScriptManager():getItem("Base.ShotgunShells"):DoParam("Weight = 0.0003")
        
        getScriptManager():getItem("Base.ShotgunShellsBox"):DoParam("Weight = 0.0075")
        
        getScriptManager():getItem("Base.223Bullets"):DoParam("Weight = 0.00015")
        
        getScriptManager():getItem("Base.223Box"):DoParam("Weight = 0.003")
        
        getScriptManager():getItem("Base.308Bullets"):DoParam("Weight = 0.00025")
        
        getScriptManager():getItem("Base.308Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets357"):DoParam("Weight = 0.00013")
        
        getScriptManager():getItem("Base.Bullets357Box"):DoParam("Weight = 0.0065")
        
        getScriptManager():getItem("Base.Bullets38"):DoParam("Weight = 0.00012")
        
        getScriptManager():getItem("Base.Bullets38Box"):DoParam("Weight = 0.006")
        
        getScriptManager():getItem("Base.BB177"):DoParam("Weight = 0.00001")
        
        getScriptManager():getItem("Base.BB177Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets22"):DoParam("Weight = 0.00005")
        
        getScriptManager():getItem("Base.Bullets22Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets57"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bullets57Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bullets380"):DoParam("Weight = 0.00008")
        
        getScriptManager():getItem("Base.Bullets380Box"):DoParam("Weight = 0.004")
        
        getScriptManager():getItem("Base.Bullets44"):DoParam("Weight = 0.00014")
        
        getScriptManager():getItem("Base.Bullets44Box"):DoParam("Weight = 0.007")
        
        getScriptManager():getItem("Base.Bullets50MAG"):DoParam("Weight = 0.00026")
        
        getScriptManager():getItem("Base.Bullets50MAGBox"):DoParam("Weight = 0.0052")
        
        getScriptManager():getItem("Base.Bullets45"):DoParam("Weight = 0.00013")
        
        getScriptManager():getItem("Base.Bullets45Box"):DoParam("Weight = 0.0065")
        
        getScriptManager():getItem("Base.Bullets45LC"):DoParam("Weight = 0.00014")
        
        getScriptManager():getItem("Base.Bullets45LCBox"):DoParam("Weight = 0.007")
        
        getScriptManager():getItem("Base.Bullets4570"):DoParam("Weight = 0.00026")
        
        getScriptManager():getItem("Base.Bullets4570Box"):DoParam("Weight = 0.0052")
        
        getScriptManager():getItem("Base.410gShotgunShells"):DoParam("Weight = 0.00026")
        
        getScriptManager():getItem("Base.410gShotgunShellsBox"):DoParam("Weight = 0.0065")
        
        getScriptManager():getItem("Base.20gShotgunShells"):DoParam("Weight = 0.00028")
        
        getScriptManager():getItem("Base.20gShotgunShellsBox"):DoParam("Weight = 0.007")
        
        getScriptManager():getItem("Base.10gShotgunShells"):DoParam("Weight = 0.00032")
        
        getScriptManager():getItem("Base.10gShotgunShellsBox"):DoParam("Weight = 0.008")
        
        getScriptManager():getItem("Base.4gShotgunShells"):DoParam("Weight = 0.00065")
        
        getScriptManager():getItem("Base.4gShotgunShellsBox"):DoParam("Weight = 0.0065")
        
        getScriptManager():getItem("Base.762x39Bullets"):DoParam("Weight = 0.0002")
        
        getScriptManager():getItem("Base.762x39Box"):DoParam("Weight = 0.004")
        
        getScriptManager():getItem("Base.762x51Bullets"):DoParam("Weight = 0.00025")
        
        getScriptManager():getItem("Base.762x51Box"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.762x54rBullets"):DoParam("Weight = 0.00027")
        
        getScriptManager():getItem("Base.762x54rBox"):DoParam("Weight = 0.0054")
        
        getScriptManager():getItem("Base.3006Bullets"):DoParam("Weight = 0.00028")
        
        getScriptManager():getItem("Base.3006Box"):DoParam("Weight = 0.0056")
        
        getScriptManager():getItem("Base.50BMGBullets"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.50BMGBox"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.40HERound"):DoParam("Weight = 0.0025")
        
        getScriptManager():getItem("Base.40INCRound"):DoParam("Weight = 0.0025")
        
        getScriptManager():getItem("Base.545x39Bullets"):DoParam("Weight = 0.0002")
        
        getScriptManager():getItem("Base.545x39Box"):DoParam("Weight = 0.004")
        
        getScriptManager():getItem("Base.HERocket"):DoParam("Weight = 0.020")
        
        getScriptManager():getItem("Base.FlameFuel"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.WaterAmmo"):DoParam("Weight = 0.0025")
        
        getScriptManager():getItem("Base.Bolt_Bear"):DoParam("Weight = 0.00010")
        
        getScriptManager():getItem("Base.Bolt_Bear_Pack"):DoParam("Weight = 0.0065")


	end
	
	
	if SandboxVars.CustomizableMagazines.Weight == 1 then  -- Weight = Weightless

        
        getScriptManager():getItem("Base.9mmDrum"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.9mmExtClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.12gDrum"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.SIX12_Cylinder"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.SRM1208_Cylinder"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.SRM1212_Cylinder"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.SRM1216_Cylinder"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.22Clip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.22Drum"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.22ExtClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.38Clip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.45Drum"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.45ExtClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.45DSClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.45DSExtClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.57Clip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.P90Clip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.223ExtClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.223Clip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.223StdClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.308Clip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.308Belt"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.308ExtClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.308StdClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.380Clip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.380ExtClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.545Drum"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.545StdClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.556Belt"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.556Drum"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.762Drum"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.762x39Belt"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.762x54rBelt"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.3006ExtClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.AKClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.ASHClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.ASVALClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.CP33Clip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.CP33ExtClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.K11HEClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.K11INCClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.M1Clip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.M82Clip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.M14Clip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.SKSFixedBox"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.SPASClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.SVDClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.VSSClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.38Speed"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.357Speed"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.44Speed"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.44Clip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.45LCSpeed"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.SKSClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.1903Clip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.MosinClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.308StrClip"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.Bag_M2A1"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.M2A1_Can"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.M2A1_Tank"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.556MiniCan"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.308MiniCan"):DoParam("Weight = 0.0")
        
        getScriptManager():getItem("Base.50MiniCan"):DoParam("Weight = 0.0")
		
		
	elseif SandboxVars.CustomizableMagazines.Weight == 2 then  -- Weight = 0.0001

        
        getScriptManager():getItem("Base.9mmDrum"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.9mmExtClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.12gDrum"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.SIX12_Cylinder"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.SRM1208_Cylinder"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.SRM1212_Cylinder"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.SRM1216_Cylinder"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.22Clip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.22Drum"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.22ExtClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.38Clip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.45Drum"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.45ExtClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.45DSClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.45DSExtClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.57Clip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.P90Clip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.223ExtClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.223Clip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.223StdClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.308Clip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.308Belt"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.308ExtClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.308StdClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.380Clip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.380ExtClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.545Drum"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.545StdClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.556Belt"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.556Drum"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.762Drum"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.762x39Belt"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.762x54rBelt"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.3006ExtClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.AKClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.ASHClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.ASVALClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.CP33Clip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.CP33ExtClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.K11HEClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.K11INCClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.M1Clip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.M82Clip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.M14Clip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.SKSFixedBox"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.SPASClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.SVDClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.VSSClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.38Speed"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.357Speed"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.44Speed"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.44Clip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.45LCSpeed"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.SKSClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.1903Clip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.MosinClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.308StrClip"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.Bag_M2A1"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.M2A1_Can"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.M2A1_Tank"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.556MiniCan"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.308MiniCan"):DoParam("Weight = 0.0001")
        
        getScriptManager():getItem("Base.50MiniCan"):DoParam("Weight = 0.0001")


	elseif SandboxVars.CustomizableMagazines.Weight == 3 then  -- Weight = 0.0005

        
        getScriptManager():getItem("Base.9mmDrum"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.9mmExtClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.12gDrum"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.SIX12_Cylinder"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.SRM1208_Cylinder"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.SRM1212_Cylinder"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.SRM1216_Cylinder"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.22Clip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.22Drum"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.22ExtClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.38Clip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.45Drum"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.45ExtClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.45DSClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.45DSExtClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.57Clip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.P90Clip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.223ExtClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.223Clip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.223StdClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.308Clip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.308Belt"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.308ExtClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.308StdClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.380Clip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.380ExtClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.545Drum"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.545StdClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.556Belt"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.556Drum"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.762Drum"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.762x39Belt"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.762x54rBelt"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.3006ExtClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.AKClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.ASHClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.ASVALClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.CP33Clip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.CP33ExtClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.K11HEClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.K11INCClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.M1Clip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.M82Clip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.M14Clip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.SKSFixedBox"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.SPASClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.SVDClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.VSSClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.38Speed"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.357Speed"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.44Speed"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.44Clip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.45LCSpeed"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.SKSClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.1903Clip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.MosinClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.308StrClip"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.Bag_M2A1"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.M2A1_Can"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.M2A1_Tank"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.556MiniCan"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.308MiniCan"):DoParam("Weight = 0.0005")
        
        getScriptManager():getItem("Base.50MiniCan"):DoParam("Weight = 0.0005")
		
		
	elseif SandboxVars.CustomizableMagazines.Weight == 4 then  -- Weight = 0.001

        
        getScriptManager():getItem("Base.9mmDrum"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.9mmExtClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.12gDrum"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.SIX12_Cylinder"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.SRM1208_Cylinder"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.SRM1212_Cylinder"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.SRM1216_Cylinder"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.22Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.22Drum"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.22ExtClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.38Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.45Drum"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.45ExtClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.45DSClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.45DSExtClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.57Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.P90Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.223ExtClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.223Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.223StdClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.308Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.308Belt"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.308ExtClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.308StdClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.380Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.380ExtClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.545Drum"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.545StdClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.556Belt"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.556Drum"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.762Drum"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.762x39Belt"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.762x54rBelt"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.3006ExtClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.AKClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.ASHClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.ASVALClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.CP33Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.CP33ExtClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.K11HEClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.K11INCClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.M1Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.M82Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.M14Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.SKSFixedBox"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.SPASClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.SVDClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.VSSClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.38Speed"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.357Speed"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.44Speed"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.44Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.45LCSpeed"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.SKSClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.1903Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.MosinClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.308StrClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.Bag_M2A1"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.M2A1_Can"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.M2A1_Tank"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.556MiniCan"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.308MiniCan"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.50MiniCan"):DoParam("Weight = 0.001")


    elseif SandboxVars.CustomizableMagazines.Weight == 5 then  -- Weight = 0.005

        
        getScriptManager():getItem("Base.9mmDrum"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.9mmExtClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.12gDrum"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.SIX12_Cylinder"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.SRM1208_Cylinder"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.SRM1212_Cylinder"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.SRM1216_Cylinder"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.22Clip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.22Drum"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.22ExtClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.38Clip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.45Drum"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.45ExtClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.45DSClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.45DSExtClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.57Clip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.P90Clip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.223ExtClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.223Clip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.223StdClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.308Clip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.308Belt"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.308ExtClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.308StdClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.380Clip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.380ExtClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.545Drum"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.545StdClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.556Belt"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.556Drum"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.762Drum"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.762x39Belt"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.762x54rBelt"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.3006ExtClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.AKClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.ASHClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.ASVALClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.CP33Clip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.CP33ExtClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.K11HEClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.K11INCClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.M1Clip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.M82Clip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.M14Clip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.SKSFixedBox"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.SPASClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.SVDClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.VSSClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.38Speed"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.357Speed"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.44Speed"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.44Clip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.45LCSpeed"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.SKSClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.1903Clip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.MosinClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.308StrClip"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.Bag_M2A1"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.M2A1_Can"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.M2A1_Tank"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.556MiniCan"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.308MiniCan"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.50MiniCan"):DoParam("Weight = 0.005")


	elseif SandboxVars.CustomizableMagazines.Weight == 6 then  -- Weight = 0.01

        
        getScriptManager():getItem("Base.9mmDrum"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.9mmExtClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.12gDrum"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.SIX12_Cylinder"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.SRM1208_Cylinder"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.SRM1212_Cylinder"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.SRM1216_Cylinder"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.22Clip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.22Drum"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.22ExtClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.38Clip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.45Drum"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.45ExtClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.45DSClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.45DSExtClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.57Clip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.P90Clip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.223ExtClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.223Clip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.223StdClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.308Clip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.308Belt"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.308ExtClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.308StdClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.380Clip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.380ExtClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.545Drum"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.545StdClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.556Belt"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.556Drum"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.762Drum"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.762x39Belt"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.762x54rBelt"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.3006ExtClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.AKClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.ASHClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.ASVALClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.CP33Clip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.CP33ExtClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.K11HEClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.K11INCClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.M1Clip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.M82Clip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.M14Clip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.SKSFixedBox"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.SPASClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.SVDClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.VSSClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.38Speed"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.357Speed"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.44Speed"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.44Clip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.45LCSpeed"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.SKSClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.1903Clip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.MosinClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.308StrClip"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.Bag_M2A1"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.M2A1_Can"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.M2A1_Tank"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.556MiniCan"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.308MiniCan"):DoParam("Weight = 0.01")
        
        getScriptManager():getItem("Base.50MiniCan"):DoParam("Weight = 0.01")
		
		
	elseif SandboxVars.CustomizableMagazines.Weight == 7 then  -- Weight = -25

        
        getScriptManager():getItem("Base.9mmDrum"):DoParam("Weight = 0.18")
        
        getScriptManager():getItem("Base.9mmExtClip"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.12gDrum"):DoParam("Weight = 0.225")
        
        getScriptManager():getItem("Base.SIX12_Cylinder"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.SRM1208_Cylinder"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.SRM1212_Cylinder"):DoParam("Weight = 0.165")
        
        getScriptManager():getItem("Base.SRM1216_Cylinder"):DoParam("Weight = 0.18")
        
        getScriptManager():getItem("Base.22Clip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.22Drum"):DoParam("Weight = 0.18")
        
        getScriptManager():getItem("Base.22ExtClip"):DoParam("Weight = 0.11")
        
        getScriptManager():getItem("Base.38Clip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.45Drum"):DoParam("Weight = 0.18")
        
        getScriptManager():getItem("Base.45ExtClip"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.45DSClip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.45DSExtClip"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.57Clip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.P90Clip"):DoParam("Weight = 0.165")
        
        getScriptManager():getItem("Base.223ExtClip"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.223Clip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.223StdClip"):DoParam("Weight = 0.11")
        
        getScriptManager():getItem("Base.308Clip"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.308Belt"):DoParam("Weight = 0.375")
        
        getScriptManager():getItem("Base.308ExtClip"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.308StdClip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.380Clip"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.380ExtClip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.545Drum"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.545StdClip"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.556Belt"):DoParam("Weight = 0.375")
        
        getScriptManager():getItem("Base.556Drum"):DoParam("Weight = 0.225")
        
        getScriptManager():getItem("Base.762Drum"):DoParam("Weight = 0.3")
        
        getScriptManager():getItem("Base.762x39Belt"):DoParam("Weight = 0.375")
        
        getScriptManager():getItem("Base.762x54rBelt"):DoParam("Weight = 0.375")
        
        getScriptManager():getItem("Base.3006ExtClip"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.AKClip"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.ASHClip"):DoParam("Weight = 0.18")
        
        getScriptManager():getItem("Base.ASVALClip"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.CP33Clip"):DoParam("Weight = 0.11")
        
        getScriptManager():getItem("Base.CP33ExtClip"):DoParam("Weight = 0.1275")
        
        getScriptManager():getItem("Base.K11HEClip"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.K11INCClip"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.M1Clip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.M82Clip"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.M14Clip"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.SKSFixedBox"):DoParam("Weight = 0.11")
        
        getScriptManager():getItem("Base.SPASClip"):DoParam("Weight = 0.11")
        
        getScriptManager():getItem("Base.SVDClip"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.VSSClip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.38Speed"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.357Speed"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.44Speed"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.44Clip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.45LCSpeed"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.SKSClip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.1903Clip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.MosinClip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.308StrClip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.M2A1_Can"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.M2A1_Tank"):DoParam("Weight = 1.35")
        
        getScriptManager():getItem("Base.556MiniCan"):DoParam("Weight = 1.5")
        
        getScriptManager():getItem("Base.308MiniCan"):DoParam("Weight = 1.5")
        
        getScriptManager():getItem("Base.50MiniCan"):DoParam("Weight = 1.5")
		
		
	elseif SandboxVars.CustomizableMagazines.Weight == 8 then  -- Weight = -50

		
		getScriptManager():getItem("Base.9mmDrum"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.9mmExtClip"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.12gDrum"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.SIX12_Cylinder"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.SRM1208_Cylinder"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.SRM1212_Cylinder"):DoParam("Weight = 0.11")
        
        getScriptManager():getItem("Base.SRM1216_Cylinder"):DoParam("Weight = 0.12")
        
        getScriptManager():getItem("Base.22Clip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.22Drum"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.22ExtClip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.38Clip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.45Drum"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.45ExtClip"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.45DSClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.45DSExtClip"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.57Clip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.P90Clip"):DoParam("Weight = 0.11")
        
        getScriptManager():getItem("Base.223ExtClip"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.223Clip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.223StdClip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.308Clip"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.308Belt"):DoParam("Weight = 0.25")
        
        getScriptManager():getItem("Base.308ExtClip"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.308StdClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.380Clip"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.380ExtClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.545Drum"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.545StdClip"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.556Belt"):DoParam("Weight = 0.25")
        
        getScriptManager():getItem("Base.556Drum"):DoParam("Weight = 0.15")
        
        getScriptManager():getItem("Base.762Drum"):DoParam("Weight = 0.2")
        
        getScriptManager():getItem("Base.762x39Belt"):DoParam("Weight = 0.25")
        
        getScriptManager():getItem("Base.762x54rBelt"):DoParam("Weight = 0.25")
        
        getScriptManager():getItem("Base.3006ExtClip"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.AKClip"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.ASHClip"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.ASVALClip"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.CP33Clip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.CP33ExtClip"):DoParam("Weight = 0.085")
        
        getScriptManager():getItem("Base.K11HEClip"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.K11INCClip"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.M1Clip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.M82Clip"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.M14Clip"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.SKSFixedBox"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.SPASClip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.SVDClip"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.VSSClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.38Speed"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.357Speed"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.44Speed"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.44Clip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.45LCSpeed"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.SKSClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.1903Clip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.MosinClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.308StrClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.M2A1_Can"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.M2A1_Tank"):DoParam("Weight = 0.9")
        
        getScriptManager():getItem("Base.556MiniCan"):DoParam("Weight = 1.0")
        
        getScriptManager():getItem("Base.308MiniCan"):DoParam("Weight = 1.0")
        
        getScriptManager():getItem("Base.50MiniCan"):DoParam("Weight = 1.0")
		
		
	elseif SandboxVars.CustomizableMagazines.Weight == 9 then  -- Weight = -75
	
	
	    getScriptManager():getItem("Base.9mmDrum"):DoParam("Weight = 0.0675")
        
        getScriptManager():getItem("Base.9mmExtClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.12gDrum"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.SIX12_Cylinder"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.SRM1208_Cylinder"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.SRM1212_Cylinder"):DoParam("Weight = 0.055")
        
        getScriptManager():getItem("Base.SRM1216_Cylinder"):DoParam("Weight = 0.06")
        
        getScriptManager():getItem("Base.22Clip"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.22Drum"):DoParam("Weight = 0.0625")
        
        getScriptManager():getItem("Base.22ExtClip"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.38Clip"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.45Drum"):DoParam("Weight = 0.0625")
        
        getScriptManager():getItem("Base.45ExtClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.45DSClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.45DSExtClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.57Clip"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.P90Clip"):DoParam("Weight = 0.055")
        
        getScriptManager():getItem("Base.223ExtClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.223Clip"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.223StdClip"):DoParam("Weight = 0.0625")
        
        getScriptManager():getItem("Base.308Clip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.308Belt"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.308ExtClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.308StdClip"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.380Clip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.380ExtClip"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.545Drum"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.545StdClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.556Belt"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.556Drum"):DoParam("Weight = 0.075")
        
        getScriptManager():getItem("Base.762Drum"):DoParam("Weight = 0.1")
        
        getScriptManager():getItem("Base.762x39Belt"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.762x54rBelt"):DoParam("Weight = 0.13")
        
        getScriptManager():getItem("Base.3006ExtClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.AKClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.ASHClip"):DoParam("Weight = 0.0625")
        
        getScriptManager():getItem("Base.ASVALClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.CP33Clip"):DoParam("Weight = 0.0375")
        
        getScriptManager():getItem("Base.CP33ExtClip"):DoParam("Weight = 0.0475")
        
        getScriptManager():getItem("Base.K11HEClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.K11INCClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.M1Clip"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.M82Clip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.M14Clip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.SKSFixedBox"):DoParam("Weight = 0.0375")
        
        getScriptManager():getItem("Base.SPASClip"):DoParam("Weight = 0.0375")
        
        getScriptManager():getItem("Base.SVDClip"):DoParam("Weight = 0.05")
        
        getScriptManager():getItem("Base.VSSClip"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.38Speed"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.357Speed"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.44Speed"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.44Clip"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.45LCSpeed"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.SKSClip"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.1903Clip"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.MosinClip"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.308StrClip"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.M2A1_Can"):DoParam("Weight = 0.025")
        
        getScriptManager():getItem("Base.M2A1_Tank"):DoParam("Weight = 0.45")
        
        getScriptManager():getItem("Base.556MiniCan"):DoParam("Weight = 0.5")
        
        getScriptManager():getItem("Base.308MiniCan"):DoParam("Weight = 0.5")
        
        getScriptManager():getItem("Base.50MiniCan"):DoParam("Weight = 0.5")
	
	
	elseif SandboxVars.CustomizableMagazines.Weight == 10 then  -- Weight = -99
	
	
	    getScriptManager():getItem("Base.9mmDrum"):DoParam("Weight = 0.0025")
        
        getScriptManager():getItem("Base.9mmExtClip"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.12gDrum"):DoParam("Weight = 0.003")
        
        getScriptManager():getItem("Base.SIX12_Cylinder"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.SRM1208_Cylinder"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.SRM1212_Cylinder"):DoParam("Weight = 0.0022")
        
        getScriptManager():getItem("Base.SRM1216_Cylinder"):DoParam("Weight = 0.0024")
        
        getScriptManager():getItem("Base.22Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.22Drum"):DoParam("Weight = 0.0025")
        
        getScriptManager():getItem("Base.22ExtClip"):DoParam("Weight = 0.0015")
        
        getScriptManager():getItem("Base.38Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.45Drum"):DoParam("Weight = 0.0025")
        
        getScriptManager():getItem("Base.45ExtClip"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.45DSClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.45DSExtClip"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.57Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.P90Clip"):DoParam("Weight = 0.0022")
        
        getScriptManager():getItem("Base.223ExtClip"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.223Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.223StdClip"):DoParam("Weight = 0.0015")
        
        getScriptManager():getItem("Base.308Clip"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.308Belt"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.308ExtClip"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.308StdClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.380Clip"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.380ExtClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.545Drum"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.545StdClip"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.556Belt"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.556Drum"):DoParam("Weight = 0.003")
        
        getScriptManager():getItem("Base.762Drum"):DoParam("Weight = 0.004")
        
        getScriptManager():getItem("Base.762x39Belt"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.762x54rBelt"):DoParam("Weight = 0.005")
        
        getScriptManager():getItem("Base.3006ExtClip"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.AKClip"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.ASHClip"):DoParam("Weight = 0.0025")
        
        getScriptManager():getItem("Base.ASVALClip"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.CP33Clip"):DoParam("Weight = 0.0015")
        
        getScriptManager():getItem("Base.CP33ExtClip"):DoParam("Weight = 0.0017")
        
        getScriptManager():getItem("Base.K11HEClip"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.K11INCClip"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.M1Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.M82Clip"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.M14Clip"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.SKSFixedBox"):DoParam("Weight = 0.0015")
        
        getScriptManager():getItem("Base.SPASClip"):DoParam("Weight = 0.0015")
        
        getScriptManager():getItem("Base.SVDClip"):DoParam("Weight = 0.002")
        
        getScriptManager():getItem("Base.VSSClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.38Speed"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.357Speed"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.44Speed"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.44Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.45LCSpeed"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.SKSClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.1903Clip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.MosinClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.308StrClip"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.M2A1_Can"):DoParam("Weight = 0.001")
        
        getScriptManager():getItem("Base.M2A1_Tank"):DoParam("Weight = 1.008")
        
        getScriptManager():getItem("Base.556MiniCan"):DoParam("Weight = 0.02")
        
        getScriptManager():getItem("Base.308MiniCan"):DoParam("Weight = 0.02")
        
        getScriptManager():getItem("Base.50MiniCan"):DoParam("Weight = 0.02")


	end
end


Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightVars)
Events.OnInitWorld.Add(getWeightVars)

