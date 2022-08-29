---
--- Mod: Mod Manager
--- Workshop: https://steamcommunity.com/sharedfiles/filedetails/?id=2694448564
--- Author: NoctisFalco
--- Profile: https://steamcommunity.com/id/NoctisFalco/
---
--- Redistribution of this mod without explicit permission from the creator is prohibited
--- under any circumstances. This includes, but not limited to, uploading this mod to the Steam Workshop
--- or any other site, distribution as part of another mod or modpack, distribution of modified versions.
---
--- Copyright 2022 NoctisFalco
---

local semver = require('MMSemver')

ModManager = {
    ID = "ModManager",
    VERSION = "2.1.2",
    PRESET_FAVORITES = "mmFavorites",
    PRESET_HIDDEN = "mmHidden",
    SETTINGS_CLIENT = "client",
    SETTINGS_SERVER = "server",
    -- Server
    SERVER_ID = "ModManagerServer",
}

local FILE_SETTINGS = "modmanager.ini"
local FILE_MODS = "modmanager-mods.txt"
local FILE_CHANGELOG = "changelog.txt"
local FILE_CUSTOM_TAGS = "saved_modtags.txt"
local FILE_PRESETS = "saved_modlists.txt"

local VERSION_SETTINGS = 2
local VERSION_MODS = 1
local VERSION_CUSTOM_TAGS = 1
local VERSION_PRESETS = 2

local ILLEGAL_CHARS_CUSTOM_TAGS = { '/', '\\', '|', ':', ';', '.' }
local ILLEGAL_CHARS_PRESET_NAME = { '/', '\\', '|', ':', ';', '.', ',' }

local Migration = {
    ---@deprecated
    FILE_PRESETS_V1 = "saved_modlist.txt",
    ---@deprecated
    PRESET_FAVORITES_V1 = "modmanager-favorites",
    ---@deprecated
    PRESET_HIDDEN_V1 = "modmanager-hidden"
}

local settingsDefault = {
    client = {
        version = 0,
        filterFromWorkshop = true,
        filterFromLocal = true,
        filterWithMaps = true,
        filterWithoutMaps = true,
        filterTranslated = true,
        filterNotTranslated = true,
        filterAvailable = true,
        filterNotAvailable = true,
        filterActive = true,
        filterNotActive = true,
        filterUpToDate = true,
        filterNeedsUpdate = true,
        filterNormal = true,
        filterFavorite = true,
        filterHidden = false,
        orderName = true,
        orderModID = false,
        orderWorkshopID = false,
        orderActive = false,
        orderDateAdded = false,
        orderDateCreated = false,
        orderDateUpdated = false,
        orderAsc = true,
        orderDesc = false,
        showCustomModIcons = true,
        showNagPanel = true,
        presetsCompatV2 = false,
    },
    server = {
        version = 0,
        filterFromWorkshop = true,
        filterFromLocal = true,
        filterWithMaps = true,
        filterWithoutMaps = true,
        filterTranslated = true,
        filterNotTranslated = true,
        filterAvailable = true,
        filterNotAvailable = true,
        filterActive = true,
        filterNotActive = true,
        filterUpToDate = true,
        filterNeedsUpdate = true,
        filterNormal = true,
        filterFavorite = true,
        filterHidden = false,
        orderName = true,
        orderModID = false,
        orderWorkshopID = false,
        orderActive = false,
        orderDateAdded = false,
        orderDateCreated = false,
        orderDateUpdated = false,
        orderAsc = true,
        orderDesc = false,
    }
}

function ModManager:new()
    local o = {}
    ModManager.instance = o
    setmetatable(o, self)
    self.__index = self

    self.modsByDateAdded = {}
    self.settings = {}
    self.presets = {
        mmFavorites = {},
        mmHidden = {}
    }
    self.customTags = {} -- { modID = { tag, tag, tag, ... }, modID = { tag, tag, tag, ... }, ... }
    self.serverPresets = {} -- { name = { WorkshopItems = { workshopID1, ... }, Mods = { modID1, ... } }, ... }

    self:trackMods()
    self:loadSettings()
    self:loadPresets()
    self:loadCustomTags()

    --[[
    self.settingsCopy = {}
    self.changelog = "changelog"
    ]]
    return o
