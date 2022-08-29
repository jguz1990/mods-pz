local itemscript = getScriptManager():getAllItems()
local allweaponitems = {}
for i = 1,itemscript:size() do
    local itemz = itemscript:get(i-1)
    if itemz:getTypeString() ~= "Weapon" then
        table.insert(allweaponitems, tostring(itemz:getModuleName().."."..itemz:getName()))
    end
end
local function attachallitems()
    for i=1,#allweaponitems do
        local itemzz = ScriptManager.instance:getItem(allweaponitems[i])
        itemzz:DoParam("AttachmentType = " .. "Holster")
    end
end


Events.OnGameBoot.Add(attachallitems)
