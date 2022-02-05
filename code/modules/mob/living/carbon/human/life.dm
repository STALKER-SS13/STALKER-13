

//NOTE: Breathing happens once per FOUR TICKS, unless the last breath fails. In which case it happens once per ONE TICK! So oxyloss healing is done once per 4 ticks while oxyloss damage is applied once per tick!

// bitflags for the percentual amount of protection a piece of clothing which covers the body part offers.
// Used with human/proc/get_heat_protection() and human/proc/get_cold_protection()
// The values here should add up to 1.
// Hands and feet have 2.5%, arms and legs 7.5%, each of the torso parts has 15% and the head has 30%
#define THERMAL_PROTECTION_HEAD			0.3
#define THERMAL_PROTECTION_CHEST		0.15
#define THERMAL_PROTECTION_GROIN		0.15
#define THERMAL_PROTECTION_LEG_LEFT		0.075
#define THERMAL_PROTECTION_LEG_RIGHT	0.075
#define THERMAL_PROTECTION_FOOT_LEFT	0.025
#define THERMAL_PROTECTION_FOOT_RIGHT	0.025
#define THERMAL_PROTECTION_ARM_LEFT		0.075
#define THERMAL_PROTECTION_ARM_RIGHT	0.075
#define THERMAL_PROTECTION_HAND_LEFT	0.025
#define THERMAL_PROTECTION_HAND_RIGHT	0.025

/mob/living/carbon/human/Life()
	set invisibility = 0
	if (notransform)
		return

	. = ..()

	if (QDELETED(src))
		return 0

	if(.) //not dead
		handle_active_genes()

	if(stat != DEAD)
		//heart attack stuff
		handle_heart()

	if(stat != DEAD)
		//Stuff jammed in your limbs hurts
		handle_embedded_objects()

	if(stat != DEAD)
		handle_hygiene()

	if(stat != DEAD)
		handle_special_effects() //psyloss

	if(stat != DEAD)
		handle_suit_durability()

	if(stat != DEAD)
		handle_artifacts()

	handle_tension()

	//Update our name based on whether our face is obscured/disfigured
	name = get_visible_name()

	dna.species.spec_life(src) // for mutantraces

	if(stat != DEAD)
		return 1

/mob/living/carbon/human/proc/handle_tension(type = "default")
	if (setup_tension)
		var/sound/S = sound(pick("stalker/sound/battletension1.ogg", "stalker/sound/battletension2.ogg", "stalker/sound/battletension3.ogg", \
		"stalker/sound/battletension4.ogg", "stalker/sound/battletension5.ogg"))
		S.repeat = 1
		S.channel = CHANNEL_BATTLE
		S.falloff = 1
		S.wait = 0
		S.volume = 0
		S.status = SOUND_STREAM | SOUND_UPDATE
		S.environment = 0
		src.bm = S
		SEND_SOUND(src, S)
		setup_tension = FALSE
		src.bm.status = SOUND_STREAM

	switch(tension)
		if(-INFINITY to -1)
			clear_fullscreen("just_noise")
			src.bm.volume = 0
			src << src.bm
			src.bm.status = 16
		if(0 to 30)
			overlay_fullscreen("just_noise", /obj/screen/fullscreen/just_noise)
			src.bm.volume = tension
			src << src.bm
			src.bm.status = 16
			tension -= 1
		if(31 to 79)
			src.bm.volume = tension
			src << src.bm
			src.bm.status = 16
			if (!has_trait(TRAIT_UNINTELLIGIBLE_SPEECH))
				var/i
				for (i = 0, i < tension, i++)
					battle_screen_on()
					sleep(1)
					battle_screen_off()
					sleep(1)
		if(80 to INFINITY)
			tension = 80
			src.bm.volume = 80
			src << src.bm
			src.bm.status = 16

	if (tension > 0)
		tension -= 2

/mob/living/carbon/human/proc/battle_screen_on()
	if(!client)
		return
	//var/obj/screen/plane_master/battle/BT = locate(/obj/screen/plane_master/battle) in client.screen
	var/obj/screen/plane_master/game_world/GW = locate(/obj/screen/plane_master/game_world) in client.screen
	//var/obj/screen/plane_master/floor/OT = locate(/obj/screen/plane_master/floor) in client.screen
	//BT.filters += filter(type="wave", x=1, y=1, size=1)
	GW.filters += filter(type="wave", x=1, y=1, size=1)
	//OT.filters += filter(type="wave", x=1, y=1, size=1)

