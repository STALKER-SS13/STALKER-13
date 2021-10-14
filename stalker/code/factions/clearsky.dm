/*
Assistant
*/
/datum/job/clearsky
	title = "Clear Sky Soldier"
	faction_s = "Clear Sky"
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	description = "The Clear Sky faction is an independent scientific/military organization focusing on understanding the Zone."
	enforces = "Exploration and research of the zone. Eliminating enimies of Clear Sky (Bandits and Monolith)."
	forbids = "Antagonizing stalkers by harming or stealing from them, working with the Bandits, and starting fights with any neutral faction without asking up the chain of command."
	supervisors = "Leader"
	selection_color = "#64B2F7"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	locked = 1
	outfit = /datum/outfit/clearsky

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
	suit_store = /obj/item/gun/ballistic/automatic/pistol/fort12
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/m9x18fort = 2,/obj/item/reagent_containers/food/snacks/stalker/konserva/fish,/obj/item/storage/firstaid/stalker/civillian,/obj/item/clothing/accessory/patch/clearsky)
	l_pocket = pick(
		 /obj/item/radio/off,
		 /obj/item/flashlight/seclite,
		 /obj/item/twohanded/binoculars)
	r_pocket = pick(
		/obj/item/flashlight/flare,
		/obj/item/lighter/greyscale,
		/obj/item/storage/fancy/cigarettes/cigpack_robust,
		/obj/item/storage/box/matches)

/datum/job/clearsky_leader
	title = "Clear Sky Leader"
	faction_s = "Clear Sky"
	faction = "Station"
	total_positions = 2
	locked = 1
	spawn_positions = 2
	description = "The Clear Sky faction is an independent scientific/military organization focusing on understanding the Zone."
	enforces = "Exploration and research of the zone. Eliminating enimies of Clear Sky (Bandits and Monolith)."
	forbids = "Antagonizing stalkers by harming or stealing from them, working with the Bandits, and starting fights with any neutral faction without asking up the chain of command."
	selection_color = "#64B2F7"
	whitelist_only = 1
	limit_per_player = 2
	outfit = /datum/outfit/job/clearsky_leader
	real_rank = "Leader"

/datum/outfit/job/clearsky_leader
	name = "Clear Sky Leader"
	faction_s = "Clear Sky"

/datum/outfit/job/clearsky_leader/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/maska_1
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/cs_heavy
	ears = null
	belt = /obj/item/weapon/kitchen/knife/hunting
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	back = /obj/item/storage/backpack/stalker/tourist
	suit_store = /obj/item/gun/ballistic/automatic/pistol/desert
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/reagent_containers/food/snacks/stalker/baton,/obj/item/storage/firstaid/stalker/civillian,/obj/item/ammo_box/magazine/stalker/desert = 2,/obj/item/clothing/accessory/patch/clearsky)
	l_pocket = pick(
		 /obj/item/radio/off,
		 /obj/item/flashlight/seclite,
		 /obj/item/twohanded/binoculars)
	r_pocket = pick(
		/obj/item/flashlight/flare,
		/obj/item/lighter/greyscale,
		/obj/item/storage/fancy/cigarettes/cigpack_robust,
		/obj/item/storage/box/matches,
		/obj/item/restraints/handcuffs)