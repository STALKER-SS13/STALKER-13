/*
/obj/effect/landmark/mobspawner
	name = "mob spawner"
	icon_state = "xeno_spawn"

/obj/effect/landmark/mobspawner/Initialize(mapload)
	..()
	GLOB.mobspawner += src
	return INITIALIZE_HINT_NORMAL

/obj/effect/landmark/mobspawner/monolith
	name = "mob spawner (monolith)"
	icon_state = "xeno_spawn"

/obj/effect/landmark/mobspawner/monolith/Initialize(mapload)
	..()
	GLOB.mobspawner_monolith += src
	return INITIALIZE_HINT_NORMAL

/obj/effect/landmark/mobspawner/flesh_spawner
	name = "flesh"

/obj/effect/landmark/mobspawner/dog_spawner
	name = "dog"

/obj/effect/landmark/mobspawner/boar_spawner
	name = "boar"

/obj/effect/landmark/mobspawner/snork_spawner
	name = "snork"

/obj/effect/landmark/mobspawner/bloodsucker_spawner
	name = "bloodsucker"

/obj/effect/landmark/mobspawner/monolith/bloodsucker_spawner
	name = "bloodsucker_m"

/obj/effect/landmark/mobspawner/controller_spawner
	name = "controller"

/obj/effect/landmark/mobspawner/monolith/controller_spawner
	name = "controller_m"

/obj/effect/landmark/mobspawner/rat_spawner
	name = "rat"

/obj/effect/landmark/mobspawner/zombiesimp_spawner
	name = "zombiesimp"
*/