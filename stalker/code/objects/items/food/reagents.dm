/datum/reagent/drug/energetic
	name = "Energetic"
	id = "energetic"
	description = "Amps you up and gets you going, fixes all stamina damage you might have."
	reagent_state = LIQUID  //SNAKE!
	color = "#60A584"
	taste_description = "sightly sugary chemicals"

/datum/reagent/drug/energetic/on_mob_life(mob/living/M)
	var/high_message = pick("You feel amped up.", "You feel ready.", "You feel like you can push it to the limit.")
	if(prob(5))
		M << "<span class='notice'>[high_message]</span>"
	M.adjustStaminaLoss(-5)
	..()
	return