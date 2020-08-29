//If human is zombiefied, his Life() proc is replaced with ZombieLife() proc
/mob/living/carbon/human
	var/atom/target
	var/ranged = 1
	var/rapid = 0
	var/casingtype		//set ONLY it and NULLIFY projectiletype, if we have projectile IN CASING
	var/move_to_delay = 12 //delay for the automated movement.
	var/list/friends = list()
	var/list/emote_taunt = list()
	var/taunt_chance = 0
	var/fearless = 1
	var/fearborder = 20
	var/ranged_cooldown = 0 //What the starting cooldown is on ranged attacks
	var/ranged_cooldown_cap = 1 //What ranged attackLoseTargets, after being used are set to, to go back on cooldown, defaults to 3 life() ticks
	var/retreat_distance = null //If our mob runs from players when they're too close, set in tile distance. By default, mobs do not retreat.
	var/minimum_distance = 0 //Minimum approach distance, so ranged mobs chase targets down, but still keep their distance set in tiles to the target, set higher to make mobs keep distance
	var/target_distance
	var/target_last_loc = null
	var/min_range_distance = 1
	var/stop_automated_movement = 0
	var/turns_since_move = 0
	var/list/speak = list()
	var/list/speak_emote = list()//	Emotes while speaking IE: Ian [emote], [text] -- Ian barks, "WOOF!". Spoken text is generated from the speak variable.
	var/list/emote_hear = list()	//Hearable emotes
	var/list/emote_see = list()		//Unlike speak_emote, the list of things in this variable only show by themselves with no spoken text. IE: Ian barks, Ian yaps
	var/robust_searching = 0 //By default, mobs have a simple searching method, set this to 1 for the more scrutinous searching (stat_attack, stat_exclusive, etc), should be disabled on most mobs
	var/vision_range = 7 //How big of an area to search for targets in, a vision of 9 attempts to find targets as soon as they walk into screen view
	var/aggro_vision_range = 7 //If a mob is aggro, we search in this radius. Defaults to 9 to keep in line with original simple mob aggro radius
	var/idle_vision_range = 5 //If a mob is just idling around, it's vision range is limited to this. Defaults to 9 to keep in line with original simple mob aggro radius
	var/search_objects = 1 //If we want to consider objects when searching around, set this to 1. If you want to search for objects while also ignoring mobs until hurt, set it to 2. To completely ignore mobs, even when attacked, set it to 3
	var/list/wanted_objects = list(/obj/item/weapon/gun/projectile) //A list of objects that will be checked against to attack, should we have search_objects enabled
	var/stat_attack =1 //Mobs with stat_attack to 1 will attempt to attack things that are unconscious, Mobs with stat_attack set to 2 will attempt to attack the dead.
	var/stat_exclusive = 0 //Mobs with this set to 1 will exclusively attack things defined by stat_attack, stat_attack 2 means they will only attack corpses
	var/attack_same = 0 //Set us to 1 to allow us to attack our own faction, or 2, to only ever attack our own faction
	var/target_dist
	var/AIStatus = AI_ON //The Status of our AI, can be set to AI_ON (On, usual processing), AI_IDLE (Will not process, but will return to AI_ON if an enemy comes near), AI_OFF (Off, Not processing ever)
	var/obj/item/weapon/gun/projectile/Zombo_Gun = null
	var/Zombo_Gun_slot = null

/mob/living/carbon/human/proc/ZombieLife()
	if(ckey || stat > CONSCIOUS || AIStatus == AI_OFF)
		walk(src, 0)
		return 0

	handle_automated_movement()
	handle_automated_action()
	handle_automated_speech()
	//handle_automated_sounds()
	handle_equipment()
	if(ranged)
		ranged_cooldown--

	return 1


/mob/living/carbon/human/proc/handle_automated_action()
	var/list/possible_targets = ListTargets() //we look around for potential targets and make it a list for later use.

	if(AICanContinue(possible_targets))
		if(!MoveToTarget(possible_targets))     //if we lose our target
			if(AIShouldSleep(possible_targets))	// we try to acquire a new one
				AIStatus = AI_IDLE				// otherwise we go idle
	return 1

