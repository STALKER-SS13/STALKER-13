//pronoun procs, for getting pronouns without using the text macros that only work in certain positions
//datums don't have gender, but most of their subtypes do!
/datum/proc/ru_who(capitalized, temp_gender)
	. = "he"
	if(capitalized)
		. = capitalize(.)

/datum/proc/ru_ego(capitalized, temp_gender)
	. = "him"
	if(capitalized)
		. = capitalize(.)

/datum/proc/ru_eto(capitalized, temp_gender)
	. = "this"
	if(capitalized)
		. = capitalize(.)

/datum/proc/ru_have(temp_gender)
	. = "has"

/datum/proc/ru_was(temp_gender)
	. = "was"

/datum/proc/ru_do(temp_gender)
	. = "does"

/datum/proc/ru_kon(temp_gender)
	. = "th"

/datum/proc/ru_na(temp_gender)
	. = "eat"

/datum/proc/ru_a(temp_gender)
	. = ""

//like clients, which do have gender.
/client/ru_who(capitalized, temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "he"
	switch(temp_gender)
		if(FEMALE)
			. = "she"
		if(MALE)
			. = "he"
	if(capitalized)
		. = capitalize(.)

/client/ru_ego(capitalized, temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "его"
	switch(temp_gender)
		if(FEMALE)
			. = "her"
		if(MALE)
			. = "him"
	if(capitalized)
		. = capitalize(.)

/client/ru_was(capitalized, temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "was"
	switch(temp_gender)
		if(FEMALE)
			. = "was"
		if(MALE)
			. = "was"
	if(capitalized)
		. = capitalize(.)

/client/ru_na(capitalized, temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "eat"
	switch(temp_gender)
		if(FEMALE)
			. = "eat"
		if(MALE)
			. = "eat"
	if(capitalized)
		. = capitalize(.)

/client/ru_a(capitalized, temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = ""
	switch(temp_gender)
		if(FEMALE)
			. = "a"
		if(MALE)
			. = ""
	if(capitalized)
		. = capitalize(.)

/client/ru_eto(temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "this"
	if(temp_gender == PLURAL || temp_gender == NEUTER)
		. = "these"

/client/ru_have(temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "has"
	if(temp_gender == PLURAL || temp_gender == NEUTER)
		. = "has"


//mobs(and atoms but atoms don't really matter write your own proc overrides) also have gender!
/mob/ru_who(capitalized, temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "he"
	switch(temp_gender)
		if(FEMALE)
			. = "she"
		if(MALE)
			. = "he"
		if(PLURAL)
			. = "it"
	if(capitalized)
		. = capitalize(.)

/mob/ru_ego(capitalized, temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "him"
	switch(temp_gender)
		if(FEMALE)
			. = "her"
		if(MALE)
			. = "him"
		if(PLURAL)
			. = "them"
	if(capitalized)
		. = capitalize(.)

/mob/ru_eto(capitalized, temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "this"
	switch(temp_gender)
		if(FEMALE)
			. = "this"
		if(MALE)
			. = "this"
		if(PLURAL)
			. = "this"
	if(capitalized)
		. = capitalize(.)

/mob/ru_kon(temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "th"
	switch(temp_gender)
		if(FEMALE)
			. = "aYa"
		if(MALE)
			. = "th"
		if(PLURAL)
			. = "oh"

/mob/ru_kon(temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = ""
	switch(temp_gender)
		if(FEMALE)
			. = "a"
		if(MALE)
			. = ""
		if(PLURAL)
			. = "about"

/mob/ru_was(temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "was"
	switch(temp_gender)
		if(FEMALE)
			. = "was"
		if(MALE)
			. = "was"
		if(PLURAL)
			. = "was"

/mob/ru_was(temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "eat"
	switch(temp_gender)
		if(FEMALE)
			. = "eat"
		if(MALE)
			. = "eat"
		if(PLURAL)
			. = "eat"

/mob/ru_have(temp_gender)
	if(!temp_gender)
		temp_gender = gender
	. = "has"
	if(temp_gender == PLURAL)
		. = "had"

//humans need special handling, because they can have their gender hidden
/mob/living/carbon/human/ru_who(capitalized, temp_gender)
	var/list/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))
	if((SLOT_W_UNIFORM in obscured) && skipface)
		temp_gender = PLURAL
	return ..()

/mob/living/carbon/human/ru_ego(capitalized, temp_gender)
	var/list/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))
	if((SLOT_W_UNIFORM in obscured) && skipface)
		temp_gender = PLURAL
	return ..()

/mob/living/carbon/human/ru_eto(capitalized, temp_gender)
	var/list/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))
	if((SLOT_W_UNIFORM in obscured) && skipface)
		temp_gender = PLURAL
	return ..()

/mob/living/carbon/human/ru_was(capitalized, temp_gender)
	var/list/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))
	if((SLOT_W_UNIFORM in obscured) && skipface)
		temp_gender = PLURAL
	return ..()

/mob/living/carbon/human/ru_kon(capitalized, temp_gender)
	var/list/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))
	if((SLOT_W_UNIFORM in obscured) && skipface)
		temp_gender = PLURAL
	return ..()

/mob/living/carbon/human/ru_have(capitalized, temp_gender)
	var/list/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))
	if((SLOT_W_UNIFORM in obscured) && skipface)
		temp_gender = PLURAL
	return ..()

/mob/living/carbon/human/ru_a(capitalized, temp_gender)
	var/list/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))
	if((SLOT_W_UNIFORM in obscured) && skipface)
		temp_gender = PLURAL
	return ..()