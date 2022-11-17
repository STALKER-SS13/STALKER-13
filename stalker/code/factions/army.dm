/*
Assistant
*/
/datum/job/army
	title = "Military Soldier"
	faction_s = "State Security Service"
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	limit_per_player = 1
	description = "The State Security Services, often referred to as the Military or the Army, are Ukrainian soldiers that have been sent into the Zone by the Ukrainian government to maintain security along the borders of the Zone, in order to prevent unauthorized incursions by Stalkers, and by extension, distribution of artifacts to the outside world without government supervision."
	enforces = "Protect the military checkpoint by default, be aware of orders from superiors and executing them with precision, communicate with those in the Zone so they know the military has a presence."
	forbids = "Leave the base independently for any reason, disobey orders given by a superior, and start trouble with other factions before clearing it with superiors."
	supervisors = "Military Commander"
	selection_color = "#2E8B57"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	locked = 1
	outfit = /datum/outfit/job/army
	real_rank = "Army"
	exp_requirements = 300

/datum/job/army_spetsnaz
	title = "Military Spetsnaz"
	faction = "Station"
	faction_s = "State Security Service"
	limit_per_player = 1
	total_positions = 2
	spawn_positions = 2
	description = "The State Security Services, often referred to as the Military or the Army, are Ukrainian soldiers that have been sent into the Zone by the Ukrainian government to maintain security along the borders of the Zone, in order to prevent unauthorized incursions by Stalkers, and by extension, distribution of artifacts to the outside world without government supervision."
	enforces = "Protect the military checkpoint by default, be aware of orders from superiors and executing them with precision, taking leadership when the Commander isn't present."
	forbids = "Leave the base independently for any reason, disobey orders given by a superior, and start trouble with other factions before clearing it with superiors."
	supervisors = "Military Commander"
	selection_color = "#2E8B57"
	whitelist_only = 0
	locked = 1
	outfit = /datum/outfit/job/army_spetsnaz
	real_rank = "Special"
	exp_type = EXP_TYPE_CREW
	exp_requirements = 600

/datum/outfit/job/army_spetsnaz
	name = "Military Spetsnaz"
	faction_s = "State Security Service"

/datum/outfit/job/army_spetsnaz/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/skathelmet
	uniform = /obj/item/clothing/under/color/switer/lolg
	suit = /obj/item/clothing/suit/skat
	ears = null
	belt = /obj/item/weapon/kitchen/knife/m9
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	suit_store = /obj/item/gun/ballistic/automatic/ak74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/m545 = 2,/obj/item/reagent_containers/food/snacks/stalker/konserva/fish,/obj/item/storage/firstaid/ifak,/obj/item/flashlight/seclite,/obj/item/clothing/accessory/patch/military)
	r_pocket = /obj/item/radio
	l_pocket = pick(/obj/item/storage/wallet,
				/obj/item/storage/wallet/brown,
				/obj/item/storage/wallet/alt)
	faction_s = "State Security Service"

/datum/outfit/job/army_spetsnaz/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()

	if(visualsOnly)
		return

	H.grant_language(/datum/language/russian, body = FALSE)
	H.grant_language(/datum/language/german, body = FALSE)

/datum/outfit/job/army
	faction_s = "State Security Service"

/datum/outfit/job/army/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/steel
	uniform = /obj/item/clothing/under/color/switer/lolg
	suit = /obj/item/clothing/suit/army
	ears = null
	belt = /obj/item/weapon/kitchen/knife/m9
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	suit_store = /obj/item/gun/ballistic/automatic/aksu74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/m545 = 2,/obj/item/reagent_containers/food/snacks/stalker/konserva/fish,/obj/item/storage/firstaid/ifak,/obj/item/flashlight/seclite,/obj/item/clothing/accessory/patch/military)
	r_pocket = /obj/item/radio
	l_pocket = pick(/obj/item/storage/wallet,
				/obj/item/storage/wallet/brown,
				/obj/item/storage/wallet/alt)
	faction_s = "Army"

