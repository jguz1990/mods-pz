local extraUI = ActiveMods.getById("currentGame"):isModActive("ExtraMapSymbolsUI") or ActiveMods.getById("currentGame"):isModActive("ExtraMapSymbolsUI_DEV")
local symbols = {}

print("ExtraModSymbols: UI=" .. tostring(extraUI))

local function map_symbol(name, suffix)
	local symbolId = "extra:" .. name
	local filename = "media/ui/ExtraMapSymbols/rMap_" .. name

	if suffix then
		if not extraUI or type(suffix) ~= "number" then
			return
		end

		symbolId = symbolId .. "//alt=" .. suffix
		filename = filename .. "." .. suffix
	end

	MapSymbolDefinitions.getInstance():addTexture(symbolId, filename .. ".png")
end

local function alt_symbol(name, suffix)
	if not extraUI or type(name) ~= "string" or type(suffix) ~= "number" then
		return
	end

	MapSymbolDefinitions.getInstance():addTexture(name .. "//alt=" .. suffix, "media/ui/ExtraMapSymbols/alt/" .. name .. "." .. suffix .. ".png")
end

local function set_symbol(name, vname)
	if type(name) == "boolean" and type(vname) == "nil" and name then
		local mapsymbols = {}
		for s=0, MapSymbolDefinitions.getInstance():getSymbolCount()-1 do
			local symbol = MapSymbolDefinitions.getInstance():getSymbolByIndex(s)
			local id = symbol:getId()
			mapsymbols[s] = {}
			mapsymbols[s].id = id
			mapsymbols[s].texture = symbol:getTexturePath()
			mapsymbols[s].width = symbol:getWidth()
			mapsymbols[s].height = symbol:getHeight()

			if symbols[id] then
				mapsymbols[s].texture = symbols[id].texture
			end
		end

		MapSymbolDefinitions.Reset()

		for _,symbol in pairs(mapsymbols) do
			if symbol.width and symbol.height then
				MapSymbolDefinitions.getInstance():addTexture(symbol.id, symbol.texture, symbol.width, symbol.height)
			else
				MapSymbolDefinitions.getInstance():addTexture(symbol.id, symbol.texture)
			end
		end
	elseif type(name) ~= "string" or type(vname) ~= "string" then
		return
	elseif not MapSymbolDefinitions.getInstance():getSymbolById(vname) then
		return
	else
		symbols[vname] = { texture = "media/ui/ExtraMapSymbols/rMap_" .. name .. ".png" }
	end
end

set_symbol("arrow1", "ArrowNorthEast")
set_symbol("arrow2", "ArrowSouthEast")
set_symbol("arrow3", "ArrowSouthWest")
set_symbol("arrow4", "ArrowNorthWest")
set_symbol("food", "KnifeFork")
set_symbol("wrench", "Wrench")
set_symbol(true)

-- vanilla alternatives
alt_symbol("Checkmark", 0)
alt_symbol("Checkmark", 1)
alt_symbol("Checkmark", 2)
alt_symbol("Checkmark", 3)

alt_symbol("Z", 0)
alt_symbol("Z", 1)
alt_symbol("Z", 2)
alt_symbol("Z", 3)

alt_symbol("X", 0)
alt_symbol("X", 1)
alt_symbol("X", 2)
alt_symbol("X", 3)

alt_symbol("Cross", 0)
alt_symbol("Cross", 1)
alt_symbol("Cross", 2)
alt_symbol("Cross", 3)

alt_symbol("DollarSign", 0)
alt_symbol("DollarSign", 1)
alt_symbol("DollarSign", 2)
alt_symbol("DollarSign", 3)

alt_symbol("Exclamation", 0)
alt_symbol("Exclamation", 1)
alt_symbol("Exclamation", 2)
alt_symbol("Exclamation", 3)

alt_symbol("Question", 0)
alt_symbol("Question", 1)
alt_symbol("Question", 2)
alt_symbol("Question", 3)

alt_symbol("Asterisk", 0)
alt_symbol("Asterisk", 1)
alt_symbol("Circle", 0)
alt_symbol("Circle", 1)
alt_symbol("Club", 0)
alt_symbol("Club", 1)
alt_symbol("Diamond", 0)
alt_symbol("Diamond", 1)
alt_symbol("KnifeFork", 0)
alt_symbol("KnifeFork", 1)
alt_symbol("Garbage", 0)
alt_symbol("Garbage", 1)
alt_symbol("Target", 0)
alt_symbol("Target", 1)
alt_symbol("Sun", 0)
alt_symbol("Sun", 1)
alt_symbol("Star", 0)
alt_symbol("Star", 1)
alt_symbol("Spade", 0)
alt_symbol("Spade", 1)
alt_symbol("Skull", 0)
alt_symbol("Skull", 1)
alt_symbol("Radiation", 0)
alt_symbol("Radiation", 1)

-- four icons per row --

map_symbol("book")
map_symbol("sledge")
map_symbol("pipeWrench")
map_symbol("sheriff")
map_symbol("axe2")
map_symbol("medic")

map_symbol("shirt")
map_symbol("helmet")
map_symbol("ammo")
map_symbol("vhs")
map_symbol("fuel")
map_symbol("fuel2")
map_symbol("water")
map_symbol("car")
map_symbol("truck")
map_symbol("helicopter")
map_symbol("parachute")
map_symbol("marine")

map_symbol("loot")
map_symbol("bed")

map_symbol("meet")
map_symbol("school")
map_symbol("warehouse")
map_symbol("cross")

map_symbol("line1")
map_symbol("line2")
map_symbol("line3")
map_symbol("line4")

map_symbol("dot")
map_symbol("dot", 0)
map_symbol("dot", 1)
map_symbol("dot", 2)
map_symbol("dot", 3)
map_symbol("dot", 4)

map_symbol("x_small")
map_symbol("x_small", 0)
map_symbol("x_small", 1)
map_symbol("x_small", 2)
map_symbol("x_small", 3)
map_symbol("x_small", 4)
map_symbol("trashpanda") -- "We need Spiffo lol"  "That one would need to be made by someone who had art class, so not me"

-- old icons (duplicate with new vanilla icons)
--map_symbol("pills")
--map_symbol("pistol")
--map_symbol("heart")
--map_symbol("boat")
--map_symbol("tent")
--map_symbol("axe")
--map_symbol("fire")
--map_symbol("radioactive")

--map_symbol("wrench")
--map_symbol("placeholder1")
--map_symbol("placeholder2")
--map_symbol("placeholder3")

