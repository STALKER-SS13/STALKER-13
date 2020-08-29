/obj/structure/closet/grave
	name = "Grave"
	desc = ""
	icon = 'stalker/icons/Prishtina/decor.dmi'
	icon_state = "mogila"
	anchored = 1
	opened = 1
	density = 0
	pass_flags = PASSTABLE | PASSGRILLE

/*
/obj/structure/closet/grave/initialize()
	..()
	anchored = 1
	opened = 1
	density = 0

/obj/structure/closet/grave/New()
	spawn(10000) //Кулдаун очистки декалей
	qdel(src)
	..()

/obj/structure/closet/grave/attackby(obj/item/weapon/W, mob/user, params)
	if(istype(W, /obj/item/weapon/shovel))
		new /obj/structure/closet/grave(src)
		user.visible_message("<span class='notice'>[user] начал закапывать могилу...</span>", "<span class='notice'>Вы начали закапывать могилу...</span>")
		if(!do_after(user, 50, 1, src))	return
		for(var/atom/movable/AM in loc)
			if(istype(AM, /mob/living/carbon/human))
				var/mob/living/carbon/human/H = AM
				var/newkarma
				if(H != user)
					if(H.stat != DEAD)
						newkarma = GetKarma(user.ckey) - 40
					else
						newkarma = GetKarma(user.ckey) + 20
					StalkerKarma.SetKarma(user.ckey, newkarma)
					user.karma = newkarma
		close()
		user.visible_message("<span class='notice'>[user] закопал могилу.</span>", "<span class='notice'>Вы закопали могилу.</span>")

/obj/structure/closet/grave/attack_hand(mob/user)
	return

/obj/structure/closet/grave/close()
	..()
	qdel(src)

/obj/structure/closet/grave/can_open()
	return 0

/obj/structure/closet/grave/insert(atom/movable/AM)

	if(contents.len >= storage_capacity)
		return -1

	if(istype(AM, /mob/living))
		var/mob/living/L = AM
		if(L.buckled || L.buckled_mob || L.mob_size > max_mob_size) //buckled mobs, mobs with another mob attached, and mobs too big for the container don't get inside closets.
			return 0
		if(L.mob_size > MOB_SIZE_TINY) //decently sized mobs take more space than objects.
			var/mobs_stored = 0
			for(var/mob/living/M in contents)
				mobs_stored++
				if(mobs_stored >= mob_storage_capacity)
					return 0
		if(L.client)
			L.client.perspective = EYE_PERSPECTIVE
			L.client.eye = src
			var/mob/new_player/NP = new()
			NP.ckey = L.ckey
		else if(L.last_ckey)
			var/mob/new_player/NP = new()
			NP.ckey = L.last_ckey
		L.stop_pulling()
	else if(!istype(AM, /obj/item) && !istype(AM, /obj/effect/dummy/chameleon))
		return 0
	else if(AM.density || AM.anchored)
		return 0
	else if(AM.flags & NODROP)
		return 0
	if(AM.pulledby)
		AM.pulledby.stop_pulling()
	qdel(AM)
	return 1
*/