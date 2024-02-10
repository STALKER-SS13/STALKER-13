#define IU238 	(1<<0)
#define IPU238 	(1<<1)
#define	IPO210	(1<<2)

GLOBAL_LIST_EMPTY(all_artifacts)

/obj/item/artifact
	icon = 'stalker/icons/artifacts.dmi'
	desc = "Simple Artifact"
	var/capacity = 0
	var/charge = 0
	var/list/art_armor = list()
	var/radiation = 2
	var/waspicked = 0
	var/level_s = 1
	w_class = 2
	var/obj/effect/fakeart/phantom = null

/obj/item/artifact/Initialize()
	. = ..()
	GLOB.all_artifacts += src
	capacity = rand(1000, 10000)
	charge = capacity

/obj/item/artifact/Destroy()
	. = ..()
	GLOB.all_artifacts -= src
	if(phantom)
		qdel(phantom)
	phantom = null

/obj/item/artifact/proc/Think(mob/user)
	if(!charge) 
		return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		if(istype(loc, user))
			mob.radiation = max(0, mob.radiation + radiation)

		else if(istype(loc, /obj/item/storage))
			mob.radiation = max(0, mob.radiation + radiation)

		return art_armor
	return 0

/obj/item/artifact/pickup(mob/user)
	. = ..()
	if(invisibility)
		invisibility = 0

/////////////////////////////////////////Gravity artifacts/////////////////////////////////////////
/obj/item/artifact/meduza
	name = "jellyfish"
	desc = "This gravitational artifact attracts and absorbs radioactive particles, reducing the effects of radiation on the body. Very common in the Zone and is unofficially used outside the Zone for treating acute radiation sickness in exceptional circumstances."
	icon_state = "meduza"
	art_armor = list()
	radiation = -2
	level_s = 1
/obj/item/artifact/stoneflower
	name = "stone flower"
	desc = "Born in gravitional anomalies. Relatively uncommon in the zone. Gives user slight radiation over time and lightly enhances bullet protection."
	icon_state = "stoneflower"
	art_armor = list(bullet = 10)
	radiation = 2
	level_s = 2

/obj/item/artifact/nightstar
	name = "night star"
	desc = "This wonderful artifact is formed by gravitional anomalies anomaly. It quickly accumulates radiation yet gives user light-medium bullet protection boost, and requires user to wear a anti-radiation countermeasure. Expensive and rare in the zone."
	icon_state = "nightstar"
	art_armor = list(bullet = 20)
	radiation = 3
	level_s = 3
/obj/item/artifact/stoneflower_depleted
	name = "depleted stone flower"
	desc = "A depeleted Stone Flower artifact. Still useful for trades, but not as valuable. When equipped, accumulates radiation quickly, but has no beneficial effect on user."
	icon_state = "stoneflower"
	art_armor = list()
	radiation = 2
	level_s = 2

/obj/item/artifact/nightstar_depleted
	name = "depleted night star"
	desc = "A depeleted Night Star Artifact. Still useful for trades, but not as valuable. When equipped, accumulates radiation quickly, but has no beneficial effect on user."
	icon_state = "nightstar"
	art_armor = list()
	radiation = 3
	level_s = 3

/obj/item/artifact/soul
	name = "soul"
	desc = "A unique organic artifact with properties just as unique. Somehow it increases the body's overall recovery rate from damage of any kind, without accelerating the accumulation of toxins. Thanks to its effects and attractive appearance, this artifact is a valuable collector's item. Emits medium radiation."
	icon_state = "soul"
	art_armor = list()
	radiation = 2
	level_s = 4

/obj/item/artifact/soul/Think(mob/user)
	if(!..()) return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		mob.adjustBruteLoss(-1)
	return 1

	/////////////////////////////////////////Electro artifacts/////////////////////////////////////////

/obj/item/artifact/flash
	name = "flash"
	desc = "This electrostatic artifact is a powerful absorbent of electricity, which it later discharges. Flash is capable of protecting its bearer from electric shocks of up to 5,000 volts. Emits very light radiation."
	icon_state = "flash"
	art_armor = list(energy = 10)
	radiation = 1
	level_s = 1

