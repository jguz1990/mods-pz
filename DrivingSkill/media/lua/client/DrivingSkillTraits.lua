local function initDrivingSkillTraits()
    local driverTrait = TraitFactory.addTrait("driver", getText("UI_trait_driver"), 3, getText("UI_trait_driverdesc"), false, false);
    driverTrait:addXPBoost(Perks.Driving, 1);
end

Events.OnGameBoot.Add(initDrivingSkillTraits);