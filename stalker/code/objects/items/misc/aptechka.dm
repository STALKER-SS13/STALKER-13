/obj/item/reagent_containers/pill/stalker
	icon = 'stalker/icons/items.dmi'
	w_class = 2
	possible_transfer_amounts = list()
	volume = 60
	apply_type = PATCH
	apply_method = "apply"
	self_delay = 30

/obj/item/reagent_containers/pill/stalker/aptechka
	name = "kit"
	desc = "Old Soviet first aid kit."

/obj/item/reagent_containers/pill/stalker/canconsume(mob/eater, mob/user)
	if(!iscarbon(eater))
		return 0
	return 1 // Masks were stopping people from "eating" patches. Thanks, inheritance.

obj/item/reagent_containers/pill/stalker/afterattack(obj/target, mob/user , proximity)
	return // thanks inheritance again

/obj/item/reagent_containers/pill/stalker/aptechka/civilian
	name = "medkit"
	icon_state = "aptechkar"
	desc = "Universal medical kit. Allows you to cope with injuries of various types and degrees of complexity: wounds, burns, poisoning and others. Doesn't stop bleeding!"
	eng_desc = "All-purpose single-use medkit. Allows to handle injuries of different types and degrees of complexity. This kit includes some basic bandages and gauze, along with some ointment for burns."
	item_state = "aptechkar"
	list_reagents = list("medicadone" = 6)

/obj/item/reagent_containers/pill/stalker/aptechka/army
	name = "army medkit"
	desc = "A specialized medical kit to combat physical injury and bleeding. It includes components to accelerate blood clotting, pain relievers, antibiotics and immune stimulants. Stops bleeding!"
	eng_desc = "Specialized medical kit to provide first-aid in case of in-battle injuries. The kit includes Menadion-based medicine for faster blood coagulation, painkillers, antibiotics, immunity stimulators, so as a kit to remove shrapnel and bullets from your body. Stops the bleeding."
	icon_state = "aptechkab"
	item_state = "aptechkab"
	list_reagents = list("medicadone" = 12)

/obj/item/reagent_containers/pill/stalker/aptechka/scientific
	name = "scientific medkit"
	desc = "A medical kit designed specifically for work in the Zone. The composition of the kit is selected both for combating injuries and for removing radionuclides from the body. Prevents the development of radiation sickness, and also reduces the dose of accumulated radiation."
	eng_desc = "Medical set, designed especially for work in the Zone. The set includes means of healing wounds as well as means of eliminating radionuclides from the body. Prevents the development of radiowave sickness and lowers the dose of accumulated radiation. Stops the bleeding."
	icon_state = "aptechkay"
	item_state = "aptechkay"
	list_reagents = list("medicadone" = 24)

/datum/reagent/medicine/medicadone
	name = "Medicadone"
	id = "medicadone"
	description = "Fuck."
	color = "#FF00FF"

/datum/reagent/medicine/medicadone/on_mob_life(mob/living/M)
	M.adjustCloneLoss(-6)
	M.adjustOxyLoss(-10)
	M.adjustBruteLoss(-8)
	M.adjustFireLoss(-8)
	M.adjustToxLoss(-5)
	M.nutrition -= 8
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		H.hallucination = 0
		H.setBrainLoss(0)
		H.eye_blurry = 0
		H.eye_blind = 0
		H.silent = 0
		H.dizziness = 0
		H.drowsyness = 0
		H.stuttering = 0
		H.slurring = 0
		H.confused = 0
		H.jitteriness = 0
		H.radiation = max(0, H.radiation - 16)
		if(!H.bleedsuppress) //so you can't stack bleed suppression
			H.suppress_bloodloss(1)
	..()
	return

/obj/item/reagent_containers/pill/stalker/aptechka/bint
	name = "bandage"
	desc = "Stops your bleeding. Wrap it tight!"
	eng_desc = "Stops your bleeding. Wrap it tight!"
	icon = 'stalker/icons/items.dmi'
	icon_state = "bint"
	list_reagents = list("medicadone" = 1)