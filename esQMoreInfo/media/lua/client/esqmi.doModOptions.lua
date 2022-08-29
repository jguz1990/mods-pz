if (not isClient()) then
    local esqlibSettings = require("esqlib.settings");
    Events.OnPostMapLoad.Add(
            esqlibSettings.doMoLoad(
                    esqlibSettings.doMoMakeOptions("esQMI", {
                        mod_fullname = getText("UI_esqmi_more_info"),
                        options_data = {
                            esQMIAmmoInfo = {
                                getText("UI_Off"),
                                getText("UI_On") .. " " .. getText("UI_esqmi_ammo_F2"),
                                getText("UI_On") .. " " .. getText("UI_esqmi_ammo_F3"),
                                getText("UI_On") .. " " .. getText("UI_esqmi_ammo_F4"),
                                getText("UI_On") .. " " .. getText("UI_esqmi_ammo_F5"),
                                getText("UI_On") .. " " .. getText("UI_esqmi_ammo_F6"),
                                getText("UI_On") .. " " .. getText("UI_esqmi_ammo_F7"),

                                name = getText("UI_esqmi_ammo_info"),
                                tooltip = getText("UI_esqmi_ammo_info_tt"),
                                default = 1,
                            },
                            esQMIHealthInfo = {
                                getText("UI_Off"),
                                getText("UI_On"),

                                name = getText("UI_esqmi_health_info"),
                                tooltip = getText("UI_esqmi_health_info_tt"),
                                default = 1,
                            },
                            esQMICarInfo = {
                                getText("UI_Off"),
                                getText("UI_On"),

                                name = getText("UI_esqmi_car_info"),
                                tooltip = getText("UI_esqmi_car_info_tt"),
                                default = 1,
                            },
                            esQMIDrainInfo = {
                                getText("UI_Off"),
                                getText("UI_On"),

                                name = getText("UI_esqmi_drain_info"),
                                tooltip = getText("UI_esqmi_drain_info_tt"),
                                default = 1,
                            },
                            esQMIWeapons = {
                                getText("UI_Off"),
                                getText("UI_On") .. " " .. getText("ContextMenu_Info") .. " " .. getRadioText("AEBS_zone_name_e"),
                                getText("UI_On") .. " " .. getText("ContextMenu_Info") .. " " .. getRadioText("AEBS_zone_name_s"),
                                getText("UI_On") .. " " .. getText("ContextMenu_Info") .. " " .. getRadioText("AEBS_zone_name_c"),

                                name = getText("UI_esqmi_weapons_info"),
                                tooltip = getText("UI_esqmi_weapons_info_tt"),
                                default = 1,
                            },
                            esQMIWeaponsParts = {
                                getText("UI_Off"),
                                getText("UI_On") .. " " .. getText("ContextMenu_Info") .. " " .. getRadioText("AEBS_zone_name_e"),
                                getText("UI_On") .. " " .. getText("ContextMenu_Info") .. " " .. getRadioText("AEBS_zone_name_s"),
                                getText("UI_On") .. " " .. getText("ContextMenu_Info") .. " " .. getRadioText("AEBS_zone_name_c"),

                                name = getText("UI_esqmi_weapons_parts"),
                                tooltip = getText("UI_esqmi_weapons_parts_tt"),
                                default = 1,
                            },
                            esQMIClothing = {
                                getText("UI_Off"),
                                getText("UI_On") .. " " .. getText("ContextMenu_Info") .. " " .. getRadioText("AEBS_zone_name_e"),
                                getText("UI_On") .. " " .. getText("ContextMenu_Info") .. " " .. getRadioText("AEBS_zone_name_s"),
                                getText("UI_On") .. " " .. getText("ContextMenu_Info") .. " " .. getRadioText("AEBS_zone_name_c"),

                                name = getText("UI_esqmi_clothing_info"),
                                tooltip = getText("UI_esqmi_clothing_info_tt"),
                                default = 1,
                            },
                            esQMIBooks = {
                                getText("UI_Off"),
                                getText("UI_On") .. " " .. getText("ContextMenu_Info") .. " " .. getRadioText("AEBS_zone_name_e"),
                                getText("UI_On") .. " " .. getText("ContextMenu_Info") .. " " .. getRadioText("AEBS_zone_name_s"),
                                getText("UI_On") .. " " .. getText("ContextMenu_Info") .. " " .. getRadioText("AEBS_zone_name_c"),

                                name = getText("UI_esqmi_books_info"),
                                tooltip = getText("UI_esqmi_books_info_tt"),
                                default = 1,
                            },
                            esQMIFoods = {
                                getText("UI_Off"),
                                getText("UI_On") .. " " .. getText("ContextMenu_Info") .. " " .. getRadioText("AEBS_zone_name_e"),
                                getText("UI_On") .. " " .. getText("ContextMenu_Info") .. " " .. getRadioText("AEBS_zone_name_s"),
                                getText("UI_On") .. " " .. getText("ContextMenu_Info") .. " " .. getRadioText("AEBS_zone_name_c"),

                                name = getText("UI_esqmi_foods_info"),
                                tooltip = getText("UI_esqmi_foods_info_tt"),
                                default = 1,
                            },
                            esQMIInfoBar = {
                                getText("UI_Off"),
                                getText("UI_On"),

                                name = getText("UI_esqmi_infobar"),
                                tooltip = getText("UI_esqmi_infobar_tt"),
                                default = 1,
                            },
                        }
                    })
            )
    );
end
