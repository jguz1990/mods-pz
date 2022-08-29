local esqlibSettings = require("esqlib.settings");
local esqlibNumbers = require("esqlib.numbers");

local baseISInventoryPane = ISInventoryPane.drawItemDetails;
function ISInventoryPane:drawItemDetails(item, y, xoff, yoff, red)

    if (esqlibSettings.getSetting("esQMI", "esQMIDrainInfo") > 1
            and item ~= nil
            and instanceof(item, "Drainable") and item:getUseDelta() > 0) then
        local maxUses = esqlibNumbers.round(1 / item:getUseDelta());
        local usesLeft = item:getDrainableUsesInt();
        if (usesLeft == 0 and item:getUsedDelta() > 0) then
            usesLeft = 1;
        end
        local hdrHgt = self.headerHgt
        local top = hdrHgt + y * self.itemHgt + yoff
        local fgBar = {r=0.0, g=0.6, b=0.0, a=0.7}
        local fgText = {r=0.6, g=0.8, b=0.5, a=0.6}
        local text = getText("IGUI_invpanel_Remaining") .. ": "..usesLeft.."/"..maxUses;
        self:drawTextAndProgressBar(text, item:getUsedDelta(), xoff, top, fgText, fgBar)
    else
        baseISInventoryPane(self,item, y, xoff, yoff, red);
    end

end