/mob/living/carbon/human/proc/handle_automated_movement()
	if(!stop_automated_movement)
		if(isturf(src.loc) && !resting && !buckled && canmove)		//This is so it only moves if it's not inside a closet, gentics machine, etc.
			turns_since_move++
			if(turns_since_move >= 5)
				var/anydir = pick(cardinal)
				if(Process_Spacemove(anydir))
					for(var/obj/anomaly/A in get_step(src, anydir).contents)
						return 1
					Move(get_step(src, anydir), anydir)
					turns_since_move = 0
			return 1

/mob/living/carbon/human/proc/handle_automated_speech()
	if(rand(0,200) < 20)
		if(say_log.len)
			say(safepick(say_log))

/mob/living/carbon/human/proc/handle_equipment()
	if(!Zombo_Gun)
		if(!FindGun())
			return

		drop_l_hand()
		drop_r_hand()
		Zombo_Gun.attack_hand(src)

		if(hand)
			Zombo_Gun_slot = slot_l_hand
		else
			Zombo_Gun_slot = slot_r_hand

		return

	if(Zombo_Gun && Zombo_Gun_slot)
		if(Zombo_Gun != get_item_by_slot(Zombo_Gun_slot))
			Zombo_Gun = null
			Zombo_Gun_slot = null
			return

		if(!Zombo_Gun.magazine || !Zombo_Gun.magazine.stored_ammo.len)
			if(!ReloadGun() && !istype(target, Zombo_Gun.mag_type))
				if(Zombo_Gun_slot == slot_r_hand)
					drop_r_hand()
				else
					drop_l_hand()
				FindGun()
	return

//////////////HOSTILE MOB TARGETTING AND AGGRESSION////////////


/mob/living/carbon/human/proc/ListTargets()//Step 1, find out what we can see
	var/list/L = list()
	if(!search_objects)
		var/list/Mobs = list()
		Mobs = hearers(vision_range, src) - src //Remove self, so we don't suicide

		L += Mobs
		for(var/obj/mecha/M in mechas_list)
			if(get_dist(M, src) <= vision_range && can_see(src, M, vision_range))
				L += M
	else
		var/list/Objects = oview(vision_range, src)
		L += Objects
	return L

/mob/living/carbon/human/proc/FindTarget(var/list/possible_targets, var/HasTargetsList = 0)//Step 2, filter down possible targets to things we actually care about
	var/list/Targets = list()
	if(!HasTargetsList)
		possible_targets = ListTargets()
	for(var/atom/A in possible_targets)
		if(Found(A))//Just in case people want to override targetting
			Targets = list(A)
			break
		if(CanAttack(A))//Can we attack it?
			Targets += A
			continue
	var/Target = PickTarget(Targets)
	GiveTarget(Target)
	return Target //We now have a target

/mob/living/carbon/human/proc/Found(atom/A)//This is here as a potential override to pick a specific target if available
	return

/mob/living/carbon/human/proc/PickTarget(list/Targets)//Step 3, pick amongst the possible, attackable targets
	if(target != null)//If we already have a target, but are told to pick again, calculate the lowest distance between all possible, and pick from the lowest distance targets
		for(var/atom/A in Targets)
			target_dist = get_dist(src, target)
			var/possible_target_distance = get_dist(src, A)
			if(target_dist < possible_target_distance)
				Targets -= A
	if(!Targets.len)//We didnt find nothin!
		return
	var/chosen_target = pick(Targets)//Pick the remaining targets (if any) at random
	return chosen_target

