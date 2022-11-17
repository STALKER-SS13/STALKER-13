/datum/job/freedom
	title = "Freedom Soldier"
	faction_s = "Freedom"
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	limit_per_player = 1
	description = "Freedom are anarchists and daredevils who declare themselves fighters for a free access to the Zone and consequently find themselves in constant conflict with the army, military stalkers and the Duty faction. These so-called freedom warriors believe in sharing all information about the Zone with the rest of the world and challenge the state's monopoly over the Zone's secrets and wonders."
	enforces = "Work with fellow Freedom faction members to patrol the Zone, save stalkers from death and help them get back on their feet, vanquish the grip of oppression from various militant factions which suffocate those within it, and shoot Duty on sight."
	forbids = "Antagonize stalkers by harming or stealing from them, cause trouble with other factions without permission from leadership, run off solo without communicating with others about what you're doing, and working with the Military or Duty."
	supervisors = "Lieutenant"
	selection_color = "#601919"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	outfit = /datum/outfit/freedomrookie
	real_rank = "Freedom"
	exp_type = EXP_TYPE_CREW
	exp_requirements = 300

/datum/outfit/job/freedomrookie
	name = "Freedom Soldier"

/datum/outfit/freedomrookie/pre_equip(mob/living/carbon/human/H)
	..()
	head = pick(
		/obj/item/grown/sunflower,
		/obj/item/clothing/head/ushanka)
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/veter
	mask = pick(
		/obj/item/clothing/mask/cigarette/rollie/cannabis,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/mask/bandana/green)
	ears = null
	belt = /obj/item/kitchen/knife/bayonet
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	back = /obj/item/storage/backpack/stalker/civilian
	suit_store = /obj/item/gun/ballistic/automatic/aksu74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/m545 = 2,/obj/item/reagent_containers/food/snacks/stalker/baton,/obj/item/storage/firstaid/ai2,/obj/item/clothing/accessory/patch/freedom)
	l_pocket = pick(/obj/item/storage/wallet,
				/obj/item/storage/wallet/brown,
				/obj/item/storage/wallet/alt)
	r_pocket = pick(/obj/item/flashlight/flare,
		/obj/item/flashlight/lantern,
		/obj/item/flashlight/seclite,
		/obj/item/flashlight,
		/obj/item/flashlight/flare/torch,
		/obj/item/clothing/mask/cigarette/rollie/cannabis,
		/obj/item/lighter/greyscale,
	/obj/item/storage/box/matches)
	faction_s = "Freedom"

/datum/outfit/freedomrookie  // For select_equipment
	name = "Freedom Soldier"
	suit = /obj/item/clothing/suit/hooded/kombez/veter
	ears = null
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	back = /obj/item/storage/backpack/stalker/civilian
	suit_store = /obj/item/gun/ballistic/automatic/pistol/cora
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/sc45 = 2)
	faction_s = "Freedom"

/datum/outfit/freedomrookie/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()

	if(visualsOnly)
		return

	H.grant_language(/datum/language/english, body = FALSE)

/datum/job/freedom_lieutenant
	title = "Freedom Lieutenant"
	faction_s = "Freedom"
	faction = "Station"
	total_positions = 4
	locked = 1
	spawn_positions = 4
	limit_per_player = 1
	description = "Freedom are anarchists and daredevils who declare themselves fighters for a free access to the Zone and consequently find themselves in constant conflict with the army, military stalkers and the Duty faction. These so-called freedom warriors believe in sharing all information about the Zone with the rest of the world and challenge the state's monopoly over the Zone's secrets and wonders."
	enforces = "Organizing the soldiers into teams by designating responsibilities, save stalkers from death and help them get back on their feet, vanquish the grip of oppression from various militant factions which suffocate those within it, and establish good relationships with various factions such as the Bandits and Loners."
	forbids = "Antagonize stalkers by harming or stealing from them, cause trouble with other factions without a good reason, run off solo without communicating with others about what you're doing, and working with the Military or Duty."
	supervisors = "Lieutenant"
	selection_color = "#601919"
	whitelist_only = 0
	outfit = /datum/outfit/job/freedom_lieutenant
	real_rank = "Lieutenant"
	exp_type = EXP_TYPE_CREW
	exp_requirements = 900

/datum/outfit/job/freedom_lieutenant
	name = "Freedom Lieutenant"
	faction_s = "Freedom"

/datum/outfit/job/freedom_lieutenant/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/steel
	uniform = /obj/item/clothing/under/color/switer
	suit = /obj/item/clothing/suit/hooded/strazh
	mask = pick(
		/obj/item/clothing/mask/cigarette/rollie/cannabis,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/mask/bandana/green)
	ears = null
	belt = /obj/item/weapon/kitchen/knife/hunting
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	back = /obj/item/storage/backpack/stalker/civilian
	suit_store = /obj/item/gun/ballistic/revolver/anaconda
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/reagent_containers/food/snacks/stalker/baton,/obj/item/storage/firstaid/ai2,/obj/item/ammo_box/stalker/bmag44  = 1,/obj/item/restraints/handcuffs/cable/zipties,/obj/item/toy/figure/botanist,/obj/item/clothing/accessory/patch/freedom)
	l_pocket = pick(/obj/item/storage/wallet,
				/obj/item/storage/wallet/brown,
				/obj/item/storage/wallet/alt)
	r_pocket = pick(
		/obj/item/flashlight/flare,
		/obj/item/lighter/greyscale,
		/obj/item/clothing/mask/cigarette/rollie/cannabis,
		/obj/item/storage/box/matches,)
	r_hand = pick(/obj/item/flashlight/lantern,
				/obj/item/flashlight/seclite,
				/obj/item/flashlight,
				/obj/item/flashlight/flare/torch)

/datum/outfit/job/freedom_lieutenant/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()

	if(visualsOnly)
		return

	H.grant_language(/datum/language/english, body = FALSE)
	H.grant_language(/datum/language/german, body = FALSE)
