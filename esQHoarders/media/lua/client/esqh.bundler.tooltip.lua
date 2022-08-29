local esqlibTooltips = require("esqlib.tooltips");
local esqlibUtils = require("esqlib.utils");

local function getBundleData(selectedItem)
    local crateData = esqlibUtils.modDataJsonGet(selectedItem, "esqhb.json") or {};
    if not crateData.items then return {} end;

    local zipData = {};
    local items = {};

    table.insert(zipData, { selectedItem:getDisplayName() });
    table.insert(zipData, { "", "<TAB>" });
    table.insert(zipData, { getText("Tooltip_item_Weight"), "", tostring(round(selectedItem:getActualWeight(), 3)) });

    table.insert(zipData, { "", "<TAB>" });

    for _,v in pairs(crateData.items) do
        local itemName = getItemNameFromFullType(v.fullType);
        if v.displayName then itemName = v.displayName end;

        if (items[itemName]) then
            items[itemName] = items[itemName] + v.size;
        else
            items[itemName] = v.size;
        end
    end

    for k,v in pairs(items) do
        table.insert(zipData, { k, "", v });
    end

    return zipData;
end

local baseInvTooltipRender = ISToolTipInv.render;
function ISToolTipInv:render()
    if ISContextMenu.instance or ISContextMenu.instance then return end;
    if self.item:getFullType() == "esQoL.bundledItems" then
        esqlibTooltips.init(
                self,
                getBundleData(self.item),
                {
                    cardinal = "O",
                    matrix = { "R", "R", "R", "R", "R" },
                }
        );
        esqlibTooltips.drawToolTip();
        return;
    end

    baseInvTooltipRender(self);
end