end

-- ******************************
-- ModManager: Settings
-- ******************************

function ModManager:loadSettings()
    self.settings = ModManagerUtils.deepCopy(settingsDefault)
    self.settingsCopy = {}

    local version = 0
    local category = ""
    local file = getFileReader(FILE_SETTINGS, true)
    local line = file:readLine()
    while line ~= nil do
        if luautils.stringStarts(line, "VERSION=") then
            version = tonumber(string.split(line, "=")[2])
        elseif version == VERSION_SETTINGS then
            line = line:trim()
            if not string.match(line, "^#") then
                if line ~= "" then
                    local k, v = line:match("^([^=%[]+)=([^=]+)$")
                    if k then
                        k, v = k:trim(), v:trim()
                        if v == "true" then
                            v = true
                        elseif v == "false" then
                            v = false
                        end
                        if category ~= "" then
                            self.settings[category][k] = v
                        else
                            self.settings[k] = v
                        end
                    else
                        local t = line:match("^%[([^%[%]%%]+)%]$")
                        if t then
                            category = t:trim()
                            if not self.settings[category] then
                                self.settings[category] = {}
                            end
                        end
                    end
                end
            end
        end
        line = file:readLine()
    end
    file:close()

    self.settingsCopy = ModManagerUtils.deepCopy(self.settings)
end

function ModManager:saveSettings()
    -- To avoid unnecessary write operations
    if ModManagerUtils.tableEquals(self.settings, self.settingsCopy) then return end
    self.settingsCopy = ModManagerUtils.deepCopy(self.settings)

    local file = getFileWriter(FILE_SETTINGS, true, false)
    file:write("# Mod Manager settings\r\n")
    file:write("# Do not modify\r\n\r\n")
    file:write("VERSION=" .. tostring(VERSION_SETTINGS) .. "\r\n")

    for k, v in pairs(self.settings) do
        if settingsDefault[k] ~= nil then
            if type(v) == "table" then
                file:write("\r\n[" .. k .. "]\r\n")
                for tk, tv in pairs(v) do
                    if settingsDefault[k][tk] ~= nil then
                        file:write(tk .. '=' .. tostring(tv) .. "\r\n")
                    end
                end
            else
                file:write(k .. '=' .. tostring(v) .. "\r\n")
            end
        end
    end
    file:close()
end

function ModManager:setTickBoxSelectionFromSettings(tickBox, category, applyDefault)
    local settings = applyDefault and settingsDefault or self.settings
    for index = 1, tickBox.optionCount - 1 do
        local value = settings[category][tickBox.optionData[index]]
        if value == nil then
            value = tickBox.selected[index]
            settings[category][tickBox.optionData[index]] = value
        end
        tickBox:setSelected(index, value)
    end
end

function ModManager:updateSettingsFromTickBox(tickBox, category)
    for index = 1, tickBox.optionCount - 1 do
        local value = tickBox.selected[index] ~= nil and tickBox.selected[index] or false
        self.settings[category][tickBox.optionData[index]] = value
    end
end

-- ******************************
-- ModManager: Presets
-- ******************************

function ModManager:loadPresets()
    Migration.presetsToVersion2(self)

    self.presets = {
        mmFavorites = {},
        mmHidden = {}
    }

    local version = 0
    local file = getFileReader(FILE_PRESETS, true)
    local line = file:readLine()
    while line ~= nil do
        if luautils.stringStarts(line, "VERSION=") then
            version = tonumber(string.split(line, "=")[2])
        elseif version == VERSION_PRESETS then
            -- Split name and list (by first ":", no luautils.split)
            local sep = string.find(line, ":")
            local name, list = "", ""
            if sep ~= nil then
                name = string.sub(line, 0, sep - 1)
                list = string.sub(line, sep + 1)
            end
            if name ~= "" and list ~= "" then
                self.presets[name] = luautils.split(list, ";")
            end
        end
        line = file:readLine()
    end
    file:close()