/mob/living/carbon/human/proc/battle_screen_off()
	if(!client)
		return
	//var/obj/screen/plane_master/floor/OT = locate(/obj/screen/plane_master/floor) in client.screen
	//var/obj/screen/plane_master/battle/BT = locate(/obj/screen/plane_master/battle) in client.screen
	var/obj/screen/plane_master/game_world/GW = locate(/obj/screen/plane_master/game_world) in client.screen
	GW.clear_filters()
	//BT.clear_filters()
	//OT.clear_filters()

/mob/living/carbon/human/proc/handle_artifacts()
	src.global_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)

	if(src.belt && istype(src.belt, /obj/item/storage/belt/stalker/artifact_belt))
		for(var/obj/item/artifact/A in src.belt.contents)
			A.Think(src)
			for(var/armor_ in A.art_armor)
				global_armor[armor_] += A.art_armor[armor_]

	if(src.wear_suit && istype(src.wear_suit, /obj/item/clothing/suit))
		var/obj/item/clothing/suit/S = src.wear_suit
		if(S.pocket_storage_component_path)
			var/list/acont = list()
			SEND_SIGNAL(S, COMSIG_TRY_STORAGE_RETURN_INVENTORY, acont, FALSE)
			for(var/obj/item/artifact/A in acont)
				A.Think(src)
				for(var/armor_ in A.art_armor)
					global_armor[armor_] += A.art_armor[armor_]

/mob/living/carbon/human/proc/handle_suit_durability()
	if(health > 0)
		return
	if(!src.wear_suit)
		return

	var/obj/item/clothing/suit/S = src.wear_suit

	if(S.pocket_storage_component_path && istype(S.pocket_storage_component_path, /datum/component/storage/concrete/pockets/internal_slot))
		var/list/acont = list()
		SEND_SIGNAL(S, COMSIG_TRY_STORAGE_RETURN_INVENTORY, acont, FALSE)
		for(var/obj/item/artifact/A in acont)
			A.Think(src)

	if(S.durability == -1)
		return

	if(((S.durability/initial(S.durability))*100 - 50) > 0)
		S.durability = ((S.durability/initial(S.durability))*100 - 50) / 100 * initial(S.durability)

	if(S.durability <= 0)
		visible_message("<span class='danger'>[S] fell apart right on [src]</span>", "<span class='warning'>[S] fell apart right on you!</span>")
		qdel(S)

	update_icons()

/mob/living/carbon/human/proc/handle_special_effects()
	var/k = (psyloss/200)

	switch(psyloss)
		if(200)
			if(slurring < 100)
				apply_effect(rand(20, 35), EFFECT_SLUR, 0)
			if (!zombified)
				if(!client)
					return
				//var/obj/screen/plane_master/floor/OT = locate(/obj/screen/plane_master/floor) in client.screen
				//var/obj/screen/plane_master/battle/BT = locate(/obj/screen/plane_master/battle) in client.screen
				//var/obj/screen/plane_master/game_world/GW = locate(/obj/screen/plane_master/game_world) in client.screen
				//GW.filters += filter(type="wave", x=48, y=25, size=1)
				//OT.filters += filter(type="wave", x=48, y=15, size=1)
				//BT.filters += filter(type="wave", x=20, y=15, size=1)
				add_trait(TRAIT_DUMB, TRAUMA_TRAIT)
				add_trait(TRAIT_UNINTELLIGIBLE_SPEECH, TRAUMA_TRAIT)
				add_trait(TRAIT_SOOTHED_THROAT, TRAUMA_TRAIT)
				var/datum/brain_trauma/mild/concussion/T = new()
				gain_trauma(T, TRAUMA_RESILIENCE_ABSOLUTE)
				var/datum/brain_trauma/mild/hallucinations/B = new()
				gain_trauma(B, TRAUMA_RESILIENCE_ABSOLUTE)
				var/datum/brain_trauma/mild/muscle_spasms/D = new()
				gain_trauma(D, TRAUMA_RESILIENCE_ABSOLUTE)
				var/datum/brain_trauma/mild/muscle_weakness/U = new()
				gain_trauma(U, TRAUMA_RESILIENCE_ABSOLUTE)
				zombified = 1
				if (prob(5))
					brainwash(src, list("Thank you for that, that he revealed to Thy servants the machinations of our enemies. \
					Illuminate with Thy radiance the souls of those, who gave his life in fulfillment of thy will. Into battle, defenders of the Monolith! \
					Into battle! Let us avenge our fallen brothers, may their eternal union with the Monolith be blessed. \
					Death.... Fierce death themes, who rejects His sacred power...", "Kill all infidels."))
				else
					brainwash(src, list("Thank you for that, that he revealed to Thy servants the machinations of our enemies. \
					Illuminate with Thy radiance the souls of those, who gave his life in fulfillment of thy will. Into battle, defenders of the Monolith! \
					Into battle! Let us avenge our fallen brothers, may their eternal union with the Monolith be blessed. \
					Death.... Fierce death themes, who rejects His sacred power...", "Kill all infidels."))
			return
		if(150 to 199)
			if(slurring < 100)
				apply_effect(rand(20, 35), EFFECT_SLUR, 0)
			if(prob(25))
				shake_camera(src, 5 * k, 1)
			return

		if(100 to 150)
			if(slurring < 50)
				apply_effect(rand(20, 35), EFFECT_SLUR, 0)
			if(prob(10))
				shake_camera(src, 3 * k, 1)
			return

		if(25 to 100)
			if(slurring < 25)
				apply_effect(rand(0, 10), EFFECT_SLUR, 0)
			if(prob(5))
				shake_camera(src, 1 * k, 1)
			return

		if(0 to 25)
			return

