/obj/item/repair_kit
	name = "repair kit"
	var/uses = 1
	var/min_durability = 50
	var/add_durability = 30

/obj/item/repair_kit/clothing
	name = "armor repair kit"
	desc = "A repair kit for armored suits and helmets. Designed for non-critical repairs (condition from 25% to 100%)."
	icon = 'stalker/icons/device_new.dmi'
	icon_state = "repair_kit_clothing_25"
	uses = 1
	min_durability = 25
	add_durability = 40

/obj/item/clothing/suit/attackby(obj/item/A, mob/user, params)
	..()
	if(istype(A, /obj/item/repair_kit/clothing))
		var/obj/item/repair_kit/RK = A
		if(src.loc == user)
			user << "<span class='warning'>Place [src] on the floor or table.</span>"
			return 0

		if((src.durability/initial(durability)*100) < RK.min_durability)
			user << "<span class='warning'>[src] durability is too low. You can't repair it with kit of this type.</span>"
			return 0

		playsound(user.loc, 'stalker/sound/inv_repair_spray_oil.ogg', 50, 1)
		user.visible_message("<span class='notice'>[user] starts repairing [src]...</span>", "<span class='notice'>You start repairing [src]...</span>")
		if(!do_after(user, 50, target = src))
			playsound(src.loc, null, 50, 0)

		durability = (((durability / initial(durability) * 100) + RK.add_durability) / 100) * initial(durability)
		RK.uses -=1
		user.visible_message("<span class='notice'>[user] has finished repairing [src].</span>", "<span class='notice'>You repair [src].")

		if(RK.uses <= 0)
			qdel(RK)

		if(durability > initial(durability))
			durability = initial(durability)
		return 1

	/*if(internal_slot)

		if(!internal_slot.can_be_inserted(A, 0 , user))
			return 0

		internal_slot.handle_item_insertion(A, 0 , user)
		return 1*/ //NEED REWORK


/obj/item/clothing/head/attackby(obj/item/A, mob/user, params)
	..()
	if(istype(A, /obj/item/repair_kit/clothing))
		var/obj/item/repair_kit/RK = A

		if(src.loc == user)
			user << "<span class='warning'>Place [src] on the floor or a table.</span>"
			return 0

		if((src.durability/initial(durability)*100) < RK.min_durability)
			user << "<span class='warning'>[src]'s durability is too low. You can't repair it with kit of this type.</span>"
			return 0

		playsound(user.loc, 'stalker/sound/inv_repair_spray_oil.ogg', 50, 1)
		user.visible_message("<span class='notice'>[user] starts repairing [src]...</span>", "<span class='notice'>You start repairing [src]...</span>")
		if(!do_after(user, 50, target = src))
			playsound(src.loc, null, 50, 0)

		durability = (((durability / initial(durability) * 100) + RK.add_durability) / 100) * initial(durability)
		RK.uses -=1
		user.visible_message("<span class='notice'>[user] repairs [src].</span>", "<span class='notice'>You repair [src].")

		if(RK.uses <= 0)
			qdel(RK)

		if(durability > initial(durability))
			durability = initial(durability)
		return 1

/obj/item/repair_kit/gun
	name = "gun cleaning kit"
	desc = "A cleaning kit for firearms. Designed to restore functionality to damaged firearms (condition from 25% to 100%)."
	icon = 'stalker/icons/device_new.dmi'
	icon_state = "repair_kit_gun_25"
	uses = 1
	min_durability = 25
	add_durability = 40

/obj/item/gun/attackby(obj/item/A, mob/user, params)
	..()
	if(istype(A, /obj/item/repair_kit/gun))
		var/obj/item/repair_kit/RK = A
		if(src.loc == user)
			user << "<span class='warning'>Place [src] on the floor or table.</span>"
			return 0

		if((src.durability/initial(durability)*100) < RK.min_durability)
			user << "<span class='warning'>[src]'s durability is too low. You can't repair it with kit of this type.</span>"
			return 0

		playsound(user.loc, 'stalker/sound/inv_repair_spray_oil.ogg', 50, 1)
		user.visible_message("<span class='notice'>[user] starts cleaning [src]...</span>", "<span class='notice'>You start cleaning [src]...</span>")

		if(!do_after(user, 50, target = src))
			playsound(user.loc, null, 50, 0)

		durability = (((durability / initial(durability) * 100) + RK.add_durability) / 100) * initial(durability)
		RK.uses -=1
		user.visible_message("<span class='notice'>[user] cleans [src].</span>", "<span class='notice'>You clean [src].")

		if(RK.uses <= 0)
			qdel(RK)

		if(durability > initial(durability))
			durability = initial(durability)
		return 1

/obj/item/repair_kit/examine(mob/user)
	..()
	user << "<span class='notice'>Uses left - [uses]</span>"
	user << "<span class='notice'>Restores - [add_durability]%</span>"
