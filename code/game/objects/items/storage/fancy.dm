/*
 * The 'fancy' path is for objects like donut boxes that show how many items are in the storage item on the sprite itself
 * .. Sorry for the shitty path name, I couldnt think of a better one.
 *
 * WARNING: var/icon_type is used for both examine text and sprite name. Please look at the procs below and adjust your sprite names accordingly
 *		TODO: Cigarette boxes should be ported to this standard
 *
 * Contains:
 *		Donut Box
 *		Egg Box
 *		Candle Box
 *		Cigarette Box
 *		Cigar Case
 *		Heart Shaped Box w/ Chocolates
 */

/obj/item/storage/fancy
	icon = 'icons/obj/food/containers.dmi'
	icon_state = "donutbox6"
	name = "donut box"
	desc = "Mmm. Donuts."
	resistance_flags = FLAMMABLE
	var/icon_type = "donut"
	var/spawn_type = null
	var/fancy_open = FALSE

/obj/item/storage/fancy/PopulateContents()
	GET_COMPONENT(STR, /datum/component/storage)
	for(var/i = 1 to STR.max_items)
		new spawn_type(src)

/obj/item/storage/fancy/update_icon()
	if(fancy_open)
		icon_state = "[icon_type]box[contents.len]"
	else
		icon_state = "[icon_type]box"

/obj/item/storage/fancy/examine(mob/user)
	..()
	if(fancy_open)
		if(length(contents) == 1)
			to_chat(user, "There is one [icon_type] left.")
		else
			to_chat(user, "There are [contents.len <= 0 ? "no" : "[contents.len]"] [icon_type]s left.")

/obj/item/storage/fancy/attack_self(mob/user)
	fancy_open = !fancy_open
	update_icon()
	. = ..()

/obj/item/storage/fancy/Exited()
	. = ..()
	fancy_open = TRUE
	update_icon()

/obj/item/storage/fancy/Entered()
	. = ..()
	fancy_open = TRUE
	update_icon()

/*
 * Donut Box
 */

/obj/item/storage/fancy/donut_box
	icon = 'icons/obj/food/containers.dmi'
	icon_state = "donutbox6"
	icon_type = "donut"
	name = "donut box"
	spawn_type = /obj/item/reagent_containers/food/snacks/donut
	fancy_open = TRUE

/obj/item/storage/fancy/donut_box/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 6
	STR.can_hold = typecacheof(list(/obj/item/reagent_containers/food/snacks/donut))

/*
 * Egg Box
 */

/obj/item/storage/fancy/egg_box
	icon = 'icons/obj/food/containers.dmi'
	item_state = "eggbox"
	icon_state = "eggbox"
	icon_type = "egg"
	lefthand_file = 'icons/mob/inhands/misc/food_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/misc/food_righthand.dmi'
	name = "egg box"
	desc = "A carton for containing eggs."
	spawn_type = /obj/item/reagent_containers/food/snacks/egg

/obj/item/storage/fancy/egg_box/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 12
	STR.can_hold = typecacheof(list(/obj/item/reagent_containers/food/snacks/egg))

/*
 * Candle Box
 */

/obj/item/storage/fancy/candle_box
	name = "candle pack"
	desc = "A pack of red candles."
	icon = 'icons/obj/candle.dmi'
	icon_state = "candlebox5"
	icon_type = "candle"
	item_state = "candlebox5"
	throwforce = 2
	slot_flags = ITEM_SLOT_BELT
	spawn_type = /obj/item/candle
	fancy_open = TRUE

/obj/item/storage/fancy/candle_box/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 5

/obj/item/storage/fancy/candle_box/attack_self(mob_user)
	return

////////////
//CIG PACK//
////////////
/obj/item/storage/fancy/cigarettes
	name = "\improper Old Soviet Cigarettes packet"
	desc = "An old cigarette packet which is indescribably old."
	icon = 'icons/obj/cigarettes.dmi'
	icon_state = "cig"
	item_state = "cigpacket"
	w_class = WEIGHT_CLASS_TINY
	throwforce = 0
	slot_flags = ITEM_SLOT_BELT
	icon_type = "cigarette"
	spawn_type = /obj/item/clothing/mask/cigarette/soviet_cigarette

/obj/item/storage/fancy/cigarettes/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 6
	STR.can_hold = typecacheof(list(/obj/item/clothing/mask/cigarette, /obj/item/lighter))

/obj/item/storage/fancy/cigarettes/examine(mob/user)
	..()
	to_chat(user, "<span class='notice'>Alt-click to extract contents.</span>")

