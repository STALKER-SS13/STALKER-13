/mob/living/carbon/proc/update_top_overlay()
	if(src.loc && istype(src.loc, /turf/open/stalker/floor/water))
		remove_overlay(BODY_FRONT_LAYER)
		var/icon/I
		if(lying != 0)
			I = turn(icon('stalker/icons/water.dmi', "human_overlay_turned"), - lying)
		else
			I = icon('stalker/icons/water.dmi', "human_overlay")

		overlays_standing[BODY_FRONT_LAYER] = mutable_appearance(I, "", -BODY_FRONT_LAYER)
		apply_overlay(BODY_FRONT_LAYER)
	else
		remove_overlay(BODY_FRONT_LAYER)
/*
	if(overlays_standing[BODY_FRONT_LAYER])

		overlays -= overlays_standing[BODY_BEHIND_LAYER]
		overlays_standing[BODY_FRONT_LAYER] = null

	if(src.loc && istype(src.loc, /turf/open/stalker/floor/water))

		var/image/standing //= image('stalker/icons/water.dmi', "water_overlay")
		var/icon/I
		if(lying != 0)
			I = turn(icon('stalker/icons/water.dmi', "water_overlay_turned"), - lying)
		else
			I = icon('stalker/icons/water.dmi', "water_overlay")

		var/icon/mask
		mask = getIconMask(src)
		mask.MapColors(1,1,1, 1,1,1, 1,1,1, 1,1,1)
		mask.Blend(I, ICON_MULTIPLY)

		standing = image(mask, "")
		standing.blend_mode = BLEND_OVERLAY
		overlays_standing[BODY_FRONT_LAYER] = standing
		overlays += standing

	return
*/ //fuck - Valtos

/obj/structure/flora/stalker
	name = "bulrush"
	icon = 'stalker/icons/fallout/flora.dmi'

/obj/structure/flora/stalker/smallbush
	icon_state = "tall_grass_8"
	layer = 4.01
	anchored = 1
	opacity = 1

/obj/structure/flora/stalker/bush/Initialize()
	..()
	icon_state = "tall_grass_[rand(1,8)]"

/obj/structure/flora/stalker/bush
	icon_state = "very_tall_grass_8"
	layer = 4.01
	anchored = 1
	opacity = 1

/obj/structure/flora/stalker/bush/Initialize()
	..()
	icon_state = "very_tall_grass_[rand(5,8)]"

/turf/closed/wall/stalker
	canSmoothWith = list(
	/turf/closed/wall/stalker/beton,
	/turf/closed/wall/stalker/bricks,
	/turf/closed/wall/stalker/bricks_yellow,
	/turf/closed/wall/stalker/bricks_white,
	/turf/closed/wall/stalker/beton_agro,
	/turf/closed/wall/stalker/brick,
	/turf/closed/wall/stalker/brickdark,
	/turf/closed/wall/stalker/superstore,
	/turf/closed/wall/stalker/store,
	/turf/closed/wall/stalker/log
	///obj/structure/stalker/okno/whitebrick/odin,
	///obj/structure/stalker/okno/whitebrick/dva,
	///obj/structure/stalker/okno/whitebrick/tri,
	///obj/structure/stalker/okno/whitebrick/double1,
	///obj/structure/stalker/okno/whitebrick/double2,
	///obj/structure/stalker/okno/redbrick/odin,
	///obj/structure/stalker/okno/redbrick/dva,
	///obj/structure/stalker/okno/redbrick/double1,
	///obj/structure/stalker/okno/redbrick/double2)
	)
	smooth = SMOOTH_TRUE
	var/resistance_flags = INDESTRUCTIBLE
	flags_1 = CHECK_RICOCHET_1

/turf/closed/wall/stalker/Initialize()
	..()
	if(locate(/obj/structure/stalker/okno) in contents)
		opacity = 0
		windowed = 1

