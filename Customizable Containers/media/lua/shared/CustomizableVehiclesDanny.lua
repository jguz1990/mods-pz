

function getVehicleCapacityVars()
    if SandboxVars.CustomizableVehicles.Capacity == 1 then  -- Off
        do return end


    elseif SandboxVars.CustomizableVehicles.Capacity == 2 then  -- Well Balanced

        function DannyZIL130PACK2Capacity()
            if getActivatedMods():contains("ZIL130PACK2") then
            else return end

            getScriptManager():getItem("Base.130Trunk1"):DoParam("MaxCapacity = 620")

            getScriptManager():getItem("Base.130Trunk2"):DoParam("MaxCapacity = 670")

            getScriptManager():getItem("Base.130Trunk3"):DoParam("MaxCapacity = 700")

            getScriptManager():getItem("Base.130Trunk8"):DoParam("MaxCapacity = 720")

            getScriptManager():getItem("Base.AC40Trunk1"):DoParam("MaxCapacity = 320")

            getScriptManager():getItem("Base.AC40Trunk2"):DoParam("MaxCapacity = 330")

            getScriptManager():getItem("Base.AC40Trunk3"):DoParam("MaxCapacity = 340")

            getScriptManager():getItem("Base.AC40Trunk8"):DoParam("MaxCapacity = 370")

            getScriptManager():getItem("Base.130GTrunk1"):DoParam("MaxCapacity = 840")

            getScriptManager():getItem("Base.130GTrunk2"):DoParam("MaxCapacity = 820")

            getScriptManager():getItem("Base.130GTrunk3"):DoParam("MaxCapacity = 870")

            getScriptManager():getItem("Base.130GTrunk8"):DoParam("MaxCapacity = 920")
        end
        Events.OnLoad.Add(DannyZIL130PACK2Capacity)


    elseif SandboxVars.CustomizableVehicles.Capacity == 3 then  -- Balanced


        function DannyZIL130PACK2Capacity()
            if getActivatedMods():contains("ZIL130PACK2") then
            else return end

            getScriptManager():getItem("Base.130Trunk1"):DoParam("MaxCapacity = 640")

            getScriptManager():getItem("Base.130Trunk2"):DoParam("MaxCapacity = 690")

            getScriptManager():getItem("Base.130Trunk3"):DoParam("MaxCapacity = 720")

            getScriptManager():getItem("Base.130Trunk8"):DoParam("MaxCapacity = 740")

            getScriptManager():getItem("Base.AC40Trunk1"):DoParam("MaxCapacity = 340")

            getScriptManager():getItem("Base.AC40Trunk2"):DoParam("MaxCapacity = 350")

            getScriptManager():getItem("Base.AC40Trunk3"):DoParam("MaxCapacity = 360")

            getScriptManager():getItem("Base.AC40Trunk8"):DoParam("MaxCapacity = 390")

            getScriptManager():getItem("Base.130GTrunk1"):DoParam("MaxCapacity = 860")

            getScriptManager():getItem("Base.130GTrunk2"):DoParam("MaxCapacity = 840")

            getScriptManager():getItem("Base.130GTrunk3"):DoParam("MaxCapacity = 890")

            getScriptManager():getItem("Base.130GTrunk8"):DoParam("MaxCapacity = 940")
        end
        Events.OnLoad.Add(DannyZIL130PACK2Capacity)


    elseif SandboxVars.CustomizableVehicles.Capacity == 4 then  -- Boosted


        function DannyZIL130PACK2Capacity()
            if getActivatedMods():contains("ZIL130PACK2") then
            else return end

            getScriptManager():getItem("Base.130Trunk1"):DoParam("MaxCapacity = 620")

            getScriptManager():getItem("Base.130Trunk2"):DoParam("MaxCapacity = 670")

            getScriptManager():getItem("Base.130Trunk3"):DoParam("MaxCapacity = 700")

            getScriptManager():getItem("Base.130Trunk8"):DoParam("MaxCapacity = 720")

            getScriptManager():getItem("Base.AC40Trunk1"):DoParam("MaxCapacity = 320")

            getScriptManager():getItem("Base.AC40Trunk2"):DoParam("MaxCapacity = 330")

            getScriptManager():getItem("Base.AC40Trunk3"):DoParam("MaxCapacity = 340")

            getScriptManager():getItem("Base.AC40Trunk8"):DoParam("MaxCapacity = 370")

            getScriptManager():getItem("Base.130GTrunk1"):DoParam("MaxCapacity = 840")

            getScriptManager():getItem("Base.130GTrunk2"):DoParam("MaxCapacity = 820")

            getScriptManager():getItem("Base.130GTrunk3"):DoParam("MaxCapacity = 870")

            getScriptManager():getItem("Base.130GTrunk8"):DoParam("MaxCapacity = 920")
        end
        Events.OnLoad.Add(DannyZIL130PACK2Capacity)


    elseif SandboxVars.CustomizableVehicles.Capacity == 5 then  -- 300


        function DannyZIL130PACK2Capacity()
            if getActivatedMods():contains("ZIL130PACK2") then
            else return end

            getScriptManager():getItem("Base.130Trunk1"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.130Trunk2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.130Trunk3"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.130Trunk8"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.AC40Trunk1"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.AC40Trunk2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.AC40Trunk3"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.AC40Trunk8"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.130GTrunk1"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.130GTrunk2"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.130GTrunk3"):DoParam("MaxCapacity = 300")

            getScriptManager():getItem("Base.130GTrunk8"):DoParam("MaxCapacity = 300")
        end
        Events.OnLoad.Add(DannyZIL130PACK2Capacity)


    end
end

function getVehicleWeightVars()
    if SandboxVars.CustomizableVehicles.Weight == 1 then  -- Normal
            do return end


    elseif SandboxVars.CustomizableVehicles.Weight == 2 then  -- -25


        function DannyZIL130PACK2Weight()
            if getActivatedMods():contains("ZIL130PACK2") then
            else return end

            getScriptManager():getItem("Base.130Trunk1"):DoParam("Weight = 11")

            getScriptManager():getItem("Base.130Trunk2"):DoParam("Weight = 11")

            getScriptManager():getItem("Base.130Trunk3"):DoParam("Weight = 11")

            getScriptManager():getItem("Base.130Trunk8"):DoParam("Weight = 11")

            getScriptManager():getItem("Base.AC40Trunk1"):DoParam("Weight = 11")

            getScriptManager():getItem("Base.AC40Trunk2"):DoParam("Weight = 11")

            getScriptManager():getItem("Base.AC40Trunk3"):DoParam("Weight = 11")

            getScriptManager():getItem("Base.AC40Trunk8"):DoParam("Weight = 11")

            getScriptManager():getItem("Base.130GTrunk1"):DoParam("Weight = 11")

            getScriptManager():getItem("Base.130GTrunk2"):DoParam("Weight = 11")

            getScriptManager():getItem("Base.130GTrunk3"):DoParam("Weight = 11")

            getScriptManager():getItem("Base.130GTrunk8"):DoParam("Weight = 11")
        end
        Events.OnLoad.Add(DannyZIL130PACK2Weight)

            
    elseif SandboxVars.CustomizableVehicles.Weight == 3 then  --  50


        function DannyZIL130PACK2Weight()
            if getActivatedMods():contains("ZIL130PACK2") then
            else return end

            getScriptManager():getItem("Base.130Trunk1"):DoParam("Weight = 7.5")

            getScriptManager():getItem("Base.130Trunk2"):DoParam("Weight = 7.5")

            getScriptManager():getItem("Base.130Trunk3"):DoParam("Weight = 7.5")

            getScriptManager():getItem("Base.130Trunk8"):DoParam("Weight = 7.5")

            getScriptManager():getItem("Base.AC40Trunk1"):DoParam("Weight = 7.5")

            getScriptManager():getItem("Base.AC40Trunk2"):DoParam("Weight = 7.5")

            getScriptManager():getItem("Base.AC40Trunk3"):DoParam("Weight = 7.5")

            getScriptManager():getItem("Base.AC40Trunk8"):DoParam("Weight = 7.5")

            getScriptManager():getItem("Base.130GTrunk1"):DoParam("Weight = 7.5")

            getScriptManager():getItem("Base.130GTrunk2"):DoParam("Weight = 7.5")

            getScriptManager():getItem("Base.130GTrunk3"):DoParam("Weight = 7.5")

            getScriptManager():getItem("Base.130GTrunk8"):DoParam("Weight = 7.5")
        end
        Events.OnLoad.Add(DannyZIL130PACK2Weight)
            
            
    elseif SandboxVars.CustomizableVehicles.Weight == 4 then  --  75


        function DannyZIL130PACK2Weight()
            if getActivatedMods():contains("ZIL130PACK2") then
            else return end

            getScriptManager():getItem("Base.130Trunk1"):DoParam("Weight = 3.75")

            getScriptManager():getItem("Base.130Trunk2"):DoParam("Weight = 3.75")

            getScriptManager():getItem("Base.130Trunk3"):DoParam("Weight = 3.75")

            getScriptManager():getItem("Base.130Trunk8"):DoParam("Weight = 3.75")

            getScriptManager():getItem("Base.AC40Trunk1"):DoParam("Weight = 3.75")

            getScriptManager():getItem("Base.AC40Trunk2"):DoParam("Weight = 3.75")

            getScriptManager():getItem("Base.AC40Trunk3"):DoParam("Weight = 3.75")

            getScriptManager():getItem("Base.AC40Trunk8"):DoParam("Weight = 3.75")

            getScriptManager():getItem("Base.130GTrunk1"):DoParam("Weight = 3.75")

            getScriptManager():getItem("Base.130GTrunk2"):DoParam("Weight = 3.75")

            getScriptManager():getItem("Base.130GTrunk3"):DoParam("Weight = 3.75")

            getScriptManager():getItem("Base.130GTrunk8"):DoParam("Weight = 3.75")
        end
        Events.OnLoad.Add(DannyZIL130PACK2Weight)

            
    elseif SandboxVars.CustomizableVehicles.Weight == 5 then  -- Weightless


        function DannyZIL130PACK2Weight()
            if getActivatedMods():contains("ZIL130PACK2") then
            else return end

            getScriptManager():getItem("Base.130Trunk1"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Base.130Trunk2"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Base.130Trunk3"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Base.130Trunk8"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Base.AC40Trunk1"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Base.AC40Trunk2"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Base.AC40Trunk3"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Base.AC40Trunk8"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Base.130GTrunk1"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Base.130GTrunk2"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Base.130GTrunk3"):DoParam("Weight = 0.0")

            getScriptManager():getItem("Base.130GTrunk8"):DoParam("Weight = 0.0")
        end
        Events.OnLoad.Add(DannyZIL130PACK2Weight)
           
           
    end
end




Events.OnSpawnRegionsLoaded.Add(getVehicleCapacityVars)
Events.OnSpawnRegionsLoaded.Add(getVehicleWeightVars)
Events.OnGameStart.Add(getVehicleWeightVars)
Events.OnGameStart.Add(getVehicleCapacityVars)
Events.OnInitWorld.Add(getVehicleWeightVars)