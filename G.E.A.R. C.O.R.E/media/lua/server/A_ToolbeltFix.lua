local item = ScriptManager.instance:getItem("Base.Toolbelt")	
if item then 
	item:DoParam("BodyLocation = Belt")
	item:DoParam("CanBeEquipped = Belt")
end