/obj/item/grenade/preprime(mob/user, delayoverride, msg = TRUE, volume = 60)
	var/area/B = get_area(user.loc)
	if(B.safezone)
		to_chat(user, "<span class='warning'>You try to rip the pin off the grenade, but it's giving you some resistance. </span> ")
		return 0
	..()

/obj/item/grenade/syndieminibomb/concussion/stalker/frag/prime()
	update_mob()
	var/turf/startloc = get_turf(src)
	for(var/T in RANGE_TURFS(12, startloc) - startloc)
		if(prob(3))
			var/obj/item/projectile/P = new /obj/item/projectile/bullet/fragment(startloc)
			P.preparePixelProjectile(T, startloc)
			P.firer = src
			P.fire(T)
	explosion(src.loc,0,0,1,flame_range = 3)
	qdel(src)

/obj/item/grenade/syndieminibomb/concussion/stalker/frag
	name = "frag grenade"
	desc = "Fire in the hole."
	icon_state = "frag"
