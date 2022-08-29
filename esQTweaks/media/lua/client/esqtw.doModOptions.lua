if (not isClient()) then
    local esqlibSettings = require("esqlib.settings");
    Events.OnPostMapLoad.Add(
            esqlibSettings.doMoLoad(
                    esqlibSettings.doMoMakeOptions("esQTW", {
                        mod_fullname = getText("UI_esqtw_tweaks"),
                        options_data = {
                            esQTWIC = {
                                getText("UI_Off"),
                                getText("UI_On"),
                                getText("UI_On") .." "..getText("UI_esqtw_ic_keep"),

                                name = getText("UI_esqtw_ic"),
                                tooltip = getText("UI_esqtw_ic_tt"),
                                default = 1,
                            },
                            esQTWSorter = {
                                getText("UI_Off"),
                                getText("UI_On") .. " " .. getText("UI_esqtw_sorter_auto"),
                                getText("UI_On") .. " " .. getText("UI_esqtw_sorter_manual"),

                                name = getText("UI_esqtw_sorter"),
                                tooltip = getText("UI_esqtw_sorter_tt"),
                                default = 1,
                            },
                            esQTWSac = {
                                getText("UI_Off"),
                                getText("UI_On"),
                                getText("UI_On") .. " " .. getText("UI_esqtw_sac_respect"),

                                name = getText("UI_esqtw_sac"),
                                tooltip = getText("UI_esqtw_sac_tt"),
                                default = 1,
                            },
                            esQTWCorpseMerge = {
                                getText("UI_Off"),
                                getText("UI_On"),

                                name = getText("UI_esqtw_corpse"),
                                tooltip = getText("UI_esqtw_corpse_tt"),
                                default = 1,
                            },
                            esQTWCorpseMergeLeg = {
                                getText("UI_Off"),
                                getText("UI_On"),
                                getText("UI_On") .. " " .. getText("UI_esqtw_corpselegA1"),
                                getText("UI_On") .. " " .. getText("UI_esqtw_corpselegA2"),
                                getText("UI_On") .. " " .. getText("UI_esqtw_corpselegA3"),

                                name = getText("UI_esqtw_corpseleg"),
                                tooltip = getText("UI_esqtw_corpseleg_tt"),
                                default = 1,
                            },
                            esQTWPowders = {
                                getText("UI_Off"),
                                getText("UI_On"),

                                name = getText("UI_esqtw_powder"),
                                tooltip = getText("UI_esqtw_powder_tt"),
                                default = 1,
                            },
                            esQTWMetals = {
                                getText("UI_Off"),
                                getText("UI_On"),

                                name = getText("UI_esqtw_metals"),
                                tooltip = getText("UI_esqtw_metals_tt"),
                                default = 1,
                            },
                            esQTWWrecks = {
                                getText("UI_Off"),
                                getText("UI_On"),
                                getText("UI_On") .. " " .. getText("UI_esqtw_wrecks_strip"),

                                name = getText("UI_esqtw_wrecks"),
                                tooltip = getText("UI_esqtw_wrecks_tt"),
                                default = 1,
                            },
                            esQTWCarCare = {
                                getText("UI_Off"),
                                getText("UI_On"),

                                name = getText("UI_esqtw_carcare"),
                                tooltip = getText("UI_esqtw_carcare_tt"),
                                default = 1,
                            },
                            esQTWVitaMax = {
                                getText("UI_Off"),
                                getText("UI_On"),

                                name = getText("UI_esqtw_vitamax"),
                                tooltip = getText("UI_esqtw_vitamax_tt"),
                                default = 1,
                            },
                            esQTWFixers = {
                                getText("UI_Off"),
                                getText("UI_On"),

                                name = getText("UI_esqtw_fixer"),
                                tooltip = getText("UI_esqtw_fixer_tt"),
                                default = 1,
                            },
                            esQTWFastTravel = {
                                getText("UI_Off"),
                                getText("UI_On"),

                                name = getText("UI_esqtw_fastTravel"),
                                tooltip = getText("UI_esqtw_fastTravel_tt"),
                                default = 1,
                            },
                            esQTWDrier = {
                                getText("UI_Off"),
                                getText("UI_On"),

                                name = getText("UI_esqtw_drier"),
                                tooltip = getText("UI_esqtw_drier_tt"),
                                default = 1,
                            },
                            esQTWDieter = {
                                getText("UI_Off"),
                                getText("UI_On"),

                                name = getText("UI_esqtw_dieter"),
                                tooltip = getText("UI_esqtw_dieter_tt"),
                                default = 1,
                            },
                            esQTWAutoEquip = {
                                getText("UI_Off"),
                                getText("UI_On"),
                                getText("UI_On") .. " " .. getText("UI_esqtw_autoequip_drop"),

                                name = getText("UI_esqtw_autoequip"),
                                tooltip = getText("UI_esqtw_autoequip_tt"),
                                default = 1,
                            },
                        }
                    })
            )
    );
end
