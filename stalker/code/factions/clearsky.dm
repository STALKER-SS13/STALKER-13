/*
Assistant
*/
/datum/job/clearsky
	title = "Clear Sky Soldier"
	faction_s = "Clear Sky"
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	limit_per_player = 1
	//limit_per_player = 2
	description = "The Clear Sky faction is an independent scientific/military organization focusing on understanding the Zone."
	enforces = "Exploration and research of the zone. Shooting Renegades on sight."
	forbids = "Antagonizing stalkers by harming or stealing from them, working with the Bandits or Renegades, and starting fights with any neutral faction without asking up the chain of command."
	supervisors = "Leader"
	selection_color = "#64B2F7"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	outfit = /datum/outfit/clearsky
	real_rank = "ClearSky"
	exp_type = EXP_TYPE_CREW
	exp_requirements = 300

/datum/outfit/clearsky  // For select_equipment
	name = "Clear Sky Soldier"
	faction_s = "Clear Sky"
	suit = /obj/item/clothing/suit/hooded/kozhanka/cs_hood
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	back = /obj/item/storage/backpack/stalker/tourist
	shoes = /obj/item/clothing/shoes/jackboots/warm

/datum/outfit/clearsky/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	ears = null
	belt = /obj/item/kitchen/knife/bayonet
	id = /obj/item/stalker_pda
	suit_store = /obj/item/gun/ballistic/automatic/kiparis
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/kiparis = 2,/obj/item/reagent_containers/food/snacks/stalker/konserva/fish,/obj/item/storage/firstaid/ai2,/obj/item/clothing/accessory/patch/clearsky)
	l_pocket = pick(/obj/item/storage/wallet,
				/obj/item/storage/wallet/brown,
				/obj/item/storage/wallet/alt)
	r_pocket = pick(
		/obj/item/flashlight/flare,
		/obj/item/flashlight/lantern,
		/obj/item/flashlight/seclite,
		/obj/item/flashlight,
		/obj/item/flashlight/flare/torch,
		/obj/item/lighter/greyscale,
		/obj/item/clothing/mask/cigarette/marlboro,
		/obj/item/storage/box/matches)

/datum/outfit/clearsky/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()

	if(visualsOnly)
		return

	H.grant_language(/datum/language/english, body = FALSE)

/datum/job/clearsky_leader
	title = "Clear Sky Leader"
	faction_s = "Clear Sky"
	faction = "Station"
	total_positions = 4
	locked = 1
	spawn_positions = 4
	limit_per_player = 1
	description = "The Clear Sky faction is an independent scientific/military organization focusing on understanding the Zone."
	enforces = "Exploration and research of the zone. Shooting Renegades on sight."
	forbids = "Antagonizing stalkers by harming or stealing from them, working with the Bandits, and starting fights with any neutral faction or otherwise jeopordize the faction for an insignificant reason."
	selection_color = "#64B2F7"
	whitelist_only = 0
	limit_per_player = 2
	outfit = /datum/outfit/job/clearsky_leader
	real_rank = "Lieutenant"
	exp_type = EXP_TYPE_CREW
	exp_requirements = 900

/datum/outfit/job/clearsky_leader
	name = "Clear Sky Leader"
	faction_s = "Clear Sky"

/datum/outfit/job/clearsky_leader/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/maska_1
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/cs_heavy
	suit_store = /obj/item/gun/ballistic/automatic/mp5
	ears = null
	belt = /obj/item/weapon/kitchen/knife/hunting
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	back = /obj/item/storage/backpack/stalker/tourist
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/m9x19mp5 = 2,/obj/item/reagent_containers/food/snacks/stalker/baton,/obj/item/storage/firstaid/ai2,/obj/item/clothing/accessory/patch/clearsky)
	l_pocket = pick(/obj/item/storage/wallet,
				/obj/item/storage/wallet/brown,
				/obj/item/storage/wallet/alt)
	r_pocket = pick(
		/obj/item/flashlight/flare,
		/obj/item/lighter/greyscale,
		/obj/item/clothing/mask/cigarette/marlboro,
		/obj/item/storage/box/matches,
		/obj/item/restraints/handcuffs)
	r_hand = pick(/obj/item/flashlight/lantern,
				/obj/item/flashlight/seclite,
				/obj/item/flashlight,
				/obj/item/flashlight/flare/torch)

/datum/outfit/job/clearsky_leader/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()

	if(visualsOnly)
		return

	H.grant_language(/datum/language/russian, body = FALSE)
	H.grant_language(/datum/language/english, body = FALSE)
