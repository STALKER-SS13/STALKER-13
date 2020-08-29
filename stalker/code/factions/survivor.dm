/*
Assistant
*/
/datum/job/assistant
	title = "Stalker"
	faction_s = "Loners"
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = ""
	selection_color = "#dddddd"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	outfit = /datum/outfit/job/assistant

/datum/job/oldstalker
	title = "Old Stalker"
	faction_s = "Loners"
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = ""
	selection_color = "#dddddd"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	outfit = /datum/outfit/job/oldstalker

/*/datum/job/assistant/get_access()
	if((config.jobs_have_maint_access & ASSISTANTS_HAVE_MAINT_ACCESS) || !config.jobs_have_minimal_access) //Config has assistant maint access set
		. = ..()
		. |= list(access_maint_tunnels)
	else
		return ..()*/


/datum/outfit/job/assistant
	name = "Loner"
	faction_s = "Loners"

/datum/outfit/job/assistant/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	suit = pick(/obj/item/clothing/suit/hooded/kozhanka,/obj/item/clothing/suit/hooded/kozhanka/white)
	ears = null
	id = /obj/item/stalker_pda
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list()
	r_pocket =pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/pill/stalker/aptechka/bint,/obj/item/reagent_containers/food/snacks/stalker/konserva,/obj/item/reagent_containers/food/snacks/stalker/baton)

/datum/outfit/stalker  // For select_equipment
	name = "Loner"
	uniform = /obj/item/clothing/under/color/switer
	suit = /obj/item/clothing/suit/hooded/kozhanka
	ears = null
	id = /obj/item/stalker_pda
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/stack/spacecash/c5000 = 1, /obj/item/storage/box/matches = 1)
	back = /obj/item/storage/backpack/stalker/civilian
	r_pocket = /obj/item/reagent_containers/food/snacks/stalker/kolbasa
	faction_s = "Loners"

/datum/outfit/job/oldstalker
	name = "Old Stalker"

/datum/outfit/job/oldstalker/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez
	ears = null
	id = /obj/item/stalker_pda
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545 = 1, /obj/item/ammo_box/magazine/stalker/m545 = 2, /obj/item/reagent_containers/pill/stalker/aptechka/civilian = 1, /obj/item/stack/spacecash/c5000 = 1, /obj/item/flashlight/seclite = 1)
	suit_store = /obj/item/gun/ballistic/automatic/ak74
	back = /obj/item/storage/backpack/stalker/tourist
	r_pocket = /obj/item/reagent_containers/food/snacks/stalker/konserva

/datum/outfit/stalkervolk  // For select_equipment
	name = "Old Stalker"
	uniform = /obj/item/clothing/under/color/switer
	suit = /obj/item/clothing/suit/hooded/kombez
	ears = null
	id = /obj/item/stalker_pda
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545 = 1, /obj/item/ammo_box/magazine/stalker/m545 = 2, /obj/item/reagent_containers/pill/stalker/aptechka/civilian = 1, /obj/item/stack/spacecash/c5000 = 1, /obj/item/flashlight/seclite = 1)
	suit_store = /obj/item/gun/ballistic/automatic/ak74
	back = /obj/item/storage/backpack/stalker/tourist
	r_pocket = /obj/item/reagent_containers/food/snacks/stalker/konserva
	faction_s = "Loners"