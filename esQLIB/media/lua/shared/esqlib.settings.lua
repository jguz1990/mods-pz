local esCommonPlug = {};
esqlibMOOptions = esqlibMOOptions or {};

function esCommonPlug.doMoLoad(settings)
    if ModOptions and ModOptions.getInstance then
        local MO = ModOptions:getInstance(settings);
        ModOptions:loadFile();
        for k, v in pairs(MO.options) do esqlibMOOptions[k] = v end;
    end
end

function esCommonPlug.doMoRefreshGlobal(options)
    for k, v in pairs(options.settings.options) do esqlibMOOptions[k] = v end;
end

function esCommonPlug.getSandboxOption(modID, option)
    local obn = getSandboxOptions():getOptionByName(modID .. "." .. option);
    if obn then return obn:getValue() end;
    return 1;
end

function esCommonPlug.doMoMakeOptions(modID, optionConfig)
    local modConfig = {
        mod_id = modID,
        mod_fullname = optionConfig.mod_fullname,
        options_data = {},
    };

    for k, v in pairs(optionConfig.options_data) do
        modConfig.options_data[k] = v;
        modConfig.options_data[k]["default"] = esCommonPlug.getSandboxOption(modID, k);
        modConfig.options_data[k]["OnApplyMainMenu"] = esCommonPlug.doMoRefreshGlobal;
        modConfig.options_data[k]["OnApplyInGame"] = esCommonPlug.doMoRefreshGlobal;
    end

    return modConfig;
end

function esCommonPlug.getSetting(modID, option)
    if not isClient() and esqlibMOOptions[option] then return esqlibMOOptions[option] end;
    return esCommonPlug.getSandboxOption(modID, option);
end

function esCommonPlug.getCardinal(modID, option)
    local setting = esCommonPlug.getSetting(modID, option);
    if setting == 3 then return "S" end;
    if setting == 4 then return "O" end;
    return "E";
end

return esCommonPlug;