#define NORTH_EDGING	"north"
#define SOUTH_EDGING	"south"
#define EAST_EDGING		"east"
#define WEST_EDGING		"west"

/turf/open/floor/plating/asteroid/snow/lite
	name = "snow"
	desc = "Looks cold."
	icon = 'icons/turf/snow.dmi'
	baseturfs = /turf/open/floor/plating/asteroid/snow
	icon_state = "snow"
	icon_plating = "snow"
	temperature = 293
	slowdown = 4
	environment_type = "snow"
	dug = 1

/obj/structure/grille/stalker
	desc = "Strong iron fence."
	name = "fence"
	icon = 'stalker/icons/structure.dmi'
	icon_state = "fence1"
	density = 1
	anchored = 1
	flags_1 = CONDUCT_1
	layer = CLOSED_DOOR_LAYER
	max_integrity = 10000000

/obj/structure/grille/stalker/ex_act(severity, target)
	return

/obj/structure/grille/stalker/attack_paw(mob/user)
	return

/obj/structure/grille/stalker/attack_hand(mob/living/user)
	user.do_attack_animation(src)
	return

/obj/structure/grille/stalker/attack_animal(var/mob/living/simple_animal/M)
	M.do_attack_animation(src)
	return

/obj/structure/grille/stalker/bullet_act(var/obj/item/projectile/Proj)
	if(!Proj)
		return
	..()
	if((Proj.damage_type != STAMINA)) //Grilles can't be exhausted to death
		return
	return

/obj/structure/grille/stalker/attackby(obj/item/weapon/W, mob/user, params)
	return

/obj/structure/grille/hitby(AM as mob|obj)
	..()
	return

/obj/structure/grille/stalker/wood
	desc = "Old wooden fence."
	icon_state = "zabor_horizontal1"
	density = 1
	opacity = 0

/obj/structure/grille/stalker/beton
	icon = 'stalker/icons/beton_zabor.dmi'
	desc = "Too strong."
	icon_state = "1"
	density = 1
	opacity = 0

/obj/structure/grille/stalker/beton/green
	icon = 'stalker/icons/green_zabor.dmi'
	desc = "Green fence. Better than gray."
	icon_state = "1"

obj/structure/grille/stalker/beton/CanPass(atom/movable/mover, turf/target, height=0)
	if(height==0) return 1
	if(istype(mover) && (mover.pass_flags == PASSGRILLE))
		return 1
	else
		if(istype(mover, /obj/item/projectile) && density)
			return prob(0)
		else
			return !density

/turf/open/stalker
	name = "stalker turf"
	icon = 'stalker/icons/grass.dmi'
	planetary_atmos = TRUE
	footstep = FOOTSTEP_TILE
	barefootstep = FOOTSTEP_TILE
	//light_range = 3

/turf/open/stalker/Initialize()
	. = ..()
	flags_1 |= GLOBAL_LIGHT_TURF_1

/turf/open/stalker/floor
	name = "Grass"
	icon = 'stalker/icons/grass.dmi'
	icon_state = "grass1"
	layer = TURF_LAYER
	//overlay_priority = 0
	footstep = FOOTSTEP_TILE

/turf/open/stalker/floor/digable
	footstep = FOOTSTEP_GRASS
	barefootstep = FOOTSTEP_GRASS

/turf/open/stalker/floor/digable/grass
	icon = 'stalker/icons/zemlya.dmi'
	icon_state = "grass1"

/turf/open/stalker/floor/digable/grass/Initialize()
	..()
	if (prob(30))
		new /obj/structure/flora/ausbushes/fullgrass(get_turf(src))
		if (prob(30))
			new /obj/structure/flora/ausbushes/fullgrass(get_turf(src))
	if (prob(15))
		new /obj/structure/flora/ausbushes/grassybush(get_turf(src))
	if (prob(15))
		new /obj/structure/flora/ausbushes/sunnybush(get_turf(src))

/turf/open/stalker/floor/digable/grass/dump
	icon = 'stalker/icons/zemlya.dmi'
	icon_state = "dump_grass1"
