/datum/job/mercenary
	title = "Mercenary"
	faction_s = "Mercenaries"
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	description = "Mercenaries are experienced fighters from all walks of life who offer their services as hired soldiers. They are perhaps ex-military soldiers, ex-special forces operators, or possibly underground fighters such as elite resistance/guerrilla troops, a private military company or notorious terrorists of various nations who offer their services to the highest bidder. Because mercenaries have no established code of ethics to abide to, each mercenary group's sense of morality could be quite different from another."
	enforces = "Maintain good relations with most factions so that you can take contracts from them, let everyone you are going after that 'its just business' and that you exclusively work for pay, only do things for others when they agree to transfer you roubles."
	forbids = "Randomly go around trying to kill or rob stalkers or other faction members, disobey orders from the Mercenary Commander, and go off independently without communicating with your fellow mercenaries."
	supervisors = "Mercenary Commander"
	selection_color = "#2e708b"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	locked = 1
	outfit = /datum/outfit/job/mercenary

/datum/outfit/job/mercenary
	name = "Mercenary"
	faction_s = "Mercenaries"

/datum/outfit/job/mercenary/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/mercenary
	mask = /obj/item/clothing/mask/gas/stalker/mercenary
	belt = pick(
		/obj/item/kitchen/knife/bayonet,
		/obj/item/melee/classic_baton)
	backpack_contents = list(/obj/item/gun/ballistic/automatic/pistol/marta,
		/obj/item/storage/firstaid/stalker/military = 1,
		/obj/item/ammo_box/magazine/stalker/m9x19marta = 1,
		/obj/item/flashlight/seclite = 1,
		/obj/item/restraints/handcuffs/cable/zipties,
		/obj/item/clothing/accessory/patch/mercenaries)
	id = /obj/item/stalker_pda
	shoes = /obj/item/clothing/shoes/jackboots/warm
	l_pocket = pick(/obj/item/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/reagent_containers/food/snacks/stalker/baton)
	r_pocket = pick(
	/obj/item/restraints/handcuffs,
	/obj/item/camera,
	/obj/item/reagent_containers/food/drinks/flask/russian,
	/obj/item/dice/d6,
	/obj/item/clipboard,
	/obj/item/storage/fancy/cigarettes/cigpack_carp,
	/obj/item/lighter/greyscale,
	/obj/item/toy/cards/deck)

/datum/outfit/mercenary  // For select_equipment
	name = "Mercenary"

	head = null
	mask = /obj/item/clothing/mask/gas/stalker/mercenary
	suit = /obj/item/clothing/suit/hooded/kombez/mercenary
	ears = null
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	back = /obj/item/storage/backpack/stalker/civilian
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/sc45 = 2,
							/obj/item/storage/firstaid/stalker/military = 1,
							/obj/item/gun/ballistic/automatic/pistol/sip = 1,
							/obj/item/flashlight/seclite = 1)
	l_pocket = /obj/item/reagent_containers/food/snacks/stalker/kolbasa
	faction_s = "Mercenaries"

/datum/job/mercenarycommander
	title = "Mercenary Commander"
	faction_s = "Mercenaries"
	faction = "Station"
	total_positions = 4
	locked = 1
	spawn_positions = 4
	description = "Mercenaries are experienced fighters from all walks of life who offer their services as hired soldiers. They are perhaps ex-military soldiers, ex-special forces operators, or possibly underground fighters such as elite resistance/guerrilla troops, a private military company or notorious terrorists of various nations who offer their services to the highest bidder. Because mercenaries have no established code of ethics to abide to, each mercenary group's sense of morality could be quite different from another."
	enforces = "Coordinate and organize the mercenaries and make sure they have the support they need to complete objectives, let everyone you are going after that 'its just business' and that you exclusively work for pay, only do things for others when they agree to transfer you roubles."
	forbids = "Randomly go around trying to kill or rob stalkers or other faction members, jeopordize the standing of the mercenaries over something insignificant, and go off independently without communicating with your fellow mercenaries."
	supervisors = "Mysterious Contractor"
	selection_color = "#2e708b"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	limit_per_player = 4
	outfit = /datum/outfit/job/mercenarycommander
	real_rank = "Lieutenant"

/datum/outfit/job/mercenarycommander
	name = "Mercenary Commander"
	faction_s = "Mercenaries"

/datum/outfit/job/mercenarycommander/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/mercenary
	mask = /obj/item/clothing/mask/gas/stalker/mercenary
	belt = pick(
		/obj/item/gun/ballistic/automatic/pistol/desert,
		/obj/item/gun/ballistic/revolver/anaconda)
	backpack_contents = list(
		/obj/item/storage/firstaid/stalker/military = 1,
		/obj/item/ammo_box/stalker/bmag44  = 1,
		/obj/item/flashlight/seclite = 1,
		/obj/item/restraints/handcuffs/cable/zipties,
		/obj/item/clothing/accessory/patch/mercenaries)
	id = /obj/item/stalker_pda
	shoes = /obj/item/clothing/shoes/jackboots/warm
	l_hand = pick(
		/obj/item/weapon/kitchen/knife/hunting,
		/obj/item/melee/classic_baton/telescopic)
	r_pocket = pick(
	/obj/item/restraints/handcuffs,
	/obj/item/camera,
	/obj/item/reagent_containers/food/drinks/flask/commie,
	/obj/item/dice/d6,
	/obj/item/clipboard,
	/obj/item/storage/fancy/cigarettes/cigpack_carp,
	/obj/item/lighter/greyscale,
	/obj/item/toy/cards/deck)