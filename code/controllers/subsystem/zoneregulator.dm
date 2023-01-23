/*
GLOBAL_LIST_EMPTY(mobspawner)
GLOBAL_LIST_EMPTY(mobspawner_monolith)

//indev

#define L_RELAX     0
#define L_NORMAL    1
#define L_HARD      2
#define L_INSANE    3
#define L_EXTREME   4
#define L_ABSURD    5

SUBSYSTEM_DEF(zona)
	name = "Zona Regulation"
	priority = FIRE_PRIORITY_SERVER_MAINT
	runlevels = RUNLEVEL_GAME
	priority = 1

	var/level_of_pain
	var/cd = 10
	var/z_state = L_RELAX

/datum/controller/subsystem/zona/stat_entry()
	..("LoP:[level_of_pain]")

/datum/controller/subsystem/zona/fire()
	if (!isnull(level_of_pain))
		if (world.time >= cd)
			SpawnMobs()

	level_of_pain = CountMobs()

	switch(GLOB.clients.len)
		if(0 to 10)
			z_state = L_RELAX
		if(11 to 20)
			z_state = L_NORMAL
		if(21 to 30)
			z_state = L_HARD
		if(31 to 40)
			z_state = L_INSANE
		if(41 to 50)
			z_state = L_EXTREME
		if(51 to INFINITY)
			z_state = L_ABSURD

	switch(z_state)
		if (L_RELAX)
			cd = world.time + level_of_pain - 1000
		if (L_NORMAL)
			cd = world.time + level_of_pain - 2000
		if (L_HARD)
			cd = world.time + level_of_pain - 3000
		if (L_INSANE)
			cd = world.time + level_of_pain - 4000
		if (L_EXTREME)
			cd = world.time + level_of_pain - 5000
		else
			cd = world.time + level_of_pain - 1000

/datum/controller/subsystem/zona/proc/CountMobs()
	var/total_mobs = 0
	for (var/i in GLOB.mob_living_list)
		total_mobs += 1
	return total_mobs

/datum/controller/subsystem/zona/proc/SpawnMobs()
	for (var/obj/structure/spawner/stalker in GLOB.mobspawner)
		switch (S.name)
			if ("flesh")
				new /mob/living/simple_animal/hostile/mutant/flesh(S.loc)
			if ("dog")
				new /mob/living/simple_animal/hostile/mutant/dog(S.loc)
			if ("boar")
				new /mob/living/simple_animal/hostile/mutant/boar(S.loc)
			if ("snork")
				new /mob/living/simple_animal/hostile/mutant/snork(S.loc)
			if ("bloodsucker")
				new /mob/living/simple_animal/hostile/mutant/bloodsucker(S.loc)
			if ("rat")
				new /mob/living/simple_animal/hostile/mutant/rat(S.loc)
			if ("zombiesimp")
				new /mob/living/simple_animal/hostile/mutant/zombiesimp(S.loc)
				new /mob/living/simple_animal/hostile/mutant/zombiesimp/ranged(S.loc)
	for (var/obj/effect/landmark/mobspawner/monolith/S in GLOB.mobspawner_monolith)
		switch (S.name)
			if ("bloodsucker_m")
				var/mob/M = new /mob/living/simple_animal/hostile/mutant/bloodsucker(S.loc)
				M.faction = list("monolith_forces")
			if ("controller_m")
				var/mob/M = new /mob/living/simple_animal/hostile/mutant/controller(S.loc)
				M.faction = list("monolith_forces")


#undef L_RELAX
#undef L_NORMAL
#undef L_HARD
#undef L_INSANE
#undef L_EXTREME
#undef L_ABSURD
*/