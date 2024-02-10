/obj/machinery/campfire
	name = "Campfire"
	desc = "A barrel with a couple of logs inside it. If you light it, you can heal by sitting near it."
	icon = 'stalker/icons/bochka.dmi'
	icon_state = "campfire0"
	anchored = 1
	var/firecolor = "#FFAA33"
	var/sound_playing = 0
	var/cooldown = 5 					//In seconds
	var/incooldown = 0
	var/active = 0
	var/list/mob/living/carbon/campers = list()
	var/do_after_check = 0
	var/last_campfire_played = 0
	var/datum/looping_sound/campfire/soundloop

/obj/machinery/campfire/Initialize()
	. = ..()
	soundloop = new(list(src), active)

/obj/machinery/campfire/New()
	..()
	//set_light(4, 1, firecolor)
	//spawn(10)
	//	set_light(0, 1, firecolor)
	spawn(10)
		GLOB.machines -= src

/obj/machinery/campfire/Destroy()
	/*for (var/client/C in campers)
		C << sound(null, channel = AMBIENT_CAMPFIRE_CHANNEL)
		C.mob.ambient_campfire = null
		campers -= C*/
	QDEL_NULL(soundloop)
	GLOB.machines -= src
	..()

obj/machinery/campfire/barrel
	name = "barrel"
	icon = 'stalker/icons/bochka.dmi'
	icon_state = "barrel0"
	density = 1


/obj/machinery/campfire/attack_hand(mob/user)
	..()
	if(!active || do_after_check)
		return

	user.visible_message("<span class='notice'>[user] started extinguishing the fire...</span>", "<span class='notice'>You started extinguishing the fire...</span>")
	do_after_check = 1

	if(!do_after(user, 10, 1, src))
		do_after_check = 0
		return

	do_after_check = 0

	user.visible_message("<span class='green'>[user] extinguished the fire.</span>", "<span class='green'>You extinguished the fire.</span>")
	desc = initial(desc)

	active = !active
	update_icon()
	set_light(0)

	soundloop.stop()

	GLOB.machines -= src

/obj/machinery/campfire/update_icon()
	icon_state = "campfire[active]"
	return

/obj/machinery/campfire/barrel/update_icon()
	icon_state = "barrel[active]"
	return

/obj/machinery/campfire/proc/RefreshSound()
	for(var/mob/M in view(5, src))
		if(!M || !M.client)
			continue

		if(!(M.client in campers))
			campers += M.client

	for (var/client/C in campers)
		if(!C)
			campers -= C
			continue

		if(istype(C.mob, /mob/living/carbon/human) && C.mob.buckled)
			var/mob/living/carbon/human/H = C.mob
			H.adjustStaminaLoss(-10)
			H.adjustCloneLoss(-0.5)
			H.adjustBruteLoss(-0.5)
			H.adjustFireLoss(-0.5)
			H.adjustToxLoss(-0.5)
			H.adjustPsyLoss(-2)

obj/machinery/campfire/process()
	if(!active)
		GLOB.machines -= src
		return
	src.RefreshSound()

/obj/machinery/campfire/attackby(obj/item/I, mob/user, params)
	if(I)
		if(istype(I, /obj/item/match))
			var/obj/item/match/M = I
			if(M.lit == 1 && !active)
				active = !active
				usr.visible_message("[usr] lit a fire.", "<span class='notice'>You lit a fire.</span>")
				update_icon()
				soundloop.start()
				desc = "That's a campfire, a good servant, but terrible boss. Sit on a log close to the campfire to heal your wounds slowly."
				set_light(4, 1, firecolor)
				spawn(10)
					set_light(0, 1, firecolor)
					set_light(4, 1, firecolor)
				GLOB.machines |= src
			else
				if(M.lit == 0 && active)
					M.fire_act()
			return

		if(istype(I, /obj/item/lighter))
			var/obj/item/lighter/L = I
			if(L.lit == 1 && !active)
				active = !active
				usr.visible_message("[usr] lit a fire.", "<span class='notice'>You lit a fire.</span>")
				update_icon()
				soundloop.start()
				desc = "That's a campfire, a good servant, but terrible boss. Sit on a log close to the campfire to heal your wounds slowly."
				set_light(4, 1, firecolor)
				spawn(10)
					set_light(0, 1, firecolor)
					set_light(4, 1, firecolor)
				GLOB.machines |= src
			return

		if(active)
			I.fire_act()
			return

