require "ISUI/ISPanel"
require "ISUI/Maps/ISWorldMap"

local Lib = BLTAnnotations

-- -----------------------------------------------------------------------------
-- Helpers

local prettyVanillaMapID = {
  ["MarchRidgeMap"] = "March Ridge",
  ["MuldraughMap"] = "Muldraugh",
  ["RosewoodMap"] = "Rosewood",
  ["WestpointMap"] = "Westpoint",
  ["LouisvilleMap1"] = "Louisville",
  ["LouisvilleMap2"] = "Louisville",
  ["LouisvilleMap3"] = "Louisville",
  ["LouisvilleMap4"] = "Louisville",
  ["LouisvilleMap5"] = "Louisville",
  ["LouisvilleMap6"] = "Louisville",
  ["LouisvilleMap7"] = "Louisville",
  ["LouisvilleMap8"] = "Louisville",
  ["LouisvilleMap9"] = "Louisville",
}

local prettyMonth = {
  getText("IGUI_BLTJanuary"),
  getText("IGUI_BLTFebruary"),
  getText("IGUI_BLTMarch"),
  getText("IGUI_BLTApril"),
  getText("IGUI_BLTMay"),
  getText("IGUI_BLTJune"),
  getText("IGUI_BLTJuly"),
  getText("IGUI_BLTAugust"),
  getText("IGUI_BLTSeptember"),
  getText("IGUI_BLTOctober"),
  getText("IGUI_BLTNovember"),
  getText("IGUI_BLTDecember")
}

local function prettyDaySuffix(dd)
  if Translator.getLanguage():name() ~= "EN" then
    return ""
  elseif dd == 1 or dd == 21 or dd == 31 then
    return "st"
  elseif dd == 2 or dd == 22 then
    return "nd"
  else
    return "th"
  end
end

function prettyTime(gt)
  local dd = gt:getDay() + 1
  local date = getText("IGUI_BLTDate",
                       prettyMonth[gt:getMonth() + 1],
                       tostring(dd),
                       prettyDaySuffix(dd),
                       string.format("%04d", gt:getYear()))

  local hourmin = getText("IGUI_BLTHourMinutes",
                          string.format("%02d", gt:getHour()),
                          string.format("%02d", gt:getMinutes()))
  return date, hourmin
end

function renderBy(desc, gametime)
  local date, hourmin = prettyTime(gametime)
  return getText("IGUI_BLTBy", desc:getForename(), desc:getSurname(), date, hourmin)
end

function renderByAnonymous(location, gametime)
  local date, hourmin = prettyTime(gametime)
  return getText("IGUI_BLTBy_Anonymous", location, date, hourmin)
end

function Lib.getOrCreateModData()
  local x = ModData.getOrCreate(Lib.GLOBAL_MOD_DATA_TABLE)
  if not x.hidden then x.hidden = {} end
  if not x.symsets then x.symsets = {} end
  return x
end

function Lib.getSymAPI(map_item)
  local map_api

  if map_item then
    map_api = UIWorldMap.new(nil):getAPIv1()
    map_api:setMapItem(map_item)
  -- NOTE: we have to use the global instance to avoid inconsistencies on hitCheck
  elseif ISWorldMap_instance then
    map_api = ISWorldMap_instance.javaObject:getAPIv1()
  else -- NOTE: we don't have a global instance yet, but we need to use the MapItem singleton
    map_api = UIWorldMap.new(nil):getAPIv1()
    map_api:setMapItem(MapItem:getSingleton())
  end

  return map_api:getSymbolsAPI()
end

function Lib.resetGlobalModData()
  local x = ModData.getOrCreate(Lib.GLOBAL_MOD_DATA_TABLE)
  for k, _ in pairs(x) do
    x[k] = nil
  end
end