/turf/closed/wall/stalker/beton
	name = "wall"
	desc = "A huge chunk of wall"
	icon = 'stalker/icons/walls/beton_tg.dmi'
	icon_state = "beton"
	canSmoothWith = list(
	/turf/closed/wall/stalker/beton,
	/turf/closed/wall/stalker/beton_agro
	)

/turf/closed/wall/stalker/bricks
	name = "wall"
	desc = "A huge chunk of wall"
	icon = 'stalker/icons/walls/bricks_tg.dmi'
	icon_state = "bricks"
	canSmoothWith = list(
	/turf/closed/wall/stalker/bricks
	)

/turf/closed/wall/stalker/bricks_yellow
	name = "wall"
	desc = "A huge chunk of wall"
	icon = 'stalker/icons/walls/bricks_tg_yellow.dmi'
	icon_state = "bricks"
	canSmoothWith = list(
	/turf/closed/wall/stalker/bricks_yellow
	)

/turf/closed/wall/stalker/bricks_white
	name = "wall"
	desc = "A huge chunk of wall"
	icon = 'stalker/icons/walls/bricks_tg_white.dmi'
	icon_state = "bricks"
	canSmoothWith = list(
	/turf/closed/wall/stalker/bricks_white
	)

/turf/closed/wall/stalker/beton_agro
	name = "wall"
	desc = "A huge chunk of wall"
	icon = 'stalker/icons/walls/beton_w_tg.dmi'
	icon_state = "beton"
	canSmoothWith = list(
	/turf/closed/wall/stalker/beton_agro
	)

/turf/closed/wall/shuttle
	name = "wall"
	icon = 'icons/turf/shuttle.dmi'
	icon_state = "wall1"
	smooth = SMOOTH_FALSE
	flags_1 = CHECK_RICOCHET_1

/turf/closed/wall/stalker/ship
	name = "hull"
	desc = "A huge chunk of hull"
	icon = 'stalker/icons/barzha.dmi'
	icon_state = "hull"
	canSmoothWith = list(/turf/closed/wall/stalker/ship)

/turf/closed/wall/stalker/log
	name = "log wall"
	desc = "A log wall"
	icon = 'icons/turf/walls/log.dmi'
	icon_state = "log"
	canSmoothWith = list(/turf/closed/wall/stalker/log)

/turf/closed/wall/stalker/store
	name = "concrete wall"
	desc = "A concrete wall"
	icon = 'icons/turf/walls/store.dmi'
	icon_state = "store"
	canSmoothWith = list(/turf/closed/wall/stalker/store)

/turf/closed/wall/stalker/superstore
	name = "concrete wall"
	desc = "A concrete wall"
	icon = 'icons/turf/walls/superstore.dmi'
	icon_state = "supermart"
	canSmoothWith = list(/turf/closed/wall/stalker/superstore)

/turf/closed/wall/stalker/brickdark
	name = "brick wall"
	desc = "A dark brick wall"
	icon = 'icons/turf/walls/brick_walldark.dmi'
	icon_state = "brickwall"
	canSmoothWith = list(/turf/closed/wall/stalker/brickdark)

/turf/closed/wall/stalker/brick
	name = "brick wall"
	desc = "A brick wall"
	icon = 'icons/turf/walls/brick_wall.dmi'
	icon_state = "brickwall"
	canSmoothWith = list(/turf/closed/wall/stalker/brick)

/obj/structure/chair/brevno
	name = "log"
	desc = "A simple log."
	icon = 'stalker/icons/decor.dmi'
	icon_state = "log1"

/obj/structure/chair/brevno/log2
	icon_state = "log2"

/obj/effect/landmark/latejoin/bandit
	name = "JoinLateBandit"

/obj/effect/landmark/latejoin/banditboss
	name = "JoinLateBandit Boss"

/obj/effect/landmark/latejoin/bandit_barman
	name = "JoinLateBandit Barman"

/obj/effect/landmark/latejoin/army
	name = "JoinLateMilitary Soldier"

/obj/effect/landmark/latejoin/army_spetsnaz
	name = "JoinLateMilitary Spetsnaz"

