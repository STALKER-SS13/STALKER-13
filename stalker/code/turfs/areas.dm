/area/stalker
	icon = 'stalker/icons/areas.dmi'
	name = "Strange Location"
	icon_state = "away"
	has_gravity = STANDARD_GRAVITY
	dynamic_lighting = DYNAMIC_LIGHTING_FORCED

/area/stalker/blowout
	ambient_environment = DEFAULT_AMBIENT_ENVIRONMENT_DAY
	ambient_environment_night = DEFAULT_AMBIENT_ENVIRONMENT_NIGHT

/area/stalker/blowout/outdoor
	name = "Outdoor"
	icon = 'stalker/icons/areas_outdoor_blowout.dmi'
	icon_state = "outdoor"
	open_space = TRUE
	environment = 15

/area/stalker/sidor
	name = "Sidorovich Basement"
	icon = 'stalker/icons/areas_buildings.dmi'
	icon_state = "sidor"
	requires_power = 1
	environment = 5
	safezone = 1

/area/stalker/blowout/buildings
	name = "Buildings"
	icon = 'stalker/icons/areas_buildings_blowout.dmi'
	icon_state = "buildings"
	requires_power = 1
	environment = 2

/area/stalker/buildings
	name = "Buildings"
	icon = 'stalker/icons/areas_buildings.dmi'
	icon_state = "buildings"
	requires_power = 1
	environment = 5

/area/stalker/adminspace
	name = "Admin Space"
	icon = 'stalker/icons/areas_buildings.dmi'
	icon_state = "admin_space"
	requires_power = 1

///////////////////////?????////////////////////////////////////////////////////////////////////////////////////////////////////////////

/area/stalker/buildings/backwater
	name = "Backwater - Buildings \[NB\]"
	icon_state = "buildings"
	environment = 2

/area/stalker/blowout/buildings/backwater
	name = "Backwater - Buildings"
	icon_state = "buildings"
	environment = 2

/area/stalker/blowout/outdoor/backwater
	name = "Backwater - Outdoor \[O\]"
	icon_state = "outdoor"
	environment = 19

////////////////////////////////////////////////////////////////

///////////////////////????? - ??????????///////////////////////
/area/stalker/buildings/backwater/substation
	name = "Backwater - Substation Workshops \[NB\]"
	icon_state = "substation"
	environment = 5

/area/stalker/blowout/buildings/backwater/substation
	name = "Backwater - Substation Workshops"
	icon_state = "substation"

/area/stalker/blowout/outdoor/backwater/substation
	name = "Backwater - Substation Workshops \[O\]"
	icon_state = "substation"
////////////////////////////////////////////////////////////////

///////////////////////????? - ????????/////////////////////////
/area/stalker/buildings/backwater/skadovsk
	name = "Backwater - Skadovsk \[NB\]"
	icon_state = "skadovsk"
	safezone = 1
	environment = 0
	//ambient_music = list()

/area/stalker/buildings/backwater/skadovsk_respawn
	name = "Backwater - Skadovsk (2nd floor) \[NB\]"
	icon_state = "skadovsk"
	safezone = 1
	environment = 0
	//ambient_music = list()

/area/stalker/blowout/buildings/backwater/skadovsk
	name = "Backwater - Skadovsk"
	icon_state = "skadovsk"
	safezone = 1
	environment = 0
	//ambient_music = list()

/area/stalker/blowout/outdoor/backwater/skadovsk
	name = "Backwater - Skadovsk \[O\]"
	icon_state = "skadovsk"
	safezone = 1
	environment = 19

////////////////////////////////////////////////////////////////

///////////////////////????? - ????????/////////////////////////
/area/stalker/buildings/backwater/shevchenko
	name = "Backwater - Shevchenko \[NB\]"
	icon_state = "shevchenko"
	environment = 2

/area/stalker/blowout/buildings/backwater/shevchenko
	name = "Backwater - Shevchenko"
	icon_state = "shevchenko"
	environment = 2

