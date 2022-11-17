/*
Assistant
*/
/datum/job/duty
	title = "Duty Soldier"
	faction_s = "Duty"
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	limit_per_player = 1
	description = "Duty is a paramilitary clan of stalkers operating in the Zone with members living according to a code. Their ranks are composed of ex-military and stalkers who wish to bring order to the Zone and keep it from spreading further. They are contrasted by other factions, such as Freedom or the Ecologists, who see the Zone as a miracle. Its members consider protecting the outside world from the Zone's dangers their primary objective."
	enforces = "Work with your teammates to neutralize anarchists and mutants, confisccate anomalies and giving them to the ecologists if they are being waved around, shoot Freedom whenever possible."
	forbids = "Antagonize stalkers by harming or stealing from them, working with Freedom, Renegades or the Bandits, and start a fight with a neutral faction without asking up the chain of command."
	supervisors = "Lieutenant"
	selection_color = "#601919"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	outfit = /datum/outfit/job/dutysoldier
	real_rank = "Duty"
	exp_type = EXP_TYPE_CREW
	exp_requirements = 300

/datum/outfit/job/dutysoldier  // For select_equipment
	name = "Duty Soldier"
	faction_s = "Duty"
	head = null
	suit = /obj/item/clothing/suit/hooded/kombez/ps5m
	ears = null
	belt = /obj/item/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/stalker_pda
	back = /obj/item/storage/backpack/stalker/tourist
	suit_store = /obj/item/gun/ballistic/automatic/aksu74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545 = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,)
	faction_s = "Duty"

/datum/outfit/job/dutysoldier/pre_equip(mob/living/carbon/human/H)
	..()
	head = pick(
		/obj/item/clothing/head/beret,
		/obj/item/clothing/head/ushanka,
		/obj/item/clothing/head/beret/black)
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/ps5m
	mask = pick(
		/obj/item/clothing/mask/cigarette/cigar/havana,
		/obj/item/clothing/mask/bandana/black,
		/obj/item/clothing/mask/cigarette/marlboro)
	ears = null
	belt = /obj/item/kitchen/knife/bayonet
	gloves = /obj/item/clothing/gloves/color/black
	id = /obj/item/stalker_pda
	back = /obj/item/storage/backpack/duty
	suit_store = /obj/item/gun/ballistic/automatic/aksu74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/m545 = 2,/obj/item/reagent_containers/food/snacks/stalker/konserva/fish,/obj/item/storage/firstaid/ai2,/obj/item/clothing/accessory/patch/duty)
	l_pocket = pick(/obj/item/storage/wallet,
				/obj/item/storage/wallet/brown,
				/obj/item/storage/wallet/alt)
	r_pocket = pick(/obj/item/flashlight/lantern,
		/obj/item/flashlight/seclite,
		/obj/item/flashlight,
		/obj/item/flashlight/flare/torch,
		/obj/item/flashlight/flare,
		/obj/item/lighter/greyscale,
		/obj/item/clothing/mask/cigarette/marlboro,
		/obj/item/storage/box/matches,
		/obj/item/restraints/handcuffs)

/datum/outfit/job/dutysoldier/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()

	if(visualsOnly)
		return

	H.grant_language(/datum/language/russian, body = FALSE)

/datum/job/barman2
	title = "Barman2"
	faction_s = "Loners"
	locked = 1
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	limit_per_player = 1
	supervisors = ""
	selection_color = "#601919"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	outfit = /datum/outfit/job/barman2
	real_rank = "Bartender"
	exp_type = EXP_TYPE_CREW
	exp_requirements = 600

/datum/outfit/job/barman2
	name = "Barman"
	faction_s = "Traders"

/datum/outfit/job/barman2/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = /obj/item/clothing/under/color/switer/dark
	suit = /obj/item/clothing/suit/jacket/sidor
	ears = null
	belt = /obj/item/gun/ballistic/automatic/pistol/cora
	id = /obj/item/stalker_pda
	shoes = /obj/item/clothing/shoes/sneakers/black
	back = null

/datum/job/duty_lieutenant
	title = "Duty Lieutenant"
	faction_s = "Duty"
	faction = "Station"
	total_positions = 4
	locked = 1
	spawn_positions = 4
	limit_per_player = 1
	description = "Duty is a paramilitary clan of stalkers operating in the Zone with members living according to a code. Their ranks are composed of ex-military and stalkers who wish to bring order to the Zone and keep it from spreading further. They are contrasted by other factions, such as Freedom or the Ecologists, who see the Zone as a miracle. Its members consider protecting the outside world from the Zone's dangers their primary objective."
	enforces = "Organizing the soldiers into teams by designating responsibilities, save stalkers from death and help them get back on their feet, confisccate anomalies and giving them to the ecologists if they are being waved around, shoot Freedom on sight whenever possible."
	forbids = "Antagonize stalkers by harming or stealing from them, working with Freedom, Renegades, or the Bandits, and jeopordize the faction for an insignificant reason."
	supervisors = "Major"
	selection_color = "#601919"
	whitelist_only = 0
	outfit = /datum/outfit/job/duty_lieutenant
	real_rank = "Lieutenant"
	exp_type = EXP_TYPE_CREW
	exp_requirements = 900

/datum/outfit/job/duty_lieutenant
	name = "Duty Lieutenant"
	faction_s = "Duty"

/datum/outfit/job/duty_lieutenant/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/steel
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/psz9d
	mask = pick(
		/obj/item/clothing/mask/cigarette/cigar/havana,
		/obj/item/clothing/mask/bandana/black)
	ears = null
	belt = /obj/item/weapon/kitchen/knife/hunting
	gloves = /obj/item/clothing/gloves/color/black
	id = /obj/item/stalker_pda
	back = /obj/item/storage/backpack/duty
	suit_store = /obj/item/gun/ballistic/revolver/anaconda
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/reagent_containers/food/snacks/stalker/baton,/obj/item/storage/firstaid/ai2,/obj/item/ammo_box/stalker/bmag44  = 1,/obj/item/restraints/handcuffs/cable/zipties,/obj/item/clothing/accessory/patch/duty)
	l_pocket = pick(/obj/item/storage/wallet,
				/obj/item/storage/wallet/brown,
				/obj/item/storage/wallet/alt)
	r_pocket = pick(
		/obj/item/flashlight/flare,
		/obj/item/lighter/greyscale,
		/obj/item/clothing/mask/cigarette/marlboro
		/obj/item/storage/box/matches,
		/obj/item/restraints/handcuffs)
	r_hand = pick(/obj/item/flashlight/lantern,
				/obj/item/flashlight/seclite,
				/obj/item/flashlight,
				/obj/item/flashlight/flare/torch)

/datum/outfit/job/duty_lieutenant/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()

	if(visualsOnly)
		return

	H.grant_language(/datum/language/russian, body = FALSE)
	H.grant_language(/datum/language/german, body = FALSE)