/*
/turf/open/stalker/floor/digable/grass/dump/New()
	icon_state = "dump_grass[rand(1, 3)]"
*/
/turf/open/stalker/floor/digable/gryaz_rocky
	icon_state = "gryaz_rocky1"

/turf/open/stalker/floor/digable/gryaz_rocky/New()
	icon_state = "gryaz_rocky[rand(1, 3)]"

/turf/open/stalker/floor/sidor
	name = "floor"
	icon = 'stalker/icons/beton.dmi'
	icon_state = "sidorpol"

/obj/machinery/door/unpowered/stalker
	icon = 'stalker/icons/beton.dmi'

/turf/open/stalker/floor/asphalt
	name = "road"
	icon = 'stalker/icons/Prishtina/asphalt.dmi'
	icon_state = "road1"
	layer = MID_TURF_LAYER
	//overlay_priority = 1

var/global/list/AsphaltEdgeCache

/turf/open/stalker/floor/asphalt/New()
	icon_state = "road[rand(1, 3)]"
	if(!AsphaltEdgeCache || !AsphaltEdgeCache.len)
		AsphaltEdgeCache = list()
		AsphaltEdgeCache.len = 10
		AsphaltEdgeCache[NORTH] = image('stalker/icons/Prishtina/asphalt.dmi', "roadn", layer = HIGH_TURF_LAYER)
		AsphaltEdgeCache[SOUTH] = image('stalker/icons/Prishtina/asphalt.dmi', "roads", layer = HIGH_TURF_LAYER)
		AsphaltEdgeCache[EAST] = image('stalker/icons/Prishtina/asphalt.dmi', "roade", layer = HIGH_TURF_LAYER)
		AsphaltEdgeCache[WEST] = image('stalker/icons/Prishtina/asphalt.dmi', "roadw", layer = HIGH_TURF_LAYER)

	spawn(1)
		var/turf/T
		for(var/i = 0, i <= 3, i++)
			if(!get_step(src, 2**i))
				continue
			if(layer > get_step(src, 2**i).layer)
				T = get_step(src, 2**i)
				if(T)
					T.overlays += AsphaltEdgeCache[2**i]
	return

/turf/open/stalker/floor/tropa
	name = "road"
	icon = 'stalker/icons/tropa.dmi'
	icon_state = "tropa"
	layer = ABOVE_MID_TURF_LAYER
	//overlay_priority = 2
	footstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND

var/global/list/TropaEdgeCache

/turf/open/stalker/floor/tropa/New()
	if(!TropaEdgeCache || !TropaEdgeCache.len)
		TropaEdgeCache = list()
		TropaEdgeCache.len = 10
		TropaEdgeCache[NORTH] = image('stalker/icons/tropa.dmi', "tropa_side_n", layer = HIGH_TURF_LAYER)
		TropaEdgeCache[SOUTH] = image('stalker/icons/tropa.dmi', "tropa_side_s", layer = HIGH_TURF_LAYER)
		TropaEdgeCache[EAST] = image('stalker/icons/tropa.dmi', "tropa_side_e", layer = HIGH_TURF_LAYER)
		TropaEdgeCache[WEST] = image('stalker/icons/tropa.dmi', "tropa_side_w", layer = HIGH_TURF_LAYER)

	spawn(1)
		var/turf/T
		for(var/i = 0, i <= 3, i++)
			if(!get_step(src, 2**i))
				continue
			if(layer > get_step(src, 2**i).layer)
				T = get_step(src, 2**i)
				if(T)
					T.overlays += TropaEdgeCache[2**i]
	return

/turf/open/stalker/floor/road
	name = "road"
	icon = 'stalker/icons/building_road.dmi'
	icon_state = "road2"
	layer = MID_TURF_LAYER
	//overlay_priority = 3

var/global/list/WhiteRoadCache

