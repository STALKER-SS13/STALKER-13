///// STALKER Medicines /////

// Anabiotics allow the player to survive a blowout if they are far from shelter.
// 20u during the blowout warning will keep the player safe and in a coma for the entire duration.
// They will wake up a couple of seconds after it ends. During this time, if any mutants find them.
// Well... Good luck, Stalker.
/datum/reagent/medicine/anabiotic
	name = "Anabiotic"
	id = "anabiotic"
	desc = "An experimental drug that shuts down the user's central nervous system allowing them to survive blowouts while out of shelter."
	reagent_state = LIQUID
	color = "#800000"
	metabolization_rate = 0.25 * REAGENTS_METABOLISM

/datum/reagent/medicine/anabiotic/on_mob_add(mob/living/L)
	..()
	if(SSblowout.isblowout)
		L.add_trait(TRAIT_DEATHCOMA, id)
		L.add_trait(TRAIT_BLOWOUT_IMMUNE, id)
	else


/datum/reagent/medicine/anabiotic/on_mob_delete(mob/living/L)
	if(L.has_trait(TRAIT_DEATHCOMA) && L.has_trait(TRAIT_BLOWOUT_IMMUNE))
		L.remove_trait(TRAIT_DEATHCOMA, id)
		L.remove_trait(TRAIT_BLOWOUT_IMMUNE, id)
	..()

// Indraline (Radioprotectant) offers a signifiant amount of radiation protection to players. Unlike anti-rad, it does not purge radiation.
/datum/reagent/medicine/indraline
	name = "Indraline"
	id = "indraline"
	description = "A powerful radioprotectant that protects the user from accumulating additional radiation during exposure."
	reagent_state = LIQUID
	color = "#C39B77"
	metabolization_rate = 0.55 * REAGENTS_METABOLISM

/datum/reagent/medicine/indraline/on_mob_add(mob/living/L)
	..()
	L.add_trait(TRAIT_RADIMMUNE, id)

/datum/reagent/medicine/indraline/on_mob_delete(mob/living/L)
	L.remove_trait(TRAIT_RADIMMUNE, id)
	..()

// Viksolum is a powerful alternative to bandages. Although rare, it offers superior bleeding suppression.
/datum/reagent/medicine/viksolum
	name = "Viksolum"
	id = "viksolum"
	description = "An artificial equivalent of vitamin K. The main purpose of this drug is to increase blood coagulation speed."
	reagent_state = LIQUID
	color = "#FF00FF"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM

/datum/reagent/medicine/viksolum/on_mob_life(mob/living/carbon/human/M)
	if(!H.bleedsuppress) // This prevents stacking Vinca with bandages.
		M.suppress_bloodloss(1)
	..()
	return TRUE

// Hercules is an artificial steroid that promotes myogenesis and protein synthesis.
// We do not have carrying capacity so it will instead reduce stamina loss.
/datum/reagent/medicine/hercules
	name = "Hercules"
	id = "hercules"
	description = "An artificial steroid similar to testosterone that allows one to recover from fatigue faster."
	reagent_state = LIQUID
	color = "#FF00FF"
	metabolization_rate = 0.75 * REAGENTS_METABOLISM

/datum/reagent/medicine/hercules/on_mob_life(mob/living/carbon/human/M)
	M.adjustStaminaLoss(-0.5*REM, 0)
	..()

// Psy-block strengthens the user's nervous system against massive waves of psionic energy.
/datum/reagent/medicine/psyblock
	name = "Psy-block"
	id = "psyblock"
	description = "A chemical developed for use exclusively in the zone that shield against the effects of anomalous psy-fields."
	reagent_state = LIQUID
	color = "#770000"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM

/datum/reagent/medicine/psyblock/on_mob_life(mob/living/carbon/human/M)
	M.adjustPsyLoss(-1.5*REM, 0)
	..()
