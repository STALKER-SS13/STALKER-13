/obj/structure/spawner
	name = "monster nest"
	icon = 'icons/mob/animal.dmi'
	icon_state = "hole"
	//obj_integrity = 400
	//max_integrity = 400
	move_resist = MOVE_FORCE_EXTREMELY_STRONG
	anchored = TRUE
	density = TRUE
	var/list/spawned_mobs = list()
	var/max_mobs = 5
	var/spawn_time = 300 //30 seconds default
	var/mob_types = list(/mob/living/simple_animal/hostile/carp)
	var/spawn_text = "emerges from"
	var/faction = list("hostile")
	var/spawner_type = /datum/component/spawner
	var/wander = 1
	var/del_on_death = TRUE
	var/list/hit_sounds = list('sound/weapons/genhit1.ogg', 'sound/weapons/genhit2.ogg', 'sound/weapons/genhit3.ogg')

/obj/structure/spawner/Initialize()
	. = ..()
	AddComponent(spawner_type, mob_types, spawn_time, faction, spawn_text, max_mobs)

/obj/structure/spawner/attack_animal(mob/living/simple_animal/M)
	if(faction_check(faction, M.faction, FALSE) && !M.client)
		return
	..()

/obj/structure/spawner/take_damage(damage, message)
	obj_integrity -= damage
	playsound(loc, pick(hit_sounds), 25, 1, -1)
	if(obj_integrity > 0)
		return

	//if(message)
	//	visible_message(message)
	//else

	visible_message("<span class='warning'>\The [src] collapses into itself!</span>")

	qdel(src)

/obj/structure/spawner/syndicate
	name = "warp beacon"
	icon = 'icons/obj/device.dmi'
	icon_state = "syndbeacon"
	spawn_text = "warps in from"
	mob_types = list(/mob/living/simple_animal/hostile/syndicate/ranged)
	faction = list(ROLE_SYNDICATE)

/obj/structure/spawner/skeleton
	name = "bone pit"
	desc = "A pit full of bones, and some still seem to be moving..."
	icon_state = "hole"
	icon = 'icons/mob/nest.dmi'
	//max_integrity = 150
	max_mobs = 15
	spawn_time = 150
	mob_types = list(/mob/living/simple_animal/hostile/skeleton)
	spawn_text = "climbs out of"
	faction = list("skeleton")

/obj/structure/spawner/mining
	name = "monster den"
	desc = "A hole dug into the ground, harboring all kinds of monsters found within most caves or mining asteroids."
	icon_state = "hole"
	//max_integrity = 200
	max_mobs = 3
	icon = 'icons/mob/nest.dmi'
	spawn_text = "crawls out of"
	mob_types = list(/mob/living/simple_animal/hostile/asteroid/goldgrub, /mob/living/simple_animal/hostile/asteroid/goliath, /mob/living/simple_animal/hostile/asteroid/hivelord, /mob/living/simple_animal/hostile/asteroid/basilisk, /mob/living/simple_animal/hostile/asteroid/fugu)
	faction = list("mining")

/obj/structure/spawner/mining/goldgrub
	name = "goldgrub den"
	desc = "A den housing a nest of goldgrubs, annoying but arguably much better than anything else you'll find in a nest."
	mob_types = list(/mob/living/simple_animal/hostile/asteroid/goldgrub)

/obj/structure/spawner/mining/goliath
	name = "goliath den"
	desc = "A den housing a nest of goliaths, oh god why?"
	mob_types = list(/mob/living/simple_animal/hostile/asteroid/goliath)

/obj/structure/spawner/mining/hivelord
	name = "hivelord den"
	desc = "A den housing a nest of hivelords."
	mob_types = list(/mob/living/simple_animal/hostile/asteroid/hivelord)

/obj/structure/spawner/mining/basilisk
	name = "basilisk den"
	desc = "A den housing a nest of basilisks, bring a coat."
	mob_types = list(/mob/living/simple_animal/hostile/asteroid/basilisk)

/obj/structure/spawner/mining/wumborian
	name = "wumborian fugu den"
	desc = "A den housing a nest of wumborian fugus, how do they all even fit in there?"
	mob_types = list(/mob/living/simple_animal/hostile/asteroid/fugu)

// STALKER Variants
/*
/obj/structure/spawner/stalker/rat
	name = "rat den"
	desc = "A hole dug into the ground, harboring all kinds of monsters found within the Zone."
	icon_state = "hole"
	max_mobs = 4
	spawn_time = 900
	icon = 'icons/mob/nest.dmi'
	spawn_text = "scurries out of"
	mob_types = list(/mob/living/simple_animal/hostile/mutant/rat)
	faction = list("stalker_mutants1", "monolith_forces")

/obj/structure/spawner/stalker/rat/swarm
	name = "rat den"
	desc = "A hole dug into the ground, harboring all kinds of monsters found within the Zone."
	icon_state = "hole"
	max_mobs = 6
	spawn_time = 900
	icon = 'icons/mob/nest.dmi'
	spawn_text = "scurries out of"
	mob_types = list(/mob/living/simple_animal/hostile/mutant/rat)
	faction = list("stalker_mutants1", "monolith_forces")
*/
/obj/structure/spawner/stalker/flesh
	name = "flesh den"
	desc = "A hole dug into the ground, harboring all kinds of monsters found within the Zone."
	icon_state = "hole"
	max_mobs = 4
	spawn_time = 900
	wander = 1
	icon = 'icons/mob/nest.dmi'
	spawn_text = "crawls out of"
	mob_types = list(/mob/living/simple_animal/hostile/mutant/flesh)
	faction = list("stalker_mutants1", "monolith_forces")

