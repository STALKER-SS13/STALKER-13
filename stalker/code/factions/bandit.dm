/*
Assistant
*/
/datum/job/bandit
	title = "Bandit"
	faction_s = "Bandits"
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = "Pahan"
	selection_color = "#000000"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	limit_per_player = 2
	outfit = /datum/outfit/job/bandit

/datum/job/bandit_pahan
	title = "Pahan"
	faction_s = "Bandits"
	faction = "Station"
	total_positions = 2
	locked = 1
	spawn_positions = 2
	supervisors = ""
	selection_color = "#000000"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access(
	whitelist_only = 1
	outfit = /datum/outfit/job/bandit_pahan
	real_rank = "Lieutenant"

/datum/job/bandit_barman
	title = "Bandit Barman"
	faction_s = "Bandits"
	faction = "Station"
	total_positions = 1
	locked = 1
	spawn_positions = -1
	supervisors = ""
	selection_color = "#000000"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()
	whitelist_only = 1
	limit_per_player = 3
	outfit = /datum/outfit/job/bandit_barman

/datum/outfit/job/bandit
	name = "Bandit"
	faction_s = "Bandits"

/datum/outfit/job/bandit/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kozhanka/banditka
	ears = null
	id = /obj/item/stalker_pda
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = /obj/item/clothing/mask/balaclava
	backpack_contents = list()
	r_pocket = /obj/item/gun/ballistic/automatic/pistol/pm
	l_pocket = /obj/item/stalker/bolts

/datum/outfit/job/bandit_pahan
	name = "Pahan"
	faction_s = "Bandits"

/datum/outfit/job/bandit_pahan/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kozhanka/banditka/coat
	ears = null
	id = /obj/item/stalker_pda
	belt = /obj/item/gun/ballistic/automatic/mp5
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = /obj/item/clothing/mask/balaclava
	back = /obj/item/storage/backpack/stalker/tourist
	backpack_contents = list(/obj/item/stack/spacecash/c5000 = 2,
							/obj/item/ammo_box/stalker/b9x19 = 1,
							/obj/item/ammo_box/magazine/stalker/m9x19mp5 = 1,
							/obj/item/ammo_box/magazine/stalker/m9x18pm = 1,
							/obj/item/flashlight/seclite = 1)
	l_pocket = /obj/item/reagent_containers/food/snacks/stalker/konserva/shproti
	r_pocket = /obj/item/gun/ballistic/automatic/pistol/pm

/datum/outfit/job/bandit_barman
	name = "Bandit Barman"
	faction_s = "Bandits"

/datum/outfit/job/bandit_barman/pre_equip(mob/living/carbon/human/H)
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kozhanka/banditka
	ears = null
	id = /obj/item/stalker_pda
	belt = /obj/item/gun/ballistic/shotgun/bm16/sawnoff
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	head = /obj/item/clothing/head/bowler
	back = /obj/item/storage/backpack/stalker/tourist
	backpack_contents = list(/obj/item/stack/spacecash/c5000 = 3,
						/obj/item/ammo_box/stalker/b12x70 = 1,
						/obj/item/flashlight/seclite = 1)
	l_pocket = /obj/item/reagent_containers/food/snacks/stalker/konserva/shproti
	r_pocket = /obj/item/reagent_containers/food/drinks/bottle/vodka/kazaki

/datum/outfit/bandit  // For select_equipment
	name = "Bandit"
	faction_s = "Bandits"

	suit = /obj/item/clothing/suit/hooded/kozhanka/banditka
	ears = null
	id = /obj/item/stalker_pda
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = /obj/item/clothing/mask/balaclava
	back = /obj/item/storage/backpack/stalker/tourist
	backpack_contents = list(/obj/item/stack/spacecash/c1000 = 1, /obj/item/ammo_box/magazine/stalker/m9x18pm =  2)
	r_pocket = /obj/item/gun/ballistic/automatic/pistol/pm

/datum/outfit/bandit/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	l_pocket = pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/pill/stalker/aptechka/bint,/obj/item/reagent_containers/food/snacks/stalker/baton)