function Lib.dumpSymsets(filename)
  local fw = getFileWriter(filename, true, false)
  if not fw then
    error("could not get file writer to " .. (filename or "nil"))
  end

  local count = 0
  for k, v in pairs(Lib.getOrCreateModData().symsets) do
    fw:write(k .. " -> " .. #v .. "\r\n")
    count = count + 1
  end
  print("wrote " .. count .. " symsets to " .. filename)
  fw:close()
end

function Lib.makeKey(x, y)
  return string.format("%.5f_%.5f", x, y)
end

function Lib.existingTable(symAPI)
  local existing = {}
  local cnt = symAPI:getSymbolCount()
  for i = 0, cnt - 1 do
    local sym = symAPI:getSymbolByIndex(i)
    local key = Lib.makeKey(sym:getWorldX(), sym:getWorldY())
    existing[key] = {i, sym}
  end
  return existing
end

function Lib.existingLookup(tabl, x, y)
  local key = Lib.makeKey(x, y)
  return tabl[key]
end

function Lib.setSymsetVisible(name, visi)
  local modData = Lib.getOrCreateModData()
  local symset = modData.symsets[name]

  if not symset then
    error("could not find symset " .. (name or "nil"))
  end

  local symAPI = Lib.getSymAPI()
  local existing = Lib.existingTable(symAPI)

  for _, hidesym in pairs(symset) do
    local hit = Lib.existingLookup(existing, hidesym.x, hidesym.y)
    if hit then
      hit[2]:setVisible(visi)
    end
  end

  if visi then
    modData.hidden[name] = nil
  else
    modData.hidden[name] = true
  end
end

function Lib.setAllSymbolsVisible(visi)
  local symAPI = Lib.getSymAPI()
  local cnt = symAPI:getSymbolCount()

  for i = 0, cnt - 1 do
    local sym = symAPI:getSymbolByIndex(i)
    sym:setVisible(visi)
  end
end

function Lib.hideSymsets(symsets)
  for k, _ in pairs(symsets) do
    Lib.setSymsetVisible(k, false)
  end
end

function Lib.healHidden()
  local modData = Lib.getOrCreateModData()
  local hidden = modData.hidden
  local symsets = modData.symsets
  for k, _ in pairs(hidden) do
    if not symsets[k] then
      if getDebug() then
        print('deleting inconsistent hidden ' .. k)
      end
      hidden[k] = nil
    end
  end
end

function Lib.deleteSymset(name)
  local modData = Lib.getOrCreateModData()
  local symset = modData.symsets[name]

  if not symset then
    error("could not find symset " .. (name or "nil"))
  end

  local symAPI = Lib.getSymAPI()
  local existing = Lib.existingTable(symAPI)
  local indices = {}
  for _, sym in pairs(symset) do
    local hit = Lib.existingLookup(existing, sym.x, sym.y)
    if hit then
      table.insert(indices, hit[1])
    end
  end

  -- NOTE: we delete from the end to avoid shifting indices upon deleting one member
  table.sort(indices, function (a, b) return a > b end)

  for _, v in pairs(indices) do
    symAPI:removeSymbolByIndex(v)
  end

  modData.symsets[name] = nil
  modData.hidden[name] = nil

  Lib.OnNewSymset()
end

function Lib.dumpExisting()
  local symAPI = Lib.getSymAPI()
  local existing = Lib.existingTable(symAPI)

  for k, _ in pairs(existing) do
    print(k)
  end
end

function Lib.clearAllSymbols()
  local symAPI = Lib.getSymAPI()
  symAPI:clear()
end

function Lib.extractPayload(symAPI, forceVisited)
  local payload = {}
  local cnt = symAPI:getSymbolCount()
  for i = 0, cnt - 1 do
    local sym = symAPI:getSymbolByIndex(i)
    if sym:isVisible() then
      local s = {}
      s.x = sym:getWorldX()
      s.y = sym:getWorldY()
      s.r = sym:getRed()
      s.g = sym:getGreen()
      s.b = sym:getBlue()
      s.a = sym:getAlpha()
      if sym:isTexture() then
        s.type = "texture"
        s.texture = sym:getSymbolID()
      elseif sym:isText() then
        s.type = "text"
        s.text = sym:getTranslatedText() or sym:getUntranslatedText()
      else
        error("unknown symbol type at index " .. i)
      end

      -- NOTE: impossible to determine for now
      -- would be to access WorldMapVisited.hasFlags()
      local hasBeenThere = true
      s.visited = forceVisited or hasBeenThere

      table.insert(payload, s)
    end
  end
  return payload
end

function Lib.isBLTAnnotations(item)
  return item:getType() == Lib.ANNOTATION_TYPE
end

function Lib.isVanillaMapItem(item)
  return instanceof(item, "MapItem")
end

function Lib.hasAnnotations(item)
  local symAPI = Lib.getSymAPI(item)
  local cnt = symAPI:getSymbolCount()
  return cnt > 0
end

-- -----------------------------------------------------------------------------
-- Mods compatibility

function Lib.updateRecipesForOtherMods()
  if ScriptManager.instance:getItem("BicPen.BicPen") then
    local recipe = ScriptManager.instance:getRecipe("BLTAnnotations.Jot down annotations")
    local allSources = recipe:getSource()
    for i = 0, allSources:size() - 1 do
      local s = allSources:get(i)
      local items = s:getItems()
      for j = 0, items:size() - 1 do
        if items:get(j) == "Base.Pencil" then
          items:add("BicPen.BicPen")
          return
        end
      end
    end
  end
end

-- -----------------------------------------------------------------------------
-- Context menu

function Lib.appendAnnotations(tbl, items, maxdepth)
  if maxdepth <= 0 then
    return
  end

  for _, item in ipairs(items) do
    -- recurse if this "item" is in fact another stack of items
    if item.items then
      Lib.appendAnnotations(tbl, item.items, maxdepth - 1)
    elseif Lib.isBLTAnnotations(item) or (Lib.isVanillaMapItem(item) and Lib.hasAnnotations(item)) then
      -- NOTE: using ID as key to deduplicate items
      tbl[item:getID()] = item
    end
  end
end

function Lib.contextRememberAnnotations(playerNum, context, items)
  local found = {}

  Lib.appendAnnotations(found, items, 2)

  if not table.isempty(found) then
    context:addOption(
      getText("IGUI_BLTRemember_Annotations"), playerNum, Lib.rememberAnnotations, found)
  end
end

function Lib.rememberAnnotations(playerNum, items)
  local player = getSpecificPlayer(playerNum)
  local modData = Lib.getOrCreateModData()

  for _, item in pairs(items) do
    local payload = {}

    if Lib.isVanillaMapItem(item) then
      payload = Lib.extractPayload(Lib.getSymAPI(item), true)
    elseif Lib.isBLTAnnotations(item) then
      local itemModData = item:getModData()[Lib.MOD_DATA_NAMESPACE]
      if not itemModData then
        error("could not find modData on Annotations item")
      end

      payload = itemModData.data
      if not payload then
        error("could not find payload in modData object")
      end
    else
      error("could not find payload")
    end

    local symAPI = Lib.getSymAPI()
    local existing = Lib.existingTable(symAPI)
    local symset = {}
    for _, s in ipairs(payload) do
      if not Lib.existingLookup(existing, s.x, s.y) then
        if s.type == "texture" then
          local sym = symAPI:addTexture(s.texture, s.x, s.y)
          sym:setRGBA(s.r, s.g, s.b, s.a)
          sym:setAnchor(0.5, 0.5)
          sym:setScale(ISMap.SCALE)
        elseif s.type == "text" then
          local sym = symAPI:addTranslatedText(s.text, UIFont.Handwritten, s.x, s.y)
          sym:setRGBA(s.r, s.g, s.b, s.a)
          sym:setAnchor(0.0, 0.0)
          sym:setScale(ISMap.SCALE)
        else
          error("unknown type found in payload " .. (s.type or "nil"))
        end

        if s.visited then
          local offset = 5
          WorldMapVisited.getInstance():setKnownInSquares(
            s.x - offset, s.y - offset, s.x + offset, s.y + offset)
        end

        table.insert(symset, s)
      end
    end

    local key
    if Lib.isVanillaMapItem(item) then
      local gt = getGameTime()
      local location = prettyVanillaMapID[item:getMapID()] or getText("IGUI_BLTUnknown_Location")
      key = renderByAnonymous(location, gt)
    else
      key = item:getDisplayName()
    end
    local value = modData.symsets[key]
    if #symset == 0 then
      player:Say(getText("IGUI_BLTNothing_New"))
    elseif not value or #symset >= #value then
      modData.symsets[key] = symset
      Lib.OnNewSymset()

      player:Say(string.format(getText("IGUI_BLTLearned"), #symset))
      if getDebug() then
        print("Studied " .. #symset .. " new annotations")
      end
    else
      -- TODO(belette) compute union instead of discarding?
      player:Say(string.format(getText("IGUI_BLTAlready_Knew"), #value))
      if getDebug() then
        print("Kept " .. #value .. " existing annotations over " .. #symset .. " new ones")
      end
    end
  end
end

-- -----------------------------------------------------------------------------
-- Recipe hook

function Lib.Once(f)
  -- NOTE: store globally to preserve reference for removal
  function Lib.__g()
    Events.OnTick.Remove(Lib.__g)
    Lib.__g = nil
    f()
  end
  Events.OnTick.Add(Lib.__g)
end

function Lib.OnCreate(items, result, playerObj)
  local _, err = pcall(
    function ()
      Lib.OnCreateUnsafe(items, result, playerObj)
    end
  )
  if err then
    if getDebug() then
      print("Failed to create annotations " .. tostring(err))
    end

    playerObj:Say(getText("IGUI_BLTCould_Not_Create"))

    -- NOTE: wait one tick for recipe to "complete" and add item to container
    Lib.Once(function ()
        result:getContainer():Remove(result)
    end)
  end
end

function Lib.OnCreateUnsafe(_, result, playerObj)
  local symAPI = Lib.getSymAPI()
  local payload = Lib.extractPayload(symAPI)

  if getDebug() then
    print("Created item with " .. #payload .. " annotations")
  end

  result:getModData()[Lib.MOD_DATA_NAMESPACE] = { data = payload }

  local gt = getGameTime()
  local desc = playerObj:getDescriptor()
  result:setName(renderBy(desc, gt))
end

function Lib.OnPlayerDeath(player)
  if not SandboxVars.BLTAnnotations.DropMapOnDeath then
    return
  end

  local item = InventoryItemFactory.CreateItem("BLTAnnotations.BLTAnnotations")
  Lib.OnCreateUnsafe(nil, item, player)
  player:getInventory():AddItem(item)
end

-- -----------------------------------------------------------------------------
-- UI

Lib.UI = ISPanelJoypad:derive("ShareAnnotations.UI")

function Lib.OnNewSymset()
  if ISWorldMap_instance and ISWorldMap_instance.BLTAnnotations then
    ISWorldMap_instance.BLTAnnotations:reset()
  end
end

local iswm_instantiate_ = ISWorldMap.instantiate
function ISWorldMap:instantiate()
  iswm_instantiate_(self)
  local myUI = Lib.UI:new(10, 10, 400, 50)
  myUI:initialise()
  self.BLTAnnotations = myUI
  self:addChild(myUI)
end

local iswm_show_ = ISWorldMap.ShowWorldMap
local didHide = false
function ISWorldMap.ShowWorldMap(playerNum)
  iswm_show_(playerNum)

  if not didHide then
    Lib.healHidden()
    Lib.hideSymsets(Lib.getOrCreateModData().hidden)
    didHide = true
  end
end

function Lib.UI:reset()
  self:clearChildren()
  self:createChildren()
end

function Lib.UI:createChildren()
  -- https://github.com/MrBounty/PZ-Mod---Doc/blob/main/Make%20an%20custom%20UI.md

  local font = UIFont.Small
  local font_h = getTextManager():getFontHeight(font)
  local padleft = 10
  local padtop = 7

  if getDebug() then
    print("Font size = " .. font_h)
  end

  local modData = Lib.getOrCreateModData()
  local symsets = modData.symsets
  self:setVisible(symsets and not table.isempty(symsets))

  local y = padtop
  local contentw = 0
  for k, _ in pairs(symsets) do
    local tick = ISTickBox:new(padleft, y, 10, 10, k, self, self.setSymsetVisibleTick, k)
    tick:setFont(font)
    tick.autoWidth = true
    tick:initialise()
    tick:instantiate()
    tick.selected[1] = not modData.hidden[k]
    tick:addOption(k)
    self:addChild(tick)

    local textX = tick:getRight() + padleft
    local text = ISLabel:new(
      textX, y, tick:getHeight(), "x", 1, 1, 1, 1, font, false)
    text:initialise()
    text:instantiate()
    text.onMouseUp = function ()
      Lib.deleteSymset(k)
    end
    self:addChild(text)

    contentw = math.max(contentw, textX + text.width + padleft)
    y = y + tick:getHeight()
  end

  self:setHeight(y + padtop)
  self:setWidth(contentw)
end

function Lib.UI:new(x, y, w, h)
  local o = ISPanel:new(x, y, w, h)
  setmetatable(o, self)
  self.__index = self
  o.anchorTop = true
  o.anchorLeft = true
  return o
end

function Lib.UI:initialise()
  ISPanel.initialise(self)
end

function Lib.UI:instantiate()
  ISPanel.instantiate(self)
end

function Lib.UI:prerender()
  ISPanel.prerender(self)
end

function Lib.UI:render()
end

function Lib.UI:setSymsetVisibleTick(_, selected, symset)
  Lib.setSymsetVisible(symset, selected)
end

-- -----------------------------------------------------------------------------
-- Globals

-- https://pzwiki.net/wiki/Modding:Lua_Events/OnFillInventoryObjectContextMenu
Events.OnFillInventoryObjectContextMenu.Add(Lib.contextRememberAnnotations)
Events.OnGameBoot.Add(Lib.updateRecipesForOtherMods)
Events.OnPlayerDeath.Add(Lib.OnPlayerDeath)
