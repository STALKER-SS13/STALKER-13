///datum/job/stalker/renegade      commented literally everything out. fuck you fuck you!!!!
//	title = "Renegade"                         :trol:
//	faction = "Station"
//	faction_s = "Renegades"
//	total_positions = -1
//	spawn_positions = -1
//	limit_per_player = 1
//	description = "Renegades are bandits that decided to leave the bandit faction. Most stalkers consider renegades a joke due to their lack of equipment and poor leadership."
//	enforces = "Be a bad person who does bad things to good people. Form a group and find people to rob and exploit all the other factions."
//	forbids = "Be a loner plus; you're a Renegade, ACT LIKE IT!"
//	selection_color = "#003D06"
//	access = list()			//See /datum/job/assistant/get_access()
//	minimal_access = list()	//See /datum/job/assistant/get_access()
//	whitelist_only = 0
//	outfit = /datum/outfit/job/renegade
//	real_rank = "Renegade"

///datum/outfit/job/renegade
//	name = "Renegade"
//	faction_s = "Renegades"

///datum/outfit/job/renegade/pre_equip(mob/living/carbon/human/H)
//	..()
//	uniform = UNIFORMPICK
//	suit = /obj/item/clothing/suit/hooded/kozhanka/renegadecoat
//	ears = null
//	mask = pick(
//		/obj/item/clothing/mask/cigarette/cigar/cohiba,
//		/obj/item/clothing/mask/balaclava,
//		/obj/item/clothing/mask/cigarette/rollie/cannabis,
//		)
//	id = /obj/item/stalker_pda
//	belt = pick(
//		/obj/item/kitchen/knife/tourist,
//		/obj/item/kitchen/knife/butcher,
//		/obj/item/crowbar/large)
//	gloves = /obj/item/clothing/gloves/fingerless
//	shoes = /obj/item/clothing/shoes/jackboots/warm
//	backpack_contents = list(/obj/item/reagent_containers/food/snacks/stalker/konserva/shproti,/obj/item/storage/firstaid/ai2,/obj/item/flashlight/lantern,/obj/item/clothing/accessory/patch/renegades)
//	r_pocket = pick(
//		/obj/item/gun/ballistic/automatic/pistol/pm,
//		/obj/item/gun/ballistic/automatic/pistol/pb1s)
//	l_pocket = pick(/obj/item/storage/wallet,
//				/obj/item/storage/wallet/brown,
//				/obj/item/storage/wallet/alt)

///datum/outfit/renegade  // For select_equipment
//	name = "Renegade"
//	faction_s = "Renegade"
//	suit = /obj/item/clothing/suit/hooded/kozhanka/renegadecoat
//	ears = null
//	id = /obj/item/stalker_pda
//	belt = /obj/item/kitchen/knife/tourist
//	gloves = /obj/item/clothing/gloves/fingerless
//	shoes = /obj/item/clothing/shoes/jackboots/warm
//	mask = /obj/item/clothing/mask/balaclava
//	back = /obj/item/storage/backpack/stalker/tourist
//	backpack_contents = list(/obj/item/stack/spacecash/c1000 = 1, /obj/item/ammo_box/magazine/stalker/m9x18pm =  2)
//	r_pocket = /obj/item/gun/ballistic/automatic/pistol/pm
