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
	limit_per_player = 1
	description = "Bandits are a group of mostly ex-criminals who came in the Zone either to escape from the law, trade weapons or make money. They are a force of chaos within the Zone, and are essentially bad people who do bad things to good people."
	enforces = "Form a group and find people to rob and antagonize, cause chaos between and exploit all the other factions, work with others to destabalize the order in the Zone."
	forbids = "Work with Duty except under extraordinary circumstances, go off alone when there are fellow Bandits about, be non-antagonistic unless there is self interest involved, and cause major issues with factions without consulting the Bandit Boss."
	supervisors = "Bandit Boss or Bandit Barman"
	selection_color = "#000000"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	locked = 1
	outfit = /datum/outfit/job/bandit
	real_rank = "Bandit"
	exp_type = EXP_TYPE_CREW
	exp_requirements = 300

/datum/job/banditboss
	title = "Bandit Boss"
	faction_s = "Bandits"
	faction = "Station"
	total_positions = 2
	locked = 1
	spawn_positions = 2
	limit_per_player = 1
	description = "Bandits are a group of mostly ex-criminals who came in the Zone either to escape from the law, trade weapons or make money. They are a force of chaos within the Zone, and are essentially bad people who do bad things to good people."
	enforces = "Organize your fellow bandits and coordinate outbound groups and homebound groups, cause chaos between and exploit all the other factions, work with others to destabalize the order in the Zone."
	forbids = "Work with Duty except under extraordinary circumstances, go off alone when there are fellow Bandits about, and be non-antagonistic unless there is self interest involved."
	supervisors = "Sultan"
	selection_color = "#000000"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access(
	whitelist_only = 0
	outfit = /datum/outfit/job/banditboss
	real_rank = "Lieutenant"
	exp_type = EXP_TYPE_CREW
	exp_requirements = 900

/datum/job/bandit_barman
	title = "Bandit Barman"
	faction_s = "Bandits"
	faction = "Station"
	total_positions = 1
	locked = 1
	spawn_positions = 1
	limit_per_player = 1
	description = "Bandits are a group of mostly ex-criminals who came in the Zone either to escape from the law, trade weapons or make money. They are a force of chaos within the Zone, and are essentially bad people who do bad things to good people."
	enforces = "Help organize the bandits if the Bandit Boss isn't present and act as second-in-command, rip off anyone who isn't a Bandit however you can, arm your fellow bandits and provide them tools to further antagonize the Zone."
	forbids = "Work with Duty except under extraordinary circumstances, jeopordize your entire faction over something insignificant."
	supervisors = "Bandit Boss"
	selection_color = "#000000"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()
	whitelist_only = 0
	outfit = /datum/outfit/job/bandit_barman
	real_rank = "Bartender"
	exp_type = EXP_TYPE_CREW
	exp_requirements = 900

/datum/outfit/job/bandit
	name = "Bandit"
	faction_s = "Bandits"

/datum/outfit/job/bandit/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kozhanka/banditka
	ears = null
	mask = pick(
		/obj/item/clothing/mask/cigarette/cigar/cohiba,
		/obj/item/clothing/mask/bandana/skull,
		/obj/item/clothing/mask/cigarette/rollie/cannabis,
		/obj/item/clothing/mask/bandana/black,
		/obj/item/clothing/mask/pig,
		/obj/item/clothing/mask/balaclava)
	id = /obj/item/stalker_pda
	belt = pick(
		/obj/item/kitchen/knife/tourist,
		/obj/item/kitchen/knife/butcher,
		/obj/item/crowbar/large)
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/reagent_containers/food/snacks/stalker/konserva/shproti,/obj/item/storage/firstaid/ai2,/obj/item/flashlight/lantern,/obj/item/clothing/accessory/patch/bandits)
	r_pocket = pick(
		/obj/item/gun/ballistic/automatic/pistol/pm,
		/obj/item/gun/ballistic/automatic/pistol/pb1s)
	l_pocket = pick(/obj/item/storage/wallet,
				/obj/item/storage/wallet/brown,
				/obj/item/storage/wallet/alt)

/datum/outfit/job/banditboss
	name = "Bandit Boss"
	faction_s = "Bandits"

/datum/outfit/job/banditboss/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kozhanka/banditka/unique
	ears = null
	mask = pick(
		/obj/item/clothing/mask/cigarette/cigar/cohiba,
		/obj/item/clothing/mask/cigarette/cigar/havana,
		/obj/item/clothing/mask/cigarette/rollie/cannabis,
		/obj/item/clothing/mask/balaclava)
	id = /obj/item/stalker_pda
	belt = pick(
		/obj/item/kitchen/knife/butcher,
		/obj/item/crowbar/large)
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/reagent_containers/food/snacks/stalker/konserva/shproti,/obj/item/storage/firstaid/ai2,/obj/item/ammo_box/magazine/stalker/sc45 = 2,/obj/item/clothing/accessory/patch/bandits)
	r_pocket = /obj/item/gun/ballistic/automatic/pistol/sip
	l_pocket = pick(/obj/item/storage/wallet,
				/obj/item/storage/wallet/brown,
				/obj/item/storage/wallet/alt)

/datum/outfit/job/banditboss/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()

	if(visualsOnly)
		return

	H.grant_language(/datum/language/russian, body = FALSE)

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
	backpack_contents = list(/obj/item/stack/spacecash/c5000 = 40,
						/obj/item/ammo_box/stalker/b12x70 = 2,
						/obj/item/flashlight/seclite = 1,
						/obj/item/storage/firstaid/ai2,
						/obj/item/clothing/accessory/patch/bandits)
	l_pocket = pick(/obj/item/storage/wallet,
				/obj/item/storage/wallet/brown,
				/obj/item/storage/wallet/alt)
	r_pocket = pick(/obj/item/reagent_containers/food/drinks/bottle/vodka/stolichnaya,
				/obj/item/reagent_containers/food/drinks/bottle/vodka/kazaki,
				/obj/item/reagent_containers/food/drinks/bottle/vodka/blacklabelvodka,
				/obj/item/reagent_containers/food/drinks/bottle/vodka,
				/obj/item/reagent_containers/food/drinks/bottle/vodka/badminka,
				/obj/item/reagent_containers/food/drinks/bottle/vodka/bluegoose,
				/obj/item/reagent_containers/food/drinks/bottle/vodka/stalkervodka)

/datum/outfit/job/bandit_barman/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	..()

	if(visualsOnly)
		return

	H.grant_language(/datum/language/russian, body = FALSE)

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
