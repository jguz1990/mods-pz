require 'Items/ProceduralDistributions'

AZMoreLoot = AZMoreLoot or {};

--Hunting Knives
AZMoreLoot.tab_addMagProcedural_Knife  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.HuntingKnife");
  table.insert(ProceduralDistributions.list[x].items, count);
end
--Gas cans
AZMoreLoot.tab_addMagProcedural_PetrolCan  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.EmptyPetrolCan");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.EmptyPetrolCan");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.PetrolCan");
  table.insert(ProceduralDistributions.list[x].items, count);  
end
--Batteries
AZMoreLoot.tab_addMagProcedural_Battery  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.Battery");
  table.insert(ProceduralDistributions.list[x].items, count);
end
--Jars and jar lids
AZMoreLoot.tab_addMagProcedural_Jars  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.BoxOfJars");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.JarLid");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.EmptyJar");
  table.insert(ProceduralDistributions.list[x].items, count);  
end
--Fishing gear
AZMoreLoot.tab_addMagProcedural_Fishing  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.FishingRod");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.FishingTackle");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.FishingTackle2");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.FishingLine");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.FishingNet");
  table.insert(ProceduralDistributions.list[x].items, count);   
end
--Nails + Box
AZMoreLoot.tab_addMagProcedural_Nails  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.Nails");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.NailsBox");
  table.insert(ProceduralDistributions.list[x].items, count);
end
--Nails Junk
AZMoreLoot.tab_addMagProcedural_Nails_junk  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].junk = ProceduralDistributions.list[x].junk or {};
  ProceduralDistributions.list[x].junk.items = ProceduralDistributions.list[x].junk.items or {};
  table.insert(ProceduralDistributions.list[x].junk.items,"Base.Nails");
  table.insert(ProceduralDistributions.list[x].junk.items, count);
  table.insert(ProceduralDistributions.list[x].junk.items,"Base.Candle");
  table.insert(ProceduralDistributions.list[x].junk.items, count);  
end
--Ammo
AZMoreLoot.tab_addMagProcedural_Ammo  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.Bullets9mm");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.Bullets9mmBox");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.Bullets38");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.Bullets38Box");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.ShotgunShells");
  table.insert(ProceduralDistributions.list[x].items, count);  
  table.insert(ProceduralDistributions.list[x].items,"Base.ShotgunShellsBox");
  table.insert(ProceduralDistributions.list[x].items, count);    
  table.insert(ProceduralDistributions.list[x].items,"Base.Bullets45");
  table.insert(ProceduralDistributions.list[x].items, count);     
  table.insert(ProceduralDistributions.list[x].items,"Base.Bullets45Box");
  table.insert(ProceduralDistributions.list[x].items, count);      
end
--Propane Accessories
AZMoreLoot.tab_addMagProcedural_PropaneAccessories  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.PropaneTank");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.BlowTorch");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.WeldingRods");
  table.insert(ProceduralDistributions.list[x].items, count); 
  table.insert(ProceduralDistributions.list[x].items,"Base.WeldingMask");
  table.insert(ProceduralDistributions.list[x].items, count);   
end
--Sheet Metal
AZMoreLoot.tab_addMagProcedural_MetalSheets  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.SheetMetal");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.SmallSheetMetal");
  table.insert(ProceduralDistributions.list[x].items, count);
end
--Barbed Wire 
AZMoreLoot.tab_addMagProcedural_BarbedWire  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.BarbedWire");
  table.insert(ProceduralDistributions.list[x].items, count); 
end
--Construction Materials 
AZMoreLoot.tab_addMagProcedural_PlasterPowder  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.PlasterPowder");
  table.insert(ProceduralDistributions.list[x].items, count);
end
--Construction Materials 
AZMoreLoot.tab_addMagProcedural_ConcretePowder  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.ConcretePowder");
  table.insert(ProceduralDistributions.list[x].items, count);
