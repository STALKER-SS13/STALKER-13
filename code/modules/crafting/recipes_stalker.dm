/datum/crafting_recipe/
	name = ""

/// DEVICES ///

/datum/crafting_recipe/bear
	name = "Bear Detector"
	reqs = list(/obj/item/trash/oldcircuitboard = 4, /obj/item/detector/blink = 2, /obj/item/trash/wire)
	result = /obj/item/detector/bear
	category = CAT_MISC

/datum/crafting_recipe/veles
	name = "Veles Detector"
	reqs = list(/obj/item/trash/oldcircuitboard = 4, /obj/item/detector/bear = 2, /obj/item/trash/wire)
	result = /obj/item/detector/veles
	category = CAT_MISC

/*
/datum/crafting_recipe/svarog
	name = "Svarog Detector"
	reqs[] = list(/obj/item/trash/oldcircuitboard = 4, /obj/item/detector/veles = 2, /obj/item/trash/wire)
	result = /obj/item/detector/svarog
	category = CAT_MISC
*/

/// ADDONS ///
/datum/crafting_recipe/suppressor
	name = "Universal Suppressor"
	reqs = list(/obj/item/trash/duct_tape, /obj/item/trash/paintcan, /obj/item/trash/steelwire)
	result = /obj/item/attachment/suppressor
	category = CAT_MISC

/// WEAPONS ///
/datum/crafting_recipe/pipe
	name = "Pipe"
	reqs = list(/obj/item/trash/metaljunk, /obj/item/trash/duct_tape)
	result = /obj/item/melee/pipe
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON