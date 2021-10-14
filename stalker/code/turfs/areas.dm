/area/stalker
	icon = 'stalker/icons/areas.dmi'
	name = "Strange Location"
	icon_state = "away"
	has_gravity = STANDARD_GRAVITY
	//dynamic_lighting = DYNAMIC_LIGHTING_FORCED

/area/stalker/blowout
	dynamic_lighting = DYNAMIC_LIGHTING_FORCED

/area/stalker/blowout/outdoor
	name = "Outdoor"
	icon = 'stalker/icons/areas_outdoor_blowout.dmi'
	icon_state = "outdoor"
	open_space = TRUE
	dynamic_lighting = DYNAMIC_LIGHTING_FORCED
	ambient_music = list('stalker/sound/ambience/rnd_outdoor/rnd_bird_1.ogg','stalker/sound/ambience/rnd_outdoor/rnd_bird_2.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_bird_3.ogg','stalker/sound/ambience/rnd_outdoor/rnd_bird_4.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_bird_5.ogg','stalker/sound/ambience/rnd_outdoor/rnd_bird_6.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_bird_7.ogg','stalker/sound/ambience/rnd_outdoor/rnd_bird_8.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_bird_9.ogg','stalker/sound/ambience/rnd_outdoor/rnd_bird_10.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_bird_11.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_dog1.ogg','stalker/sound/ambience/rnd_outdoor/rnd_dog2.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_dog3.ogg','stalker/sound/ambience/rnd_outdoor/rnd_dog4.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_dog5.ogg','stalker/sound/ambience/rnd_outdoor/rnd_dog6.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_dog7.ogg','stalker/sound/ambience/rnd_outdoor/rnd_dog8.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_dog9.ogg','stalker/sound/ambience/rnd_outdoor/rnd_dog10.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_crow_1.ogg','stalker/sound/ambience/rnd_outdoor/rnd_crow_2.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_crow_3.ogg','stalker/sound/ambience/rnd_outdoor/rnd_crow_4.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_crow_5.ogg','stalker/sound/ambience/rnd_outdoor/rnd_crow_6.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_crow_7.ogg','stalker/sound/ambience/rnd_outdoor/rnd_crow_8.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_crow_9.ogg','stalker/sound/ambience/rnd_outdoor/rnd_crow_10.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_crow_11.ogg','stalker/sound/ambience/rnd_outdoor/rnd_crow_12.ogg',
					'stalker/sound/ambience/rnd_outdoor/ambient_wind_1.ogg','stalker/sound/ambience/rnd_outdoor/ambient_wind_2.ogg',
					'stalker/sound/ambience/rnd_outdoor/ambient_wind_3.ogg','stalker/sound/ambience/rnd_outdoor/ambient_wind_4.ogg',
					'stalker/sound/ambience/rnd_outdoor/rnd_insect_8.ogg',
					)
	ambient_environment_night = list('stalker/sound/ambience/rnd_outdoor_night/rnd_moan.ogg','stalker/sound/ambience/rnd_outdoor_night/rnd_moan2.ogg',
					'stalker/sound/ambience/rnd_outdoor_night/rnd_moan3.ogg','stalker/sound/ambience/rnd_outdoor_night/rnd_moan4.ogg',
					'stalker/sound/ambience/rnd_outdoor_night/rnd_moan5.ogg','stalker/sound/ambience/rnd_outdoor_night/rnd_moan6.ogg',
					'stalker/sound/ambience/rnd_outdoor_night/ambient_night_1.ogg','stalker/sound/ambience/rnd_outdoor_night/ambient_night_2.ogg',
					'stalker/sound/ambience/rnd_outdoor_night/ambient_night_3.ogg','stalker/sound/ambience/rnd_outdoor_night/ambient_night_4.ogg',
					'stalker/sound/ambience/rnd_outdoor_night/ambient_night_5.ogg','stalker/sound/ambience/rnd_outdoor_night/ambient_night_6.ogg',
					'stalker/sound/ambience/rnd_outdoor_night/ambient_night_7.ogg','stalker/sound/ambience/rnd_outdoor_night/ambient_night_8.ogg',
					'stalker/sound/ambience/rnd_outdoor_night/ambient_night_9.ogg','stalker/sound/ambience/rnd_outdoor_night/ambient_night_10.ogg',
					'stalker/sound/ambience/rnd_outdoor_night/wolf_howl_01.ogg','stalker/sound/ambience/rnd_outdoor_night/wolf_howl_02.ogg',
					'stalker/sound/ambience/rnd_outdoor_night/wolf_howl_03.ogg','stalker/sound/ambience/rnd_outdoor_night/wolf_howl_04.ogg',
					)
	ambient_environment_cooldown = 420
	ambient_background = list(null, null,'stalker/sound/ambience/rnd_outdoor_night/zat_bkg_tuman.ogg', 'stalker/sound/ambience/rnd_outdoor_night/ambient_night_11.ogg', null) // 'stalker/sound/ambience/rnd_outdoor/rnd_insect_5.ogg' - evening
	ambient_background_cooldown = list(null, null, 220, 420, null) //280 - evening
	environment = 15

