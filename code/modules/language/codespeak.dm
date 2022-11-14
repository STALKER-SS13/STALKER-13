/datum/language/codespeak
	name = "Codespeak"
	desc = "Syndicate operatives can use a series of codewords to convey complex information, while sounding like random concepts and drinks to anyone listening in."
	key = "t"
	default_priority = 0
	flags = TONGUELESS_SPEECH | LANGUAGE_HIDE_ICON_IF_NOT_UNDERSTOOD
	icon_state = "codespeak"

/datum/language/codespeak/scramble(input)
	var/lookup = check_cache(input)
	if(lookup)
		return lookup

	. = ""
	var/list/words = list()
	while(length(.) < length(input))
		words += generate_code_phrase(return_list=TRUE)
		. = jointext(words, ", ")

	. = capitalize(.)

	var/input_ending = copytext(input, length(input))

	var/static/list/endings
	if(!endings)
		endings = list("!", "?", ".")

	if(input_ending in endings)
		. += input_ending

	add_to_cache(input, .)

/obj/item/codespeak_manual
	name = "codespeak manual"
	desc = "The book's cover reads: \"Codespeak(tm) - Secure your communication with metaphors so elaborate, they seem randomly generated!\""
	icon = 'icons/obj/library.dmi'
	icon_state = "book2"
	var/charges = 1
	var/language_name = "Codespeak"
	var/language_to_add = /datum/language/codespeak

/obj/item/codespeak_manual/attack_self(mob/living/user)
	if(!isliving(user))
		return

	if(user.has_language(language_to_add))
		to_chat(user, "<span class='boldannounce'>You start skimming through [src], but you already know [language_name].</span>")
		return

	to_chat(user, "<span class='boldannounce'>You start skimming through [src], and suddenly your mind is filled with euphemisms and relative knowledge.</span>")
	user.grant_language(language_to_add)

	use_charge(user)

/obj/item/codespeak_manual/proc/use_charge(mob/user)
	charges--
	if(!charges)
		var/turf/T = get_turf(src)
		T.visible_message("<span class='warning'>The cover and contents of [src] start crumbling under its age. It is nothing but useless scrap.</span>")

		qdel(src)

/obj/item/codespeak_manual/unlimited
	name = "deluxe codespeak manual"
	charges = INFINITY

/obj/item/codespeak_manual/russian
	name = "russian language book thing"
	desc = "to be done"
	icon_state = "book1"
	language_name = "Russian"
	language_to_add = /datum/language/russian

/obj/item/codespeak_manual/ukrainian
	name = "ukrainian language book thing"
	desc = "to be done"
	icon_state = "book1"
	language_name = "Ukrainian"
	language_to_add = /datum/language/ukrainian

/obj/item/codespeak_manual/english
	name = "english language book thing"
	desc = "to be done"
	icon_state = "book1"
	language_name = "English"
	language_to_add = /datum/language/english

/obj/item/codespeak_manual/german
	name = "german language book thing"
	desc = "to be done"
	icon_state = "book1"
	language_name = "German"
	language_to_add = /datum/language/german
