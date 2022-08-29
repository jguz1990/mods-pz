require "ISUI/ISInventoryPaneContextMenu"


local FONT_HGT_SMALL = getTextManager():getFontHeight(UIFont.Small)

local function predicateNotBroken(item)
	return not item:isBroken()
end

local old_ISInventoryPaneContextMenu_doWearClothingTooltip = ISInventoryPaneContextMenu.doWearClothingTooltip
ISInventoryPaneContextMenu.doWearClothingTooltip = function(playerObj, newItem, currentItem, option)
	if not newItem then return false end
	return old_ISInventoryPaneContextMenu_doWearClothingTooltip(playerObj, newItem, currentItem, option)

end