end

function ModManager:savePresets()
    local file = getFileWriter(FILE_PRESETS, true, false)
    file:write("VERSION=" .. tostring(VERSION_PRESETS) .. "\r\n")
    for name, list in pairs(self.presets) do
        if #list > 0 then
            file:write(name .. ":" .. table.concat(list, ";") .. "\n")
        end
    end
    file:close()
end

function ModManager.isValidPresetName(_, text)
    for _, char in ipairs(ILLEGAL_CHARS_PRESET_NAME) do
        if text:contains(char) then
            return false
        end
    end
    return text ~= ModManager.PRESET_FAVORITES and text ~= ModManager.PRESET_HIDDEN
end

function ModManager.getPresetNameIllegalCharsString()
    return table.concat(ILLEGAL_CHARS_PRESET_NAME, "  ")
end

-- Compatibility with pre-v2.0.0 (presets version <= 1)
function Migration.presetsToVersion2(manager)
    if not manager.settings.client.presetsCompatV2 then
        manager.settings.client.presetsCompatV2 = true
        manager:saveSettings()

        local file = getFileReader(FILE_PRESETS, false)
        if file then
            file:close()
            return
        end

        manager.presets = {
            mmFavorites = {},
            mmHidden = {}
        }
        file = getFileReader(Migration.FILE_PRESETS_V1, false)
        if file then
            local line = file:readLine()
            while line do
                -- Split name and list (by first ":", no luautils.split)
                local sep = string.find(line, ":")
                local name, list = "", ""
                if sep ~= nil then
                    name = string.sub(line, 0, sep - 1)
                    list = string.sub(line, sep + 1)
                end
                if name ~= "" and list ~= "" then
                    if name == Migration.PRESET_FAVORITES_V1 then
                        name = ModManager.PRESET_FAVORITES
                    elseif name == Migration.PRESET_HIDDEN_V1 then
                        name = ModManager.PRESET_HIDDEN
                    end

                    manager.presets[name] = luautils.split(list, ";")
                end
                line = file:readLine()
            end
            file:close()

            manager:savePresets()
        end
    end
end

-- ******************************
-- ModManager: Custom Tags
-- ******************************

function ModManager:loadCustomTags()
    self.customTags = {}
    local version = 0
    local file = getFileReader(FILE_CUSTOM_TAGS, true)
    local line = file:readLine()
    while line ~= nil do
        if luautils.stringStarts(line, "VERSION=") then
            version = tonumber(string.split(line, "=")[2])
            --elseif version == VERSION_CUSTOM_TAGS then
        else
            -- Split modID and tags (by first ":", no luautils.split)
            local sep = string.find(line, ":")
            local modID, tags = "", ""
            if sep ~= nil then
                modID = string.sub(line, 0, sep - 1)
                tags = string.sub(line, sep + 1)
            end
            if modID ~= "" and tags ~= "" then
                self.customTags[modID] = luautils.split(tags, ",")
            end
        end
        line = file:readLine()
    end
    file:close()
end

function ModManager:saveCustomTags()
    local file = getFileWriter(FILE_CUSTOM_TAGS, true, false)
    file:write("VERSION=" .. tostring(VERSION_CUSTOM_TAGS) .. "\r\n")
    for modID, tags in pairs(self.customTags) do
        if #tags > 0 then
            file:write(modID .. ":" .. table.concat(tags, ",") .. "\n")
        end
    end
    file:close()
end

function ModManager.isValidCustomTags(_, text)
    for _, char in ipairs(ILLEGAL_CHARS_CUSTOM_TAGS) do
        if text:contains(char) then
            return false
        end
    end
    return true
end

function ModManager.getCustomTagsIllegalCharsString()
    return table.concat(ILLEGAL_CHARS_CUSTOM_TAGS, "  ")