/mob/living/carbon/human/calculate_affecting_pressure(pressure)
	if (wear_suit && head && istype(wear_suit, /obj/item/clothing) && istype(head, /obj/item/clothing))
		var/obj/item/clothing/CS = wear_suit
		var/obj/item/clothing/CH = head
		if (CS.clothing_flags & CH.clothing_flags & STOPSPRESSUREDAMAGE)
			return ONE_ATMOSPHERE
	return pressure


/mob/living/carbon/human/handle_traits()
	if(eye_blind)			//blindness, heals slowly over time
		if(has_trait(TRAIT_BLIND, EYES_COVERED)) //covering your eyes heals blurry eyes faster
			adjust_blindness(-3)
		else
			adjust_blindness(-1)
	else if(eye_blurry)			//blurry eyes heal slowly
		adjust_blurriness(-1)

	if (getBrainLoss() >= 60)
		SEND_SIGNAL(src, COMSIG_ADD_MOOD_EVENT, "brain_damage", /datum/mood_event/brain_damage)
	else
		SEND_SIGNAL(src, COMSIG_CLEAR_MOOD_EVENT, "brain_damage")

/mob/living/carbon/human/handle_mutations_and_radiation()
	if(!dna || !dna.species.handle_mutations_and_radiation(src))
		..()

/mob/living/carbon/human/breathe()
	if(!dna.species.breathe(src))
		..()

/mob/living/carbon/human/check_breath(datum/gas_mixture/breath)
	return
/*

	var/L = getorganslot(ORGAN_SLOT_LUNGS)

	if(!L)
		if(health >= crit_threshold)
			adjustOxyLoss(HUMAN_MAX_OXYLOSS + 1)
		else if(!has_trait(TRAIT_NOCRITDAMAGE))
			adjustOxyLoss(HUMAN_CRIT_MAX_OXYLOSS)

		failed_last_breath = 1

		var/datum/species/S = dna.species

		if(S.breathid == "o2")
			throw_alert("not_enough_oxy", /obj/screen/alert/not_enough_oxy)
		else if(S.breathid == "tox")
			throw_alert("not_enough_tox", /obj/screen/alert/not_enough_tox)
		else if(S.breathid == "co2")
			throw_alert("not_enough_co2", /obj/screen/alert/not_enough_co2)
		else if(S.breathid == "n2")
			throw_alert("not_enough_nitro", /obj/screen/alert/not_enough_nitro)

		return FALSE
	else
		if(istype(L, /obj/item/organ/lungs))
			var/obj/item/organ/lungs/lun = L
			lun.check_breath(breath,src)
*/ //Disable ATMOS and BREATH

/mob/living/carbon/human/handle_environment(datum/gas_mixture/environment)
	dna.species.handle_environment(environment, src)