/mob/living/carbon/human/proc/CanAttack(atom/the_target)//Can we actually attack a possible target?
	if(see_invisible < the_target.invisibility)//Target's invisible to us, forget it
		return 0
	if(search_objects < 2)
		if(istype(the_target, /obj/mecha))
			var/obj/mecha/M = the_target
			if(M.occupant)//Just so we don't attack empty mechs
				if(CanAttack(M.occupant))
					return 1
		if(isliving(the_target))
			var/mob/living/L = the_target
			var/faction_check = 0
			for(var/F in faction)
				if(F in L.faction)
					faction_check = 1
					break
			if(robust_searching)
				if(L.stat > stat_attack || L.stat != stat_attack && stat_exclusive == 1)
					return 0
				if(faction_check && !attack_same || !faction_check && attack_same == 2)
					return 0
				if(L in friends)
					return 0
			else
				if(L.stat)
					return 0
				if(faction_check && !attack_same)
					return 0
			return 1
	if(isobj(the_target))
		if(Zombo_Gun)
			if(the_target.type == Zombo_Gun.mag_type)
				return 1
		else
			for(var/t in wanted_objects)
				if(the_target.type in typesof(t))
					return 1
	return 0

/mob/living/carbon/human/proc/GiveTarget(new_target)//Step 4, give us our selected target
	target = new_target
	if(target != null)
		Aggro()
		return 1

/mob/living/carbon/human/proc/MoveToTarget(var/list/possible_targets)//Step 5, handle movement between us and our target
	stop_automated_movement = 1
	if(!target || !CanAttack(target))
		LoseTarget()
		return 0
	if(target in possible_targets)
		var/target_distance = get_dist(src,target)
		if(ranged && !isobj(target))//We ranged? Shoot at em
			if(target_distance >= min_range_distance && ranged_cooldown <= 0)//But make sure they're a tile away at least, and our range attack is off cooldown
				if(Zombo_Gun && Zombo_Gun.magazine && Zombo_Gun.magazine.contents.len)
					if(get_active_hand() != Zombo_Gun)
						hand = !hand
					OpenFire(target)
					sleep(50)
		if(!Process_Spacemove()) // Drifting
			walk(src,0)
			return 1
		if(retreat_distance != null)//If we have a retreat distance, check if we need to run from our target
			if(target_distance <= retreat_distance)//If target's closer than our retreat distance, run
				walk_away(src,target,retreat_distance,move_to_delay)
			else
				Goto(target,move_to_delay,minimum_distance)//Otherwise, get to our minimum distance so we chase them
		else
			if(src.health <= fearborder && !fearless)
				walk_away(src,target,retreat_distance,move_to_delay)
			else
				Goto(target,move_to_delay,minimum_distance)
		if(target)
			if(isturf(loc) && target.Adjacent(src))	//If they're next to us, attack
				if(!isobj(target))
					if(Zombo_Gun )
						OpenFire(target)
					else
						AttackingTarget()
				else
					if(get_active_hand())
						hand = !hand
					target.attack_hand(src)
					ManageInventory()
		return 1
	LoseTarget()
	return 0

/mob/living/carbon/human/proc/Goto(target, delay, minimum_distance)
	walk_to(src, target, minimum_distance, delay)
/*
/mob/living/simple_animal/hostile/adjustBruteLoss(damage)
	..(damage)
	if(!ckey && !stat && search_objects < 3 && damage > 0)//Not unconscious, and we don't ignore mobs
		if(search_objects)//Turn off item searching and ignore whatever item we were looking at, we're more concerned with fight or flight
			search_objects = 0
			target = null
		if(AIStatus == AI_IDLE)
			AIStatus = AI_ON
			FindTarget()
		else if(target != null && prob(40))//No more pulling a mob forever and having a second player attack it, it can switch targets now if it finds a more suitable one
			FindTarget()
*/
/mob/living/carbon/human/proc/AttackingTarget()
	target.attack_hand(src)

/mob/living/carbon/human/proc/Aggro()
	vision_range = aggro_vision_range
	if(target && emote_taunt.len && prob(taunt_chance))
		emote("me", 1, "[pick(emote_taunt)] at [target].")
		taunt_chance = max(taunt_chance-7,2)


/mob/living/carbon/human/proc/LoseAggro()
	stop_automated_movement = 0
	vision_range = idle_vision_range
	taunt_chance = initial(taunt_chance)

/mob/living/carbon/human/proc/LoseTarget()
	target = null
	if(target_last_loc)
		Goto(target_last_loc, move_to_delay, 1)
		target_last_loc = null
	walk(src, 0)
	LoseAggro()

//////////////END HOSTILE MOB TARGETTING AND AGGRESSION////////////

/mob/living/carbon/human/proc/OpenFire(atom/A)
	ranged_cooldown = ranged_cooldown_cap
	if(A.Adjacent(src))
		Zombo_Gun.afterattack(A, src, 1, null)
	else
		Zombo_Gun.afterattack(A, src, 0, null)
	return

/mob/living/carbon/human/proc/Shoot(atom/targeted_atom)
	if(targeted_atom == src.loc)
		return
	//var/turf/startloc = get_turf(src)
	return

/mob/living/carbon/human/proc/FindGun()
	var/obj/item/weapon/gun/projectile/ZG = null
	for(var/obj/item/weapon/gun/projectile/_ZG in src.contents)
		if(!ZG || (CountAmmo(_ZG.mag_type) > CountAmmo(ZG.mag_type)))
			ZG = _ZG

	if(src.back && istype(src.back, /obj/item/weapon/storage) && src.back.contents.len)
		for(var/obj/item/weapon/gun/projectile/_ZG in src.back.contents)
			if(!ZG || (CountAmmo(_ZG.mag_type) > CountAmmo(ZG.mag_type)))
				ZG = _ZG

	if(ZG)
		Zombo_Gun = ZG
		return 1
	return 0

/mob/living/carbon/human/proc/SearchForGun()


/mob/living/carbon/human/proc/ReloadGun()
	var/obj/item/ammo_box/magazine/mag = null
	for(var/obj/item/ammo_box/magazine/_mag in src.contents)
		if(istype(_mag, Zombo_Gun.mag_type) && _mag.contents.len)
			mag = _mag
			break

	if(!mag && src.back && istype(src.back, /obj/item/weapon/storage) && src.back.contents.len)
		for(var/obj/item/ammo_box/magazine/_mag in src.back.contents)
			if(istype(_mag, Zombo_Gun.mag_type) && _mag.contents.len)
				mag = _mag
				break

	if(mag)
		Zombo_Gun.attack_self(src)

		if(get_active_hand() == Zombo_Gun)
			hand = !hand

		if(get_active_hand())
			if(get_active_hand() == r_hand)
				drop_r_hand()
			else
				drop_l_hand()
		mag.attack_hand(src)
		Zombo_Gun.attackby(mag, src, null)
		return 1
	return 0

/mob/living/carbon/human/proc/CountAmmo(var/mag_type)
	var/count = 0
	if(!Zombo_Gun)
		return count
	for(var/obj/item/ammo_box/magazine/_mag in src.contents)
		if(istype(_mag, Zombo_Gun.mag_type) && _mag.contents.len)
			count += _mag.stored_ammo.len
	if(src.back && istype(src.back, /obj/item/weapon/storage) && src.back.contents.len)
		for(var/obj/item/ammo_box/magazine/_mag in src.back.contents)
			if(istype(_mag, Zombo_Gun.mag_type) && _mag.contents.len)
				count += _mag.stored_ammo.len
	return count

/mob/living/carbon/human/proc/ManageInventory()
	if(istype(get_active_hand(), /obj/item/ammo_box/magazine))
		get_active_hand().equip_to_best_slot(src)

////// AI Status ///////
/mob/living/carbon/human/proc/AICanContinue(var/list/possible_targets)
	switch(AIStatus)
		if(AI_ON)
			. = 1
		if(AI_IDLE)
			if(FindTarget(possible_targets, 1))
				. = 1
				AIStatus = AI_ON //Wake up for more than one Life() cycle.
			else
				. = 0

/mob/living/carbon/human/proc/AIShouldSleep(var/list/possible_targets)
	return !FindTarget(possible_targets, 1)