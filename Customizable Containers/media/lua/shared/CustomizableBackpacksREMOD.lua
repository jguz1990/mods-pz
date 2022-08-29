if getActivatedMods():contains("REMOD") then
else return end


function getWeightReductionVars()
	if SandboxVars.CustomizableBackpacks.WeightReduction == 1 then  -- WeightReduction = -25


		getScriptManager():getItem("Base.Bquiet"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.TFA"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bada"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Breb"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Abag"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Achr"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Ajill"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Vage"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bage"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Abar"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("WeightReduction = 75")
	

	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 2 then  -- WeightReduction = Vanilla


		getScriptManager():getItem("Base.Bquiet"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.TFA"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bada"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Breb"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Abag"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Achr"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Ajill"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Vage"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bage"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Abar"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("WeightReduction = 100")


	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 3 then  -- WeightReduction = Well Balanced
		
		
		getScriptManager():getItem("Base.Bquiet"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.TFA"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bada"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Breb"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Abag"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Achr"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Ajill"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Vage"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bage"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Abar"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("WeightReduction = 85")


	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 4 then  -- WeightReduction = Balanced
		
		
		getScriptManager():getItem("Base.Bquiet"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.TFA"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bada"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Breb"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Abag"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Achr"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Ajill"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Vage"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bage"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Abar"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("WeightReduction = 90")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 5 then  -- WeightReduction = Random - Well Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(40, 92)


            getScriptManager():getItem("Base.Bquiet"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
            getScriptManager():getItem("Base.Aquiet"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.SPbag"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.CPBB"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.CPBC"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.TFA"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.HipPouch"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.MhunkL"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.MhunkR"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Qchr"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Qchr2"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bjill"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bada"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bcla"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.TBjill"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bchr"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Breb"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Cjill"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Abag"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Achr"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Ajill"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Aada2"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Vhunk"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Vchr"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Ahunk"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Vage"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bage"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Abar"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.ArmbagL"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.ArmbagR"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
            
            
    elseif SandboxVars.CustomizableBackpacks.WeightReduction == 6 then   -- WeightReduction = Random - Balanced


        function CustomizableWeightReductionRandomizer()

            local RandomWeightReduction = ZombRand(55, 95)


            getScriptManager():getItem("Base.Bquiet"):DoParam("WeightReduction  = "..RandomWeightReduction)
		
            getScriptManager():getItem("Base.Aquiet"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.SPbag"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.CPBB"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.CPBC"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.TFA"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.HipPouch"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.MhunkL"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.MhunkR"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Qchr"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Qchr2"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bjill"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bada"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bcla"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.TBjill"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bchr"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Breb"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Cjill"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Abag"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Achr"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Ajill"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Aada2"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Vhunk"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Vchr"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Ahunk"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Vage"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Bage"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.Abar"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.ArmbagL"):DoParam("WeightReduction  = "..RandomWeightReduction)
            
            getScriptManager():getItem("Base.ArmbagR"):DoParam("WeightReduction  = "..RandomWeightReduction)

        end
            Events.EveryHours.Add(CustomizableWeightReductionRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableWeightReductionRandomizer)
            Events.OnLoad.Add(CustomizableWeightReductionRandomizer)
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 7 then	-- WeightReduction = 75	
		
		
		getScriptManager():getItem("Base.Bquiet"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.TFA"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bada"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Breb"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Abag"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Achr"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Ajill"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Vage"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Bage"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.Abar"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("WeightReduction = 75")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("WeightReduction = 75")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 8 then  -- WeightReduction = 80 
		
		
		getScriptManager():getItem("Base.Bquiet"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.TFA"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bada"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Breb"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Abag"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Achr"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Ajill"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Vage"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Bage"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.Abar"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("WeightReduction = 80")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("WeightReduction = 80")


	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 9 then  -- WeightReduction = 85 
		
		
		getScriptManager():getItem("Base.Bquiet"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.TFA"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bada"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Breb"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Abag"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Achr"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Ajill"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Vage"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Bage"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.Abar"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("WeightReduction = 85")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("WeightReduction = 85")
		
			
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 10 then  -- WeightReduction = 90 
		
		
		getScriptManager():getItem("Base.Bquiet"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.TFA"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bada"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Breb"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Abag"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Achr"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Ajill"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Vage"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Bage"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.Abar"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("WeightReduction = 90")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("WeightReduction = 90")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 11 then  -- WeightReduction = 95 
		
		
		getScriptManager():getItem("Base.Bquiet"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.TFA"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bada"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Breb"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Abag"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Achr"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Ajill"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Vage"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Bage"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.Abar"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("WeightReduction = 95")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("WeightReduction = 95")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 12 then  -- WeightReduction = 99 
		
		
		getScriptManager():getItem("Base.Bquiet"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.TFA"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bada"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Breb"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Abag"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Achr"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Ajill"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Vage"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Bage"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.Abar"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("WeightReduction = 99")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("WeightReduction = 99")
		
		
	elseif SandboxVars.CustomizableBackpacks.WeightReduction == 13 then  -- WeightReduction = Weightless 
		
		
		getScriptManager():getItem("Base.Bquiet"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.TFA"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bada"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Breb"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Abag"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Achr"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Ajill"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Vage"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Bage"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.Abar"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("WeightReduction = 100")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("WeightReduction = 100")
		
		
	end
end


function getCapacityVars() 
	if SandboxVars.CustomizableBackpacks.Capacity == 1 then  -- Capacity = -25


		getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity = 29")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity = 29")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Capacity = 29")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Capacity = 45")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Capacity = 45")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Capacity = 45")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity = 7.5")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity = 29")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Capacity = 7.5")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Capacity = 7.5")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Capacity = 7.5")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Capacity = 7.5")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Capacity = 7.5")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity = 29")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity = 10")	

	
    elseif SandboxVars.CustomizableBackpacks.Capacity == 2 then  -- Capacity = Vanilla


		getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity = 39")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity = 39")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Capacity = 39")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity = 26")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity = 26")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity = 39")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Capacity = 10")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Capacity = 10")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity = 26")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity = 39")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity = 13")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity = 13")	


	elseif SandboxVars.CustomizableBackpacks.Capacity == 3 then  -- Capacity = Well Balanced
	
		
		getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Capacity = 58")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Capacity = 58")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Capacity = 58")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity = 28")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity = 28")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Capacity = 21")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity = 21")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Capacity = 21")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Capacity = 21")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Capacity = 21")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Capacity = 21")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Capacity = 21")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Capacity = 21")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Capacity = 12")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Capacity = 12")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity = 28")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Capacity = 21")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Capacity = 21")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Capacity = 21")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Capacity = 21")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity = 14")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity = 14")


	elseif SandboxVars.CustomizableBackpacks.Capacity == 4 then  -- Capacity = Balanced
	
		
		getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity = 42")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity = 42")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Capacity = 42")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity = 14")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Capacity = 22")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity = 22")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Capacity = 22")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Capacity = 22")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Capacity = 22")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Capacity = 22")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity = 42")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Capacity = 22")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Capacity = 22")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Capacity = 14")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Capacity = 14")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Capacity = 14")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Capacity = 14")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Capacity = 14")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Capacity = 22")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity = 42")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Capacity = 22")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Capacity = 22")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Capacity = 22")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity = 16")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity = 16")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 5 then  -- Capacity = Random - Well Balanced
	
	
	    function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(4, 34)


            getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity  = "..RandomCapacity)
		
            getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.SPbag"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.CPBB"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.CPBC"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.TFA"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Qchr"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bjill"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bada"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bcla"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.TBjill"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bchr"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Breb"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Cjill"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Abag"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Achr"):DoParam("Capacity  = "..RandomCapacity)	
            
            getScriptManager():getItem("Base.Ajill"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Aada2"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Vchr"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Vage"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bage"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Abar"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)
            
            
    elseif SandboxVars.CustomizableBackpacks.Capacity == 6 then  -- Capacity = Random - Balanced
	
		
		function CustomizableCapacityRandomizer()

            local RandomCapacity = ZombRand(5, 40)


            getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity  = "..RandomCapacity)
		
            getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.SPbag"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.CPBB"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.CPBC"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.TFA"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Qchr"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bjill"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bada"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bcla"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.TBjill"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bchr"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Breb"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Cjill"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Abag"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Achr"):DoParam("Capacity  = "..RandomCapacity)	
            
            getScriptManager():getItem("Base.Ajill"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Aada2"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Vchr"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Vage"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Bage"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.Abar"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity  = "..RandomCapacity)
            
            getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity  = "..RandomCapacity)

        end
            Events.EveryHours.Add(CustomizableCapacityRandomizer)
            Events.OnSpawnRegionsLoaded.Add(CustomizableCapacityRandomizer)
            Events.OnLoad.Add(CustomizableCapacityRandomizer)

		
			
	elseif SandboxVars.CustomizableBackpacks.Capacity == 7 then  -- Capacity = +25
		
	
		getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity = 49")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity = 49")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Capacity = 49")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity = 13")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity = 33")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity = 33")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity = 49")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Capacity = 13")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Capacity = 13")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Capacity = 13")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Capacity = 13")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Capacity = 13")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity = 33")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity = 49")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity = 16")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity = 16")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 8 then  -- Capacity = +50
		
	
		getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity = 59")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity = 59")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Capacity = 59")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Capacity = 90")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Capacity = 90")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Capacity = 90")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity = 39")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity = 39")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity = 59")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Capacity = 15")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Capacity = 15")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity = 39")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity = 59")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity = 20")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 9 then  -- Capacity = +75
		
	
		getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity = 67")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity = 67")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Capacity = 67")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Capacity = 105")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Capacity = 105")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Capacity = 105")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity = 18")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity = 46")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity = 46")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity = 67")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Capacity = 18")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Capacity = 18")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Capacity = 18")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Capacity = 18")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Capacity = 18")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity = 46")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity = 67")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Capacity = 35")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity = 23")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity = 23")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 10 then  -- Capacity = 2x
		
	
		getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity = 78")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity = 78")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Capacity = 78")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Capacity = 120")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Capacity = 120")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Capacity = 120")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity = 52")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity = 52")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity = 78")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Capacity = 20")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity = 52")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity = 78")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity = 26")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity = 26")	
		

	elseif SandboxVars.CustomizableBackpacks.Capacity == 11 then  -- Capacity = 3x
		
	
		getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity = 117")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity = 117")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Capacity = 117")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Capacity = 180")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Capacity = 180")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Capacity = 180")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity = 78")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity = 78")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity = 117")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Capacity = 30")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity = 78")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity = 117")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Capacity = 60")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity = 39")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity = 39")	


	elseif SandboxVars.CustomizableBackpacks.Capacity == 12 then  -- Capacity = 5x
		
	
		getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity = 195")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity = 195")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Capacity = 195")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Capacity = 300")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Capacity = 300")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Capacity = 300")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity = 130")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity = 130")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Capacity = 100")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity = 100")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Capacity = 100")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Capacity = 100")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Capacity = 100")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Capacity = 100")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity = 195")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Capacity = 100")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Capacity = 100")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Capacity = 50")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity = 130")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Capacity = 100")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity = 195")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Capacity = 100")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Capacity = 100")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Capacity = 100")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity = 65")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity = 65")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 13 then  -- Capacity = 20
		
	
		getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Capacity = 20")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity = 20")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity = 20")	
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 14 then  -- Capacity = 25
		
	
		getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Capacity = 25")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity = 25")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity = 25")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 15 then  -- Capacity = 30
		
	
		getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Capacity = 30")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity = 30")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity = 30")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 16 then  -- Capacity = 40
		
	
		getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Capacity = 40")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity = 40")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity = 40")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 17 then  -- Capacity = 50
		
	
		getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Capacity = 50")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity = 50")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity = 50")
		
		
	elseif SandboxVars.CustomizableBackpacks.Capacity == 18 then  -- Capacity = 75
		
	
		getScriptManager():getItem("Base.Bquiet"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.HipPouch"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Capacity = 75")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Capacity = 75")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Capacity = 75")
		
	  
	end