/area/stalker/blowout/outdoor/backwater/shevchenko
	name = "Backwater - Shevchenko \[O\]"
	icon_state = "shevchenko"
////////////////////////////////////////////////////////////////

///////////////////////????? - ????????? ?????//////////////////
/area/stalker/buildings/backwater/burntfarm
	name = "Backwater - Burnt Farmstead \[NB\]"
	icon_state = "burntfarm"

/area/stalker/blowout/buildings/backwater/burntfarm
	name = "Backwater - Burnt Farmstead"
	icon_state = "burntfarm"

/area/stalker/blowout/outdoor/backwater/burntfarm
	name = "Backwater - Burnt Farmstead \[O\]"
	icon_state = "burntfarm"
////////////////////////////////////////////////////////////////

///////////////////////????? - ???????? ???///////////////////
/area/stalker/buildings/backwater/ironforest
	name = "Backwater - Iron Forest \[NB\]"
	icon_state = "ironforest"
	ambient_background = list('stalker/sound/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270)
	ambient_environment = DEFAULT_AMBIENT_ENVIRONMENT_UNDERGROUND
	ambient_environment_night = list()
	ambient_environment_cooldown = 800
	environment = 8

/area/stalker/blowout/buildings/backwater/ironforest
	name = "Backwater - Iron Forest"
	icon_state = "ironforest"

/area/stalker/blowout/outdoor/backwater/ironforest
	name = "Backwater - Iron Forest \[O\]"
	icon_state = "ironforest"
////////////////////////////////////////////////////////////////

///////////////////////????? - ??? ????///////////////////
/area/stalker/buildings/backwater/krug
	name = "Backwater - Krug Antenna Complex \[NB\]"
	icon_state = "krug"
	environment = 5
	ambient_background = list('stalker/sound/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270)
	ambient_environment = DEFAULT_AMBIENT_ENVIRONMENT_UNDERGROUND
	ambient_environment_night = list()
	ambient_environment_cooldown = 800
	environment = 8

/area/stalker/blowout/buildings/backwater/krug
	name = "Backwater - Krug Antenna Complex"
	icon_state = "krug"
	environment = 2

/area/stalker/blowout/outdoor/backwater/krug
	name = "Backwater - Krug Antenna Complex \[O\]"
	icon_state = "krug"
////////////////////////////////////////////////////////////////

///////////////////////????? - ?????????///////////////////
/area/stalker/buildings/backwater/sawmill
	name = "Backwater - Sawmill \[NB\]"
	icon_state = "sawmill"

/area/stalker/blowout/buildings/backwater/sawmill
	name = "Backwater - Sawmill"
	icon_state = "sawmill"

/area/stalker/blowout/outdoor/backwater/sawmill
	name = "Backwater - Sawmill \[O\]"
	icon_state = "sawmill"
////////////////////////////////////////////////////////////////

///////////////////////????? - ???????????///////////////////
/area/stalker/buildings/backwater/ranger
	name = "Backwater - Ranger Station \[NB\]"
	icon_state = "ranger"

/area/stalker/blowout/buildings/backwater/ranger
	name = "Backwater - Ranger Station"
	icon_state = "ranger"

/area/stalker/blowout/outdoor/backwater/ranger
	name = "Backwater - Ranger Station \[O\]"
	icon_state = "ranger"
////////////////////////////////////////////////////////////////

///////////////////////????? - ??????? ??????????? ???????///////////////////
/area/stalker/buildings/backwater/waste
	name = "Backwater - Waster Processing Station \[NB\]"
	icon_state = "waste"

/area/stalker/blowout/buildings/backwater/waste
	name = "Backwater - Waster Processing Station"
	icon_state = "waste"

/area/stalker/blowout/outdoor/backwater/waste
	name = "Backwater - Waster Processing Station \[O\]"
	icon_state = "waste"
	environment

////////////////////////////////////////////////////////////////

///////////////////////????? - ??????? ??????????? ???????///////////////////
/area/stalker/buildings/backwater/waste
	name = "Backwater - Waster Processing Station \[NB\]"
	icon_state = "waste"

/area/stalker/blowout/buildings/backwater/waste
	name = "Backwater - Waster Processing Station"
	icon_state = "waste"

/area/stalker/blowout/outdoor/backwater/waste
	name = "Backwater - Waster Processing Station \[O\]"
	icon_state = "waste"
////////////////////////////////////////////////////////////////

///////////////////////????? - ??????///////////////////
/area/stalker/buildings/backwater/claw
	name = "Backwater - Claw \[NB\]"
	icon_state = "claw"

/area/stalker/blowout/buildings/backwater/claw
	name = "Backwater - Claw"
	icon_state = "claw"

/area/stalker/blowout/outdoor/backwater/claw
	name = "Backwater - Claw \[O\]"
	icon_state = "claw"
////////////////////////////////////////////////////////////////

///////////////////////????? - ????? ?????///////////////////
/area/stalker/buildings/backwater/plateau
	name = "Backwater - Southern Plateau \[NB\]"
	icon_state = "plateau"
	ambient_background = list('stalker/sound/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270)
	ambient_environment = DEFAULT_AMBIENT_ENVIRONMENT_UNDERGROUND
	ambient_environment_night = list()
	ambient_environment_cooldown = 800
	environment = 8

/area/stalker/blowout/buildings/backwater/plateau
	name = "Backwater - Southern Plateau"
	icon_state = "plateau"

/area/stalker/blowout/outdoor/backwater/plateau
	name = "Backwater - Southern Plateau \[O\]"
	icon_state = "plateau"
////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


/area/stalker/kordon
	requires_power = 1

/area/stalker/kordon/buildings
	name = "Buildings"
	icon_state = "cellar"

/area/stalker/blowout/kordon/buildings
	name = "Buildings"
	icon_state = "buildings"

/area/stalker/kordon/cellar
	name = "Cellar"
	icon_state = "cellar"

/area/stalker/kordon/tunnel
	name = "Tunnel"
	icon_state = "tunnel_s"
	environment = 13
	ambient_environment = DEFAULT_AMBIENT_ENVIRONMENT_UNDERGROUND
	ambient_environment_night = list()
	ambient_environment_cooldown = 800

/area/stalker/blowout/kordon/tunnel
	name = "Tunnel"
	icon_state = "tunnel"

/area/stalker/cave
	name = "Cave"
	icon_state = "tunnel"
	dynamic_lighting = DYNAMIC_LIGHTING_ENABLED
	requires_power = 1
	environment = 8

/area/stalker/svalka
	requires_power = 1

/area/stalker/svalka/buildings
	name = "Buildings"
	icon_state = "buildings"

/area/stalker/blowout/svalka/buildings
	name = "Buildings"
	icon_state = "buildings"

/area/stalker/blowout/svalka/buildings/bar
	name = "Bar"
	icon_state = "buildings"

/area/stalker/svalka/cellar
	name = "Cellar"
	icon_state = "cellar"

/area/stalker/svalka/tunnel
	name = "Tunnel"
	icon_state = "tunnel_s"

/area/stalker/blowout/svalka/tunnel
	name = "Tunnel"
	icon_state = "tunnel"



/area/stalker/agroprom
	requires_power = 1

/area/stalker/agroprom/buildings
	name = "Buildings_blowout"
	icon_state = "buildings"

/area/stalker/blowout/agroprom/buildings
	name = "Buildings"
	icon_state = "buildings_blowout"

/area/stalker/agroprom/cellar
	name = "Cellar"
	icon_state = "cellar"

/area/stalker/agroprom/tunnel
	name = "Tunnel"
	icon_state = "tunnel_s"

/area/stalker/blowout/agroprom/tunnel
	name = "Tunnel"
	icon_state = "tunnel"

/area/stalker/agroprom/caves
	name = "Caves"
	icon_state = "caves"
	requires_power = 1
	ambient_music = null
	ambient_background = list('stalker/sound/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270)
	ambient_environment = DEFAULT_AMBIENT_ENVIRONMENT_UNDERGROUND
	ambient_environment_night = list()
	ambient_environment_cooldown = 800
	environment = 8

/area/stalker/byadt
	requires_power = 1

/area/stalker/byadt/bar
	name = "Bar"
	icon_state = "realbar"

/area/stalker/byadt/buildings
	name = "Buildings"
	icon_state = "buildings_s"

/area/stalker/blowout/byadt/buildings
	name = "Buildings Blowout"
	icon_state = "buildings"

/area/stalker/byadt/buildings/mercenary
	name = "Mercenary"
	icon_state = "mercenary"


//bar

/area/stalker/blowout/buildings/bar
	name = "Bar"
	icon_state = "buildings_s"

/area/stalker/blowout/outdoor/bar
	icon = 'stalker/icons/areas_outdoor_blowout.dmi'
	icon_state = "outdoor"

/area/stalker/buildings/bar/city
	name = "Buildings"
	icon_state = "buildings"

/area/stalker/buildings/bar/rentgen
	name = "Bar 100RENTGEN"
	icon = 'stalker/icons/areas.dmi'
	icon_state = "realbar"
	safezone = 1

/area/stalker/buildings/monolith
	name = "Monolith Safezone"
	icon = 'stalker/icons/areas.dmi'
	icon_state = "monolith"
	monolithsafezone = 1

/area/stalker/buildings/duty
	name = "Duty Safezone"
	icon = 'stalker/icons/areas.dmi'
	icon_state = "duty"
	dutysafezone = 1

/area/stalker/buildings/freedom
	name = "Freedom Safezone"
	icon = 'stalker/icons/areas.dmi'
	icon_state = "freedom"
	freedomsafezone = 1

/area/stalker/buildings/clearsky
	name = "Clear Sky Safezone"
	icon = 'stalker/icons/areas.dmi'
	icon_state = "clearsky"
	cssafezone = 1

/area/stalker/buildings/bandit
	name = "Bandit Safezone"
	icon = 'stalker/icons/areas.dmi'
	icon_state = "bandit"
	banditsafezone = 1

/area/stalker/buildings/military
	name = "Military Safezone"
	icon = 'stalker/icons/areas.dmi'
	icon_state = "military"
	militarysafezone = 1

/area/stalker/buildings/renegade
	name = "Renegade Safezone"
	icon = 'stalker/icons/areas.dmi'
	icon_state = "renegades"
	renegadesafezone = 1

/area/stalker/buildings/mercenary
	name = "Mercenary Safezone"
	icon = 'stalker/icons/areas.dmi'
	icon_state = "mercenary"
	mercenarysafezone = 1

/area/stalker/buildings/ecologist
	name = "ecologist safezone"
	icon = 'stalker/icons/areas.dmi'
	icon_state = "ecologist"
	ecosafezone = 1

/area/stalker/buildings/ecologist_entrance
	name = "ecologist"
	icon = 'stalker/icons/areas.dmi'
	icon_state = "ecologist entrance"
	safezone = 1

//bar


//kordon + svalka

/area/stalker/blowout/buildings/kordon
	name = "Bar"
	icon_state = "buildings_s"

/area/stalker/blowout/outdoor/kordon
	icon = 'stalker/icons/areas_outdoor_blowout.dmi'
	icon_state = "outdoor"

/area/stalker/buildings/kordon/domik
	name = "Buildings"
	icon_state = "buildings"

/area/stalker/buildings/kordon/banditbar
	name = "Bandit Bar"
	icon = 'stalker/icons/areas.dmi'
	icon_state = "bandit_bar"
//	banditsafezone = 1

//radar
/area/stalker/buildings/radar
	name = "Buildings"
	icon_state = "buildings"
