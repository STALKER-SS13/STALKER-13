/proc/ui_hand_position_wide(i) //values based on old hand ui positions (CENTER:-/+16,SOUTH:5)
	if (i == 1)
		return"WEST-1,NORTH-4"
	else
		return"WEST-3,NORTH-4"

/proc/ui_equip_position_wide(mob/M)
	var/y_off = round((M.held_items.len-1) / 2) //values based on old equip ui position (CENTER: +/-16,SOUTH+1:5)
	return "CENTER:-16,SOUTH+[y_off+1]:5"

/proc/ui_swaphand_position_wide(mob/M, which = 1) //values based on old swaphand ui positions (CENTER: +/-16,SOUTH+1:5)
	return"WEST-2,NORTH-5:20"

#define ui_storage1_wide "WEST-3,NORTH-7:18"
#define ui_storage2_wide "WEST-1,NORTH-7:18"

#define ui_borg_sensor_wide "CENTER-3:16, SOUTH:5"		//borgs
#define ui_borg_lamp_wide "CENTER-4:16, SOUTH:5"			//borgs
#define ui_borg_thrusters_wide "CENTER-5:16, SOUTH:5"	//borgs
#define ui_inv1_wide "CENTER-2:16,SOUTH:5"				//borgs
#define ui_inv2_wide "CENTER-1  :16,SOUTH:5"				//borgs
#define ui_inv3_wide "CENTER  :16,SOUTH:5"				//borgs
#define ui_borg_module_wide "CENTER+1:16,SOUTH:5"		//borgs
#define ui_borg_store_wide "CENTER+2:16,SOUTH:5"			//borgs
#define ui_borg_camera_wide "CENTER+3:21,SOUTH:5"		//borgs
#define ui_borg_album_wide "CENTER+4:21,SOUTH:5"			//borgs
#define ui_borg_language_menu_wide "CENTER+4:21,SOUTH+1:5"	//borgs

#define ui_monkey_head_wide "CENTER-5:13,SOUTH:5"	//monkey
#define ui_monkey_mask_wide "CENTER-4:14,SOUTH:5"	//monkey
#define ui_monkey_neck_wide "CENTER-3:15,SOUTH:5"	//monkey
#define ui_monkey_back_wide "CENTER-2:16,SOUTH:5"	//monkey

//#define ui_alien_storage_l "CENTER-2:14,SOUTH:5"//alien
#define ui_alien_storage_r_wide "CENTER+1:18,SOUTH:5"//alien
#define ui_alien_language_menu_wide "EAST-3:26,SOUTH:5" //alien

#define ui_drone_drop_wide "CENTER+1:18,SOUTH:5"     //maintenance drones
#define ui_drone_pull_wide "CENTER+2:2,SOUTH:5"      //maintenance drones
#define ui_drone_storage_wide "CENTER-2:14,SOUTH:5"  //maintenance drones
#define ui_drone_head_wide "CENTER-3:14,SOUTH:5"     //maintenance drones

//Lower right, persistent menu
#define ui_drop_throw_wide "WEST-1,NORTH-9:18"
#define ui_above_movement_wide "EAST+1,SOUTH+2:16" //rest
#define ui_above_intent_wide "EAST+1,SOUTH+2" //resist
#define ui_pull_intent_wide "EAST-1:11,SOUTH+1:7"
#define ui_movi_wide "EAST+1,SOUTH+1"
#define ui_acti_wide "WEST-2,NORTH-9:18"
#define ui_zonesel_wide "EAST+1,SOUTH"
#define ui_acti_alt_wide "EAST-1:28,SOUTH:5"	//alternative intent switcher for when the interface is hidden (F12)
#define ui_crafting_wide	"EAST+1,CENTER"
#define ui_building_wide "EAST-4:22,SOUTH:21"
#define ui_language_menu_wide "EAST-4:6,SOUTH:21"
#define ui_bolt_wide "EAST-1.5,SOUTH+2.3"//should function with '2.3'.

#define ui_borg_pull_wide "EAST-2:26,SOUTH+1:7"
#define ui_borg_radio_wide "EAST-1:28,SOUTH+1:7"
#define ui_borg_intents_wide "EAST-2:26,SOUTH:5"


//Upper-middle right (alerts)
#define ui_alert1_wide "EAST-1:28,CENTER+5:27"
#define ui_alert2_wide "EAST-1:28,CENTER+4:25"
#define ui_alert3_wide "EAST-1:28,CENTER+3:23"
#define ui_alert4_wide "EAST-1:28,CENTER+2:21"
#define ui_alert5_wide "EAST-1:28,CENTER+1:19"


