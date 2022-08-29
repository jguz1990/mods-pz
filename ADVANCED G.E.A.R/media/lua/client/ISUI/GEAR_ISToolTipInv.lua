--***********************************************************
--**                    ROBERT JOHNSON                     **
--***********************************************************

require "ISUI/ISToolTipInv"


local old_ISToolTipInv_render = ISToolTipInv.render



function ISToolTipInv:render()
	if not self.item then return false end
	local item = self.item
	local player = getPlayer()

	if item
	and instanceof( item, "Clothing")
	and item:getBodyLocation()
	and  player:getWornItem(item:getBodyLocation())
	and instanceof(  player:getWornItem(item:getBodyLocation()), "InventoryContainer")
	then
		return false 
	end

	old_ISToolTipInv_render(self)

end
