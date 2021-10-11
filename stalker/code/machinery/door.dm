/obj/machinery/door/airlock/stalker
	icon = 'stalker/icons/door_sidor.dmi'
	overlays_file = 'stalker/icons/door_sidor.dmi'
	autoclose = 50

/obj/machinery/door/airlock/stalker/New()
	..()

/obj/machinery/door/airlock/stalker/sidor
	name = "door"
	icon_state = "closed"

/obj/machinery/door/poddoor/sidor
	name = "door"
	desc = "A heavy duty blast door that opens mechanically."
	icon = 'stalker/icons/door_sidor.dmi'
	icon_state = "closed"
	id = null
	auto_close = 50

/obj/machinery/door/poddoor/sidor/skadovsk
	icon = 'stalker/icons/door_sidor2.dmi'
	icon_state = "closed"
	auto_close = 50

/obj/machinery/door/poddoor/sidor/skadovsk/special
	icon = 'stalker/icons/door_sidor2.dmi'
	icon_state = "closed"
	autoclose = 50
/*
/obj/machinery/door/poddoor/sidor/skadovsk/special/open(ignorepower = 0)
	if(!SSticker.round_start_time || world.time >= SSticker.round_start_time + SKADOVSK_LOCKDOWN_TIMER)
		return ..()
	else
		say("The gateway will only open after [round((SSticker.round_start_time + SKADOVSK_LOCKDOWN_TIMER - world.time)/300) + 1] min. due to external psi radiation.")
		return 0
*/