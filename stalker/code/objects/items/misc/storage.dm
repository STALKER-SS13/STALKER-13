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
	desc = "You wear this on your back and put items into it."
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
	icon_state = "backpack-civilian"
	item_state = "backpack-civilian"

/obj/item/storage/backpack/stalker/civilian/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 20
	STR.max_w_class = WEIGHT_CLASS_NORMAL

/obj/item/storage/backpack/stalker/tourist
	name = "tourist backpack"
	icon_state = "backpack-tourist"
	item_state = "backpack-tourist"

/obj/item/storage/backpack/stalker/tourist/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 35
	STR.max_w_class = WEIGHT_CLASS_BULKY

/obj/item/storage/backpack/stalker/professional
	name = "professional backpack"
	icon_state = "backpack-professional"
	item_state = "backpack-professional"

/obj/item/storage/backpack/stalker/professional/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 55
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
	icon_state = "satchel-civilian"
	item_state = "satchel-civilian"

/obj/item/storage/backpack/satchel/stalker/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_combined_w_class = 20
	STR.max_w_class = WEIGHT_CLASS_NORMAL

/*
/obj/item/storage/backpack/stalker/attackby(obj/item/W, mob/user, params)
	playsound(src.loc, "sound/stalker/objects/inv_open.ogg", 50, 1, -5)
	..()
*/