/obj/effect/forcefield/lazyvip
	name = "VIP room"
	desc = "Decent place for worthy people."
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
			say("<span class='robot'>Oh, you [AM]! Come through soon!</span>")
			vip_users += AM
			qdel(I)

/obj/item/vipcard
	name = "VIP card"
	desc = "A worthy thing for a worthy person to access a decent room."
	icon = 'icons/obj/card.dmi'
	icon_state = "data_1"