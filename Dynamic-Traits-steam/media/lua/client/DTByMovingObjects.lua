require "TimedActions/ISInventoryTransferAction"
--require "TimedActions/ISGrabItemAction"

local DTtraitsByMovingObjects = {}
DTtraitsByMovingObjects.ISInventoryTransferAction = {}

DTtraitsByMovingObjects.ISInventoryTransferAction.perform = ISInventoryTransferAction.perform
function ISInventoryTransferAction:perform()
    DTtraitsByMovingObjects.ISInventoryTransferAction.perform(self)
    local player = self.character;
    local item = self.item;
    --print("DT Logger: running ISInventoryTransferAction:perform")
    --print("The weight of the item is : " .. item:getActualWeight());
    --print("The initial value for DTatdTraits is: " .. player:getModData().DTatdTraits);
    --print("The initial value for DTdoTraits is: " .. player:getModData().DTdoTraits);
    if not player:HasTrait("Dextrous") or not player:HasTrait("Organized") then
        -- CHECK IF THE PLAYER IS OBESE OR VERY UNDERWEIGHT
        if player:HasTrait("Obese") or player:HasTrait("Very Underweight") or player:HasTrait("Emaciated") then
            if not player:HasTrait("Dextrous") then -- CHECK IF THE PLAYER HAVEN'T OBTAINED DEXTROUS YET, IF DON'T, THEN THE CODE IS EXECUTED
                if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 1);
                elseif player:getDescriptor():getProfession() == "burglar" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 0.9);
                elseif player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 0.8);
                else
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 0.7);
                end
            end
            if not player:HasTrait("Organized") then -- CHECK IF THE PLAYER HAVEN'T OBTAINED ORGANIZED YET, IF DON'T, THEN THE CODE IS EXECUTED
                if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 1);
                elseif player:getDescriptor():getProfession() == "carpenter" or player:getDescriptor():getProfession() == "chef" or 
                player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" or 
                player:getDescriptor():getProfession() == "metalworker" or player:getDescriptor():getProfession() == "mechanics" then
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 0.9);
                else
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 0.8);
                end
            end
        -- CHECK IF THE PLAYER IS OVERWEIGHT OR UNDERWEIGHT
        elseif player:HasTrait("Overweight") or player:HasTrait("Underweight") then
            if not player:HasTrait("Dextrous") then -- CHECK IF THE PLAYER HAVEN'T OBTAINED DEXTROUS YET, IF DON'T, THEN THE CODE IS EXECUTED
                if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 3);
                elseif player:getDescriptor():getProfession() == "burglar" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 2);
                elseif player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 1);
                else
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 0.9);
                end
            end
            if not player:HasTrait("Organized") then -- CHECK IF THE PLAYER HAVEN'T OBTAINED ORGANIZED YET, IF DON'T, THEN THE CODE IS EXECUTED
                if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 3);
                elseif player:getDescriptor():getProfession() == "carpenter" or player:getDescriptor():getProfession() == "chef" or 
                player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" or 
                player:getDescriptor():getProfession() == "metalworker" or player:getDescriptor():getProfession() == "mechanics" then
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 2);
                else
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 1);
                end
            end
        -- THE PLAYER DOESN'T HAVE WEIGHT PROBLEMS
        else
            if not player:HasTrait("Dextrous") then -- CHECK IF THE PLAYER HAVEN'T OBTAINED DEXTROUS YET, IF DON'T, THEN THE CODE IS EXECUTED
                if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 5);
                elseif player:getDescriptor():getProfession() == "burglar" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 4);
                elseif player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 3);
                else
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 2);
                end
            end
            if not player:HasTrait("Organized") then -- CHECK IF THE PLAYER HAVEN'T OBTAINED ORGANIZED YET, IF DON'T, THEN THE CODE IS EXECUTED
                if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 5);
                elseif player:getDescriptor():getProfession() == "carpenter" or player:getDescriptor():getProfession() == "chef" or 
                player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" or 
                player:getDescriptor():getProfession() == "metalworker" or player:getDescriptor():getProfession() == "mechanics" then
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 4);
                else
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 3);
                end
            end
        end
    end
    --print("The final value for DTatdTraits is: " .. player:getModData().DTatdTraits);
    --print("The final value for DTdoTraits is: " .. player:getModData().DTdoTraits);
end

function traitsByMovingObjects(player)
    --print("DT Logger: running traitsByMovingObjects function");
    -- CHECK IF THE PLAYER ACHIEVED THE REQUIREMENTS TO REMOVE/GAIN THE TRAITS
    -- ALL THUMBS/DEXTROUS
    if player:getModData().DTatdTraits >= 0 and player:HasTrait("AllThumbs") then
        player:getTraits():remove("AllThumbs");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_AllThumbs"), false, HaloTextHelper.getColorGreen());
    elseif player:getModData().DTatdTraits >= 200000 and not player:HasTrait("Dextrous") then
        player:getTraits():add("Dextrous");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Dexterous"), true, HaloTextHelper.getColorGreen());
    -- ORGANIZED/DISORGANIZED
    elseif player:getModData().DTdoTraits >= 0 and player:HasTrait("Disorganized") then
        player:getTraits():remove("Disorganized");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Disorganized"), false, HaloTextHelper.getColorGreen());
    elseif player:getModData().DTdoTraits >= 300000 and not player:HasTrait("Organized") then
        player:getTraits():add("Organized");
        HaloTextHelper.addTextWithArrow(player, getText("UI_trait_Packmule"), true, HaloTextHelper.getColorGreen());
    end
    --print("DT Logger: DTatdTraits value is " .. player:getModData().DTatdTraits);
    --print("DT Logger: DTdoTraits value is " .. player:getModData().DTdoTraits);