/datum/job/militarycommander
	title = "Military Commander"
	faction_s = "State Security Service"
	outfit = /datum/outfit/job/militarycommander
	faction = "Station"
	limit_per_player = 1
	total_positions = 2
	locked = 1
	spawn_positions = 2
	description = "The State Security Services, often referred to as the Military or the Army, are Ukrainian soldiers that have been sent into the Zone by the Ukrainian government to maintain security along the borders of the Zone, in order to prevent unauthorized incursions by Stalkers, and by extension, distribution of artifacts to the outside world without government supervision."
	enforces = "Protect the military checkpoint by default, create and rotate outbound squads to patrol and homebound squads to defend the base."
	forbids = "Leave the base independently for any reason, order normal military personnel to leave the base alone, and avoid communicating with your troops."
	supervisors = "High Command"
	selection_color = "#2E8B57"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	real_rank = "Lieutenant"
	exp_type = EXP_TYPE_CREW
	exp_requirements = 900

/datum/outfit/job/militarycommander
	name = "Military Commander"
	faction_s = "State Security Service"

/datum/outfit/job/militarycommander/pre_equip(mob/living/carbon/human/H)
	head = /obj/item/clothing/head/beret/black
	uniform = /obj/item/clothing/under/color/switer/lolg
	suit = /obj/item/clothing/suit/army
	ears = null
	belt = /obj/item/weapon/kitchen/knife/hunting
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	suit_store = /obj/item/gun/ballistic/automatic/pistol/desert
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/desert = 2,/obj/item/reagent_containers/food/snacks/stalker/konserva/fish,/obj/item/storage/firstaid/ifak,/obj/item/flashlight/seclite,/obj/item/clothing/accessory/patch/military)
	r_pocket = /obj/item/radio
	l_pocket = pick(/obj/item/storage/wallet,
				/obj/item/storage/wallet/brown,
				/obj/item/storage/wallet/alt)
	faction_s = "State Security Service"

/datum/outfit/job/militarycommander/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()

	if(visualsOnly)
		return

	H.grant_language(/datum/language/russian, body = FALSE)
	H.grant_language(/datum/language/german, body = FALSE)

/datum/outfit/army  // For select_equipment
	name = "Military Soldier"

	head = null
	ears = null
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	back = /obj/item/storage/backpack/stalker/tourist
	//back2 = /obj/item/gun/ballistic/automatic/aksu74
	suit_store = /obj/item/gun/ballistic/automatic/aksu74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545 = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/storage/firstaid/ifak = 1)
	l_pocket = /obj/item/storage/wallet/stalker
	r_pocket = /obj/item/radio
	faction_s = "State Security Service"

/datum/outfit/army/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/color/switer/lolg
	suit = /obj/item/clothing/suit/army
	l_pocket = pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/food/snacks/stalker/baton)
	r_pocket = pick(/obj/item/storage/wallet,
				/obj/item/storage/wallet/brown,
				/obj/item/storage/wallet/alt)

/datum/outfit/armycommander // For select_equipment
	name = "Military Commander"

	head = /obj/item/clothing/head/beret_ua
	uniform = /obj/item/clothing/under/color/switer/dark
	suit = /obj/item/clothing/suit/army
	ears = null
	belt = /obj/item/gun/ballistic/automatic/pistol/fort12
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	back = /obj/item/storage/backpack/stalker/tourist
	//back2 = /obj/item/gun/ballistic/automatic/ak74
	suit_store = /obj/item/gun/ballistic/automatic/ak74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545ap = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/storage/firstaid/ifak = 1,
							/obj/item/reagent_containers/food/drinks/bottle/vodka/kazaki = 1)
	r_pocket = /obj/item/radio
	l_pocket = /obj/item/storage/wallet/stalker
	faction_s = "State Security Service"
