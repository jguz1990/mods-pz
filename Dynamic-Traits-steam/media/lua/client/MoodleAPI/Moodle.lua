local Moodle = {}
Moodle.__index = Moodle

---@param name string
---@param texturePath string
---@param moodleType string  MoodleAPI.Type
---@param getLevelFunc function  Get moodle value (from 0.0 to 1.0) and return level (from 0 to 4)
---@param value number
---@return table
function Moodle:new(name, texturePath, moodleType, getLevelFunc, value)
    local o = {}
	setmetatable(o, self)
	self.__index = self
    
    o.name = name
    o.type = moodleType
    o.value = value
    o.getLevelFunc = getLevelFunc
    o.tex = getTexture(texturePath)

    return o
end

---Get level of moodle 
---@return number  (from 0 to 4)
function Moodle:getLevel()
    return self.getLevelFunc(self)
end

---Set moodle value
---@param val number  (from 0.0 to 1.0)
function Moodle:setValue(val)
    if val > 1.0 then val = 1 end
    if val < 0 then val = 0 end
    self.value = val
end

---Get moodle value
---@return number  (from 0.0 to 1.0)
function Moodle:getValue()
    return self.value
end

return Moodle