///FIRE CODE
/mob/living/carbon/human/handle_fire()
	. = ..()
	if(.) //if the mob isn't on fire anymore
		return

	if(dna)
		. = dna.species.handle_fire(src) //do special handling based on the mob's species. TRUE = they are immune to the effects of the fire.

	if(!last_fire_update)
		last_fire_update = fire_stacks
	if((fire_stacks > HUMAN_FIRE_STACK_ICON_NUM && last_fire_update <= HUMAN_FIRE_STACK_ICON_NUM) || (fire_stacks <= HUMAN_FIRE_STACK_ICON_NUM && last_fire_update > HUMAN_FIRE_STACK_ICON_NUM))
		last_fire_update = fire_stacks
		update_fire()


/mob/living/carbon/human/proc/get_thermal_protection()
	var/thermal_protection = 0 //Simple check to estimate how protected we are against multiple temperatures
	if(wear_suit)
		if(wear_suit.max_heat_protection_temperature >= FIRE_SUIT_MAX_TEMP_PROTECT)
			thermal_protection += (wear_suit.max_heat_protection_temperature*0.7)
	if(head)
		if(head.max_heat_protection_temperature >= FIRE_HELM_MAX_TEMP_PROTECT)
			thermal_protection += (head.max_heat_protection_temperature*THERMAL_PROTECTION_HEAD)
	thermal_protection = round(thermal_protection)
	return thermal_protection

/mob/living/carbon/human/IgniteMob()
	//If have no DNA or can be Ignited, call parent handling to light user
	//If firestacks are high enough
	if(!dna || dna.species.CanIgniteMob(src))
		return ..()
	. = FALSE //No ignition

/mob/living/carbon/human/ExtinguishMob()
	if(!dna || !dna.species.ExtinguishMob(src))
		last_fire_update = null
		..()
//END FIRE CODE


//This proc returns a number made up of the flags for body parts which you are protected on. (such as HEAD, CHEST, GROIN, etc. See setup.dm for the full list)
/mob/living/carbon/human/proc/get_heat_protection_flags(temperature) //Temperature is the temperature you're being exposed to.
	var/thermal_protection_flags = 0
	//Handle normal clothing
	if(head)
		if(head.max_heat_protection_temperature && head.max_heat_protection_temperature >= temperature)
			thermal_protection_flags |= head.heat_protection
	if(wear_suit)
		if(wear_suit.max_heat_protection_temperature && wear_suit.max_heat_protection_temperature >= temperature)
			thermal_protection_flags |= wear_suit.heat_protection
	if(w_uniform)
		if(w_uniform.max_heat_protection_temperature && w_uniform.max_heat_protection_temperature >= temperature)
			thermal_protection_flags |= w_uniform.heat_protection
	if(shoes)
		if(shoes.max_heat_protection_temperature && shoes.max_heat_protection_temperature >= temperature)
			thermal_protection_flags |= shoes.heat_protection
	if(gloves)
		if(gloves.max_heat_protection_temperature && gloves.max_heat_protection_temperature >= temperature)
			thermal_protection_flags |= gloves.heat_protection
	if(wear_mask)
		if(wear_mask.max_heat_protection_temperature && wear_mask.max_heat_protection_temperature >= temperature)
			thermal_protection_flags |= wear_mask.heat_protection

	return thermal_protection_flags

/mob/living/carbon/human/proc/get_heat_protection(temperature) //Temperature is the temperature you're being exposed to.
	var/thermal_protection_flags = get_heat_protection_flags(temperature)

	var/thermal_protection = 0
	if(thermal_protection_flags)
		if(thermal_protection_flags & HEAD)
			thermal_protection += THERMAL_PROTECTION_HEAD
		if(thermal_protection_flags & CHEST)
			thermal_protection += THERMAL_PROTECTION_CHEST
		if(thermal_protection_flags & GROIN)
			thermal_protection += THERMAL_PROTECTION_GROIN
		if(thermal_protection_flags & LEG_LEFT)
			thermal_protection += THERMAL_PROTECTION_LEG_LEFT
		if(thermal_protection_flags & LEG_RIGHT)
			thermal_protection += THERMAL_PROTECTION_LEG_RIGHT
		if(thermal_protection_flags & FOOT_LEFT)
			thermal_protection += THERMAL_PROTECTION_FOOT_LEFT
		if(thermal_protection_flags & FOOT_RIGHT)
			thermal_protection += THERMAL_PROTECTION_FOOT_RIGHT
		if(thermal_protection_flags & ARM_LEFT)
			thermal_protection += THERMAL_PROTECTION_ARM_LEFT
		if(thermal_protection_flags & ARM_RIGHT)
			thermal_protection += THERMAL_PROTECTION_ARM_RIGHT
		if(thermal_protection_flags & HAND_LEFT)
			thermal_protection += THERMAL_PROTECTION_HAND_LEFT
		if(thermal_protection_flags & HAND_RIGHT)
			thermal_protection += THERMAL_PROTECTION_HAND_RIGHT


	return min(1,thermal_protection)