/turf/open/stalker/floor/road/New()
	switch(rand(1, 100))
		if(1 to 65)
			icon_state = "road2"
		if(66 to 85)
			icon_state = "road1"
		if(86 to 90)
			icon_state = "road3"
		if(91 to 95)
			icon_state = "road4"
		if(96 to 100)
			icon_state = "road5"

	if(!WhiteRoadCache || !WhiteRoadCache.len)
		WhiteRoadCache = list()
		WhiteRoadCache.len = 10
		WhiteRoadCache[NORTH] = image('stalker/icons/warning_stripes.dmi', "road_b5", layer = HIGH_TURF_LAYER)
		WhiteRoadCache[SOUTH] = image('stalker/icons/warning_stripes.dmi', "road_b6", layer = HIGH_TURF_LAYER)
		WhiteRoadCache[EAST] = image('stalker/icons/warning_stripes.dmi', "road_b8", layer = HIGH_TURF_LAYER)
		WhiteRoadCache[WEST] = image('stalker/icons/warning_stripes.dmi', "road_b7", layer = HIGH_TURF_LAYER)

	spawn(1)
		for(var/i = 0, i <= 3, i++)
			if(!get_step(src, 2**i) || (!istype(get_step(src, 2**i), src.type) && (src.layer > get_step(src, 2**i).layer)))
				src.overlays += WhiteRoadCache[2**i]

	return

/turf/open/stalker/floor/gryaz
	name = "dirt"
	icon = 'stalker/icons/zemlya.dmi'
	icon_state = "gryaz1"
	layer = ABOVE_ABOVE_MID_TURF_LAYER
	//overlay_priority = 4
	footstep = FOOTSTEP_GRASS
	barefootstep = FOOTSTEP_GRASS

var/global/list/GryazEdgeCache

/turf/open/stalker/floor/gryaz/New()
	icon_state = "gryaz[rand(1, 3)]"
	if(!GryazEdgeCache || !GryazEdgeCache.len)
		GryazEdgeCache = list()
		GryazEdgeCache.len = 10
		GryazEdgeCache[NORTH] = image('stalker/icons/zemlya.dmi', "gryaz_side_n", layer = HIGH_TURF_LAYER)
		GryazEdgeCache[SOUTH] = image('stalker/icons/zemlya.dmi', "gryaz_side_s", layer = HIGH_TURF_LAYER)
		GryazEdgeCache[EAST] = image('stalker/icons/zemlya.dmi', "gryaz_side_e", layer = HIGH_TURF_LAYER)
		GryazEdgeCache[WEST] = image('stalker/icons/zemlya.dmi', "gryaz_side_w", layer = HIGH_TURF_LAYER)

	spawn(1)
		var/turf/T
		for(var/i = 0, i <= 3, i++)
			if(!get_step(src, 2**i))
				continue
			if(layer > get_step(src, 2**i).layer)
				T = get_step(src, 2**i)
				if(T)
					T.overlays += GryazEdgeCache[2**i]
	return

/turf/open/stalker/floor/gryaz/gryaz2
	icon_state = "gryaz2"

/turf/open/stalker/floor/gryaz/gryaz3
	icon_state = "gryaz3"

/obj/structure/stalker/rails
	name = "rails"
	icon = 'stalker/icons/rails.dmi'
	icon_state = "sp"
	layer = MID_TURF_LAYER
	anchored = 1
	density = 0
	opacity = 0

/turf/open/stalker/floor/plasteel
	name = "floor"
	icon = 'stalker/icons/floor.dmi'

/turf/open/stalker/floor/plasteel/plita
	icon_state = "plita1"

/turf/open/stalker/floor/plasteel/plita/New()
	icon_state = "plita[rand(1, 4)]"

/turf/open/stalker/floor/plasteel/plitochka
	icon_state = "plitka1"

/turf/open/stalker/floor/plasteel/plitochka/New()
	icon_state = "plitka[rand(1, 7)]"

/turf/open/stalker/floor/plasteel/plitka
	icon_state = "plitka_old1"

/turf/open/stalker/floor/plasteel/plitka/New()
	icon_state = "plitka_old[rand(1, 8)]"

