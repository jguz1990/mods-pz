local item = ScriptManager.instance:getItem("Base.PetrolCan")	
if item then 
	item:DoParam("AttachmentType = Gas")
end
local item = ScriptManager.instance:getItem("Base.EmptyPetrolCan")	
if item then 
	item:DoParam("AttachmentType = Gas")
end