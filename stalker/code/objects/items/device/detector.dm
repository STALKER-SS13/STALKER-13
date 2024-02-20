/obj/item/detector
	name = "detector"
	desc = "The cheapest and least effective detector."
	icon = 'stalker/icons/device_new.dmi'
	icon_state = "echo_off"
	var/icon_state_inactive = "echo_off"
	var/icon_state_active = "echo_on"
	var/icon_state_null = "echo_null"
	item_state = "electronic"
	w_class = 1
	var/atom/target = null
	var/min_dist = 8
	var/on = 0
	var/level_s = 0
	var/list/arts = list()
	var/mob/living/carbon/human/user = null
	var/cooldown = 0
	var/kostil = 0
	var/timer_detector = 0
	var/list/fakearts = list()

/obj/item/detector/blink
	name = "echo"
	desc = "This dated anomalous activity detector produces an alarm signal when anomalous particles enter a special chamber as you approach an anomaly. It can also register the presence of artifacts and measure the distance to the nearest one. The distance is indicated by the frequency of the sound the detector emits. To switch to artifact search mode, open the device's front cover. Due to its simple design, Echo can only be used to locate the most common artifacts."
	icon_state_inactive = "echo_off"
	icon_state_active = "echo_on"
	icon_state_null = "echo_null"
	level_s = 1

/obj/item/detector/bear
	name = "bear"
	desc = "The last generation of anomalous activity detector can be used to locate anomalous formations and has a color diode panel, which not only indicates the direction of artifacts, but also measures the distance to them. To switch to artifact search mode, open the device's front cover. Unfortunately the device is programmed with a somewhat outdated list of detectable artifacts."
	icon_state = "bear_off"
	icon_state_inactive = "bear_off"
	icon_state_active = "bear_on"
	icon_state_null = "bear_null"
	level_s = 3

/obj/item/detector/veles
	name = "veles"
	desc = "A next generation scientific detection scanner. Thanks to three modernized detection chambers, the position of artifacts is shown on a special display screen. When closed, the device registers only radiation and anomalies. To switch to artifact search mode, open the front LED display. When in search mode, the detector is capable of locating all artifacts known to science."
	icon_state = "veles_off"
	icon_state_inactive = "veles_off"
	icon_state_active = "veles_on"
	icon_state_null = "veles_null"
	level_s = 4

/*/obj/item/detector/svarog
	name = "svarog"
	desc = "A prototype of an expanded functionality anomalous frequency scanner. This device comes with a program used to identify static areas of anomalous activity stored in its database, while retaining the ability to locate artifacts. The position of anomalous areas and artifacts is displayed on a special screen. The artifact search mode, which can be activated by opening the front LED display, has been modified to detect anomalous formations currently unknown to science."
	icon_state = "veles_off"
	icon_state_inactive = "veles_off"
	icon_state_active = "veles_on"
	icon_state_null = "veles_null"
	level_s = 4
	*/
	// NOTE : Placeholder code for svarog. Needs sprites to be implemented! - Sechs

/obj/item/detector/Initialize()
	. = ..()
	arts = list()
	fakearts = list()

/obj/item/detector/attack_self(mob/user)
	if(!on)
		if(world.time > cooldown + 5)
			playsound(user, "stalker/sound/detector/detector_draw.ogg", 50, 0)
			on = 1
			icon_state = icon_state_null
			timer_detector = 0
			if(!kostil)
				scan()
	else
		playsound(user, "stalker/sound/detector/detector_draw.ogg", 50, 0)
		on = 0
		cooldown = world.time
		stop()

/obj/item/detector/proc/scan()
	kostil = 1

	if(!on)
		kostil = 0
		return

	if(src.loc && isliving(src.loc))
		user = src.loc

	if(!user || !user.client)
		kostil = 0
		on = 0
		stop()
		return

	if(user.get_item_for_held_index(1) != src && user.get_item_for_held_index(2) != src)
		kostil = 0
		on = 0
		stop()
		return

	var/old_dist = min_dist
	min_dist = 8
	target = null

	for(var/obj/item/artifact/a in range(7, user))
		if(level_s >= a.level_s)
			arts += a
			if(get_dist(user, a) < min_dist)
				min_dist = get_dist(user, a)
				target = a

	if(min_dist == 0)
		min_dist = 1

	for (var/obj/item/artifact/a as anything in arts)
		if(a in range(1, user))
			if(isnull(a.phantom) && a.invisibility != 0)
				user.handle_artifact(a)
		else
			if(!isnull(a.phantom))
				arts -= a
				qdel(a.phantom)
				a.phantom = null

	if(old_dist == min_dist)
		timer_detector++
	else
		timer_detector = 0

	sleep(2 * min_dist)

	if(!on)
		kostil = 0
		stop()
		return

	if(!target)
		kostil = 0
		//scan()
		return

	dir = get_dir(user, target)
	playsound(user, "stalker/sound/detector/contact_1.ogg", 50, 0)
	icon_state = icon_state_active

	sleep(1)

	if(!on)
		kostil = 0
		stop()
		return

	icon_state = icon_state_null

	kostil = 0
	scan()
	return

/obj/item/detector/dropped(mob/user)
	. = ..()
	on = 0
	stop()

/obj/item/detector/proc/stop()
	kostil = 0
	timer_detector = 0
	target = null
	icon_state = icon_state_inactive
	src.user = null
	SSobj.processing.Add(src)

	for (var/obj/item/artifact/a in arts)
		if(a.invisibility != 0)
			if(!isnull(a.phantom))
				qdel(a.phantom)
				a.phantom = null
		arts -= a

/mob/living/carbon/proc/handle_artifact(var/obj/item/artifact/a)
	//a.phantom = new /obj/effect/fakeart(a, src)
	a.phantom = new /obj/effect/fakeart(a, src)
	src << a.phantom.currentimage

/obj/effect/fakeart
	icon = null
	icon_state = null
	name = ""
	desc = ""
	density = 0
	anchored = 1
	opacity = 0
	layer = 3.5
	plane = GAME_PLANE
	var/image/currentimage = null
	var/image/up
	var/obj/item/artifact/my_target = null

/obj/effect/fakeart/New(obj/item/artifact/a)
	. = ..()
	name = a.name
	desc = a.desc
	loc = a.loc
	my_target = a
	up = image(a)
	currentimage = new /image(up,src)
/*
/obj/effect/fakeart/Destroy()
	..()
	return QDEL_HINT_PUTINPOOL
*/
/obj/effect/fakeart/attack_hand(mob/living/carbon/user)
	if(user.stat || user.restrained() || !Adjacent(user) || user.IsParalyzed() || user.IsKnockdown() || user.IsStun())
		return

	if(user.get_active_held_item() != null) // Let me know if this has any problems -Yota
		return

	user.UnarmedAttack(my_target)
	my_target.invisibility = 0

	if(!istype(user, /mob/living/carbon/human))
		qdel(src)
		return

	var/mob/living/carbon/human/H = user

	if(!H.wear_id)
		qdel(src)
		return

	if(!istype(H.wear_id, /obj/item/stalker_pda))
		qdel(src)
		return

	var/datum/data/record/sk = find_record("sid", H.sid, GLOB.data_core.stalkers)
	//var/obj/item/stalker_pda/KPK = H.wear_id

	if(!sk)
		qdel(src)
		return

	sk.fields["rating"] += (2 ** my_target.level_s) * 50

	qdel(src)
	return
