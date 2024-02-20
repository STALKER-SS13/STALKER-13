/obj/item/grenade/preprime(mob/user, delayoverride, msg = TRUE, volume = 60)
	var/area/B = get_area(user.loc)
	if(B.safezone)
		to_chat(user, "<span class='warning'> I rethink my choices, its not wise to pull a grenade here. </span> ")
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
	name = "RGD-5 grenade"
	desc = "An offensive hand grenade with a small radius of splinter damage. Unpin and throw quickly, has a fuse for couple of seconds."
	icon_state = "rgd5grenade"

//smoke
/obj/item/grenade/smokebomb/rgd
	name = "RGD-3"
	desc = "A grenade designed to dump smoke into an area. Use with caution. Unpin and throw quickly, has a fuse for couple of seconds."
	icon_state = "smoke"
