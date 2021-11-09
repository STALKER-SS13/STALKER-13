/obj/structure/table/stalker
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/table/stalker)
	pass_flags = LETPASSTHROW

/obj/structure/table/stalker/wood
	desc = "A simple table."
	icon = 'stalker/icons/structure/stol_stalker.dmi'
	icon_state = "stol"
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/table/stalker/wood)

/obj/structure/table/stalker/wood/bar
	desc = "A homemade bar counter."
	icon = 'stalker/icons/structure/stol_stalker_bar.dmi'
	icon_state = "bar"
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/table/stalker/wood/bar)

/obj/structure/table/stalker/wood/bar100rentgen
	desc = "A quality bar counter."
	icon = 'stalker/icons/structure/bartables.dmi'
	icon_state = "table"
	climbable = FALSE
	smooth = SMOOTH_FALSE

/*
/obj/structure/table/stalker/wood/bar100rentgen/Crossed(atom/movable/AM)
	if(isliving(AM))
		// No climbing on the bar please
		var/mob/living/M = AM
		//var/throwtarget = get_edge_target_turf(src, 4)
		M.Paralyze(100)
		//M.throw_at(throwtarget, 1, 1,src)
		to_chat(M, "<span class='notice'>You shouldn't climb this dummy!</span>")
	else
		. = ..()
*/

/obj/structure/stalker/okno
	name = "Window"
	desc = "An old wooden window."
	icon = 'stalker/icons/decor2.dmi'
	pass_flags = LETPASSTHROW
	var/proj_pass_rate = 40
	density = 0
	opacity = 0
	var/unpassable = 0

/obj/structure/stalker/okno/window1
	icon_state = "okno1"

/obj/structure/stalker/okno/window2
	icon_state = "okno2"

/obj/structure/stalker/okno/window3
	icon_state = "okno3"

/obj/structure/stalker/okno/window4
	icon_state = "okno4"

/obj/structure/stalker/okno/CanPass(atom/movable/mover, turf/target, height=0)//So bullets will fly over and stuff.
	if(height==0)
		return 1
	if(istype(mover, /obj/item/projectile))
		if(!anchored)
			return 1
		var/obj/item/projectile/proj = mover
		if(proj.firer && Adjacent(proj.firer))
			return 1
		if(prob(proj_pass_rate))
			return 1
		return 0
	else
		return 0