/area/stalker/sidor
	name = "Sidorovich Basement"
	icon = 'stalker/icons/areas_buildings.dmi'
	icon_state = "sidor"
	requires_power = 1
	ambient_music = list()
	ambient_background = list('stalker/sound/ambience/sidor_music2.ogg', 'stalker/sound/ambience/sidor_music2.ogg', 'stalker/sound/ambience/sidor_music2.ogg', 'stalker/sound/ambience/sidor_music2.ogg')//list('stalker/sound/ambience/sidor_music.ogg','stalker/sound/ambience/sidor_music2.ogg')
	ambient_background_cooldown = list(700, 700, 700, 700)
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
	ambient_background = list('stalker/sound/ambience/ugrnd/howled_4.ogg', 'stalker/sound/ambience/ugrnd/howled_4.ogg', 'stalker/sound/ambience/ugrnd/howled_4.ogg', 'stalker/sound/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270, 270, 270, 270)
	ambient_environment = list('stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_1.ogg','stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_2.ogg',
				'stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_3.ogg','stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_4.ogg',
				'stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_5.ogg','stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_7.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_7.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_5.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_7.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_8.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_9.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_10.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_11.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drone_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_drone_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drone_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_drone_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_lab_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_lab_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_lab_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_lab_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_lab_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_lab_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_metal_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_metal_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_metal_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_7.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_7.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_8.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_9.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_10.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_11.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_12.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_whispers_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_whispers_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_whispers_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_whispers_4.ogg',
				)
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
	ambient_background = list('stalker/sound/ambience/ugrnd/howled_4.ogg', 'stalker/sound/ambience/ugrnd/howled_4.ogg', 'stalker/sound/ambience/ugrnd/howled_4.ogg', 'stalker/sound/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270, 270, 270, 270)
	ambient_environment = list('stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_1.ogg','stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_2.ogg',
				'stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_3.ogg','stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_4.ogg',
				'stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_5.ogg','stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_7.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_7.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_5.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_7.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_8.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_9.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_10.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_11.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drone_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_drone_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drone_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_drone_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_lab_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_lab_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_lab_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_lab_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_lab_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_lab_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_metal_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_metal_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_metal_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_7.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_7.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_8.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_9.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_10.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_11.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_12.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_whispers_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_whispers_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_whispers_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_whispers_4.ogg',
				)
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
	ambient_background = list('stalker/sound/ambience/ugrnd/howled_4.ogg', 'stalker/sound/ambience/ugrnd/howled_4.ogg', 'stalker/sound/ambience/ugrnd/howled_4.ogg', 'stalker/sound/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270, 270, 270, 270)
	ambient_environment = list('stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_1.ogg','stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_2.ogg',
				'stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_3.ogg','stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_4.ogg',
				'stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_5.ogg','stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_7.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_7.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_5.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_7.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_8.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_9.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_10.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_11.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drone_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_drone_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drone_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_drone_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_lab_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_lab_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_lab_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_lab_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_lab_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_lab_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_metal_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_metal_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_metal_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_7.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_7.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_8.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_9.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_10.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_11.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_12.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_whispers_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_whispers_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_whispers_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_whispers_4.ogg',
				)
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
	ambient_environment = list('stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_1.ogg','stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_2.ogg',
				'stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_3.ogg','stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_4.ogg',
				'stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_5.ogg','stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_7.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_7.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_5.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_7.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_8.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_9.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_10.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_11.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drone_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_drone_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drone_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_drone_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_lab_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_lab_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_lab_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_lab_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_lab_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_lab_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_metal_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_metal_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_metal_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_7.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_7.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_8.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_9.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_10.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_11.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_12.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_whispers_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_whispers_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_whispers_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_whispers_4.ogg',
				)
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
	ambient_background = list('stalker/sound/ambience/ugrnd/howled_4.ogg', 'stalker/sound/ambience/ugrnd/howled_4.ogg', 'stalker/sound/ambience/ugrnd/howled_4.ogg', 'stalker/sound/ambience/ugrnd/howled_4.ogg')
	ambient_background_cooldown = list(270, 270, 270, 270)
	ambient_environment = list('stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_1.ogg','stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_2.ogg',
				'stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_3.ogg','stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_4.ogg',
				'stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_5.ogg','stalker/sound/ambience/ugrnd/rnd_ugrnd_amb_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_7.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_banging_7.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_ambient_machine_5.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_7.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_8.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_9.ogg','stalker/sound/ambience/ugrnd/ugrnd_drip_10.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drip_11.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drone_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_drone_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_drone_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_drone_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_lab_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_lab_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_lab_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_lab_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_lab_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_lab_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_metal_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_metal_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_metal_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_metal_7.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_4.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_5.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_6.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_7.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_8.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_9.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_10.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_noise_11.ogg','stalker/sound/ambience/ugrnd/ugrnd_noise_12.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_whispers_1.ogg','stalker/sound/ambience/ugrnd/ugrnd_whispers_2.ogg',
				'stalker/sound/ambience/ugrnd/ugrnd_whispers_3.ogg','stalker/sound/ambience/ugrnd/ugrnd_whispers_4.ogg',
				)
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

/area/stalker/buildings/bar/monolith
	name = "Monolith Armory"
	icon = 'stalker/icons/areas.dmi'
	icon_state = "monolith_bar"
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
	safezone = 1

//kordon + svalka