/obj/item/storage/fancy/cigarettes/AltClick(mob/living/carbon/user)
	if(!istype(user) || !user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		return
	var/obj/item/clothing/mask/cigarette/W = locate(/obj/item/clothing/mask/cigarette) in contents
	if(W && contents.len > 0)
		SEND_SIGNAL(src, COMSIG_TRY_STORAGE_TAKE, W, user)
		user.put_in_hands(W)
		contents -= W
		to_chat(user, "<span class='notice'>You take \a [W] out of the pack.</span>")
	else
		to_chat(user, "<span class='notice'>There are no [icon_type]s left in the pack.</span>")

/obj/item/storage/fancy/cigarettes/update_icon()
	if(fancy_open || !contents.len)
		cut_overlays()
		if(!contents.len)
			icon_state = "[initial(icon_state)]_empty"
		else
			icon_state = initial(icon_state)
			add_overlay("[icon_state]_open")
			var/cig_position = 1
			for(var/C in contents)
				var/mutable_appearance/inserted_overlay = mutable_appearance(icon)

				if(istype(C, /obj/item/lighter/greyscale))
					inserted_overlay.icon_state = "lighter_in"
				else if(istype(C, /obj/item/lighter))
					inserted_overlay.icon_state = "zippo_in"
				else
					inserted_overlay.icon_state = "cigarette"

				inserted_overlay.icon_state = "[inserted_overlay.icon_state]_[cig_position]"
				add_overlay(inserted_overlay)
				cig_position++
	else
		cut_overlays()

/obj/item/storage/fancy/cigarettes/attack(mob/living/carbon/M as mob, mob/living/carbon/user as mob)
	if(!ismob(M))
		return
	var/obj/item/clothing/mask/cigarette/cig = locate(/obj/item/clothing/mask/cigarette) in contents
	if(cig)
		if(M == user && contents.len > 0 && !user.wear_mask)
			var/obj/item/clothing/mask/cigarette/W = cig
			SEND_SIGNAL(src, COMSIG_TRY_STORAGE_TAKE, W, M)
			M.equip_to_slot_if_possible(W, SLOT_WEAR_MASK)
			contents -= W
			to_chat(user, "<span class='notice'>You take \a [W] out of the pack.</span>")
		else
			..()
	else
		to_chat(user, "<span class='notice'>There are no [icon_type]s left in the pack.</span>")

/obj/item/storage/fancy/cigarettes/dromedaryco
	name = "\improper DromedaryCo packet"
	desc = "A packet of six imported DromedaryCo cancer sticks. A label on the packaging reads, \"Wouldn't a slow death make a change?\""
	icon_state = "dromedary"
	spawn_type = /obj/item/clothing/mask/cigarette/dromedary

/obj/item/storage/fancy/cigarettes/cigpack_belomorkanal
	name = "\improper Belomorkanal packet"
	desc = "An exceedingly ancient pack of cigarettes. Seems to smoke just fine!"
	icon_state = "belomorkanal"
	spawn_type = /obj/item/clothing/mask/cigarette/belomorkanal

/obj/item/storage/fancy/cigarettes/cigpack_newports
	name = "\improper Newports packet"
	desc = "An pack of cigarettes imported from the west. Seems to smoke just fine!"
	icon_state = "newports"
	spawn_type = /obj/item/clothing/mask/cigarette/newports

/obj/item/storage/fancy/cigarettes/cigpack_luckystrikesg
	name = "\improper Lucky Strikes Green packet"
	desc = "An pack of cigarettes imported from the west. Seems to smoke just fine! This one has special ingredients."
	icon_state = "luckystrikesg"
	spawn_type = /obj/item/clothing/mask/cigarette/luckystrikesg

/obj/item/storage/fancy/cigarettes/cigpack_marlboro
	name = "\improper Marlboro packet"
	desc = "Smoked by the robust. Come to where the flavor is. Come to Marlboro country."
	icon_state = "marlboro"
	spawn_type = /obj/item/clothing/mask/cigarette/marlboro

/obj/item/storage/fancy/cigarettes/cigpack_marlborogold
	name = "\improper Marlboro Gold packet"
	desc = "Smoked by the truly robust. Come to where the flavor is. Come to Marlboro country. This ones got some gold in it!"
	icon_state = "marlborog"
	spawn_type = /obj/item/clothing/mask/cigarette/marlborogold

/obj/item/storage/fancy/cigarettes/cigpack_java
	name = "\improper Java packet"
	desc = "The pack is a white and red with the brand name in the middle. It seems quite old and smells stale."
	icon_state = "java"
	spawn_type = /obj/item/clothing/mask/cigarette/java

/obj/item/storage/fancy/cigarettes/cigpack_luckystrikes
	name = "\improper Lucky Strikes packet"
	desc = "The pack is a white and red with the brand name in the middle. It seems quite stale and smells old."
	icon_state = "luckystrikes"
	spawn_type = /obj/item/clothing/mask/cigarette/luckystrikes

/obj/item/storage/fancy/cigarettes/cigpack_syndicate
	name = "cigarette packet"
	desc = "An obscure brand of cigarettes."
	icon_state = "syndie"
	spawn_type = /obj/item/clothing/mask/cigarette/syndicate

/obj/item/storage/fancy/cigarettes/cigpack_midori
	name = "\improper Midori Tabako packet"
	desc = "You can't understand the runes, but the packet smells funny."
	icon_state = "midori"
	spawn_type = /obj/item/clothing/mask/cigarette/rollie/nicotine

/obj/item/storage/fancy/cigarettes/cigpack_shadyjims
	name = "\improper Shady Jim's Super Slims packet"
	desc = "Is your weight slowing you down? Having trouble running away from mutants and anamolies? Can't stop stuffing your mouth? Smoke Shady Jim's Super Slims and watch all that fat burn away. Guaranteed results!"
	icon_state = "shadyjim"
	spawn_type = /obj/item/clothing/mask/cigarette/shadyjims

/obj/item/storage/fancy/cigarettes/cigpack_laika
	name = "\improper Laika cigarette packet"
	desc = "An old box of Laika brand cigarettes. The pack features the space dog Laika on the front of the pack, as well as the Sputnik 2, the Hammer and sickle which is placed on the rocket she was in."
	icon_state = "laika"
	spawn_type = /obj/item/clothing/mask/cigarette/laika

/obj/item/storage/fancy/cigarettes/cigpack_xeno
	name = "\improper Xeno Filtered packet"
	desc = "Loaded with 100% pure slime. And also nicotine."
	icon_state = "slime"
	spawn_type = /obj/item/clothing/mask/cigarette/xeno

/obj/item/storage/fancy/cigarettes/cigpack_cannabis
	name = "\improper Freedom Brothers' Special packet"
	desc = "A label on the packaging reads, \"Endorsed by Pavel, Nikolay and Konstantin.\""
	icon_state = "midori"
	spawn_type = /obj/item/clothing/mask/cigarette/rollie/cannabis

/obj/item/storage/fancy/cigarettes/cigpack_mindbreaker
	name = "\improper Leary's Delight packet"
	desc = "Banned in over 36 galaxies."
	icon_state = "shadyjim"
	spawn_type = /obj/item/clothing/mask/cigarette/rollie/mindbreaker

/obj/item/storage/fancy/rollingpapers
	name = "rolling paper pack"
	desc = "A pack of rolling papers."
	w_class = WEIGHT_CLASS_TINY
	icon = 'icons/obj/cigarettes.dmi'
	icon_state = "cig_paper_pack"
	icon_type = "rolling paper"
	spawn_type = /obj/item/rollingpaper

/obj/item/storage/fancy/rollingpapers/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 10
	STR.can_hold = typecacheof(list(/obj/item/rollingpaper))

/obj/item/storage/fancy/rollingpapers/update_icon()
	cut_overlays()
	if(!contents.len)
		add_overlay("[icon_state]_empty")

/////////////
//CIGAR BOX//
/////////////

/obj/item/storage/fancy/cigarettes/cigars
	name = "\improper premium cigar case"
	desc = "A case of premium cigars. Very expensive."
	icon = 'icons/obj/cigarettes.dmi'
	icon_state = "cigarcase"
	w_class = WEIGHT_CLASS_NORMAL
	icon_type = "premium cigar"
	spawn_type = /obj/item/clothing/mask/cigarette/cigar

/obj/item/storage/fancy/cigarettes/cigars/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 5
	STR.can_hold = typecacheof(list(/obj/item/clothing/mask/cigarette/cigar))

/obj/item/storage/fancy/cigarettes/cigars/update_icon()
	cut_overlays()
	if(fancy_open)
		icon_state = "[initial(icon_state)]_open"

		var/cigar_position = 1 //generate sprites for cigars in the box
		for(var/obj/item/clothing/mask/cigarette/cigar/smokes in contents)
			var/mutable_appearance/cigar_overlay = mutable_appearance(icon, "[smokes.icon_off]_[cigar_position]")
			add_overlay(cigar_overlay)
			cigar_position++

	else
		icon_state = "[initial(icon_state)]"

/obj/item/storage/fancy/cigarettes/cigars/cohiba
	name = "\improper Cohiba Robusto cigar case"
	desc = "A case of imported Cohiba cigars, renowned for their strong flavor."
	icon_state = "cohibacase"
	spawn_type = /obj/item/clothing/mask/cigarette/cigar/cohiba

/obj/item/storage/fancy/cigarettes/cigars/havana
	name = "\improper premium Havanian cigar case"
	desc = "A case of classy Havanian cigars."
	icon_state = "cohibacase"
	spawn_type = /obj/item/clothing/mask/cigarette/cigar/havana

/obj/item/storage/fancy/cigarettes/cigpack/maxim
	name = "\improper Ancient Soviet cigarette packet"
	desc = "An absolutely decrepid box of ancient cigarettes."
	icon_state = "cig"

/*
 * Heart Shaped Box w/ Chocolates
 */

/obj/item/storage/fancy/heart_box
	name = "heart-shaped box"
	desc = "A heart-shaped box for holding tiny chocolates."
	icon = 'icons/obj/food/containers.dmi'
	item_state = "chocolatebox"
	icon_state = "chocolatebox"
	icon_type = "chocolate"
	lefthand_file = 'icons/mob/inhands/misc/food_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/misc/food_righthand.dmi'
	spawn_type = /obj/item/reagent_containers/food/snacks/tinychocolate

/obj/item/storage/fancy/heart_box/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 8
	STR.can_hold = typecacheof(list(/obj/item/reagent_containers/food/snacks/tinychocolate))
