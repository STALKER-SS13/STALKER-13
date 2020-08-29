/obj/effect/forcefield/lazyvip
	name = "VIP room"
	desc = "Достойное место для достойных людей."
	icon = 'icons/obj/watercloset.dmi'
	icon_state = "closed"
	timeleft = 0
	density = 1
	var/static/list/vip_users = list()

/obj/effect/forcefield/lazyvip/CanPass(atom/movable/mover, turf/target)
	if(mover in vip_users)
		return TRUE

	if(!isliving(mover)) //No stowaways
		return FALSE

	return FALSE

/obj/effect/forcefield/lazyvip/Bumped(atom/movable/AM)
	if(!isliving(AM))
		return ..()

	for(var/obj/item/I in AM.GetAllContents())
		if(istype(I, /obj/item/vipcard))
			say("<span class='robot'>О, вы же [AM]! Проходите скорее!</span>")
			vip_users += AM
			qdel(I)

/obj/item/vipcard
	name = "VIP card"
	desc = "Достойная вещь достойного человека для доступа в достойное помещение."
	icon = 'icons/obj/card.dmi'
	icon_state = "data_1"