end

--[[ DTtraitsByMovingObjects.ISGrabItemAction = {}

DTtraitsByMovingObjects.ISGrabItemAction.perform = ISGrabItemAction.perform
function ISGrabItemAction:perform()
    DTtraitsByMovingObjects.ISGrabItemAction.perform(self)
    local player = self.character;
    print("Character profession: " .. player:getDescriptor():getProfession())
    local item = self.item;
    print("The weight of the item is : " .. item:getActualWeight());
    --print("The initial value for DTatdTraits is: " .. player:getModData().DTatdTraits);
    --print("The initial value for DTdoTraits is: " .. player:getModData().DTdoTraits);
    if not player:HasTrait("Dextrous") or not player:HasTrait("Organized") then
        -- CHECK IF THE PLAYER IS OBESE OR VERY UNDERWEIGHT
        if player:HasTrait("Obese") or player:HasTrait("Very Underweight") or player:HasTrait("Emaciated") then
            if not player:HasTrait("Dextrous") then -- CHECK IF THE PLAYER HAVEN'T OBTAINED DEXTROUS YET, IF DON'T, THEN THE CODE IS EXECUTED
                if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 1);
                elseif player:getDescriptor():getProfession() == "burglar" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 0.9);
                elseif player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 0.8);
                else
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 0.7);
                end
            end
            if not player:HasTrait("Organized") then -- CHECK IF THE PLAYER HAVEN'T OBTAINED ORGANIZED YET, IF DON'T, THEN THE CODE IS EXECUTED
                if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 1);
                elseif player:getDescriptor():getProfession() == "carpenter" or player:getDescriptor():getProfession() == "chef" or 
                player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" or 
                player:getDescriptor():getProfession() == "metalworker" or player:getDescriptor():getProfession() == "mechanics" then
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 0.9);
                else
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 0.8);
                end
            end
        -- CHECK IF THE PLAYER IS OVERWEIGHT OR UNDERWEIGHT
        elseif player:HasTrait("Overweight") or player:HasTrait("Underweight") then
            if not player:HasTrait("Dextrous") then -- CHECK IF THE PLAYER HAVEN'T OBTAINED DEXTROUS YET, IF DON'T, THEN THE CODE IS EXECUTED
                if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 3);
                elseif player:getDescriptor():getProfession() == "burglar" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 2);
                elseif player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 1);
                else
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 0.9);
                end
            end
            if not player:HasTrait("Organized") then -- CHECK IF THE PLAYER HAVEN'T OBTAINED ORGANIZED YET, IF DON'T, THEN THE CODE IS EXECUTED
                if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 3);
                elseif player:getDescriptor():getProfession() == "carpenter" or player:getDescriptor():getProfession() == "chef" or 
                player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" or 
                player:getDescriptor():getProfession() == "metalworker" or player:getDescriptor():getProfession() == "mechanics" then
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 2);
                else
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 1);
                end
            end
        -- THE PLAYER DOESN'T HAVE WEIGHT PROBLEMS
        else
            if not player:HasTrait("Dextrous") then -- CHECK IF THE PLAYER HAVEN'T OBTAINED DEXTROUS YET, IF DON'T, THEN THE CODE IS EXECUTED
                if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 5);
                elseif player:getDescriptor():getProfession() == "burglar" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 4);
                elseif player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" then
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 3);
                else
                    player:getModData().DTatdTraits = player:getModData().DTatdTraits + (item:getActualWeight() * 2);
                end
            end
            if not player:HasTrait("Organized") then -- CHECK IF THE PLAYER HAVEN'T OBTAINED ORGANIZED YET, IF DON'T, THEN THE CODE IS EXECUTED
                if player:getDescriptor():getProfession() == "nurse" or player:getDescriptor():getProfession() == "doctor" then
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 5);
                elseif player:getDescriptor():getProfession() == "carpenter" or player:getDescriptor():getProfession() == "chef" or 
                player:getDescriptor():getProfession() == "electrician" or player:getDescriptor():getProfession() == "engineer" or 
                player:getDescriptor():getProfession() == "metalworker" or player:getDescriptor():getProfession() == "mechanics" then
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 4);
                else
                    player:getModData().DTdoTraits = player:getModData().DTdoTraits + (item:getActualWeight() * 3);
                end
            end
        end
    end
    --print("The final value for DTatdTraits is: " .. player:getModData().DTatdTraits);
    --print("The final value for DTdoTraits is: " .. player:getModData().DTdoTraits);
end ]]