/turf/open/stalker/floor/water
	name = "water"
	icon = 'stalker/icons/water.dmi'
	smooth = SMOOTH_MORE|SMOOTH_BORDER
	var/smooth_icon = 'stalker/icons/smoothwater.dmi'
	icon_state = "water"
	layer = HIGH_TURF_LAYER
	var/busy = 0
	slowdown = 2
	footstep = FOOTSTEP_WATER
	barefootstep = FOOTSTEP_WATER
	clawfootstep = FOOTSTEP_WATER
	heavyfootstep = FOOTSTEP_WATER
	tiled_dirt = FALSE

/turf/open/stalker/floor/water/Initialize()
	if(smooth)
		var/matrix/M = new
		M.Translate(-7, -7)
		transform = M
		icon = smooth_icon
	. = ..()

/turf/open/stalker/floor/water/attack_hand(mob/living/user)
	if(!user || !istype(user))
		return
	if(!iscarbon(user))
		return
	if(!Adjacent(user))
		return

	if(busy)
		user << "<span class='notice'>Someone's already washing here.</span>"
		return
	var/selected_area = parse_zone(user.zone_selected)
	var/washing_face = 0
	if(selected_area in list("head", "mouth", "eyes"))
		washing_face = 1
	user.visible_message("<span class='notice'>[user] starts washing their [washing_face ? "face" : "hands"]...</span>", \
						"<span class='notice'>You start washing your [washing_face ? "face" : "hands"]...</span>")
	busy = 1

	if(!do_after(user, 40, target = src))
		busy = 0
		return

	busy = 0

	user.visible_message("<span class='notice'>[user] washes their [washing_face ? "face" : "hands"] using [src].</span>", \
						"<span class='notice'>You wash your [washing_face ? "face" : "hands"] using [src].</span>")
	if(washing_face)
		if(ishuman(user))
			var/mob/living/carbon/human/H = user
			H.lip_style = null //Washes off lipstick
			H.lip_color = initial(H.lip_color)
			H.wash_cream()
			H.regenerate_icons()
			H.adjust_hygiene(10)
		user.drowsyness = max(user.drowsyness - rand(2,3), 0) //Washing your face wakes you up if you're falling asleep
	else
		SEND_SIGNAL(user, COMSIG_COMPONENT_CLEAN_ACT, CLEAN_STRENGTH_BLOOD)
		if(ishuman(user))
			var/mob/living/carbon/human/dirtyboy = user
			dirtyboy.adjust_hygiene(10)


/turf/open/stalker/floor/water/attackby(obj/item/O, mob/user, params)
	if(busy)
		user << "<span class='warning'>Someone's already washing here!</span>"
		return

	if(istype(O, /obj/item/reagent_containers))
		var/obj/item/reagent_containers/RG = O
		if(RG.flags_1 & OPENCONTAINER)
			RG.reagents.add_reagent("water", min(RG.volume - RG.reagents.total_volume, RG.amount_per_transfer_from_this))
			user << "<span class='notice'>You fill [RG] from [src].</span>"
			return

	/*if(istype(O, /obj/item/melee/baton))
		var/obj/item/weapon/melee/baton/B = O
		if(B.bcell)
			if(B.bcell.charge > 0 && B.status == 1)
				flick("baton_active", src)
				var/stunforce = B.stunforce
				user.Stun(stunforce)
				user.Weaken(stunforce)
				user.stuttering = stunforce
				B.deductcharge(B.hitcost)
				user.visible_message("<span class='warning'>[user] shocks themself while attempting to wash the active [B.name]!</span>", \
									"<span class='userdanger'>You unwisely attempt to wash [B] while it's still on.</span>")
				playsound(src, "sparks", 50, 1)
				return
	*/ //Какие нахуй батоны на зоне? - valtos
	if(istype(O, /obj/item/mop))
		O.reagents.add_reagent("water", 5)
		user << "<span class='notice'>You wet [O] in [src].</span>"
		playsound(loc, 'sound/effects/slosh.ogg', 25, 1)

	var/obj/item/I = O
	if(!I || !istype(I))
		return
	if(I.flags_1 & ABSTRACT) //Abstract items like grabs won't wash. No-drop items will though because it's still technically an item in your hand.
		return

	user << "<span class='notice'>You start washing [I]...</span>"
	busy = 1
	if(!do_after(user, 40, target = src))
		busy = 0
		return
	busy = 0
	//O.clean_blood()
	user.visible_message("<span class='notice'>[user] washes [I] using [src].</span>", \
						"<span class='notice'>You wash [I] using [src].</span>")

