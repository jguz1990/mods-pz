-- All Credit for this goes to Snake
require ("TimedActions/ISBaseTimedAction");

StudyPlantAction = ISBaseTimedAction:derive("StudyPlantAction");

function StudyPlantAction:isValid()
	return (self.character:getPrimaryHandItem() ~= nil and self.character:getPrimaryHandItem():getType() ~= nil and StudyPlantsDefs[self.character:getPrimaryHandItem():getType()] ~= nil);
end

function StudyPlantAction:update()
    self.item:setJobDelta(self:getJobDelta());
end

function StudyPlantAction:start()
	self.character:playSound("RemovePlant")
    self.item:setJobType(getText("ContextMenu_StudyPlant"));
    self.item:setJobDelta(0.0);
	self:setActionAnim(CharacterActionAnims.Craft);
end

function StudyPlantAction:stop()
	ISBaseTimedAction.stop(self);
	self.item:setJobDelta(0.0);
end

function StudyPlantAction:perform()

    ISBaseTimedAction.perform(self);
	self.item:setJobDelta(0.0);
    self.prim = self.character:getPrimaryHandItem();
	if self.prim and StudyPlantsDefs[self.character:getPrimaryHandItem():getType()] then
		if(self.item:getModData().DTAlreadyStudied == nil) then
			self.character:getModData().DTPlantsKnowledge = self.character:getModData().DTPlantsKnowledge + ZombRand(5);
			--print("DTPlantsKnowledge: " .. self.character:getModData().DTPlantsKnowledge);
			if(self.character:getModData().DTPlantsKnowledge > 100) and not self.character:HasTrait("Herbalist") then
				self.character:getTraits():add("Herbalist");
				HaloTextHelper.addTextWithArrow(self.character, getText("UI_trait_Herbalist"), true, HaloTextHelper.getColorGreen());
				local playerRecipes = self.character:getKnownRecipes();
				if not playerRecipes:contains("Herbalist") then
					playerRecipes:add("Herbalist");
				end
			end
			self.character:Say(getText("IGUI_PlayerText_PlantStudyDone"));
			self.item:getModData().DTAlreadyStudied = true;
		else
			self.character:Say(getText("IGUI_PlayerText_PlantStudyAlreadyDone"));
		end
	end
end

function StudyPlantAction:new(character, item, time)
	local o = {};
	setmetatable(o, self);
	self.__index = self;
	o.character = character;
	o.item = item;
	o.stopOnWalk = true;
	o.stopOnRun = true;
	o.maxTime = time;
	return o;
end