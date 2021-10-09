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
	description = "The State Security Services, often referred to as the Military or the Army, are Ukrainian soldiers that have been sent into the Zone by the Ukrainian government to maintain security along the borders of the Zone, in order to prevent unauthorized incursions by Stalkers, and by extension, distribution of artifacts to the outside world without government supervision."
	enforces = "Protect the military checkpoint by default, escort the Ecologists if they leave the checkpoint, be aware of orders from superiors and executing them with precision."
	forbids = "Leave the base independently for any reason, disobey orders given by a superior, and start trouble with other factions before clearing it with superiors."
	supervisors = "Military Commander"
	selection_color = "#2E8B57"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	outfit = /datum/outfit/job/army

/datum/job/army_eliteagro
	title = "EliteAgro"
	outfit = /datum/outfit/job/army/eliteagro

/datum/outfit/job/army_eliteagro
	name = "EliteAgro"
	faction_s = "Army"

/datum/outfit/job/army/eliteagro/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/beret_ua
	suit = /obj/item/clothing/suit/skat
	gloves = /obj/item/clothing/gloves/fingerless
	//back2 = pick(/obj/item/gun/ballistic/automatic/ak74)
	suit_store = pick(/obj/item/gun/ballistic/automatic/ak74)
	backpack_contents = list(/obj/item/ammo_box/stalker/b545ap = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/reagent_containers/pill/stalker/aptechka/army = 1,
							/obj/item/clothing/glasses/eyepatch = 1)
	var/datum/martial_art/plasma_fist/plasma_fist = new(null)
	plasma_fist.teach(H)

/datum/outfit/job/army
	name = "Army"

/datum/outfit/job/army/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/steel
	uniform = /obj/item/clothing/under/color/switer/lolg
	suit = /obj/item/clothing/suit/army
	ears = null
	belt = /obj/item/weapon/kitchen/knife/hunting
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	suit_store = /obj/item/gun/ballistic/automatic/pistol/fort12
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/m9x18fort = 2,/obj/item/reagent_containers/food/snacks/stalker/konserva/fish,/obj/item/reagent_containers/pill/stalker/aptechka/army,/obj/item/flashlight/seclite,/obj/item/clothing/accessory/patch/military)
	r_pocket = /obj/item/radio
	l_pocket = pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/food/snacks/stalker/baton)
	faction_s = "Army"

/datum/job/militarycommander
	title = "Military Commander"
	faction_s = "State Security Service"
	outfit = /datum/outfit/job/militarycommander
	faction = "Station"
	total_positions = -1
	locked = 1
	spawn_positions = -1
	description = "The State Security Services, often referred to as the Military or the Army, are Ukrainian soldiers that have been sent into the Zone by the Ukrainian government to maintain security along the borders of the Zone, in order to prevent unauthorized incursions by Stalkers, and by extension, distribution of artifacts to the outside world without government supervision."
	enforces = "Protect the military checkpoint by default, ensure that the Ecologists are safe and coordinate supervised visitation from stalkers to their bunker, create and rotate outbound squads to patrol and homebound squads to defend the base."
	forbids = "Leave the base independently for any reason, order normal military personnel to leave the base alone, and avoid communicating with your troops."
	supervisors = "High Command"
	selection_color = "#2E8B57"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	real_rank = "Lieutenant"

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
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/desert = 2,/obj/item/reagent_containers/food/snacks/stalker/konserva/fish,/obj/item/reagent_containers/pill/stalker/aptechka/army,/obj/item/flashlight/seclite,/obj/item/clothing/accessory/patch/military)
	r_pocket = /obj/item/radio
	l_pocket = pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/food/snacks/stalker/baton)
	faction_s = "Army"

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
							/obj/item/reagent_containers/pill/stalker/aptechka/army = 1)
	l_pocket = /obj/item/stalker/bolts
	r_pocket = /obj/item/radio
	faction_s = "Army"

/datum/outfit/army/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/color/switer/lolg
	suit = /obj/item/clothing/suit/army
	l_pocket = pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/food/snacks/stalker/baton)
	r_pocket =/obj/item/stalker/bolts

/datum/outfit/armycommander // For select_equipment
	name = "Army Commander"

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
							/obj/item/reagent_containers/pill/stalker/aptechka/army = 1,
							/obj/item/reagent_containers/food/drinks/bottle/vodka/kazaki = 1)
	r_pocket = /obj/item/radio
	l_pocket = /obj/item/ammo_box/magazine/stalker/m9x18fort
	faction_s = "Army"