/obj/item/artifact/moonlight
	name = "moonlight"
	desc = "Degenerate case of the activity of the Electro anomaly. It seems that such a wonderful round form is created when the anomaly is subjected to thermal influences. Expensive artifact. Emits medium radiation"
	icon_state = "moonlight"
	art_armor = list(energy = 20)
	radiation = 2
	level_s = 2

/obj/item/artifact/pustishka
	name = "shell"
	desc = "Degenerate case of the Electra anomaly activity. Apparently, such a remarkable rounded shape can be obtained by subjecting the anomaly to thermal action. Expensive artifact.Emits medium radiation"
	icon_state = "pustishka"
	art_armor = list(energy = 30)
	radiation = 2
	level_s = 3

/obj/item/artifact/battery
	name = "battery"
	desc = "The composition of this artifact includes electrostatic elements, but scientists have yet to identify the exact physical conditions required for its formation. The artifact is popular in the Zone and valued by its residents and visitors for its energizing properties, although it can tire the body out through prolonged use. Doesn't emit any radiation."
	icon_state = "battery"
	art_armor = list(energy = 30)
	level_s = 4

	/////////////////////////////////////////Fire artifacts/////////////////////////////////////////

/obj/item/artifact/droplet
	name = "droplet"
	desc = "Formed in the fireer anomaly at high temperatures. From the exterior looks like a tear-like shade compound with a glossy surface, covered in cracks. Lightly reduces radiation in the body of the user."
	icon_state = "droplet"
	art_armor = list(rad = 10)
	radiation = -1
	level_s = 1
/*
/obj/item/artifact/droplet/Think(user)
	if(!..()) return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		mob.adjustStaminaLoss(1.8)
	return 1
*/
/obj/item/artifact/fireball
	name = "fireball"
	desc = "Crystallizes in the anomaly fireer. Provides medium reduction of radiation in the body, though the heightened rate of energy exchange wears out the muscles of the moving apparatus. Won't be able to run for long. Artifact emits heat."
	icon_state = "fireball"
	art_armor = list(rad = 15)
	radiation = -2
	level_s = 2

/obj/item/artifact/crystal
	name = "crystal"
	desc = "Is created when heavy metals fall into the fireer anomaly. Has a very strong radiation neutralization properties. It is highly valued by stalkers and hard to find."
	icon_state = "crystal"
	art_armor = list()
	radiation = -5
	level_s = 4

/obj/item/artifact/maminibusi
	name = "mama's beads"
	desc = "Much about this artifact remains a complete mystery to scientists. At the same time, it is known for certain that emissions produced by pulses in its thicker sections force blood in open wounds to clot quicker, forming a protective scab. Has ability to help speed up wound healing. Emits very strong radiation."
	icon_state = "mamini_busi"
	art_armor = list()
	radiation = 5
	level_s = 4

/obj/item/artifact/maminibusi/Think(mob/user)
	if(!..()) return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		mob.adjustFireLoss(-1)
	return 1


	/////////////////////////////////////////Chemical artifacts/////////////////////////////////////////

/obj/item/artifact/stone_blood
	name = "stone blood"
	desc = "A reddish formation of compressed and fossilized plants, soil and animal debris. Can partially neutralize chemical poisons. Emits light radiation."
	icon_state = "stone_blood"
	art_armor = list(bio = 10)
	radiation = 1
	level_s = 1

/obj/item/artifact/bubble
	name = "bubble"
	desc = "A compound of several hollow organic formations, this artifact contains gaseous substance that is capable of having high radiation reduction. Because of its effectiveness, this artifact is in great demand."
	icon_state = "bubble"
	art_armor = list()
	radiation = -3
	level_s = 2

/obj/item/artifact/mica
	name = "mica"
	desc = "Anomaly \"Fruit Punch\" is able to create such an artifact at the rarest, most extreme collection of physical conditions. The result is a semi-transparent, hard object. A rare and expensive artifact.Emits strong radiation."
	icon_state = "mica"
	art_armor = list(laser = 10, bio = 10)
	radiation = 3
	level_s = 3

