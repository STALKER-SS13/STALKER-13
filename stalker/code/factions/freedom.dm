/datum/job/freedom
	title = "Freedom"
	faction_s = "Freedom"
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	supervisors = "Major"
	selection_color = "#601919"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	limit_per_player = 4
	outfit = /datum/outfit/job/assistant// /datum/outfit/job/freedom

/datum/outfit/job/freedom
	name = "Freedom"
	faction_s = "Freedom"

/datum/outfit/job/freedom/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/veter
	ears = null
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	suit_store = /obj/item/gun/ballistic/automatic/tpc301
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list()
	r_pocket = /obj/item/stalker/bolts
	l_pocket = pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/food/snacks/stalker/baton)

/datum/outfit/freedom  // For select_equipment
	name = "Freedom Soldier"
	head = null
	suit = /obj/item/clothing/suit/hooded/kombez/veter
	ears = null
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	back = /obj/item/storage/backpack/stalker/tourist
	suit_store = /obj/item/gun/ballistic/automatic/tpc301
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b55645 = 1,
							/obj/item/ammo_box/magazine/stalker/m556x45 = 2,)
	faction_s = "Freedom"

/datum/outfit/freedom/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/veter
	ears = null
	l_pocket = pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/food/snacks/stalker/baton)

/datum/job/freedom_lieutenant
	title = "Freedom Lieutenant"
	faction_s = "Freedom"
	faction = "Station"
	total_positions = 2
	locked = 1
	spawn_positions = -1
	supervisors = "Major"
	selection_color = "#601919"
	whitelist_only = 1
	limit_per_player = 2
	outfit = /datum/outfit/job/freedom_lieutenant
	real_rank = "Lieutenant"

/datum/outfit/job/freedom_lieutenant
	name = "Freedom Lieutenant"
	faction_s = "Freedom"

/datum/outfit/job/freedom_lieutenant/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/steel
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/veter
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	suit_store = /obj/item/gun/ballistic/automatic/mp5
	backpack_contents = list(/obj/item/ammo_box/stalker/b9x19 = 1,
							/obj/item/flashlight/seclite = 1)
	shoes = /obj/item/clothing/shoes/jackboots/warm
	l_pocket = pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/food/snacks/stalker/baton)