//See proc/get_heat_protection_flags(temperature) for the description of this proc.
/mob/living/carbon/human/proc/get_cold_protection_flags(temperature)
	var/thermal_protection_flags = 0
	//Handle normal clothing

	if(head)
		if(head.min_cold_protection_temperature && head.min_cold_protection_temperature <= temperature)
			thermal_protection_flags |= head.cold_protection
	if(wear_suit)
		if(wear_suit.min_cold_protection_temperature && wear_suit.min_cold_protection_temperature <= temperature)
			thermal_protection_flags |= wear_suit.cold_protection
	if(w_uniform)
		if(w_uniform.min_cold_protection_temperature && w_uniform.min_cold_protection_temperature <= temperature)
			thermal_protection_flags |= w_uniform.cold_protection
	if(shoes)
		if(shoes.min_cold_protection_temperature && shoes.min_cold_protection_temperature <= temperature)
			thermal_protection_flags |= shoes.cold_protection
	if(gloves)
		if(gloves.min_cold_protection_temperature && gloves.min_cold_protection_temperature <= temperature)
			thermal_protection_flags |= gloves.cold_protection
	if(wear_mask)
		if(wear_mask.min_cold_protection_temperature && wear_mask.min_cold_protection_temperature <= temperature)
			thermal_protection_flags |= wear_mask.cold_protection

	return thermal_protection_flags

/mob/living/carbon/human/proc/get_cold_protection(temperature)
	temperature = max(temperature, 2.7) //There is an occasional bug where the temperature is miscalculated in ares with a small amount of gas on them, so this is necessary to ensure that that bug does not affect this calculation. Space's temperature is 2.7K and most suits that are intended to protect against any cold, protect down to 2.0K.
	var/thermal_protection_flags = get_cold_protection_flags(temperature)

	var/thermal_protection = 0
	if(thermal_protection_flags)
		if(thermal_protection_flags & HEAD)
			thermal_protection += THERMAL_PROTECTION_HEAD
		if(thermal_protection_flags & CHEST)
			thermal_protection += THERMAL_PROTECTION_CHEST
		if(thermal_protection_flags & GROIN)
			thermal_protection += THERMAL_PROTECTION_GROIN
		if(thermal_protection_flags & LEG_LEFT)
			thermal_protection += THERMAL_PROTECTION_LEG_LEFT
		if(thermal_protection_flags & LEG_RIGHT)
			thermal_protection += THERMAL_PROTECTION_LEG_RIGHT
		if(thermal_protection_flags & FOOT_LEFT)
			thermal_protection += THERMAL_PROTECTION_FOOT_LEFT
		if(thermal_protection_flags & FOOT_RIGHT)
			thermal_protection += THERMAL_PROTECTION_FOOT_RIGHT
		if(thermal_protection_flags & ARM_LEFT)
			thermal_protection += THERMAL_PROTECTION_ARM_LEFT
		if(thermal_protection_flags & ARM_RIGHT)
			thermal_protection += THERMAL_PROTECTION_ARM_RIGHT
		if(thermal_protection_flags & HAND_LEFT)
			thermal_protection += THERMAL_PROTECTION_HAND_LEFT
		if(thermal_protection_flags & HAND_RIGHT)
			thermal_protection += THERMAL_PROTECTION_HAND_RIGHT

	return min(1,thermal_protection)

/mob/living/carbon/human/handle_random_events()
	//Puke if toxloss is too high
	if(!stat)
		if(getToxLoss() >= 45 && nutrition > 20)
			lastpuke += prob(50)
			if(lastpuke >= 50) // about 25 second delay I guess
				vomit(20, toxic = TRUE)
				lastpuke = 0


