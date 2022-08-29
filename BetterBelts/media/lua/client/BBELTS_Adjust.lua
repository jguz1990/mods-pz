function Adjust(Name, Property, Value)
Item = ScriptManager.instance:getItem(Name)
Item:DoParam(Property.." = "..Value)
end

Adjust("Radio.WalkieTalkie1","Weight","0.5")

Adjust("Radio.WalkieTalkie2","Weight","0.6")

Adjust("Radio.WalkieTalkie3","Weight","0.7")

Adjust("Radio.WalkieTalkie4","Weight","0.8")

Adjust("Radio.WalkieTalkie5","Weight","0.9")

Adjust("Radio.WalkieTalkieMakeShift","Weight","0.6")