end


function getWeightVars()
	if SandboxVars.CustomizableBackpacks.Weight == 1 then  -- Weight = Well Balanced
		
		
		getScriptManager():getItem("Base.Bquiet"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Weight = 0.1")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Weight = 0.1")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Weight = 0.3")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Weight = 0.3")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Weight = 0.3")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Weight = 0.3")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Weight = 0.3")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Weight = 0.3")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Weight = 0.3")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Weight = 0.3")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Weight = 0.1")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Weight = 0.1")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Weight = 0.1")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Weight = 0.1")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Weight = 0.1")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Weight = 1")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Weight = 1")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Weight = 0.3")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Weight = 0.5")	
		

    elseif SandboxVars.CustomizableBackpacks.Weight == 2 then  -- Weight = -25


		getScriptManager():getItem("Base.Bquiet"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Weight = 0.075")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Weight = 0.075")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Weight = 0.23")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Weight = 0.23")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Weight = 0.23")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Weight = 0.23")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Weight = 0.23")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Weight = 0.23")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Weight = 0.23")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Weight = 0.23")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Weight = 0.075")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Weight = 0.075")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Weight = 0.075")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Weight = 0.075")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Weight = 0.075")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Weight = 0.75")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Weight = 0.23")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Weight = 0.375")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Weight = 0.375")	


	elseif SandboxVars.CustomizableBackpacks.Weight == 3 then  -- Weight = -50


		getScriptManager():getItem("Base.Bquiet"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Weight = 0.05")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Weight = 0.05")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Weight = 0.15")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Weight = 0.15")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Weight = 0.15")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Weight = 0.15")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Weight = 0.15")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Weight = 0.15")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Weight = 0.15")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Weight = 0.15")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Weight = 0.05")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Weight = 0.05")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Weight = 0.05")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Weight = 0.05")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Weight = 0.05")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Weight = 0.5")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Weight = 0.05")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Weight = 0.25")
		
		
	elseif SandboxVars.CustomizableBackpacks.Weight == 4 then  -- Weight = -75

		
		getScriptManager():getItem("Base.Bquiet"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Weight = 0.025")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Weight = 0.025")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Weight = 0.075")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Weight = 0.075")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Weight = 0.075")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Weight = 0.075")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Weight = 0.075")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Weight = 0.075")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Weight = 0.075")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Weight = 0.075")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Weight = 0.075")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Weight = 0.025")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Weight = 0.025")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Weight = 0.025")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Weight = 0.025")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Weight = 0.025")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Weight = 0.25")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Weight = 0.075")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Weight = 0.13")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Weight = 0.13")
		
		
	elseif SandboxVars.CustomizableBackpacks.Weight == 5 then  -- Weight = Weightless

		
		getScriptManager():getItem("Base.Bquiet"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.TFA"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bada"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Breb"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Abag"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Achr"):DoParam("Weight = 0")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Vage"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Bage"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.Abar"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("Weight = 0")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("Weight = 0")
		
		
	end
end

function getRunSpeedModifierVars()
	if SandboxVars.CustomizableBackpacks.RemoveRunSpeedModifier == true then
	else return end
	
	
		getScriptManager():getItem("Base.Bquiet"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Aquiet"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.SPbag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CPBB"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.CPBC"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.TFA"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.MhunkL"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.MhunkR"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Qchr"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Qchr2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bjill"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bada"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bcla"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.TBjill"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bhunk"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bchr"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Breb"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Cjill"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Abag"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Achr"):DoParam("RunSpeedModifier = 1.0")	
		
		getScriptManager():getItem("Base.Ajill"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Aada2"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Vhunk"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Vchr"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Ahunk"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Vage"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Bage"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.Abar"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.ArmbagL"):DoParam("RunSpeedModifier = 1.0")
		
		getScriptManager():getItem("Base.ArmbagR"):DoParam("RunSpeedModifier = 1.0")
	
		
	end

Events.OnSpawnRegionsLoaded.Add(getWeightReductionVars)
Events.OnSpawnRegionsLoaded.Add(getCapacityVars) 
Events.OnSpawnRegionsLoaded.Add(getRunSpeedModifierVars) 
Events.OnSpawnRegionsLoaded.Add(getWeightVars)
Events.OnLoad.Add(getWeightReductionVars)
Events.OnLoad.Add(getCapacityVars)
Events.OnLoad.Add(getRunSpeedModifierVars)
Events.OnLoad.Add(getWeightVars)