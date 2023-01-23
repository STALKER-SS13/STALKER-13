/datum/job/monolith
	title = "Monolith"
	faction_s = "Monolith"
	faction = "Station"
	total_positions = 5//6 total, prior to the introduction of Radar.
	spawn_positions = 5
	limit_per_player = 1
	locked = 1
	supervisors = "Monolith Preacher"
	enforces = "We thank you, oh Monolith, for revealing the cunning plans of your enemies to us. May your light shine down on the souls of the brave soldiers who gave their lives in service to your will. Onward warriors of the Monolith, avenge your fallen brothers, blessed as they are in their eternal union with the Monolith."
	forbids = "Allowing the continued existance of all who oppose the holy monolith. (Every other faction but your own)"
	selection_color = "#601919"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	limit_per_player = 2
	outfit = /datum/outfit/job/monolith// /datum/outfit/job/duty
	real_rank = "Monolith"
	exp_type = EXP_TYPE_CREW
	exp_requirements = 300

/datum/outfit/job/monolith
	name = "Monolith"
	faction_s = "Monolith"

/datum/outfit/job/monolith/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = UNIFORMPICK
	mask = /obj/item/clothing/mask/gas/stalker
	suit = /obj/item/clothing/suit/hooded/kombez/monolith
	ears = null
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	suit_store = /obj/item/gun/ballistic/automatic/abakan
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/flashlight/seclite = 1, /obj/item/ammo_box/magazine/stalker/m545 = 2, /obj/item/clothing/accessory/patch/monolith = 1, /obj/item/grenade/syndieminibomb/concussion/stalker/frag = 2)
	l_pocket = pick(/obj/item/storage/wallet,
				/obj/item/storage/wallet/brown,
				/obj/item/storage/wallet/alt)

/datum/outfit/job/monolith/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	H.add_trait(TRAIT_BLOWOUT_IMMUNE, TRAIT_GENERIC)
	H.grant_language(/datum/language/german, body = FALSE)
	H.grant_language(/datum/language/english, body = FALSE)
	H.grant_language(/datum/language/russian, body = FALSE)

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
	l_pocket = pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/food/snacks/stalker/baton,/obj/item/storage/firstaid/ai2)
	r_pocket = pick(/obj/item/flashlight/lantern,
				/obj/item/flashlight/seclite,
				/obj/item/flashlight,
				/obj/item/flashlight/flare/torch,
				/obj/item/flashlight/flare)
/datum/job/monolith_hegumen
	title = "Monolith Preacher"
	faction_s = "Monolith"
	faction = "Station"
	total_positions = 1//6 total, prior to the introduction of Radar.
	spawn_positions = 1
	limit_per_player = 1
	locked = 1
	supervisors = "Monolith"
	selection_color = "#601919"
	whitelist_only = 0
	limit_per_player = 1
	outfit = /datum/outfit/job/monolith_hegumen
	real_rank = "Lieutenant"
	exp_type = EXP_TYPE_CREW
	exp_requirements = 900

/datum/outfit/job/monolith_hegumen
	name = "Monolith Preacher"
	faction_s = "Monolith"

/datum/outfit/job/monolith_hegumen/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/steel
	uniform = UNIFORMPICK
	mask = /obj/item/clothing/mask/gas/stalker
	suit = /obj/item/clothing/suit/hooded/kombez/monolith
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	suit_store = /obj/item/gun/ballistic/automatic/groza
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/sp9x39groza = 2, /obj/item/flashlight/seclite = 1, /obj/item/clothing/accessory/patch/monolith = 1, /obj/item/grenade/syndieminibomb/concussion/stalker/frag = 2)
	shoes = /obj/item/clothing/shoes/jackboots/warm
	r_pocket = pick(/obj/item/storage/wallet,
				/obj/item/storage/wallet/brown,
				/obj/item/storage/wallet/alt)
	l_pocket = pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/food/snacks/stalker/baton)

/datum/outfit/job/monolith_hegumen/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()
	H.add_trait(TRAIT_BLOWOUT_IMMUNE, ROUNDSTART_TRAIT)
	H.grant_language(/datum/language/german, body = FALSE)
	H.grant_language(/datum/language/english, body = FALSE)
	H.grant_language(/datum/language/russian, body = FALSE)
