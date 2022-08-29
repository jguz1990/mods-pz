if getActivatedMods():contains("Swatpack") then
else return end


function getWeightVars()
    if SandboxVars.CustomizableAmmo.Weight == 1 then  -- Weight = Weightless


        getScriptManager():getItem("Base.RubberShells"):DoParam("Weight = 0.0")

        getScriptManager():getItem("Base.RubberShellsBox"):DoParam("Weight = 0.0")


    elseif SandboxVars.CustomizableAmmo.Weight == 2 then  -- Weight = 0.0001


        getScriptManager():getItem("Base.RubberShells"):DoParam("Weight = 0.0001")

        getScriptManager():getItem("Base.RubberShellsBox"):DoParam("Weight = 0.0001")


    elseif SandboxVars.CustomizableAmmo.Weight == 3 then  -- Weight = 0.0005


        getScriptManager():getItem("Base.RubberShells"):DoParam("Weight = 0.0005")

        getScriptManager():getItem("Base.RubberShellsBox"):DoParam("Weight = 0.0005")


    elseif SandboxVars.CustomizableAmmo.Weight == 4 then  -- Weight = 0.001


        getScriptManager():getItem("Base.RubberShells"):DoParam("Weight = 0.001")

        getScriptManager():getItem("Base.RubberShellsBox"):DoParam("Weight = 0.001")


    elseif SandboxVars.CustomizableAmmo.Weight == 5 then  -- Weight = 0.005


        getScriptManager():getItem("Base.RubberShells"):DoParam("Weight = 0.005")

        getScriptManager():getItem("Base.RubberShellsBox"):DoParam("Weight = 0.005")


    elseif SandboxVars.CustomizableAmmo.Weight == 6 then  -- Weight = 0.01


        getScriptManager():getItem("Base.RubberShells"):DoParam("Weight = 0.01")

        getScriptManager():getItem("Base.RubberShellsBox"):DoParam("Weight = 0.01")


    elseif SandboxVars.CustomizableAmmo.Weight == 7 then  -- Weight = -25


        getScriptManager():getItem("Base.RubberShells"):DoParam("Weight = 0.075")

        getScriptManager():getItem("Base.RubberShellsBox"):DoParam("Weight = 0.375")


    elseif SandboxVars.CustomizableAmmo.Weight == 8 then  -- Weight = -50


        getScriptManager():getItem("Base.RubberShells"):DoParam("Weight = 0.05")

        getScriptManager():getItem("Base.RubberShellsBox"):DoParam("Weight = 0.25")


    elseif SandboxVars.CustomizableAmmo.Weight == 9 then  -- Weight = -75


        getScriptManager():getItem("Base.RubberShells"):DoParam("Weight = 0.025")

        getScriptManager():getItem("Base.RubberShellsBox"):DoParam("Weight = 0.13")


    elseif SandboxVars.CustomizableAmmo.Weight == 10 then  -- Weight = -99


        getScriptManager():getItem("Base.RubberShells"):DoParam("Weight = 0.001")

        getScriptManager():getItem("Base.RubberShellsBox"):DoParam("Weight = 0.005")


    end


    if SandboxVars.CustomizableMagazines.Weight == 1 then  -- Weight = Weightless


        getScriptManager():getItem("Base.9mmMp5Clip"):DoParam("Weight = 0.0")


    elseif SandboxVars.CustomizableMagazines.Weight == 2 then  -- Weight = 0.0001


        getScriptManager():getItem("Base.9mmMp5Clip"):DoParam("Weight = 0.0001")


    elseif SandboxVars.CustomizableMagazines.Weight == 3 then  -- Weight = 0.0005


        getScriptManager():getItem("Base.9mmMp5Clip"):DoParam("Weight = 0.0005")


    elseif SandboxVars.CustomizableMagazines.Weight == 4 then  -- Weight = 0.001


        getScriptManager():getItem("Base.9mmMp5Clip"):DoParam("Weight = 0.001")


    elseif SandboxVars.CustomizableMagazines.Weight == 5 then  -- Weight = 0.005


        getScriptManager():getItem("Base.9mmMp5Clip"):DoParam("Weight = 0.005")


    elseif SandboxVars.CustomizableMagazines.Weight == 6 then  -- Weight = 0.01


        getScriptManager():getItem("Base.9mmMp5Clip"):DoParam("Weight = 0.01")


    elseif SandboxVars.CustomizableMagazines.Weight == 7 then  -- Weight = -25


        getScriptManager():getItem("Base.9mmMp5Clip"):DoParam("Weight = 0.15")


    elseif SandboxVars.CustomizableMagazines.Weight == 8 then  -- Weight = -50


        getScriptManager():getItem("Base.9mmMp5Clip"):DoParam("Weight = 0.1")


    elseif SandboxVars.CustomizableMagazines.Weight == 9 then  -- Weight = -75


        getScriptManager():getItem("Base.9mmMp5Clip"):DoParam("Weight = 0.05")


    elseif SandboxVars.CustomizableMagazines.Weight == 10 then  -- Weight = -99


       getScriptManager():getItem("Base.9mmMp5Clip"):DoParam("Weight = 0.002")
       

    end
end



Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightVars)
Events.OnInitWorld.Add(getWeightVars)



