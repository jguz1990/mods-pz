require "ISUI/Maps/ISWorldmapSymbols"

local function RenameSymbols(iswms)
	local names =
	{
		["extra:axe"] = "Axe",
		["extra:boat"] = "Boat",
		["extra:fire"] = "Fire",
		["extra:food"] = "KnifeFork",
		["extra:heart"] = "Heart",
		["extra:pills"] = "Pill",
		["extra:pistol"] = "Gun",
		["extra:radioactive"] = "Radiation",
		["extra:tent"] = "Tent",
		["extra:wrench"] = "Wrench",
		["extra:arrow1"] = "ArrowNorthEast",
		["extra:arrow2"] = "ArrowSouthEast",
		["extra:arrow3"] = "ArrowSouthWest",
		["extra:arrow4"] = "ArrowNorthWest"
	}

	local wm = iswms.symbolsAPI

	for s=wm:getSymbolCount()-1, 0, -1 do
		local symbol = wm:getSymbolByIndex(s)
		if symbol:isTexture() then
			local oldSymbolId = symbol:getSymbolID()
			local newSymbolId = names[oldSymbolId]
			local newSymbolProto = MapSymbolDefinitions.getInstance():getSymbolById(newSymbolId)

			if newSymbolId and newSymbolProto then
				local newSymbol =
				{
					id = newSymbolId,
					x = symbol:getWorldX(),
					y = symbol:getWorldY(),
					anchorX = 0.5,
					anchorY = 0.5,
					scale = newSymbolProto:getHeight() / symbol:getDisplayHeight(), -- not great, not terrible --
					r = symbol:getRed(),
					g = symbol:getGreen(),
					b = symbol:getBlue(),
					a = symbol:getAlpha()
				}
				print(string.format("[ExtraMapSymbols.Patch] %s -> %s", oldSymbolId, newSymbolId))
				symbol = wm:addTexture(newSymbol.id, newSymbol.x, newSymbol.y)
				symbol:setAnchor(newSymbol.anchorX, newSymbol.anchorY)
				symbol:setScale(newSymbol.scale)
				symbol:setRGBA(newSymbol.r, newSymbol.g, newSymbol.b, newSymbol.a)

				wm:removeSymbolByIndex(s)
			end
		end
	end
end

local ISWMS_prerender = ISWorldMapSymbols.prerender
function ISWorldMapSymbols:prerender()
	RenameSymbols(self)
	ISWorldMapSymbols.prerender = ISWMS_prerender
end
