/datum/job/monolith
	title = "Monolith"
	faction_s = "Monolith"
	faction = "Station"
	locked = 1
	total_positions = 2
	spawn_positions = 2
	supervisors = "Major"
	enforces = "We thank you, oh Monolith, for revealing the cunning plans of your enemies to us. May your light shine down on the souls of the brave soldiers who gave their lives in service to your will. Onward warriors of the Monolith, avenge your fallen brothers, blessed as they are in their eternal union with the Monolith."
	forbids = "Allowing the continued existance of all who oppose the holy monolith. (Every other faction but your own)"
	selection_color = "#601919"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	limit_per_player = 1
	outfit = /datum/outfit/job/monolith// /datum/outfit/job/duty

/datum/outfit/job/monolith
	name = "Monolith"
	faction_s = "Monolith"

/datum/outfit/job/monolith/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/monolith
	ears = null
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	suit_store = /obj/item/gun/ballistic/shotgun/bm16/sawnoff
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/flashlight/seclite = 1)
	l_pocket = pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/food/snacks/stalker/baton)

/datum/outfit/monolith  // For select_equipment
	name = "Monolith Soldier"

	head = null
	suit = /obj/item/clothing/suit/hooded/kombez/monolith
	ears = null
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	back = /obj/item/storage/backpack/stalker/civilian
	suit_store = /obj/item/gun/ballistic/automatic/berettam38
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/berettam38 = 1,
							/obj/item/flashlight/seclite = 1)
	faction_s = "Monolith"

/datum/outfit/monolith/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	ears = null
	l_pocket = pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/food/snacks/stalker/baton)

/datum/job/monolith_hegumen
	title = "Monolith Preacher"
	faction_s = "Monolith"
	faction = "Station"
	total_positions = 2
	locked = 1
	spawn_positions = 2
	supervisors = "Monolith"
	selection_color = "#601919"
	whitelist_only = 1
	limit_per_player = 2
	outfit = /datum/outfit/job/monolith_hegumen
	real_rank = "Lieutenant"

/datum/outfit/job/monolith_hegumen
	name = "Monolith Preacher"
	faction_s = "Monolith"

/datum/outfit/job/monolith_hegumen/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/steel
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/monolith
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	suit_store = /obj/item/gun/ballistic/rifle/boltaction/enfield
	backpack_contents = list(/obj/item/ammo_box/stalker/cl762x51 = 2,
							/obj/item/flashlight/seclite = 1,
							/obj/item/attachment/scope/rifle = 1)
	shoes = /obj/item/clothing/shoes/jackboots/warm
	r_pocket = /obj/item/stalker/bolts
	l_pocket = pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/food/snacks/stalker/baton)