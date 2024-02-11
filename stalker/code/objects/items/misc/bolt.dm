/obj/item/stalker/bolt
	name = "bolt"
	desc = "Old Soviet bolt affected by corrosion."
	icon = 'stalker/icons/bolt.dmi'
	icon_state = "bolt"
	w_class = 6//from 1. >:(
	throwforce = 1//:)

/obj/item/stalker/bolt/Initialize()
	. = ..()
	QDEL_IN(src, 5 SECONDS)

/obj/item/stalker/bolts
	name = "bolts"
	desc = "A pile of bolts. Throw them into anomalies to see where the anomalies are."
	icon = 'stalker/icons/bolt.dmi'
	icon_state = "kucha"
	w_class = 6//from 2. >:(

/obj/item/stalker/bolts/attackby(obj/item/W, mob/user, params)
	if(istype(W, /obj/item/stalker/bolt))
		if(user.client && (user.client.prefs.chat_toggles & CHAT_LANGUAGE))
			user << "<span class='notice'>You place a bolt in the pile.</span>"
		else
			user << "<span class='notice'>You put the bolt in a bunch.</span>"

/obj/item/stalker/bolts/MouseDrop(atom/over_object)
	var/mob/M = usr
	if(M.restrained() || M.stat || !Adjacent(M))
		return

	if(over_object == M)
		M.put_in_hands(src)

	else if(istype(over_object, /obj/screen))
		switch(over_object.name)
			if("r_hand")
				if(!remove_item_from_storage(M))
					M.doUnEquip(src)
				M.put_in_r_hand(src)
			if("l_hand")
				if(!remove_item_from_storage(M))
					M.doUnEquip(src)
				M.put_in_l_hand(src)

	add_fingerprint(M)


/obj/item/stalker/bolts/attack_paw(mob/user)
	return attack_hand(user)


/obj/item/stalker/bolts/attack_hand(mob/user)

	user.changeNext_move(CLICK_CD_MELEE)

	if(user != src.loc)
		..()
		return

	var/obj/item/stalker/bolt/P = new /obj/item/stalker/bolt
	P.loc = user.loc
	user.put_in_hands(P)
	if(user.client && (user.client.prefs.chat_toggles & CHAT_LANGUAGE))
		user << "<span class='notice'>You take a bolt out of the pile.</span>"
	else
		user << "<span class='notice'>You pull the bolt out of the pile.</span>"

	add_fingerprint(user)

	if(iscarbon(user))
		var/mob/living/carbon/C = user
		C.throw_mode_on()

	return