/obj/effect/landmark/latejoin/militarycommander
	name = "JoinLateMilitary Commander"

/obj/effect/landmark/latejoin/trader
	name = "JoinLateTrader"

/obj/effect/landmark/latejoin/barman
	name = "JoinLateBarman"

/obj/effect/landmark/latejoin/oldstalker
	name = "JoinLateOld Stalker"

/obj/effect/landmark/latejoin/mercenary
	name = "JoinLateMercenary"

/obj/effect/landmark/latejoin/duty
	name = "JoinLateDuty"

/obj/effect/landmark/latejoin/barman2
	name = "JoinLateBarman2"

/obj/effect/landmark/latejoin/duty_lieutenant
	name = "JoinLateDuty Lieutenant"

/obj/effect/landmark/latejoin/mercenary_sql
	name = "JoinLateMercenary Commander"

/obj/effect/landmark/latejoin/freedom
	name = "JoinLateFreedom Soldier"

/obj/effect/landmark/latejoin/freedom_lieutenant
	name = "JoinLateFreedom Lieutenant"

/obj/effect/landmark/latejoin/monolith
	name = "JoinLateMonolith"

/obj/effect/landmark/latejoin/monolith_hegumen
	name = "JoinLateMonolith Preacher"

/obj/effect/landmark/latejoin/ecologist
	name = "JoinLateEcologist"

/obj/effect/landmark/latejoin/ecologistguard
	name = "JoinLateEcologist Guard"

/obj/effect/landmark/latejoin/chief_ecologist
	name = "JoinLateChief Ecologist"

/obj/effect/landmark/latejoin/clearsky
	name = "JoinLateClear Sky Soldier"

/obj/effect/landmark/latejoin/clearsky_leader
	name = "JoinLateClear Sky Leader"

/obj/effect/landmark/latejoin/renegade
	name = "JoinLateRenegade"

/turf/open/floor/plasteel/stairs/stalker
	icon = 'stalker/icons/floor.dmi'
	icon_state = "ladder"

/turf/open/floor/plasteel/stairs/left/stalker
	icon = 'stalker/icons/floor.dmi'
	icon_state = "ladder_left"

/turf/open/floor/plasteel/stairs/medium/stalker
	icon = 'stalker/icons/floor.dmi'
	icon_state = "ladder_middle"

/turf/open/floor/plasteel/stairs/right/stalker
	icon = 'stalker/icons/floor.dmi'
	icon_state = "ladder_right"

/*
var/list/sidorRooms = list()

/obj/sidor_enter
	var/roomtype = "sidor"
	invisibility = INVISIBILITY_LIGHTING
	icon = 'stalker/icons/areas.dmi'
	icon_state = "transfer_zone"
	anchored = TRUE

/obj/sidor_enter/Crossed(atom/movable/A)
	if(istype(A, /mob/living/carbon/human))
		SendToEmptyRoom(A)
	A.previous_teleport_dest = src.loc

/obj/sidor_enter/proc/SendToEmptyRoom(atom/movable/A)
	var/obj/sidor_exit/Room = GetEmptyRoom(roomtype)
	if(Room)
		A.loc = Room.loc
		Room.occupant = A
		sleep(5)

/obj/sidor_enter/proc/GetEmptyRoom(roomtype)
	for(var/obj/sidor_exit/R in sidorRooms)
		if(R.roomtype != roomtype)
			continue
		if(!R.occupant || R.occupant.stat == DEAD)
			return R
	return null

/obj/sidor_exit
	var/roomtype = "sidor"
	var/mob/living/occupant = null
	invisibility = INVISIBILITY_LIGHTING
	icon = 'stalker/icons/areas.dmi'
	icon_state = "transfer_zone"
	anchored = TRUE

/obj/sidor_exit/New()
	sidorRooms.Add(src)

/obj/sidor_exit/Crossed(atom/movable/A)
	if(istype(A, /mob/living/carbon/human))
		A.loc = A.previous_teleport_dest
		occupant = null
*/