end
--Paint Buckets
AZMoreLoot.tab_addMagProcedural_PaintBuckets  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.PaintRed");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.PaintBlack");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.PaintBlue");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.PaintBrown");
  table.insert(ProceduralDistributions.list[x].items, count);  
  table.insert(ProceduralDistributions.list[x].items,"Base.PaintCyan");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.PaintGreen");
  table.insert(ProceduralDistributions.list[x].items, count);  
  table.insert(ProceduralDistributions.list[x].items,"Base.PaintLightBlue");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.PaintGrey");
  table.insert(ProceduralDistributions.list[x].items, count);  
  table.insert(ProceduralDistributions.list[x].items,"Base.PaintLightBrown");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.PaintOrange");
  table.insert(ProceduralDistributions.list[x].items, count); 
  table.insert(ProceduralDistributions.list[x].items,"Base.PaintPink");
  table.insert(ProceduralDistributions.list[x].items, count);  
  table.insert(ProceduralDistributions.list[x].items,"Base.PaintPurple");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.PaintTurquoise");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.PaintWhite");
  table.insert(ProceduralDistributions.list[x].items, count); 
  table.insert(ProceduralDistributions.list[x].items,"Base.PaintYellow");
  table.insert(ProceduralDistributions.list[x].items, count);   
end
--Sledgehammers
AZMoreLoot.tab_addMagProcedural_Sledgy  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.Sledgehammer");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.Sledgehammer2");
  table.insert(ProceduralDistributions.list[x].items, count);  
end
--Axes
AZMoreLoot.tab_addMagProcedural_Axes = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.WoodAxe");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.Sledgehammer2");
  table.insert(ProceduralDistributions.list[x].items, count);  
end
--Skill Magazines
AZMoreLoot.tab_addMagProcedural_SkillMagazines  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.ElectronicsMag4"); --How to use generators
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.HerbalistMag"); --Herbalist
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.CookingMag1"); --Make Cake Batter;Make Pie Dough
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.CookingMag2"); --Make Bread Dough
  table.insert(ProceduralDistributions.list[x].items, count);    
end
-- VHS
AZMoreLoot.tab_addMagProcedural_VHS  = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.VHS");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.VHS_Retail"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.VHS_Home"); 
  table.insert(ProceduralDistributions.list[x].items, count);    
end
-- Car Tires
AZMoreLoot.tab_addMagProcedural_Tires = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.CarBatteryCharger");
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.TirePump");
  table.insert(ProceduralDistributions.list[x].items, count);  
  table.insert(ProceduralDistributions.list[x].items,"Base.ModernTire1"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.ModernTire2"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.ModernTire3"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.NormalTire1"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.NormalTire2"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.NormalTire3"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.OldTire1"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.OldTire2"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.OldTire3"); 
  table.insert(ProceduralDistributions.list[x].items, count);    
end
-- Trunks
AZMoreLoot.tab_addMagProcedural_EngineDoor = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};  
  table.insert(ProceduralDistributions.list[x].items,"Base.EngineDoor1"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.EngineDoor2"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.EngineDoor3"); 
  table.insert(ProceduralDistributions.list[x].items, count); 
end
-- Engine parts
AZMoreLoot.tab_addMagProcedural_EngineParts = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.EngineParts");
  table.insert(ProceduralDistributions.list[x].items, count);  
