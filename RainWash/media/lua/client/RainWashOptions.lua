RainWash = RainWash or {}
RainWash.Options = RainWash.Options or {}

RainWash.Options.multiplier = 1.0
RainWash.Options.washVehicle = true
RainWash.Options.washRecentVehicle = true

if ModOptions and ModOptions.getInstance then
    local multiplierValues = { 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 }

    local function onModOptionsApply(optionValues)
        RainWash.Options.multiplier = multiplierValues[optionValues.settings.options.multiplier]
        RainWash.Options.washVehicle = optionValues.settings.options.washVehicle
        RainWash.Options.washRecentVehicle = optionValues.settings.options.washRecentVehicle
    end

    local SETTINGS = {
        options_data = {
            multiplier = {
                "0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9",
                "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                name = "UI_RainWash_Multiplier",
                tooltip = "UI_RainWash_Multiplier_Tooltip",
                default = 10,
                OnApplyMainMenu = onModOptionsApply,
                OnApplyInGame = onModOptionsApply,
            },
            washVehicle = {
                name = "UI_RainWash_Vehicle",
                tooltip = "UI_RainWash_Vehicle_Tooltip",
                default = true,
                OnApplyMainMenu = onModOptionsApply,
                OnApplyInGame = onModOptionsApply,
            },
            washRecentVehicle = {
                name = "UI_RainWash_RecentVehicle",
                tooltip = "UI_RainWash_RecentVehicle_Tooltip",
                default = true,
                OnApplyMainMenu = onModOptionsApply,
                OnApplyInGame = onModOptionsApply,
            },
        },

        mod_id = 'RainWash',
        mod_shortname = 'Rain Wash',
        mod_fullname = 'Rain Wash',
    }

    local optionsInstance = ModOptions:getInstance(SETTINGS)
    ModOptions:loadFile()

    local washVehicle = optionsInstance:getData("washVehicle")
    local washRecentVehicle = optionsInstance:getData("washRecentVehicle")
    function washVehicle:onUpdate(newValue)
        washRecentVehicle:set(newValue)

        RainWash.Options.washVehicle = newValue
        RainWash.initVehicles()
    end
    function washRecentVehicle:onUpdate(newValue)
        if newValue then
            washVehicle:set(newValue)
        end
    end

    Events.OnPreMapLoad.Add(function() onModOptionsApply({ settings = SETTINGS }) end)
end