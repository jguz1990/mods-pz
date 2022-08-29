local group = AttachedLocations.getGroup("Human")
group:getOrCreateLocation("S_Belta Left"):setAttachmentName("S_Belta")
group:getOrCreateLocation("S_Beltb Left"):setAttachmentName("S_Beltb")
group:getOrCreateLocation("S_Beltc Left"):setAttachmentName("S_Beltc")
group:getOrCreateLocation("S_Beltd Left"):setAttachmentName("S_Beltd")
group:getOrCreateLocation("S_Belte Left"):setAttachmentName("S_Belte")
group:getOrCreateLocation("S_Beltf Left"):setAttachmentName("S_Beltf")
group:getOrCreateLocation("S_Beltg Left"):setAttachmentName("S_Beltg")
group:getOrCreateLocation("S_Belth Left"):setAttachmentName("S_Belth")
group:getOrCreateLocation("S_Belti Left"):setAttachmentName("S_Belti")

require 'NPCs/BodyLocations'
--***********************************************************
--**                    THE INDIE STONE                    **
--***********************************************************

-- Locations must be declared in render-order.
-- Location IDs must match BodyLocation= and CanBeEquipped= values in items.txt.
local group = BodyLocations.getGroup("Human")

group:getOrCreateLocation("Belt_a")
group:getOrCreateLocation("Belt_b")