end
-- Gas Tanks
AZMoreLoot.tab_addMagProcedural_GasTanks = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.BigGasTank1");
  table.insert(ProceduralDistributions.list[x].items, count);  
  table.insert(ProceduralDistributions.list[x].items,"Base.BigGasTank2"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.BigGasTank3"); 
  table.insert(ProceduralDistributions.list[x].items, count); 
  table.insert(ProceduralDistributions.list[x].items,"Base.NormalGasTank1");
  table.insert(ProceduralDistributions.list[x].items, count);  
  table.insert(ProceduralDistributions.list[x].items,"Base.NormalGasTank2"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.NormalGasTank3"); 
  table.insert(ProceduralDistributions.list[x].items, count);  
  table.insert(ProceduralDistributions.list[x].items,"Base.SmallGasTank1");
  table.insert(ProceduralDistributions.list[x].items, count);  
  table.insert(ProceduralDistributions.list[x].items,"Base.SmallGasTank2"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.SmallGasTank3"); 
  table.insert(ProceduralDistributions.list[x].items, count);  
end
-- Windshields
AZMoreLoot.tab_addMagProcedural_Windshield = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.Windshield1");
  table.insert(ProceduralDistributions.list[x].items, count);  
  table.insert(ProceduralDistributions.list[x].items,"Base.Windshield2"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.Windshield3"); 
  table.insert(ProceduralDistributions.list[x].items, count); 
  table.insert(ProceduralDistributions.list[x].items,"Base.RearWindshield1");
  table.insert(ProceduralDistributions.list[x].items, count);  
  table.insert(ProceduralDistributions.list[x].items,"Base.RearWindshield2"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.RearWindshield3"); 
  table.insert(ProceduralDistributions.list[x].items, count);  
  table.insert(ProceduralDistributions.list[x].items,"Base.FrontWindow1");
  table.insert(ProceduralDistributions.list[x].items, count);  
  table.insert(ProceduralDistributions.list[x].items,"Base.FrontWindow2"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.FrontWindow3"); 
  table.insert(ProceduralDistributions.list[x].items, count);  
end
-- Suspension Brakes
AZMoreLoot.tab_addMagProcedural_SuspensionBrakes = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.EngineParts");
  table.insert(ProceduralDistributions.list[x].items, count);  
  table.insert(ProceduralDistributions.list[x].items,"Base.ModernBrake1"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.ModernBrake2"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.ModernBrake3"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.ModernSuspension1"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.ModernSuspension2"); 
  table.insert(ProceduralDistributions.list[x].items, count);
  table.insert(ProceduralDistributions.list[x].items,"Base.ModernSuspension3"); 
  table.insert(ProceduralDistributions.list[x].items, count);   
end

--Salt
AZMoreLoot.tab_addMagProcedural_Salt = function(x,count)
  ProceduralDistributions = ProceduralDistributions or {};
  ProceduralDistributions.list = ProceduralDistributions.list or {};
  ProceduralDistributions.list[x] = ProceduralDistributions.list[x] or {};
  ProceduralDistributions.list[x].items = ProceduralDistributions.list[x].items or {};
  table.insert(ProceduralDistributions.list[x].items,"Base.Salt");
  table.insert(ProceduralDistributions.list[x].items, count);
end

--The values in green represent the normal chance amount in each loot table.
--N/A means that in vanilla, the item does not exist in the table - ergo they were added in. 

--HuntingKnife
AZMoreLoot.tab_addMagProcedural_Knife("GunStoreDisplayCase",4.0);--n/a
--Batteries
AZMoreLoot.tab_addMagProcedural_Battery("CrateBatteries",100.0);--110
--Gas cans
AZMoreLoot.tab_addMagProcedural_PetrolCan("StoreShelfMechanics",2.5);--20
AZMoreLoot.tab_addMagProcedural_PetrolCan("CarSupplyTools",1.5);--10
AZMoreLoot.tab_addMagProcedural_PetrolCan("CrateMechanics",1.0);--10
AZMoreLoot.tab_addMagProcedural_PetrolCan("GarageMechanics",1.0);--20
--Fishing
AZMoreLoot.tab_addMagProcedural_Fishing("CrateFishing",20.0);--120
AZMoreLoot.tab_addMagProcedural_Fishing("CrateRandomJunk",1.0);--1
AZMoreLoot.tab_addMagProcedural_Fishing("FishingStoreGear",10.0);--200
--Skill Magazines
AZMoreLoot.tab_addMagProcedural_SkillMagazines("LivingRoomShelf",0.05);--0.1
AZMoreLoot.tab_addMagProcedural_SkillMagazines("LivingRoomShelfNoTapes",0.05);--0.1
AZMoreLoot.tab_addMagProcedural_SkillMagazines("LibraryBooks",0.25);--1
AZMoreLoot.tab_addMagProcedural_SkillMagazines("MagazineRackMixed",0.25);--0.5
AZMoreLoot.tab_addMagProcedural_SkillMagazines("PostOfficeMagazines",0.05);--1
AZMoreLoot.tab_addMagProcedural_SkillMagazines("ShelfGeneric",0.05);--1
AZMoreLoot.tab_addMagProcedural_SkillMagazines("BookstoreBooks",0.5);--2
AZMoreLoot.tab_addMagProcedural_SkillMagazines("ToolStoreBooks",0.5);--2
AZMoreLoot.tab_addMagProcedural_SkillMagazines("CrateMagazines",0.25);--1
AZMoreLoot.tab_addMagProcedural_SkillMagazines("ElectronicStoreMagazines",2.0);--8
AZMoreLoot.tab_addMagProcedural_SkillMagazines("EngineerTools",0.5);--2
--BarbedWire
AZMoreLoot.tab_addMagProcedural_BarbedWire("ToolStoreMisc",4.0);--2
AZMoreLoot.tab_addMagProcedural_BarbedWire("WireFactoryBarbed",10.0);--110
--Sledgehammer
AZMoreLoot.tab_addMagProcedural_Sledgy("ToolStoreTools",0.01);--0.01
AZMoreLoot.tab_addMagProcedural_Sledgy("ArmyHangarTools",0.01);--0.01
AZMoreLoot.tab_addMagProcedural_Sledgy("CrateTools",0.01);--0.01
AZMoreLoot.tab_addMagProcedural_Sledgy("FireStorageTools",0.025);--0.05
AZMoreLoot.tab_addMagProcedural_Sledgy("GarageTools",0.01);--0.01
AZMoreLoot.tab_addMagProcedural_Sledgy("LoggingFactoryTools",0.05);--0.5
AZMoreLoot.tab_addMagProcedural_Sledgy("MeleeWeapons",0.5);--0.5
--VHS
AZMoreLoot.tab_addMagProcedural_VHS("CrateVHSTapes",10.0);--170
AZMoreLoot.tab_addMagProcedural_VHS("MovieRentalShelves",10.0);--80
AZMoreLoot.tab_addMagProcedural_VHS("LibraryBooks",2.0);--n/a
--Concrete
AZMoreLoot.tab_addMagProcedural_ConcretePowder("OtherGeneric",5.0);--10
AZMoreLoot.tab_addMagProcedural_ConcretePowder("CrateConcrete",20.0);--110
--Plaster
AZMoreLoot.tab_addMagProcedural_PlasterPowder("OtherGeneric",5.0);--10
AZMoreLoot.tab_addMagProcedural_PlasterPowder("CratePlaster",20.0);--110
--Jars
AZMoreLoot.tab_addMagProcedural_Jars("GardenStoreMisc",3.0);--1.0
AZMoreLoot.tab_addMagProcedural_Jars("OtherGeneric",0.03);--0.01
AZMoreLoot.tab_addMagProcedural_Jars("CrateCanning",40.0);--140
--Axes
AZMoreLoot.tab_addMagProcedural_Axes("LoggingFactoryTools",4.0);--17
AZMoreLoot.tab_addMagProcedural_Axes("FireStorageTools",3.0);--17
AZMoreLoot.tab_addMagProcedural_Axes("MeleeWeapons",2.0);--10
AZMoreLoot.tab_addMagProcedural_Axes("ToolStoreTools",0.05); --0.05
AZMoreLoot.tab_addMagProcedural_Axes("CrateCarpentry",0.025); --0.05
AZMoreLoot.tab_addMagProcedural_Axes("GarageCarpentry",0.025); --0.05
AZMoreLoot.tab_addMagProcedural_Axes("GarageTools",0.025); --0.05
AZMoreLoot.tab_addMagProcedural_Axes("CrateRandomJunk",0.01); --0.05
AZMoreLoot.tab_addMagProcedural_Axes("CrateTools",0.01); --0.05
--Nails
AZMoreLoot.tab_addMagProcedural_Nails("GarageCarpentry",10.0); --30
AZMoreLoot.tab_addMagProcedural_Nails("JanitorTools",5.0); --10
AZMoreLoot.tab_addMagProcedural_Nails("OtherGeneric",10.0); --111
AZMoreLoot.tab_addMagProcedural_Nails("ToolStoreCarpentry",20.0); --20
AZMoreLoot.tab_addMagProcedural_Nails("ToolStoreMisc",10.0); --20
AZMoreLoot.tab_addMagProcedural_Nails("ToolStoreMisc",10.0); --20
AZMoreLoot.tab_addMagProcedural_Nails("ToolStoreTools",2.5); --10
AZMoreLoot.tab_addMagProcedural_Nails("CrateCarpentry",10.0); --30
AZMoreLoot.tab_addMagProcedural_Nails("CrateRandomJunk",0.025); --1
AZMoreLoot.tab_addMagProcedural_Nails_junk("JanitorTools",2.0); --n/a
--Paint Buckets
AZMoreLoot.tab_addMagProcedural_PaintBuckets("CratePaint",15.0); --60
--Metal Sheets
AZMoreLoot.tab_addMagProcedural_MetalSheets("CrateRandomJunk",0.025); --1.6
AZMoreLoot.tab_addMagProcedural_MetalSheets("CrateSheetMetal",50.0); --110
AZMoreLoot.tab_addMagProcedural_MetalSheets("GarageMetalwork",20.0); --40
AZMoreLoot.tab_addMagProcedural_MetalSheets("ToolStoreMetalwork",20.0); --40
--Propane
AZMoreLoot.tab_addMagProcedural_PropaneAccessories("MetalShopTools",10.0); --40
AZMoreLoot.tab_addMagProcedural_PropaneAccessories("CrateRandomJunk",0.2); --0.2
AZMoreLoot.tab_addMagProcedural_PropaneAccessories("GarageMetalwork",20.0); --40
AZMoreLoot.tab_addMagProcedural_PropaneAccessories("ToolStoreMetalwork",0.025); --0.5
AZMoreLoot.tab_addMagProcedural_PropaneAccessories("ArmyHangarTools",1.0); --4.0
AZMoreLoot.tab_addMagProcedural_PropaneAccessories("MechanicShelfTools",2.5); --10.0
--Ammo
AZMoreLoot.tab_addMagProcedural_Ammo("PoliceStorageAmmunition",20); --180.0
AZMoreLoot.tab_addMagProcedural_Ammo("PoliceStorageGuns",20); --180.0
AZMoreLoot.tab_addMagProcedural_Ammo("PoliceStorageAmmunition",20); --180.0
AZMoreLoot.tab_addMagProcedural_Ammo("PoliceStorageGuns",20); --180.0
AZMoreLoot.tab_addMagProcedural_Ammo("PoliceStorageAmmunition",20); --180.0
AZMoreLoot.tab_addMagProcedural_Ammo("PoliceStorageGuns",20); --180.0
--Propane
AZMoreLoot.tab_addMagProcedural_PropaneAccessories("MetalShopTools",10.0); --40
AZMoreLoot.tab_addMagProcedural_PropaneAccessories("MetalShopTools",10.0); --40

--Salt
AZMoreLoot.tab_addMagProcedural_Salt("ChineseKitchenButcher",1.0);--4
AZMoreLoot.tab_addMagProcedural_Salt("ItalianKitchenButcher",1.0);--8
AZMoreLoot.tab_addMagProcedural_Salt("JaysKitchenButcher",1.0);--8
AZMoreLoot.tab_addMagProcedural_Salt("MexicanKitchenButcher",1.0);--8
AZMoreLoot.tab_addMagProcedural_Salt("FishChipsKitchenButcher",1.0);--8
AZMoreLoot.tab_addMagProcedural_Salt("SeafoodKitchenButcher",1.0);--8
AZMoreLoot.tab_addMagProcedural_Salt("StoreKitchenButcher",1.0);--8
AZMoreLoot.tab_addMagProcedural_Salt("StoreShelfSpices",10.0);--40
AZMoreLoot.tab_addMagProcedural_Salt("FishChipsKitchenButcher",1.0);--8

--Mechanics 
 AZMoreLoot.tab_addMagProcedural_Tires("CarTiresModern1",20.0); --60
 AZMoreLoot.tab_addMagProcedural_Tires("CarTiresModern2",20.0); --60
 AZMoreLoot.tab_addMagProcedural_Tires("CarTiresModern3",20.0); --60
 AZMoreLoot.tab_addMagProcedural_Tires("CarTiresNormal1",20.0); --60
 AZMoreLoot.tab_addMagProcedural_Tires("CarTiresNormal2",20.0); --60
 AZMoreLoot.tab_addMagProcedural_Tires("CarTiresNormal3",20.0); --60
 
 AZMoreLoot.tab_addMagProcedural_EngineParts("CrateMechanics",20.0); --20
 AZMoreLoot.tab_addMagProcedural_EngineParts("MechanicShelfBrakes",40.0); --40
 AZMoreLoot.tab_addMagProcedural_EngineParts("MechanicShelfMufflers",40.0); --40
 AZMoreLoot.tab_addMagProcedural_EngineParts("MechanicShelfSuspension",40.0); --40
 
 AZMoreLoot.tab_addMagProcedural_SuspensionBrakes("MechanicShelfBrakes",40.0); --40
 AZMoreLoot.tab_addMagProcedural_SuspensionBrakes("CarBrakesModern1",40.0); --60
 AZMoreLoot.tab_addMagProcedural_SuspensionBrakes("CarBrakesModern2",40.0); --60
 AZMoreLoot.tab_addMagProcedural_SuspensionBrakes("CarBrakesModern3",40.0); --60
 AZMoreLoot.tab_addMagProcedural_SuspensionBrakes("CarBrakesNormal1",40.0); --60
 AZMoreLoot.tab_addMagProcedural_SuspensionBrakes("CarBrakesNormal2",40.0); --60
 AZMoreLoot.tab_addMagProcedural_SuspensionBrakes("CarBrakesNormal3",40.0); --60
 AZMoreLoot.tab_addMagProcedural_SuspensionBrakes("CarSuspensionModern1",40.0); --60
 AZMoreLoot.tab_addMagProcedural_SuspensionBrakes("CarSuspensionModern2",40.0); --60
 AZMoreLoot.tab_addMagProcedural_SuspensionBrakes("CarSuspensionModern3",40.0); --60
 AZMoreLoot.tab_addMagProcedural_SuspensionBrakes("CarSuspensionNormal1",40.0); --60
 AZMoreLoot.tab_addMagProcedural_SuspensionBrakes("CarSuspensionNormal2",40.0); --60
 AZMoreLoot.tab_addMagProcedural_SuspensionBrakes("CarSuspensionNormal3",40.0); --60
 AZMoreLoot.tab_addMagProcedural_SuspensionBrakes("CrateMechanics",2.0); --6
 AZMoreLoot.tab_addMagProcedural_SuspensionBrakes("MechanicShelfSuspension",8.0); --42
 
 AZMoreLoot.tab_addMagProcedural_GasTanks("CrateMechanics",20.0); --n/a
 AZMoreLoot.tab_addMagProcedural_EngineDoor("CrateMechanics",20.0); --n/a
 AZMoreLoot.tab_addMagProcedural_EngineDoor("CrateMechanics",10.0); --n/a
 AZMoreLoot.tab_addMagProcedural_Windshield("CrateMechanics",20.0); --n/a