/turf/open/stalker/floor/water/Entered(atom/movable/A)
	..()
	if(istype(A, /mob/living/carbon))
		var/mob/living/carbon/L = A
		L.update_top_overlay()
		if(istype(A, /mob/living/carbon/human))
			var/mob/living/carbon/human/H = A
			/*if(H.shoes)
				H.shoes.clean_blood()*/
			if(H.fire_stacks)
				H.fire_stacks = 0
				H.ExtinguishMob()

/turf/open/stalker/floor/water/Exited(atom/movable/A)
	..()
	if(istype(A, /mob/living/carbon))
		var/mob/living/carbon/L = A
		L.update_top_overlay()
		flick("water_splash_movement", src)
/*
var/global/list/WaterEdgeCache

/turf/open/stalker/floor/water/New()
	if(!WaterEdgeCache || !WaterEdgeCache.len)
		WaterEdgeCache = list()
		WaterEdgeCache.len = 10
		WaterEdgeCache[NORTH] = image('stalker/icons/water.dmi', "water_north", layer = 2)
		WaterEdgeCache[SOUTH] = image('stalker/icons/water.dmi', "water_south", layer = 2)
		WaterEdgeCache[EAST] = image('stalker/icons/water.dmi', "water_east", layer = 2)
		WaterEdgeCache[WEST] = image('stalker/icons/water.dmi', "water_west", layer = 2)

	spawn(1)
		var/turf/T
		for(var/i = 0, i <= 3, i++)
			if(!get_step(src, 2**i))
				continue
			if(overlay_priority > get_step(src, 2**i).overlay_priority)
				T = get_step(src, 2**i)
				if(T)
					T.overlays += WaterEdgeCache[2**i]
	return
*/
/turf/open/stalker/floor/wood
	icon = 'stalker/icons/floor.dmi'
	name = "floor"
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD
	clawfootstep = FOOTSTEP_WOOD_CLAW

/turf/open/stalker/floor/wood/brown
	icon_state = "wooden_floor"

/turf/open/stalker/floor/wood/grey
	icon_state = "wooden_floor2"

/turf/open/stalker/floor/wood/black
	icon_state = "wooden_floor3"

/turf/open/stalker/floor/wood/oldgor
	icon_state = "wood1"

/turf/open/stalker/floor/wood/oldvert
	icon_state = "woodd1"

/turf/open/stalker/floor/agroprom/beton
	name = "floor"
	icon = 'stalker/icons/pol_agroprom.dmi'
	icon_state = "beton1"

/turf/open/stalker/floor/agroprom/beton/New()
	icon_state = "beton[rand(1, 4)]"

/turf/open/stalker/floor/agroprom/gryaz
	name = "dirt"
	icon = 'stalker/icons/pol_agroprom.dmi'
	icon_state = "gryaz1"
	footstep = FOOTSTEP_GRASS
	barefootstep = FOOTSTEP_GRASS

/turf/open/stalker/floor/agroprom/gryaz/New()
	icon_state = "gryaz[rand(1, 11)]"

/turf/open/stalker/floor/lattice
	name = "lattice"
	icon = 'stalker/icons/floor.dmi'
	icon_state = "lattice_new"
	overlay_priority = HIGH_TURF_LAYER
/*
/turf/open/stalker/floor/lattice/New()
	icon_state = "lattice[rand(1, 4)]"
*/

/turf/open/stalker/floor/plasteel/plita/orange
	icon_state = "plita_orange"
