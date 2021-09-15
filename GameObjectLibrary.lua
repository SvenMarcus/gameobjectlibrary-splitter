--******************************************************************************
--     _______ __
--    |_     _|  |--.----.---.-.--.--.--.-----.-----.
--      |   | |     |   _|  _  |  |  |  |     |__ --|
--      |___| |__|__|__| |___._|________|__|__|_____|
--     ______
--    |   __ \.-----.--.--.-----.-----.-----.-----.
--    |      <|  -__|  |  |  -__|     |  _  |  -__|
--    |___|__||_____|\___/|_____|__|__|___  |_____|
--                                    |_____|
--*   @Author:              [TR]Pox <Pox>
--*   @Date:                2018-01-06T18:36:14+01:00
--*   @Project:             Imperial Civil War
--*   @Filename:            GameObjectLibrary.lua
--*   @Last modified by:    [TR]Pox
--*   @Last modified time:  2018-04-12T00:17:51+02:00
--*   @License:             This source code may only be used with explicit permission from the developers
--*   @Copyright:           © TR: Imperial Civil War Development Team
--******************************************************************************

require("eawx-util/Comparators")

GameObjectLibrary = {
    Interdictors = {
		"Galleon",
		"Pelta_Support",
		"Supply_Ship",
        "Interdiction_Minefield_Container"
    },
    Numbers = {
        "Display_One",
        "Display_Two",
        "Display_Three",
        "Display_Four",
        "Display_Five",
        "Display_Six",
        "Display_Seven",
        "Display_Eight",
        "Display_Nine",
        "Display_Ten"
    },
    OrbitalStructures = {
		["GENERIC_SHIPYARD_LEVEL_ONE"] = {
            Text = "TEXT_DISPLAY_SHIPYARD1",
            Equation = "Planet_Has_Shipyard_One"
        },
        ["GENERIC_SHIPYARD_LEVEL_TWO"] = {
            Text = "TEXT_DISPLAY_SHIPYARD2",
            Equation = "Planet_Has_Shipyard_Two"
        },
        ["GENERIC_SHIPYARD_LEVEL_THREE"] = {
            Text = "TEXT_DISPLAY_SHIPYARD3",
            Equation = "Planet_Has_Shipyard_Three"
        },
        ["GENERIC_SHIPYARD_LEVEL_FOUR"] = {
            Text = "TEXT_DISPLAY_SHIPYARD4",
            Equation = "Planet_Has_Shipyard_Four"
        },   
		["EMPIRE_GOLAN_ONE"] = {
            Text = "TEXT_DISPLAY_GOLAN_ONE_STATION",
            Equation = "Planet_Has_Golan_One"
        },
		["REBEL_GOLAN_ONE"] = {
            Text = "TEXT_DISPLAY_GOLAN_ONE_STATION",
            Equation = "Planet_Has_Golan_One"
        },
        ["EMPIRE_GOLAN_TWO"] = {
            Text = "TEXT_DISPLAY_GOLAN_TWO_STATION",
            Equation = "Planet_Has_Golan_Two"
        },
		["REBEL_GOLAN_TWO"] = {
            Text = "TEXT_DISPLAY_GOLAN_TWO_STATION",
            Equation = "Planet_Has_Golan_Two"
        },
        ["GENERIC_TRADESTATION"] = {
            Text = "TEXT_DISPLAY_TRADE",
            Equation = "Planet_Has_Trade_Station"
        },
        ["VALIDUSIA"] = {
            Text = "TEXT_DISPLAY_VALIDUSIA",
            Equation = "Planet_Has_Validusia"
        },
		["EMPRESS_STATION"] = {
            Text = "TEXT_DISPLAY_EMPRESS",
            Equation = "Planet_Has_Empress"
        }
        --  ["CREW_RESOURCE_DUMMY"]={
        --      Text="TEXT_DISPLAY_SLAYN_KORPIL"
        --  },
        --    ["PLACEHOLDER_CATEGORY_DUMMY"]={
        --        Text="TEXT_DISPLAY_PLACEHOLDER_CATEGORY_DUMMY"
        --    },
        --    ["NON_CAPITAL_CATEGORY_DUMMY"]={
        --        Text="TEXT_DISPLAY_NON_CAPITAL_CATEGORY_DUMMY"
        --    },
        --    ["CAPITAL_CATEGORY_DUMMY"]={
        --        Text="TEXT_DISPLAY_CAPITAL_CATEGORY_DUMMY"
        --    },
        --    ["STRUCTURE_CATEGORY_DUMMY"]={
        --        Text="TEXT_DISPLAY_STRUCTURE_CATEGORY_DUMMY"
        --    }
    },
    Units = {
        ["GEONOSIAN_CRUISER"] = {
			Ship_Crew_Requirement = 1,
            Scripts = {
                "multilayer",
                "fighter-spawn",
                "single-unit-retreat"
            },
            Flags = {
                HANGAR = true
            },
            Fighters = {
                ["NANTEX_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                }
            }
        },
        ["C9979_CARRIER"] = {
			Ship_Crew_Requirement = 1,
            Scripts = {
                "multilayer",
                "fighter-spawn",
                "single-unit-retreat"
            },
            Flags = {
                HANGAR = true
            },
            Fighters = {
                ["STANDARD_VULTURE_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                },
                ["HYENA_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },
		["C9979_CARRIER_SUBFACTION"] = {
			Ship_Crew_Requirement = 1,
            Scripts = {
                "multilayer",
                "fighter-spawn",
                "single-unit-retreat"
            },
            Flags = {
                HANGAR = true,
				FIGHTERINHERIT = "C9979_CARRIER"
            }
        },
		["IPV1_SYSTEM_PATROL_CRAFT"] = {
			Ship_Crew_Requirement = 1,
            Scripts = {
                "multilayer",
                "single-unit-retreat"
            },
            Fighters = {}
        },
		["LAC"] = {
			Ship_Crew_Requirement = 1,
            Scripts = {
                "multilayer",
                "single-unit-retreat"
            },
            Fighters = {}
        },
        ["GENERIC_ACCLAMATOR_ASSAULT_SHIP_I"] = {
			Ship_Crew_Requirement = 10,
            Scripts = {
                "multilayer",
                "fighter-spawn",
                "single-unit-retreat"
            },
            Fighters = {
                ["TORRENT_SQUADRON_DOUBLE"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["CIS"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },		
                ["GENERIC_Z95_HEADHUNTER_SQUADRON_DOUBLE"] = {
                    ["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },
                ["2_WARPOD_SQUADRON_DOUBLE"] = {
                    ["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 4,
                        Initial = 2
                    }
                },
                ["BTLB_Y-WING_SQUADRON_DOUBLE"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["CIS"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },
        ["GENERIC_ACCLAMATOR_ASSAULT_SHIP_II"] = {
			Ship_Crew_Requirement = 10,
            Scripts = {
                "multilayer",
                "fighter-spawn",
                "single-unit-retreat"
            },
            Fighters = {
                ["V-WING_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },
        ["GENERIC_ACCLAMATOR_ASSAULT_SHIP_LEVELER"] = {
			Ship_Crew_Requirement = 10,
            Scripts = {
                "multilayer",
                "fighter-spawn",
                "single-unit-retreat"
            },
            Fighters = {
                ["TORRENT_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 1,
                        Initial = 1,
						TechLevel = LessOrEqualTo(2)
                    },
                    ["HOSTILE"] = {
                        Reserve = 1,
                        Initial = 1,
						TechLevel = LessOrEqualTo(2)
                    },
                    ["CIS"] = {
                        Reserve = 1,
                        Initial = 1,
						TechLevel = LessOrEqualTo(2)
                    }
                },
                ["REPUBLIC_Z95_HEADHUNTER_SQUADRON"] = {
					["EMPIRE"] = {
                        Reserve = 1,
                        Initial = 1,
						TechLevel = GreaterThan(2)
                    },
                    ["HOSTILE"] = {
                        Reserve = 1,
                        Initial = 1,
						TechLevel = GreaterThan(2)
                    },
                    ["CIS"] = {
                        Reserve = 1,
                        Initial = 1,
						TechLevel = GreaterThan(2)
                    }
                },
                ["BTLB_Y-WING_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["CIS"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },
                ["GENERIC_Z95_HEADHUNTER_SQUADRON"] = {
                    ["WARLORDS"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                },					
                ["GENERIC_ARC_170_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["CIS"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },
				["2_WARPOD_SQUADRON"] = {
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },				
				["CLOAKSHAPE_SQUADRON"] = {
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
		},
        ["RECUSANT"] = {
			Ship_Crew_Requirement = 10,
            Scripts = {
                "multilayer",
                "single-unit-retreat",
				"fighter-spawn"
            },
			Flags = {
                HANGAR = true
            },
            Fighters = {
                ["STANDARD_VULTURE_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 9,
                        Initial = 1,
						ResearchType = "VultureLatch"
                    }
				}
            }
        },
        ["RECUSANT_DREADNOUGHT"] = {
			Ship_Crew_Requirement = 25,
            Scripts = {
                "multilayer",
                "single-unit-retreat",
				"fighter-spawn"
            },
			Flags = {
                HANGAR = true
            },
            Fighters = {
                ["STANDARD_VULTURE_SQUADRON_TRIPLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 5,
                        Initial = 1,
						ResearchType = "VultureLatch"
                    }
				}
            }
        },
        ["DIAMOND_FRIGATE"] = {
			Ship_Crew_Requirement = 1,
            Scripts = {
                "multilayer",
                "single-unit-retreat"
            },
            Fighters = {}
        },
        ["HARDCELL"] = {
			Ship_Crew_Requirement = 1,
            Scripts = {
                "multilayer",
                "fighter-spawn",
                "single-unit-retreat"
            },
            Flags = {
                HANGAR = true
            },
            Fighters = {
                ["STANDARD_VULTURE_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                }
            }
        },
		["CORELLIAN_CORVETTE"] = {
			Ship_Crew_Requirement = 1,
            Scripts = {
                "multilayer"
            },
            Fighters = {}
        },
		["CORELLIAN_GUNBOAT"] = {
			Ship_Crew_Requirement = 1,
            Scripts = {
                "multilayer",
                "single-unit-retreat"
            },
            Fighters = {}
        },
        ["NEUTRON_STAR"] = {
			Ship_Crew_Requirement = 10,
            Scripts = {
                "multilayer",
                "fighter-spawn",
                "single-unit-retreat"
            },
            Fighters = {
                ["GENERIC_ARC_170_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 0,
                        Initial = 1
                    }
                },
                ["BTLB_Y-WING_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                }
            }
        },
        ["GALLEON"] = {
			Ship_Crew_Requirement = 5,
            Scripts = {
                "multilayer",
                "fighter-spawn",
                "single-unit-retreat"
            },
            Flags = {
                HANGAR = true
            },
            Fighters = {
                ["GENERIC_Z95_HEADHUNTER_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
					["HOSTILE"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
					["WARLORDS"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
                    ["CIS"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    }
                },
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
					["HOSTILE"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
					["WARLORDS"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
                    ["CIS"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                }
            }
        },		
        ["GENERIC_SECUTOR"] = {
			Ship_Crew_Requirement = 35,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Fighters = {
                ["TORRENT_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    }
                },
                ["TORRENT_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 3,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    }
                },
                ["V-WING_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                },
                ["V-WING_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 3,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                },
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 3,
                        Initial = 1
                    }
                },
                ["BTLB_Y-WING_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },
                ["BTLB_Y-WING_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 3,
                        Initial = 1
                    }
                }
            }
        },
        ["INVINCIBLE_CRUISER"] = {
			Ship_Crew_Requirement = 35,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Fighters = {
                ["GENERIC_Z95_HEADHUNTER_SQUADRON_DOUBLE"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
					["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
					["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
                    ["CIS"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    }
                },
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON_DOUBLE"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
					["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
                    ["CIS"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                },
                ["TORRENT_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
					["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
					["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 4,
                        Initial = 2,
                        TechLevel = LessOrEqualTo(3)
                    },
                    ["CIS"] = {
                        Reserve = 4,
                        Initial = 2,
                        TechLevel = LessOrEqualTo(3)
                    }
                },
                ["V-WING_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
					["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
					["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 4,
                        Initial = 2,
                        TechLevel = GreaterThan(3)
                    },
                    ["CIS"] = {
                        Reserve = 4,
                        Initial = 2,
                        TechLevel = GreaterThan(3)
                    }
                },
                ["BTLB_Y-WING_SQUADRON_DOUBLE"] = {
                    ["EMPIRE"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = GreaterThan(1)
                    },
                    ["HOSTILE"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = GreaterThan(1)
                    },
                    ["CIS"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = GreaterThan(1)
                    }
                },
                ["2_WARPOD_SQUADRON_DOUBLE"] = {
                    ["EMPIRE"] = {
						Reserve = 1,
						Initial = 1,
						TechLevel = EqualTo(1)
                    },
                    ["HOSTILE"] = {
						Reserve = 1,
						Initial = 1,
						TechLevel = EqualTo(1)
                    },
                    ["WARLORDS"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["CIS"] = {
						Reserve = 1,
						Initial = 1,
						TechLevel = EqualTo(1)
                    }
                }
            }
        },
        ["GENERIC_VICTORY_DESTROYER"] = {
			Ship_Crew_Requirement = 15,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Fighters = {
                ["V-WING_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                },
                ["TORRENT_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    }
                }
            }
        },
        ["MUNIFICENT"] = {
			Ship_Crew_Requirement = 10,
            Scripts = {
                "multilayer",
                "fighter-spawn",
                "single-unit-retreat"
            },
			Flags = {
                HANGAR = true
            },
            Fighters = {
                ["STANDARD_VULTURE_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 4,
                        Initial = 1,
						ResearchType = "VultureLatch"
                    }
				}
            }
        },
        ["GENERIC_VICTORY_DESTROYER_TWO"] = {
			Ship_Crew_Requirement = 15,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Flags = {
                FIGHTERINHERIT = "GENERIC_VICTORY_DESTROYER"
            }
        },
        ["GENERIC_PROVIDENCE"] = {
			Ship_Crew_Requirement = 15,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Fighters = {
                ["STANDARD_VULTURE_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["PIRATES"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["EMPIRE"] = {
                        Reserve = 3,
                        Initial = 1
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 3,
                        Initial = 1
                    }
                },
                ["TRIFIGHTER_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["PIRATES"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["SCARAB_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["PIRATES"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    }
                },
                ["NANTEX_SQUADRON"] = {
                    ["PENTASTAR"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },
                ["BELBULLAB24_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["PIRATES"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["EMPIRE"] = {
                        Reserve = 3,
                        Initial = 1
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 3,
                        Initial = 1
                    }
                },
                ["GENERIC_Z95_HEADHUNTER_SQUADRON"] = {
                    ["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },
        ["PROVIDENCE_DREADNOUGHT"] = {
			Ship_Crew_Requirement = 30,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Fighters = {
                ["STANDARD_VULTURE_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 14,
                        Initial = 2
                    },
                    ["PIRATES"] = {
                        Reserve = 14,
                        Initial = 2
                    },
                    ["PENTASTAR"] = {
                        Reserve = 14,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 14,
                        Initial = 2
                    },
                    ["HUTTS"] = {
                        Reserve = 14,
                        Initial = 2
                    },
                    ["HOSTILE"] = {
                        Reserve = 14,
                        Initial = 2
                    },
                    ["WARLORDS"] = {
                        Reserve = 14,
                        Initial = 2
                    },
                    ["EMPIRE"] = {
                        Reserve = 14,
                        Initial = 2
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 14,
                        Initial = 2
                    }
                },
                ["TRIFIGHTER_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["PIRATES"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["HUTTS"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["EMPIRE"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["SCARAB_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["PIRATES"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["HUTTS"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 1
                    },					
					["CORPORATE_SECTOR"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    }
                },				
                ["NANTEX_SQUADRON"] = {
                    ["PENTASTAR"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 4,
                        Initial = 1
                    }
                },
                ["HYENA_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 8,
                        Initial = 1
                    },
                    ["PIRATES"] = {
                        Reserve = 8,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 8,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 8,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 8,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 8,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 8,
                        Initial = 1
                    },
                    ["EMPIRE"] = {
                        Reserve = 8,
                        Initial = 1
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 8,
                        Initial = 1
                    }
                }
            }
        },
        ["MUNIFEX"] = {
			Ship_Crew_Requirement = 5,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
			Flags = {
                HANGAR = true
            },
            Fighters = {
                ["TRIFIGHTER_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["PIRATES"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["HUTTS"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["EMPIRE"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["MANKVIM_SQUADRON"] = {
                    ["WARLORDS"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                },			
                ["SCARAB_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["PIRATES"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["HUTTS"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["HOSTILE"] = {
                        Reserve = 0,
                        Initial = 1
                    },
                    ["EMPIRE"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    }
                },
                ["NANTEX_SQUADRON"] = {
                    ["PENTASTAR"] = {
                        Reserve = 0,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 0,
                        Initial = 1
                    }
                },			
                ["CLOAKSHAPE_SQUADRON"] = {
                    ["WARLORDS"] = {
                        Reserve = 0,
                        Initial = 1,
						TechLevel = LessOrEqualTo(2)
                    }
                }
            }
        },		
        ["CAPTOR"] = {
			Ship_Crew_Requirement = 10,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Fighters = {
                ["STANDARD_VULTURE_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["PIRATES"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["EMPIRE"] = {
                        Reserve = 3,
                        Initial = 1
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 3,
                        Initial = 1
                    }
                },
                ["TRIFIGHTER_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["PIRATES"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["SCARAB_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["PIRATES"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    }
                },
                ["NANTEX_SQUADRON"] = {
                    ["PENTASTAR"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },
                ["BELBULLAB24_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["PIRATES"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["EMPIRE"] = {
                        Reserve = 3,
                        Initial = 1
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 3,
                        Initial = 1
                    }
                },
                ["GENERIC_Z95_HEADHUNTER_SQUADRON"] = {
                    ["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },
        ["AUXILIA"] = {
			Ship_Crew_Requirement = 10,
            Scripts = {
                "multilayer",
                "single-unit-retreat"
            },
            Fighters = {}
        },
        ["GENERIC_LUCREHULK"] = {
			Ship_Crew_Requirement = 50,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Fighters = {
                ["STANDARD_VULTURE_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 15,
                        Initial = 2
                    },
                    ["PIRATES"] = {
                        Reserve = 15,
                        Initial = 2
                    },
                    ["PENTASTAR"] = {
                        Reserve = 15,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 15,
                        Initial = 2
                    },
                    ["HUTTS"] = {
                        Reserve = 15,
                        Initial = 2
                    },
                    ["HOSTILE"] = {
                        Reserve = 15,
                        Initial = 2
                    },
                    ["WARLORDS"] = {
                        Reserve = 15,
                        Initial = 2
                    },
                    ["EMPIRE"] = {
                        Reserve = 15,
                        Initial = 2
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 15,
                        Initial = 2
                    }
                },
                ["STANDARD_VULTURE_SQUADRON_TRIPLE"] = {
                    ["REBEL"] = {
                        Reserve = 20,
                        Initial = 2
                    },
                    ["PIRATES"] = {
                        Reserve = 20,
                        Initial = 2
                    },
                    ["PENTASTAR"] = {
                        Reserve = 20,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 20,
                        Initial = 2
                    },
                    ["HUTTS"] = {
                        Reserve = 20,
                        Initial = 2
                    },
                    ["HOSTILE"] = {
                        Reserve = 20,
                        Initial = 2
                    },
                    ["WARLORDS"] = {
                        Reserve = 20,
                        Initial = 2
                    },
                    ["EMPIRE"] = {
                        Reserve = 20,
                        Initial = 2
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 20,
                        Initial = 2
                    }
                },
                ["TRIFIGHTER_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["PIRATES"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["HUTTS"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["EMPIRE"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["SCARAB_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["PIRATES"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["HUTTS"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["EMPIRE"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    }
                },
                ["NANTEX_SQUADRON_DOUBLE"] = {
                    ["PENTASTAR"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 4,
                        Initial = 1
                    }
                },
                ["HYENA_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["PIRATES"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["EMPIRE"] = {
                        Reserve = 4,
                        Initial = 1
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 4,
                        Initial = 1
                    }
                },
                ["HYENA_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["PIRATES"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["PENTASTAR"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["HUTTS"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 2
                    },
                    ["EMPIRE"] = {
                        Reserve = 4,
                        Initial = 2
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 4,
                        Initial = 1
                    }
                },
                ["GENERIC_Z95_HEADHUNTER_SQUADRON_DOUBLE"] = {
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 1
                    }
                },
				["EARLY_SKIPRAY_SQUADRON"] = {
                    ["WARLORDS"] = {
                        Reserve = 8,
                        Initial = 2
                    }
                }				
            }
        },
		["GENERIC_LUCREHULK_CONTROL"] = {
			Ship_Crew_Requirement = 50,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Flags = {
				FIGHTERINHERIT = "GENERIC_LUCREHULK"
            }
        },		
        ["BATTLESHIP_LUCREHULK"] = {
			Ship_Crew_Requirement = 50,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Fighters = {
                ["STANDARD_VULTURE_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 6,
                        Initial = 2,
                        TechLevel = IsOneOf({2, 3, 5})
                    },
                    ["PIRATES"] = {
                        Reserve = 6,
                        Initial = 2,
                        TechLevel = InInterval(1, 4)
                    },
                    ["PENTASTAR"] = {
                        Reserve = 6,
                        Initial = 2
                    },
                    ["TERADOC"] = {
                        Reserve = 6,
                        Initial = 2
                    },
                    ["HUTTS"] = {
                        Reserve = 6,
                        Initial = 2
                    },
                    ["HOSTILE"] = {
                        Reserve = 6,
                        Initial = 2
                    },
                    ["WARLORDS"] = {
                        Reserve = 6,
                        Initial = 2
                    },
                    ["EMPIRE"] = {
                        Reserve = 6,
                        Initial = 2
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 6,
                        Initial = 2
                    }
                },
                ["TRIFIGHTER_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["PIRATES"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["HUTTS"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
                    ["EMPIRE"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["SCARAB_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["PIRATES"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["HUTTS"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["EMPIRE"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    }
                },
                ["NANTEX_SQUADRON"] = {
                    ["PENTASTAR"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 4,
                        Initial = 1
                    }
                },
                ["HYENA_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["PIRATES"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 3,
                        Initial = 1
                    },
                    ["EMPIRE"] = {
                        Reserve = 3,
                        Initial = 1
                    },
					["CORPORATE_SECTOR"] = {
                        Reserve = 3,
                        Initial = 1
                    }
                },
                ["GENERIC_Z95_HEADHUNTER_SQUADRON"] = {
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 1
                    }
                },
				["EARLY_SKIPRAY_SQUADRON"] = {
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 1
                    }
                }
            }
        },		
        ["CARGO_LUCREHULK"] = {
			Ship_Crew_Requirement = 50,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Flags = {
                FIGHTERINHERIT = "GENERIC_LUCREHULK"
            }
        },
		["CARGO_LUCREHULK_CONTROL"] = {
			Ship_Crew_Requirement = 50,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Flags = {
				FIGHTERINHERIT = "GENERIC_LUCREHULK"
            }
        },		
        ["SUBJUGATOR"] = {
			Ship_Crew_Requirement = 150,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Fighters = {
                ["STANDARD_VULTURE_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["PIRATES"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 1
                    },
					["EMPIRE"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 4,
                        Initial = 1
                    }
                },
                ["HYENA_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["PIRATES"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
					["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },
        ["GENERIC_VENATOR"] = {
			Ship_Crew_Requirement = 10,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Fighters = {
                ["TORRENT_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    },
					["CIS"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    }
                },
                ["V-WING_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                },
                ["GENERIC_ARC_170_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 4,
                        Initial = 1
                    }
                },
                ["BTLB_Y-WING_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 4,
                        Initial = 1
                    }
                }
            }
        },
        ["GENERIC_STAR_DESTROYER"] = {
			Ship_Crew_Requirement = 30,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Fighters = {
                ["TORRENT_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 7,
                        Initial = 2,
                        TechLevel = LessOrEqualTo(3)
                    },
                    ["HOSTILE"] = {
                        Reserve = 7,
                        Initial = 2
                    },
                    ["WARLORDS"] = {
                        Reserve = 7,
                        Initial = 2
                    },
					["CIS"] = {
                        Reserve = 7,
                        Initial = 2,
                        TechLevel = LessOrEqualTo(3)
                    }
                },
                ["V-WING_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 7,
                        Initial = 2,
                        TechLevel = GreaterThan(3)
                    },
					["CIS"] = {
                        Reserve = 7,
                        Initial = 2,
                        TechLevel = GreaterThan(3)
                    }
                },
                ["GENERIC_ARC_170_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },
                ["EARLY_SKIPRAY_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },
        ["ARQUITENS"] = {
			Ship_Crew_Requirement = 5,
            Scripts = {
                "multilayer"
            },
            Fighters = {}
        },
        ["GENERIC_TECTOR"] = {
			Ship_Crew_Requirement = 1,
            Scripts = {
                "multilayer"
            },
            Fighters = {}
        },
        ["CARRACK_CRUISER"] = {
			Ship_Crew_Requirement = 5,
            Scripts = {
                "multilayer",
                "single-unit-retreat"
            },
            Flags = {
				HANGAR = true,
                FIGHTERINHERIT = "CARRACK_CRUISER_LASERS"
            }
        },
        ["CARRACK_CRUISER_LASERS"] = {
			Ship_Crew_Requirement = 5,
            Scripts = {
                "multilayer",
                "single-unit-retreat",
				"fighter-spawn"
            },
            Flags = {
                HANGAR = true
            },
            Fighters = {
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON_HALF"] = {
                    ["DEFAULT"] = {
                        Reserve = 0,
                        Initial = 1,
						ResearchType = "TIERacks"
                    }
				}
            }
        },
        ["DREADNAUGHT"] = {
			Ship_Crew_Requirement = 20,
            Scripts = {
                "multilayer",
                "single-unit-retreat",
				"fighter-spawn"
            },
            Fighters = {
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 0,
                        Initial = 1,
						ResearchType = "TIERacks"
                    }
				}
            }
        },
        ["DREADNAUGHT_LASERS"] = {
			Ship_Crew_Requirement = 20,
            Scripts = {
                "multilayer",
                "single-unit-retreat",
				"fighter-spawn"
            },
            Fighters = {
                ["GENERIC_Z95_HEADHUNTER_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 0,
                        Initial = 1,
						ResearchType = "TIERacks"
                    }
				}
            }
        },
		["DREADNAUGHT_CARRIER"] = {
			Ship_Crew_Requirement = 20,
            Scripts = {
                "multilayer",
                "single-unit-retreat",
				"fighter-spawn"
            },
            Fighters = {
                ["GENERIC_Z95_HEADHUNTER_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1,
                    }
				},
                ["GENERIC_Z95_BOMBER_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1,
                    }
				}
            }
        },
        ["BANKING_CLAN_INTERCEPTOR_FRIGATE"] = {
			Ship_Crew_Requirement = 1,
            Scripts = {
                "multilayer",
                "single-unit-retreat"
            },
            Fighters = {}
        },
        ["BANKING_CLAN_DREADNAUGHT_LASERS"] = {
			Ship_Crew_Requirement = 20,
            Scripts = {
                "multilayer",
                "single-unit-retreat"
            },
            Fighters = {}
        },
        ["BANKING_CLAN_DREADNAUGHT"] = {
			Ship_Crew_Requirement = 20,
            Scripts = {
                "multilayer",
                "single-unit-retreat"
            },
            Fighters = {}
        },		
        ["TECHNO_UNION_MARAUDER_MISSILE_CRUISER"] = {
			Ship_Crew_Requirement = 1,
            Scripts = {
                "multilayer",
                "fighter-spawn",
                "single-unit-retreat"
            },
            Flags = {
                HANGAR = true
            },
            Fighters = {
                ["SCARAB_SQUADRON_HALF"] = {
                    ["REBEL"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["PIRATES"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                },
                ["GENERIC_Z95_HEADHUNTER_SQUADRON_HALF"] = {
                    ["WARLORDS"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["EMPIRE"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                }
            }
        },
        ["BULWARK_I"] = {
			Ship_Crew_Requirement = 10,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Fighters = {
                ["BELBULLAB22_SQUADRON"] = {
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["PIRATES"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 1
                    },
					["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    },
					["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },			
                ["NANTEX_SQUADRON"] = {
                    ["HOSTILE"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
                    ["REBEL"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
                    ["PIRATES"] = {
                        Reserve = 0,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 0,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 0,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
					["WARLORDS"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
					["EMPIRE"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    }
                },
                ["MANKVIM_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
                    ["HOSTILE"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
                    ["HUTTS"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
					["WARLORDS"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
					["EMPIRE"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                }
            }
        },
        ["BULWARK_I_SUBFACTION"] = {
			Ship_Crew_Requirement = 10,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Flags = {
                FIGHTERINHERIT = "BULWARK_I"
            }
        },
        ["BULWARK_II"] = {
			Ship_Crew_Requirement = 35,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Fighters = {
                ["BELBULLAB22_SQUADRON"] = {
                    ["HOSTILE"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["REBEL"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["PIRATES"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 1,
                        Initial = 1
                    },
					["WARLORDS"] = {
                        Reserve = 1,
                        Initial = 1
                    },
					["EMPIRE"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                },			
                ["NANTEX_SQUADRON_DOUBLE"] = {
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
                    ["PIRATES"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
					["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
					["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    }
                },
                ["MANKVIM_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
					["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
					["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                }
            }
        },
        ["BULWARK_II_SUBFACTION"] = {
			Ship_Crew_Requirement = 35,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Flags = {
                FIGHTERINHERIT = "BULWARK_II"
            }
        },
        ["GENERIC_PRAETOR"] = {
			Ship_Crew_Requirement = 150,
            Scripts = {
                "multilayer",
                "fighter-spawn",
                "single-unit-retreat"
            },
            Fighters = {
                ["CLOAKSHAPE_SQUADRON"] = {
                    ["EMPIRE"] = {
						Reserve = 1,
						Initial = 1,
						TechLevel = LessOrEqualTo(2)
                    },
                    ["HOSTILE"] = {
						Reserve = 1,
						Initial = 1,
						TechLevel = LessOrEqualTo(2)
                    },
                    ["CORPORATE_SECTOR"] = {
						Reserve = 1,
						Initial = 1,
						TechLevel = LessOrEqualTo(2)
                    },
                    ["WARLORDS"] = {
						Reserve = 1,
						Initial = 1,
						TechLevel = LessOrEqualTo(2)
                    },					
					["CIS"] = {
						Reserve = 1,
						Initial = 1,
						TechLevel = LessOrEqualTo(2)
                    }
                },			
                ["GENERIC_ARC_170_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 4,
                        Initial = 1,
						TechLevel = GreaterThan(2)
                    },
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 1,
						TechLevel = GreaterThan(2)
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 4,
                        Initial = 1,
						TechLevel = GreaterThan(2)
                    },
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 1,
						TechLevel = GreaterThan(2)
                    },					
					["CIS"] = {
                        Reserve = 4,
                        Initial = 1,
						TechLevel = GreaterThan(2)
                    }
                },
                ["GENERIC_Z95_HEADHUNTER_SQUADRON_DOUBLE"] = {
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 4,
                        Initial = 1,
						TechLevel = LessOrEqualTo(3)
                    },
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 1,
						TechLevel = LessOrEqualTo(3)
                    }
                },
                ["GENERIC_Z95_HEADHUNTER_SQUADRON_DOUBLE"] = {
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["EMPIRE"] = {
                        Reserve = 4,
                        Initial = 1,
						TechLevel = LessOrEqualTo(3)
                    },
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 1,
						TechLevel = LessOrEqualTo(3)
                    },					
                    ["CIS"] = {
                        Reserve = 4,
                        Initial = 1,
						TechLevel = LessOrEqualTo(3)
                    }
                },				
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON_DOUBLE"] = {
                    ["EMPIRE"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    },
					["CIS"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                }
            }
        },
		["GENERIC_MANDATOR"] = {
			Ship_Crew_Requirement = 150,
            Scripts = {
                "multilayer",
                "fighter-spawn",
                "persistent-damage",
                "tactical-display"
            },
            Fighters = {
                ["CLOAKSHAPE_SQUADRON"] = {
                    ["DEFAULT"] = {
						Reserve = 3,
						Initial = 1,
						TechLevel = LessOrEqualTo(3)
                    }
                },
                ["V-WING_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 3,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                },
                ["GENERIC_ARC_170_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 3,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                },
                ["GENERIC_Z95_HEADHUNTER_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 6,
                        Initial = 2,
                        TechLevel = LessOrEqualTo(3)
                    }
                },
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 3,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                },
                ["BTLB_Y-WING_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 3,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                },
                ["2_WARPOD_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
						Reserve = 3,
						Initial = 1,
						TechLevel = LessOrEqualTo(3)
                    }
                }
            }
        },
		["GENERIC_MANDATOR_II"] = {
			Ship_Crew_Requirement = 150,
            Scripts = {
                "multilayer",
                "fighter-spawn",
                "persistent-damage",
                "tactical-display"
            },
            Fighters = {
                ["TORRENT_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
						Reserve = 3,
						Initial = 1,
						TechLevel = LessOrEqualTo(3)
                    }
                },
                ["V-WING_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 3,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                },
                ["GENERIC_ARC_170_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 3,
                        Initial = 1
                    }
                },
                ["GENERIC_Z95_HEADHUNTER_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 3,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    }
                },
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 3,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                },
                ["BTLB_Y-WING_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 3,
                        Initial = 1
                    }
                }
            }
        },
        ["PELTA_ASSAULT"] = {
			Ship_Crew_Requirement = 1,
            Scripts = {
                "multilayer"
            },
            Fighters = {}
        },
        ["PELTA_SUPPORT"] = {
			Ship_Crew_Requirement = 1,
            Scripts = {
                "multilayer"
            },
            Fighters = {}
        },
		["INTERDICTION_MINEFIELD_CONTAINER"] = {
            Scripts = {
                "interdictor-ai"
            },
            Fighters = {}
        },
        ["SUPPLY_SHIP"] = {
			Ship_Crew_Requirement = 10,
            Scripts = {
                "multilayer",
                "fighter-spawn"
            },
            Fighters = {
                ["STANDARD_VULTURE_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 2
                    }
                },
                ["HYENA_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 2
                    }
                },
                ["SCARAB_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    }
                },
                ["TRIFIGHTER_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 0,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    }
                },
            }
        },
		["DAO_VENATOR"] = {
            Flags = {
                FULLINHERIT = "GENERIC_VENATOR"
            }
        },
        ["NEWREPUBLIC_STAR_BASE_1"] = {
            Scripts = {
                "fighter-spawn"
            },
            Fighters = {
                ["NANTEX_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },
                ["SCARAB_SQUADRON"] = {
                    ["PIRATES"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },		
        ["NEWREPUBLIC_STAR_BASE_2"] = {
            Scripts = {
                "fighter-spawn"
            },
            Fighters = {
                ["NANTEX_SQUADRON"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                }
            }
        },
        ["NEWREPUBLIC_STAR_BASE_3"] = {
            Scripts = {
                "fighter-spawn"
            },
            Fighters = {
                ["NANTEX_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                }
            }
        },
        ["NEWREPUBLIC_STAR_BASE_4"] = {
            Scripts = {
                "fighter-spawn"
            },
            Fighters = {
                ["NANTEX_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },
        ["NEWREPUBLIC_STAR_BASE_5"] = {
            Scripts = {
                "fighter-spawn"
            },
            Fighters = {
                ["SCARAB_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 5,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    }
                },
                ["TRIFIGHTER_SQUADRON_DOUBLE"] = {
                    ["REBEL"] = {
                        Reserve = 5,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["NANTEX_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 5,
                        Initial = 1
                    }
                },
                ["STANDARD_VULTURE_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 5,
                        Initial = 1
                    }
                },
                ["HYENA_SQUADRON_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 5,
                        Initial = 1
                    }
                }
            }
        },
        ["EMPIRE_STAR_BASE_1"] = {
            Scripts = {
                "fighter-spawn"
            },
            Fighters = {
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                },
                ["GENERIC_Z95_HEADHUNTER_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },
        ["EMPIRE_STAR_BASE_2"] = {
            Scripts = {
                "fighter-spawn"
            },
            Fighters = {
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = GreaterThan(3)
                    }
                },
                ["GENERIC_Z95_HEADHUNTER_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(3)
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                }
            }
        },
        ["EMPIRE_STAR_BASE_3"] = {
            Scripts = {
                "fighter-spawn"
            },
            Fighters = {
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON_DOUBLE"] = {
                    ["EMPIRE"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["GENERIC_Z95_HEADHUNTER_SQUADRON_DOUBLE"] = {
                    ["EMPIRE"] = {
                        Reserve = 1,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 1,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                }
            }
        },
        ["EMPIRE_STAR_BASE_4"] = {
            Scripts = {
                "fighter-spawn"
            },
            Fighters = {
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON_DOUBLE"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["GENERIC_Z95_HEADHUNTER_SQUADRON_DOUBLE"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },
        ["EMPIRE_STAR_BASE_5"] = {
            Scripts = {
                "fighter-spawn"
            },
            Fighters = {
                ["TWIN_ION_ENGINE_STARFIGHTER_SQUADRON_DOUBLE"] = {
                    ["EMPIRE"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = GreaterThan(2)
                    }
                },
                ["GENERIC_Z95_HEADHUNTER_SQUADRON_DOUBLE"] = {
                    ["EMPIRE"] = {
                        Reserve = 4,
                        Initial = 1,
                        TechLevel = LessOrEqualTo(2)
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 4,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 4,
                        Initial = 1
                    }
                },
                ["GENERIC_ARC_170_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 9,
                        Initial = 1
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 9,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 9,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 9,
                        Initial = 1
                    }
                },
                ["BTLB_Y-WING_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 9,
                        Initial = 1
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 9,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 9,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 9,
                        Initial = 1
                    }
                }
            }
        },
        ["GENERIC_TRADESTATION"] = {
            Scripts = {
                "fighter-spawn"
            },
            Fighters = {
                ["CLOAKSHAPE_SQUADRON"] = {
                    ["EMPIRE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["CORPORATE_SECTOR"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HOSTILE"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["WARLORDS"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },
                ["NANTEX_SQUADRON"] = {
                    ["REBEL"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["PENTASTAR"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["TERADOC"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                },
                ["SCARAB_SQUADRON"] = {
                    ["PIRATES"] = {
                        Reserve = 2,
                        Initial = 1
                    },
                    ["HUTTS"] = {
                        Reserve = 2,
                        Initial = 1
                    }
                }
            }
        },		
        ["REBEL_GOLAN_ONE"] = {
            Scripts = {
                "turn-station",
                "fighter-spawn"
            },
            Fighters = {
                ["STANDARD_GARRISON_FIGHTER"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                }
            }
        },
        ["REBEL_GOLAN_TWO"] = {
            Scripts = {
                "turn-station",
                "fighter-spawn"
            },
            Fighters = {
                ["STANDARD_GARRISON_FIGHTER_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                }
            }
        },
        ["EMPIRE_GOLAN_ONE"] = {
            Scripts = {
                "turn-station",
                "fighter-spawn"
            },
            Fighters = {
                ["STANDARD_GARRISON_FIGHTER"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                }
            }
        },
        ["EMPIRE_GOLAN_TWO"] = {
            Scripts = {
                "turn-station",
                "fighter-spawn"
            },
            Fighters = {
                ["STANDARD_GARRISON_FIGHTER_DOUBLE"] = {
                    ["DEFAULT"] = {
                        Reserve = 1,
                        Initial = 1
                    }
                }
            }
        }
    }
}
return GameObjectLibrary