end

-- ******************************
-- ModManager: Track Mods
-- ******************************

function ModManager:indexByDateAdded(modID)
    for index, v in ipairs(self.modsByDateAdded) do
        if v == modID then
            return index
        end
    end
    return -1
end

function ModManager:trackMods()
    -- Read mods
    local version = 0
    local storedMods = {}
    local file = getFileReader(FILE_MODS, true)
    local line = file:readLine()
    while line ~= nil do
        if luautils.stringStarts(line, "VERSION=") then
            version = tonumber(string.split(line, "=")[2])
            --elseif version == VERSION_SETTINGS then
        else
            storedMods = luautils.split(line, ";")
        end
        line = file:readLine()
    end
    file:close()

    -- Get all installed mods
    local loadedMods = {}
    local directories = getModDirectoryTable()
    for _, directory in ipairs(directories) do
        local modInfo = getModInfo(directory)
        if modInfo then
            local modID = modInfo:getId()
            table.insert(loadedMods, modID)
        end
    end

    -- Check for changes
    -- Convert arrays to sets
    local oldMods, newMods = {}, {}
    for _, modID in ipairs(storedMods or {}) do
        oldMods[modID] = true
    end
    for _, modID in ipairs(loadedMods) do
        newMods[modID] = true
    end

    -- Diff
    local addMods, delMods = {}, {}
    for modID, _ in pairs(oldMods) do
        if not newMods[modID] then
            delMods[modID] = true
        end
    end
    for modID, _ in pairs(newMods) do
        if not oldMods[modID] then
            table.insert(addMods, modID)
        end
    end

    -- Create new list of mods
    local newList = {}
    for _, modID in ipairs(storedMods) do
        if not delMods[modID] then
            table.insert(newList, modID)
        end
    end
    for _, modID in ipairs(addMods) do
        table.insert(newList, modID)
    end

    -- Save mods
    file = getFileWriter(FILE_MODS, true, false)
    file:write("VERSION=" .. tostring(VERSION_MODS) .. "\r\n")
    file:write(table.concat(newList, ";"))
    file:close()

    self.modsByDateAdded = newList
end

--Events.OnGameBoot.Add(ModManager.trackMods)

-- ******************************
-- ModManager: Changelog
-- ******************************

function ModManager:loadChangelog(id)
    local s = ""
    local file = getModFileReader(id, FILE_CHANGELOG, false)
    local line = file:readLine()
    while line ~= nil do
        --if string.match(line, "^v+[0-9]") then
        if string.match(line, "^## ") then
            s = s .. string.gsub(line, "^## ", " <SIZE:large> ") .. " <LINE> <SIZE:small> "
        elseif string.match(line, "^### ") then
            s = s .. string.gsub(line, "^### ", " <SIZE:medium> ") .. " <LINE> <SIZE:small> "
        else
            s = s .. line .. " <LINE> "
        end
        line = file:readLine()
    end
    file:close()

    s = string.gsub(s, "%[", "")
    s = string.gsub(s, "%]", "")

    self.changelog = s
end

function ModManager:onCloseChangelog(id)
    self.changelog = nil
    self:writeVersion(id)
end

-- ******************************
-- ModManager: Version
-- ******************************

function ModManager:isNewVersion(id)
    local currentVersion = ModManager.VERSION
    local storedVersion = self.settings.client.version or "0"
    if id == ModManager.SERVER_ID then
        currentVersion = ModManager.SERVER_VERSION
        storedVersion = self.settings.server.version or "0"
    end
    if storedVersion == "0" then
        self:writeVersion(id)
        return false
    end
    return semver(currentVersion) > semver(storedVersion)
end

function ModManager:writeVersion(id)
    if id == ModManager.ID then
        self.settings.client.version = ModManager.VERSION
    elseif id == ModManager.SERVER_ID then
        self.settings.server.version = ModManager.SERVER_VERSION
    end
    self:saveSettings()
end