//Middle right (status indicators)
#define ui_healthdoll_wide "EAST+1,BOTTOM+6"
#define ui_health_wide "EAST+1:1,BOTTOM+3:1"
#define ui_health_rad_wide "EAST+1:12,BOTTOM+3:1"
#define ui_health_stamina_wide "EAST+1:22,BOTTOM+3:1"
#define ui_internal_wide "EAST-1:28,CENTER:17"
#define ui_mood_wide "EAST-1:28,CENTER-3:10"

//borgs
#define ui_borg_health_wide "EAST-1:28,CENTER-1:15"		//borgs have the health display where humans have the pressure damage indicator.

//aliens
#define ui_alien_health_wide "EAST,CENTER-1:15"	//aliens have the health display where humans have the pressure damage indicator.
#define ui_alienplasmadisplay_wide "EAST,CENTER-2:15"
#define ui_alien_queen_finder_wide "EAST,CENTER-3:15"

//constructs
#define ui_construct_pull_wide "EAST,CENTER-2:15"
#define ui_construct_health_wide "EAST,CENTER:15"  //same as borgs and humans

// AI

#define ui_ai_core_wide "SOUTH:6,WEST"
#define ui_ai_camera_list_wide "SOUTH:6,WEST+1"
#define ui_ai_track_with_camera_wide "SOUTH:6,WEST+2"
#define ui_ai_camera_light_wide "SOUTH:6,WEST+3"
#define ui_ai_crew_monitor_wide "SOUTH:6,WEST+4"
#define ui_ai_crew_manifest_wide "SOUTH:6,WEST+5"
#define ui_ai_alerts_wide "SOUTH:6,WEST+6"
#define ui_ai_announcement_wide "SOUTH:6,WEST+7"
#define ui_ai_shuttle_wide "SOUTH:6,WEST+8"
#define ui_ai_state_laws_wide "SOUTH:6,WEST+9"
#define ui_ai_pda_send_wide "SOUTH:6,WEST+10"
#define ui_ai_pda_log_wide "SOUTH:6,WEST+11"
#define ui_ai_take_picture_wide "SOUTH:6,WEST+12"
#define ui_ai_view_images_wide "SOUTH:6,WEST+13"
#define ui_ai_sensor_wide "SOUTH:6,WEST+14"
#define ui_ai_multicam_wide "SOUTH+1:6,WEST+13"
#define ui_ai_add_multicam_wide "SOUTH+1:6,WEST+14"

//Pop-up inventory
#define ui_shoes_wide "WEST-3,NORTH-8:18"

#define ui_iclothing_wide "WEST-2,NORTH-7:18"
#define ui_oclothing_wide "WEST-2,NORTH-4"
#define ui_gloves_wide "WEST-2,NORTH-6:18"

#define ui_glasses_wide "WEST-1,NORTH-2"
#define ui_mask_wide "WEST-2,NORTH-2"
#define ui_ears_wide "WEST-3,NORTH-2"
#define ui_neck_wide "WEST-2,NORTH-3"
#define ui_head_wide "WEST-2,NORTH-1"

//Lower left, persistent menu
#define ui_inventory_wide "WEST-1,SOUTH"

//Middle left indicators
#define ui_lingchemdisplay_wide "WEST,CENTER-1:15"
#define ui_lingstingdisplay_wide "WEST:6,CENTER-3:11"

#define ui_devilsouldisplay_wide "WEST:6,CENTER-1:15"

//Lower center, persistent menu
#define ui_sstore1_wide "WEST-1,NORTH-3"
#define ui_id_wide "WEST-1,NORTH-8:18"
#define ui_belt_wide "WEST-2,NORTH-8:18"
#define ui_back_wide "WEST-3,NORTH-3"

//Ghosts

#define ui_ghost_jumptomob_wide "SOUTH:6,CENTER-2:24"
#define ui_ghost_orbit_wide "SOUTH:6,CENTER-1:24"
#define ui_ghost_reenter_corpse_wide "SOUTH:6,CENTER:24"
#define ui_ghost_teleport_wide "SOUTH:6,CENTER+1:24"
#define ui_ghost_pai_wide "SOUTH: 6, CENTER+2:24"

#define ui_whitenoise_wide "CENTER-7,CENTER-7"
#define ui_left_panel_wide "WEST-3,SOUTH"
#define ui_right_panel_wide "EAST+1,SOUTH"
