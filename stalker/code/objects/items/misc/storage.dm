/obj/item/storage/wallet/stalker

/obj/item/storage/wallet/stalker/New()
	..()
	var/item1_type = pick(/obj/item/stack/spacecash/c100,/obj/item/stack/spacecash/c50)
	var/item2_type
	if(prob(50))
		item2_type = pick(/obj/item/stack/spacecash/c100,/obj/item/stack/spacecash/c50)

	spawn(2)
		if(item1_type)
			new item1_type(src)
		if(item2_type)
			new item2_type(src)

/obj/item/storage/backpack/stalker
	name = "backpack"
	desc = "A regular tourist backpack that will provide you with inventory. Can hold 21 items."
	icon_state = "backpack-tourist"
	item_state = "backpack-tourist"
	w_class = WEIGHT_CLASS_HUGE
	slot_flags = ITEM_SLOT_BACK

/obj/item/storage/backpack/stalker/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 30
	STR.max_w_class = WEIGHT_CLASS_BULKY
	STR.max_items = 21
	STR.display_numerical_stacking = TRUE

/obj/item/storage/backpack/stalker/civilian
	name = "civilian backpack"
	desc = "A regular camping backpack popular among those who just arrived in the Zone. Can hold small amounts of items."
	icon_state = "backpack-civilian"
	item_state = "backpack-civilian"

/obj/item/storage/backpack/stalker/civilian/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 20
	STR.max_w_class = WEIGHT_CLASS_NORMAL

/obj/item/storage/backpack/stalker/tourist
	name = "tourist bag"
	desc = "A tourist-targeted duffel bag with enough space to hold a few days of supplies.Can hold a bit more than civlian backpack."
	icon_state = "backpack-tourist"
	item_state = "backpack-tourist"

/obj/item/storage/backpack/stalker/tourist/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 35
	STR.max_w_class = WEIGHT_CLASS_BULKY

/obj/item/storage/backpack/stalker/professional
	name = "professional backpack"
	desc = "A heavy-duty military surplus backpack. You can carry a small supply-room in this. Holds a serious amounts of items. Due to its bulkiness, slows the user down a bit."
	icon_state = "backpack-professional"
	item_state = "backpack-professional"
	slowdown = 0.1

/obj/item/storage/backpack/stalker/professional/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 55
	STR.max_w_class = WEIGHT_CLASS_BULKY

/obj/item/storage/backpack/stalker/rucksack
	name = "rucksack"
	desc = "A practical bag for military use in harsh conditions. Due to no defined contours this bag is very useful for carrying just about anything. Can carry the largest volume out of all backpacks, but comes with slowing down the user substantially."
	icon_state = "backpack-rucksack"
	item_state = "backpack-rucksack"
	slowdown = 0.3

/obj/item/storage/backpack/stalker/rucksack/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 60
	STR.max_items = 30
	STR.max_w_class = WEIGHT_CLASS_BULKY


/obj/item/storage/backpack/satchel/stalker
	name = "satchel"
	icon_state = "satchel"
	item_state = "satchel"
	w_class = WEIGHT_CLASS_HUGE
	slot_flags = ITEM_SLOT_BACK

/obj/item/storage/backpack/satchel/stalker/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 30
	STR.max_w_class = WEIGHT_CLASS_BULKY
	STR.max_items = 21
	STR.display_numerical_stacking = TRUE

/obj/item/storage/backpack/satchel/stalker/civilian
	name = "civilian satchel"
	desc = "A small bag, used by messengers, lackeys and couriers. Very portable when compared to other bags."
	icon_state = "satchel-civilian"
	item_state = "satchel-civilian"

/obj/item/storage/backpack/satchel/stalker/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 18
	STR.max_w_class = WEIGHT_CLASS_NORMAL

///obj/item/storage/backpack/stalker/stalker
//	name = "backpack"
//	desc = "You wear this on your back and put items into it."
//	icon_state = "backpack-stalker"
//	item_state = "backpack-stalker"
//	w_class = WEIGHT_CLASS_HUGE
//	slot_flags = ITEM_SLOT_BACK

///obj/item/storage/backpack/stalker/stalker/ComponentInitialize()
//	. = ..()
//	GET_COMPONENT(STR, /datum/component/storage)
//	STR.max_combined_w_class = 30
//	STR.max_w_class = WEIGHT_CLASS_BULKY
//	STR.max_items = 21
//	STR.display_numerical_stacking = TRUE

///obj/item/storage/backpack/stalker/stalker/duffel
//	name = "duffelbag"
//	desc = "You wear this over your back and put items into it."
//	icon_state = "duffelbag-stalker"
//	item_state = "duffelbag-stalker"
//	w_class = WEIGHT_CLASS_HUGE
//	slot_flags = ITEM_SLOT_BACK

///obj/item/storage/backpack/stalker/stalker/ComponentInitialize()
//	. = ..()
//	GET_COMPONENT(STR, /datum/component/storage)
//	STR.max_combined_w_class = 30
//	STR.max_w_class = WEIGHT_CLASS_BULKY
//	STR.max_items = 35
//	STR.display_numerical_stacking = TRUE

///obj/item/storage/backpack/stalker/stalker/rucksack
//	name = "rucksack"
//	desc = "You wear this over your back and put items into it."
//	icon_state = "backpack-rucksack"
//	item_state = "backpack-rucksack"
//	w_class = WEIGHT_CLASS_HUGE
//	slot_flags = ITEM_SLOT_BACK

//obj/item/storage/backpack/stalker/stalker/ComponentInitialize()
//	. = ..()
//	GET_COMPONENT(STR, /datum/component/storage)
//	STR.max_combined_w_class = 55
//	STR.max_w_class = WEIGHT_CLASS_BULKY
//	STR.max_items = 30
//	STR.display_numerical_stacking = TRUE

/*
/obj/item/storage/backpack/stalker/attackby(obj/item/W, mob/user, params)
	playsound(src.loc, "sound/stalker/objects/inv_open.ogg", 50, 1, -5)
	..()
*/