/obj/item/artifact/mica/Think(mob/user)
	if(!..()) return 0
	if(istype(user, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = user
		if(!H.bleedsuppress) //so you can't stack bleed suppression
			H.suppress_bloodloss(1)

			if(H.stat != DEAD && H.bodytemperature >= 170)

				var/blood_volume = round(H.reagents.get_reagent_amount("blood"))
				if(blood_volume < 560 && blood_volume)

					var/datum/reagent/blood/B = locate() in H.reagents.reagent_list
					if(B)
						if(B.data["donor"] != src) //If it's not theirs, then we look for theirs
							for(var/datum/reagent/blood/D in H.reagents.reagent_list)
								if(D.data["donor"] == src)
									B = D
									break

						B.volume += 0.5
	return 1

/obj/item/artifact/firefly
	name = "firefly"
	desc = "Firefly interacts with fields unknown to science, considerably speeding up regeneration of tissue and organs in living beings, as well as normalizing metabolic processes. This artifact can literally get a badly wounded stalker back on his feet in seconds. Unfortunately, Firefly is extremely rare. Emits intense and lethal dose of radiation."
	icon_state = "firefly"
	art_armor = list()
	radiation = 5
	level_s = 4

/obj/item/artifact/firefly/Think(mob/user)
	if(!..()) return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		mob.adjustFireLoss(-0.5)
		mob.adjustBruteLoss(-0.5)
	return 1

	//ПОЯС
/obj/item/storage/belt/stalker
	name = "artifact belt"
	desc = "Specialised belt that can only house artifacts from the zone. The belt applies the effects on the user directly. Works only if its equipped on the belt."
	icon = 'icons/obj/clothing/belts.dmi'
	icon_state = "artifactbelt"
	item_state = "utility"

/obj/item/storage/belt/stalker/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 5
	STR.can_hold = typecacheof(list(/obj/item/artifact))

/obj/item/storage/belt/stalker/artifact_belt
	var/thinkrate = 100

/obj/item/storage/belt/stalker/artifact_belt/small
	name = "small artifact belt"
	desc = "Specialised belt that can only house artifacts from the zone, a more compact version of the regular artifact belt. The belt applies the effects on the user directly. Works only if its equipped on the belt."
	icon = 'icons/obj/clothing/belts.dmi'
	icon_state = "artifactbeltsmall"
	item_state = "artifacts"

/obj/item/storage/belt/stalker/artifact_belt/small/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 2

/obj/item/storage/belt/stalker/artifact_belt/proc/Think(mob/user)
	for(var/obj/item/artifact/A in contents)
		A.Think(user)
	//spawn(thinkrate)
	//	Think()
/*
/obj/item/storage/belt/stalker/artifact_belt/handle_item_insertion(obj/item/W, prevent_warning = 0, mob/user)
	if(..(W, prevent_warning, user) && istype(W, /obj/item/artifact))
		var/obj/item/artifact/artifact = W
		var/mob/living/carbon/mob = loc
		for(var/i=1,i<=artifact.art_armor.len,i++)
			var/armortype = artifact.art_armor[i]
			if(!(armortype in mob.global_armor))
				mob.global_armor += armortype
			mob.global_armor[armortype] += artifact.art_armor[armortype]
		return 1
	return 0

/obj/item/storage/belt/stalker/artifact_belt/remove_from_storage(obj/item/W, atom/new_location, fire = 0)
	if(..(W, new_location, fire) && istype(W, /obj/item/artifact))
		var/obj/item/artifact/artifact = W
		var/mob/living/carbon/mob = loc
		for(var/i=1,i<=artifact.art_armor.len,i++)
			var/armortype = artifact.art_armor[i]
			if(!(armortype in mob.global_armor))
				mob.global_armor += armortype
			mob.global_armor[armortype] -= artifact.art_armor[armortype]
		return 1
	return 0
*/
