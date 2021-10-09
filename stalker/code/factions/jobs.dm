datum/job/stalker
	title = "NOPE"
	list/minimal_access = list()		//Useful for servers which prefer to only have access given to the places a job absolutely needs (Larger server population)
	list/access = list()				//Useful for servers which either have fewer players, so each person needs to fill more than one role, or servers which like to give more access, so players can't hide forever in their super secure departments (I'm looking at you, chemistry!)
	department_head = list()
	flag = 0
	department_flag = 0
	faction = "None"
	total_positions = 0
	spawn_positions = 0
	current_positions = 0
	supervisors = ""
	selection_color = "#ffffff"
	whitelist_only = 1
	req_admin_notify = 0
	minimal_player_age = 0
	outfit = null
	real_rank = "Lieutenant"

/datum/job/stalker/trader
	title = "Trader"
	faction = "Station"
	selection_color = "#FFA500"
	access = list(ACCESS_MAINT_TUNNELS, ACCESS_MAILSORTING, ACCESS_CARGO, ACCESS_QM, ACCESS_MINING, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_MAINT_TUNNELS, ACCESS_MAILSORTING, ACCESS_CARGO, ACCESS_QM, ACCESS_MINING, ACCESS_MINERAL_STOREROOM)
	total_positions = 3
	spawn_positions = 1
	req_admin_notify = 1
	whitelist_only = 1
	outfit = /datum/outfit/job/trader

/datum/outfit/job/trader
	name = "Trader"
	faction_s = "Traders"

/datum/outfit/job/trader/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/color/sidor
	suit = /obj/item/clothing/suit/jacket/sidor
	ears = null
	belt = /obj/item/gun/ballistic/automatic/pistol/cora
	id = /obj/item/stalker_pda
	shoes = /obj/item/clothing/shoes/sneakers/brown
	back = /obj/item/storage/backpack/stalker/civilian
	backpack_contents = list (/obj/item/stack/spacecash/c5000 = 50)

/datum/outfit/stalker/trader  // For select_equipment
	name = "Sidorovich"
	uniform = /obj/item/clothing/under/color/sidor
	suit = /obj/item/clothing/suit/jacket/sidor
	ears = null
	belt = /obj/item/gun/ballistic/automatic/pistol/cora
	id = /obj/item/stalker_pda
	shoes = /obj/item/clothing/shoes/sneakers/brown
	back = /obj/item/storage/backpack/stalker/civilian
	backpack_contents = list (/obj/item/stack/spacecash/c5000 = 50)

//donat-equip for atelerd
/datum/job/stalker/atelerd
	title = "Svoboda Special"
	faction = "Station"

	selection_color = "#00FF00"

	total_positions = 1
	spawn_positions = 1
	req_admin_notify = 1
	whitelist_only = 1

	outfit = /datum/outfit/stalker/atelerd

/datum/outfit/stalker/atelerd // For select_equipment
	name = "Svoboda Special"

	ears = null
	belt = /obj/item/gun/ballistic/automatic/pistol/marta
	id = /obj/item/stalker_pda
	shoes = /obj/item/clothing/shoes/jackboots/warm
	suit = /obj/item/clothing/suit/hooded/kozhanka/strazh/atelerd
	back = /obj/item/storage/backpack/stalker/tourist
	//back2 = /obj/item/gun/ballistic/shotgun/chaser
	suit_store = /obj/item/gun/ballistic/shotgun/chaser
	l_pocket = /obj/item/stack/spacecash/c5000

/datum/outfit/stalker/atelerd/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	r_pocket = pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/pill/stalker/aptechka/bint,/obj/item/reagent_containers/food/snacks/stalker/konserva,/obj/item/reagent_containers/food/snacks/stalker/baton)

/datum/outfit/stalker/palputin // For select_equipment
	name = "Nedomonolith"

	ears = null
	belt = null
	id = /obj/item/stalker_pda
	shoes = /obj/item/clothing/shoes/jackboots/warm
	suit = /obj/item/clothing/suit/hooded/kozhanka/white/monolith
	back = /obj/item/storage/backpack/stalker/civilian
	//back2 = null
	l_pocket = /obj/item/stack/spacecash/c5000

/datum/outfit/stalker/atelerd/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	r_pocket = pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/pill/stalker/aptechka/bint,/obj/item/reagent_containers/food/snacks/stalker/konserva,/obj/item/reagent_containers/food/snacks/stalker/baton)

/datum/job/stalker/jacknoir
	title = "Machinist"
	faction = "Station"

	selection_color = "#00FF00"

	total_positions = 1
	spawn_positions = 1
	req_admin_notify = 1
	whitelist_only = 1

	outfit = /datum/outfit/stalker/machinist

/datum/outfit/stalker/machinist // For select_equipment
	name = "Machinist"
	head = /obj/item/clothing/head/soft/jacknoircap
	uniform = /obj/item/clothing/under/color/switer
	suit = /obj/item/clothing/suit/hooded/kozhanka/white
	ears = null
	id = /obj/item/stalker_pda
	belt = /obj/item/kitchen/knife/tourist
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = null
	back = /obj/item/storage/backpack/stalker/civilian
	l_pocket = /obj/item/stack/spacecash/c5000
	r_pocket = /obj/item/reagent_containers/food/snacks/stalker/kolbasa
	ears = null