/obj/structure/spawner/stalker/boar
	name = "boar den"
	desc = "A hole dug into the ground, harboring all kinds of monsters found within the Zone."
	icon_state = "hole"
	max_mobs = 3
	spawn_time = 900
	wander = 1
	icon = 'icons/mob/nest.dmi'
	spawn_text = "crawls out of"
	mob_types = list(/mob/living/simple_animal/hostile/mutant/boar)
	faction = list("stalker_mutants1", "monolith_forces")

/obj/structure/spawner/stalker/snork
	name = "snork den"
	desc = "A hole dug into the ground, harboring all kinds of monsters found within the Zone."
	icon_state = "hole"
	max_mobs = 3
	spawn_time = 900
	wander = 1
	icon = 'icons/mob/nest.dmi'
	spawn_text = "crawls out of"
	mob_types = list(/mob/living/simple_animal/hostile/mutant/snork)
	faction = list("stalker_mutants1", "monolith_forces")

/obj/structure/spawner/stalker/dog
	name = "dog den"
	desc = "A hole dug into the ground, harboring all kinds of monsters found within the Zone."
	icon_state = "hole"
	max_mobs = 4
	spawn_time = 900
	wander = 1
	icon = 'icons/mob/nest.dmi'
	spawn_text = "crawls out of"
	mob_types = list(/mob/living/simple_animal/hostile/mutant/dog)
	faction = list("stalker_mutants1", "monolith_forces")

/obj/structure/spawner/stalker/pseudo
	name = "pseudo den"
	desc = "A hole dug into the ground, harboring all kinds of monsters found within the Zone."
	icon_state = "hole"
	max_mobs = 2
	spawn_time = 900
	wander = 1
	icon = 'icons/mob/nest.dmi'
	spawn_text = "crawls out of"
	mob_types = list(/mob/living/simple_animal/hostile/mutant/pseudog)
	faction = list("stalker_mutants1", "monolith_forces")

/obj/structure/spawner/stalker/bloodsucker
	name = "bloodsucker den"
	desc = "A hole dug into the ground, harboring all kinds of monsters found within the Zone."
	icon_state = "hole"
	max_mobs = 2
	spawn_time = 900
	wander = 1
	icon = 'icons/mob/nest.dmi'
	spawn_text = "crawls out of"
	mob_types = list(/mob/living/simple_animal/hostile/mutant/bloodsucker)
	faction = list("stalker_mutants1", "monolith_forces")

/obj/structure/spawner/stalker/controller
	name = "controller den"
	desc = "A hole dug into the ground, harboring all kinds of monsters found within the Zone."
	icon_state = "hole"
	max_mobs = 1
	spawn_time = 900
	icon = 'icons/mob/nest.dmi'
	spawn_text = "crawls out of"
	mob_types = list(/mob/living/simple_animal/hostile/mutant/controller)
	faction = list("stalker_mutants1", "monolith_forces")

/obj/structure/spawner/stalker/zombiesimp
	name = "zombie den"
	desc = "A hole dug into the ground, harboring all kinds of monsters found within the Zone."
	icon_state = "hole"
	max_mobs = 5
	spawn_time = 900
	wander = 1
	icon = 'icons/mob/nest.dmi'
	spawn_text = "crawls out of"
	mob_types = list(/mob/living/simple_animal/hostile/mutant/zombiesimp,/mob/living/simple_animal/hostile/mutant/zombiesimp/ranged)
	faction = list("stalker_mutants1", "monolith_forces")

/obj/structure/spawner/stalker/allmutants
	name = "mutant den"
	desc = "A hole dug into the ground, harboring all kinds of monsters found within the Zone."
	icon_state = "hole"
	max_mobs = 4
	spawn_time = 900
	wander = 1
	icon = 'icons/mob/nest.dmi'
	spawn_text = "crawls out of"
	mob_types = list(/mob/living/simple_animal/hostile/mutant/zombiesimp,/mob/living/simple_animal/hostile/mutant/zombiesimp/ranged,/mob/living/simple_animal/hostile/mutant/rat,/mob/living/simple_animal/hostile/mutant/flesh,/mob/living/simple_animal/hostile/mutant/boar,/mob/living/simple_animal/hostile/mutant/snork,/mob/living/simple_animal/hostile/mutant/bloodsucker)
	faction = list("stalker_mutants1", "monolith_forces")