/mob/living/carbon/human/has_smoke_protection()
	if(wear_mask)
		if(wear_mask.clothing_flags & BLOCK_GAS_SMOKE_EFFECT)
			return TRUE
	if(glasses)
		if(glasses.clothing_flags & BLOCK_GAS_SMOKE_EFFECT)
			return TRUE
	if(head && istype(head, /obj/item/clothing))
		var/obj/item/clothing/CH = head
		if(CH.clothing_flags & BLOCK_GAS_SMOKE_EFFECT)
			return TRUE
	return ..()


/mob/living/carbon/human/proc/handle_embedded_objects()
	for(var/X in bodyparts)
		var/obj/item/bodypart/BP = X
		for(var/obj/item/I in BP.embedded_objects)
			if(prob(I.embedding.embedded_pain_chance))
				BP.receive_damage(I.w_class*I.embedding.embedded_pain_multiplier)
				to_chat(src, "<span class='userdanger'>[I] embedded in your [BP.name] hurts!</span>")

			if(prob(I.embedding.embedded_fall_chance))
				BP.receive_damage(I.w_class*I.embedding.embedded_fall_pain_multiplier)
				BP.embedded_objects -= I
				I.forceMove(drop_location())
				visible_message("<span class='danger'>[I] falls out of [name]'s [BP.name]!</span>","<span class='userdanger'>[I] falls out of your [BP.name]!</span>")
				if(!has_embedded_objects())
					clear_alert("embeddedobject")
					SEND_SIGNAL(src, COMSIG_CLEAR_MOOD_EVENT, "embedded")

/mob/living/carbon/human/proc/handle_active_genes()
	for(var/datum/mutation/human/HM in dna.mutations)
		HM.on_life()

/mob/living/carbon/human/proc/handle_heart()
	var/we_breath = !has_trait(TRAIT_NOBREATH, SPECIES_TRAIT)

	if(!undergoing_cardiac_arrest())
		return

	if(we_breath)
		adjustOxyLoss(8)
		Unconscious(80)
	// Tissues die without blood circulation
	adjustBruteLoss(2)

/mob/living/carbon/human/proc/handle_hygiene()
	if(has_trait(TRAIT_ALWAYS_CLEAN))
		set_hygiene(HYGIENE_LEVEL_CLEAN)
		return

	var/hygiene_loss = -HYGIENE_FACTOR * 0.25 //Small loss per life

	//If you're covered in blood, you'll start smelling like shit faster.
	var/obj/item/head = get_item_by_slot(SLOT_HEAD)
	if(head)
		IF_HAS_BLOOD_DNA(head)
			hygiene_loss -= 1 * HYGIENE_FACTOR

	var/obj/item/mask = get_item_by_slot(SLOT_HEAD)
	if(mask)
		IF_HAS_BLOOD_DNA(mask)
			hygiene_loss -= 1 * HYGIENE_FACTOR

	var/obj/item/uniform = get_item_by_slot(SLOT_W_UNIFORM)
	if(uniform)
		IF_HAS_BLOOD_DNA(uniform)
			hygiene_loss -= 4 * HYGIENE_FACTOR

	var/obj/item/suit = get_item_by_slot(SLOT_WEAR_SUIT)
	if(suit)
		IF_HAS_BLOOD_DNA(suit)
			hygiene_loss -= 3 * HYGIENE_FACTOR

	var/obj/item/feet = get_item_by_slot(SLOT_SHOES)
	if(feet)
		IF_HAS_BLOOD_DNA(feet)
			hygiene_loss -= 0.5 * HYGIENE_FACTOR

	adjust_hygiene(hygiene_loss)


#undef THERMAL_PROTECTION_HEAD
#undef THERMAL_PROTECTION_CHEST
#undef THERMAL_PROTECTION_GROIN
#undef THERMAL_PROTECTION_LEG_LEFT
#undef THERMAL_PROTECTION_LEG_RIGHT
#undef THERMAL_PROTECTION_FOOT_LEFT
#undef THERMAL_PROTECTION_FOOT_RIGHT
#undef THERMAL_PROTECTION_ARM_LEFT
#undef THERMAL_PROTECTION_ARM_RIGHT
#undef THERMAL_PROTECTION_HAND_LEFT
#undef THERMAL_PROTECTION_HAND_RIGHT
