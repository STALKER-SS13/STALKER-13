/datum/crafting_recipe/
	name = ""

/// DEVICES ///

/datum/crafting_recipe/echo
	name = "echo detector"
	reqs = list(/obj/item/trash/oldcircuitboard = 4, /obj/item/trash/brokedevice/echobroke = 2, /obj/item/trash/binding_material = 1)
	result = /obj/item/detector/blink
	category = CAT_MISC

/datum/crafting_recipe/bear
	name = "bear detector"
	reqs = list(/obj/item/trash/oldcircuitboard = 4, /obj/item/trash/brokedevice/bearbroken = 2, /obj/item/trash/binding_material = 1)
	result = /obj/item/detector/bear
	category = CAT_MISC

/datum/crafting_recipe/veles
	name = "veles detector"
	reqs = list(/obj/item/trash/oldcircuitboard = 4, /obj/item/trash/brokedevice/velesbroke = 2, /obj/item/trash/binding_material = 1)
	result = /obj/item/detector/veles
	category = CAT_MISC

/*
/datum/crafting_recipe/svarog
	name = "Svarog Detector"
	reqs[] = list(/obj/item/trash/oldcircuitboard = 4, /obj/item/detector/veles = 2, /obj/item/trash/binding_material/wire)
	result = /obj/item/detector/svarog
	category = CAT_MISC
*/

/// ADDONS ///
/datum/crafting_recipe/suppressor
	name = "Universal Suppressor"
	reqs = list(/obj/item/trash/binding_material/duct_tape, /obj/item/trash/paintcan, /obj/item/trash/binding_material/steelwire)
	result = /obj/item/attachment/suppressor
	category = CAT_MISC

/// WEAPONS ///
/datum/crafting_recipe/pipe
	name = "pipe"
	reqs = list(/obj/item/trash/metalparts/metaljunk = 1,
				/obj/item/trash/binding_material = 1,)
	result = /obj/item/melee/pipe
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/nailbat
	name = "nail bat"
	reqs = list(/obj/item/melee/baseball_bat = 1,
				/obj/item/trash/binding_material = 1,
				/obj/item/trash/nail = 2)
	result = /obj/item/melee/baseball_bat/nail
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/barbbat
	name = "barbed bat"
	reqs = list(/obj/item/melee/baseball_bat = 1,
				/obj/item/trash/binding_material = 1,
				/obj/item/trash/barbwire = 2,)
	result = /obj/item/melee/baseball_bat/barbed
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/makeshiftak
	name = "makeshift ak"
	reqs = list(/obj/item/melee/pipe = 1,
				/obj/item/trash/binding_material = 5,
				/obj/item/trash/metalparts = 5,
				/obj/item/trash/igniter = 1,
				/obj/item/trash/oldplank = 3,
				/obj/item/trash/nail = 3
				)
	result = /obj/item/gun/ballistic/automatic/makeshiftak
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON


/datum/crafting_recipe/makeshiftbolt
	name = "makeshift bolt-action rifle"
	reqs = list(/obj/item/melee/pipe = 1,
				/obj/item/trash/binding_material = 3,
				/obj/item/trash/metalparts = 5,
				/obj/item/trash/igniter = 1,
				/obj/item/trash/oldplank = 3,
				/obj/item/trash/nail = 3
				)
	result = /obj/item/gun/ballistic/rifle/boltaction/makeshiftbolt
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/mosinobrez
	name = "saw-off mosin"
	reqs = list(/obj/item/gun/ballistic/rifle/boltaction/mosin = 1,
				)

	result = /obj/item/gun/ballistic/rifle/boltaction/mosinobrez
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON

/datum/crafting_recipe/sawoffbm16
	name = "saw-off bm16"
	reqs = list(/obj/item/gun/ballistic/shotgun/bm16 = 1,
				)

	result = /obj/item/gun/ballistic/shotgun/bm16/sawnoff
	category = CAT_WEAPONRY
	subcategory = CAT_WEAPON


/// FOOD ///

/// GOULASH & STEWS

/datum/crafting_recipe/stew
	name = "mutant meat and vegetable stew"
	reqs = list(/obj/item/reagent_containers/food/snacks/meat/steak/mutant = 1,
				/obj/item/reagent_containers/food/snacks/grown/mushroom = 1,
				/obj/item/reagent_containers/food/snacks/grown/beet = 1,
				/obj/item/reagent_containers/food/snacks/grown/onion = 1
				)
	result = /obj/item/reagent_containers/food/snacks/stalker/stew
	category = CAT_FOOD
//	subcategory = CAT_SOUPS

/datum/crafting_recipe/veggiestew
	name = "vegetable stew"
	reqs = list(/obj/item/reagent_containers/food/snacks/grown/potato = 1,
				/obj/item/reagent_containers/food/snacks/grown/mushroom = 1,
				/obj/item/reagent_containers/food/snacks/grown/onion = 1,
				/obj/item/reagent_containers/food/snacks/grown/garlic = 1,
				/obj/item/reagent_containers/food/snacks/grown/carrot = 1,
				)
	result = /obj/item/reagent_containers/food/snacks/stalker/veggiestew
	category = CAT_FOOD
//	subcategory = CAT_SOUPS

/datum/crafting_recipe/lowgradestew
	name = "low-grade goulash"
	reqs = list(/obj/item/reagent_containers/food/snacks/meat/steak/mutant = 2,
				/obj/item/reagent_containers/food/snacks/grown/potato = 1,
				/obj/item/reagent_containers/food/snacks/grown/mushroom = 1
				)
	result = /obj/item/reagent_containers/food/snacks/stalker/lowgradestew
	category = CAT_FOOD
//	subcategory = CAT_SOUPS

/datum/crafting_recipe/putridstew
	name = "putrid goulash"
	reqs = list(/obj/item/reagent_containers/food/snacks/grown/tato = 4,
				/obj/item/reagent_containers/food/snacks/grown/garlic = 1
				)
	result = /obj/item/reagent_containers/food/snacks/stalker/putridstew
	category = CAT_FOOD
//	subcategory = CAT_SOUPS

/datum/crafting_recipe/putrescentstew
	name = "putrescent goulash"
	reqs = list(/obj/item/reagent_containers/food/snacks/stalker/kolbasa = 2,
				/obj/item/reagent_containers/food/snacks/stalker/fermented/tomaty = 1,
				/obj/item/reagent_containers/food/snacks/grown/bayleaf = 1
				)
	result = /obj/item/reagent_containers/food/snacks/stalker/putrescentstew
	category = CAT_FOOD
//	subcategory = CAT_SOUPS

/datum/crafting_recipe/shroomstew
	name = "mushroom stew"
	reqs = list(/obj/item/reagent_containers/food/snacks/grown/mushroom = 6,
				/obj/item/reagent_containers/food/snacks/grown/bayleaf = 1
				)
	result = /obj/item/reagent_containers/food/snacks/stalker/shroomstew
	category = CAT_FOOD
//	subcategory = CAT_SOUPS

/datum/crafting_recipe/poorborscht
	name = "poor mans borscht"
	reqs = list(/obj/item/reagent_containers/food/snacks/grown/beet/red = 2,
				/obj/item/reagent_containers/food/snacks/grown/potato = 1,
				/obj/item/reagent_containers/food/condiment/pack/ketchup = 1
				)
	result = /obj/item/reagent_containers/food/snacks/stalker/borscht/poor
	category = CAT_FOOD
//	subcategory = CAT_SOUPS

/datum/crafting_recipe/borscht
	name = "plain borscht"
	reqs = list(/obj/item/reagent_containers/food/snacks/grown/beet/red = 3,
				/obj/item/reagent_containers/food/snacks/grown/potato = 2,
				/obj/item/reagent_containers/food/snacks/grown/carrot = 2
				)
	result = /obj/item/reagent_containers/food/snacks/stalker/borscht
	category = CAT_FOOD
//	subcategory = CAT_SOUPS

/datum/crafting_recipe/luxuryborscht
	name = "luxury borscht"
	reqs = list(//datum/reagent/consumable/sodiumchloride = 5,
				//datum/reagent/consumable/blackpepper = 5,
				/obj/item/reagent_containers/food/snacks/grown/beet/red = 3,
				/obj/item/reagent_containers/food/snacks/grown/potato = 2,
				/obj/item/reagent_containers/food/snacks/grown/carrot = 2,
				/obj/item/reagent_containers/food/snacks/grown/onion = 1,
				/obj/item/reagent_containers/food/snacks/grown/tomato = 2
				)
	result = /obj/item/reagent_containers/food/snacks/stalker/borscht/luxury
	category = CAT_FOOD
//	subcategory = CAT_SOUPS

/datum/crafting_recipe/food/okroshkasoup
	name = "okroshka soup"
	reqs = list(//datum/reagent/consumable/sodiumchloride = 5,
		//datum/reagent/consumable/blackpepper = 5,
		/obj/item/reagent_containers/food/snacks/meat/steak/mutant/flesh = 1,
		/obj/item/reagent_containers/food/snacks/grown/onion = 1,
		/obj/item/reagent_containers/food/snacks/grown/potato = 1,
		/obj/item/reagent_containers/food/snacks/boiledegg = 2,
		/obj/item/reagent_containers/food/snacks/stalker/konserva/snack/sirok = 1
	)
	result = /obj/item/reagent_containers/food/snacks/stalker/okroshkasoup
	category = CAT_FOOD
//	subcategory = CAT_SOUPS

/datum/crafting_recipe/food/ukha
	name = "ukha soup"
	reqs = list(
		//datum/reagent/consumable/sodiumchloride = 5,
		//datum/reagent/consumable/blackpepper = 5,
		/obj/item/reagent_containers/food/snacks/grown/citrus/lemon = 1,
		/obj/item/reagent_containers/food/snacks/grown/onion = 1,
		/obj/item/reagent_containers/food/snacks/grown/potato = 1,
		/obj/item/reagent_containers/food/snacks/grown/bayleaf = 1,
		/obj/item/reagent_containers/food/snacks/stalker/konserva/fish = 1
	)
	result = /obj/item/reagent_containers/food/snacks/stalker/ukha
	category = CAT_FOOD
//	subcategory = CAT_SOUPS

/datum/crafting_recipe/meat_goulash/rat
	name = "rat meat goulash"
	reqs = list(//datum/reagent/consumable/sodiumchloride = 5,
				//datum/reagent/consumable/blackpepper = 5,
				/obj/item/reagent_containers/food/snacks/meat/steak/mutant/rat = 1,
				/obj/item/reagent_containers/food/snacks/grown/potato = 1,
				/obj/item/reagent_containers/food/snacks/grown/tomato = 1,
				/obj/item/reagent_containers/food/snacks/grown/onion = 1,
				/obj/item/reagent_containers/food/snacks/grown/mushroom = 1,
				/obj/item/reagent_containers/food/snacks/grown/garlic = 1)
	result = /obj/item/reagent_containers/food/snacks/stalker/meatstew/rat
	category = CAT_FOOD
//	subcategory = CAT_GOULASH

/datum/crafting_recipe/meat_goulash/dog
	name = "dog meat goulash"
	reqs = list(//datum/reagent/consumable/sodiumchloride = 5,
				//datum/reagent/consumable/blackpepper = 5,
				/obj/item/reagent_containers/food/snacks/meat/steak/mutant/dog = 1,
				/obj/item/reagent_containers/food/snacks/grown/potato = 1,
				/obj/item/reagent_containers/food/snacks/grown/tomato = 1,
				/obj/item/reagent_containers/food/snacks/grown/onion = 1,
				/obj/item/reagent_containers/food/snacks/grown/mushroom = 1,
				/obj/item/reagent_containers/food/snacks/grown/garlic = 1)
	result = /obj/item/reagent_containers/food/snacks/stalker/meatstew/dog
	category = CAT_FOOD
//	subcategory = CAT_GOULASH

/datum/crafting_recipe/meat_goulash/flesh
	name = "flesh meat goulash"
	reqs = list(//datum/reagent/consumable/sodiumchloride = 5,
				//datum/reagent/consumable/blackpepper = 5,
				/obj/item/reagent_containers/food/snacks/meat/steak/mutant/flesh = 1,
				/obj/item/reagent_containers/food/snacks/grown/potato = 1,
				/obj/item/reagent_containers/food/snacks/grown/tomato = 1,
				/obj/item/reagent_containers/food/snacks/grown/onion = 1,
				/obj/item/reagent_containers/food/snacks/grown/mushroom = 1,
				/obj/item/reagent_containers/food/snacks/grown/garlic = 1)
	result = /obj/item/reagent_containers/food/snacks/stalker/meatstew/flesh
	category = CAT_FOOD
//	subcategory = CAT_GOULASH

/datum/crafting_recipe/meat_goulash/boar
	name = "boar meat goulash"
	reqs = list(//datum/reagent/consumable/sodiumchloride = 5,
				//datum/reagent/consumable/blackpepper = 5,
				/obj/item/reagent_containers/food/snacks/meat/steak/mutant/boar = 1,
				/obj/item/reagent_containers/food/snacks/grown/potato = 1,
				/obj/item/reagent_containers/food/snacks/grown/tomato = 1,
				/obj/item/reagent_containers/food/snacks/grown/onion = 1,
				/obj/item/reagent_containers/food/snacks/grown/mushroom = 1,
				/obj/item/reagent_containers/food/snacks/grown/garlic = 1)
	result = /obj/item/reagent_containers/food/snacks/stalker/meatstew/boar
	category = CAT_FOOD
//	subcategory = CAT_GOULASH

/datum/crafting_recipe/meat_goulash/snork
	name = "snork meat goulash"
	reqs = list(//datum/reagent/consumable/sodiumchloride = 5,
				//datum/reagent/consumable/blackpepper = 5,
				/obj/item/reagent_containers/food/snacks/meat/steak/mutant/snork = 1,
				/obj/item/reagent_containers/food/snacks/grown/potato = 1,
				/obj/item/reagent_containers/food/snacks/grown/tomato = 1,
				/obj/item/reagent_containers/food/snacks/grown/onion = 1,
				/obj/item/reagent_containers/food/snacks/grown/mushroom = 1,
				/obj/item/reagent_containers/food/snacks/grown/garlic = 1)
	result = /obj/item/reagent_containers/food/snacks/stalker/meatstew/snork
	category = CAT_FOOD
//	subcategory = CAT_GOULASH

/datum/crafting_recipe/meat_goulash/pseudo
	name = "pseudo dog meat goulash"
	reqs = list(//datum/reagent/consumable/sodiumchloride = 5,
				//datum/reagent/consumable/blackpepper = 5,
				/obj/item/reagent_containers/food/snacks/meat/steak/mutant/pseudo = 1,
				/obj/item/reagent_containers/food/snacks/grown/potato = 1,
				/obj/item/reagent_containers/food/snacks/grown/tomato = 1,
				/obj/item/reagent_containers/food/snacks/grown/onion = 1,
				/obj/item/reagent_containers/food/snacks/grown/mushroom = 1,
				/obj/item/reagent_containers/food/snacks/grown/garlic = 1)
	result = /obj/item/reagent_containers/food/snacks/stalker/meatstew/pseudo
	category = CAT_FOOD
//	subcategory = CAT_GOULASH

/datum/crafting_recipe/meat_goulash/bloodsucker
	name = "bloodsucker meat goulash"
	reqs = list(//datum/reagent/consumable/sodiumchloride = 5,
				//datum/reagent/consumable/blackpepper = 5,
				/obj/item/reagent_containers/food/snacks/meat/steak/mutant/bloodsucker = 1,
				/obj/item/reagent_containers/food/snacks/grown/potato = 1,
				/obj/item/reagent_containers/food/snacks/grown/tomato = 1,
				/obj/item/reagent_containers/food/snacks/grown/onion = 1,
				/obj/item/reagent_containers/food/snacks/grown/mushroom = 1,
				/obj/item/reagent_containers/food/snacks/grown/garlic = 1)
	result = /obj/item/reagent_containers/food/snacks/stalker/meatstew/bloodsucker
	category = CAT_FOOD
//	subcategory = CAT_GOULASH

/datum/crafting_recipe/meat_goulash/controller
	name = "controller meat goulash"
	reqs = list(//datum/reagent/consumable/sodiumchloride = 5,
				//datum/reagent/consumable/blackpepper = 5,
				/obj/item/reagent_containers/food/snacks/meat/steak/mutant/controller = 1,
				/obj/item/reagent_containers/food/snacks/grown/potato = 1,
				/obj/item/reagent_containers/food/snacks/grown/tomato = 1,
				/obj/item/reagent_containers/food/snacks/grown/onion = 1,
				/obj/item/reagent_containers/food/snacks/grown/mushroom = 1,
				/obj/item/reagent_containers/food/snacks/grown/garlic = 1)
	result = /obj/item/reagent_containers/food/snacks/stalker/meatstew/controller
	category = CAT_FOOD
//	subcategory = CAT_GOULASH

/datum/crafting_recipe/meat_goulash/mutantdelight
	name = "mutant delight goulash"
	reqs = list(//datum/reagent/consumable/sodiumchloride = 5,
				//datum/reagent/consumable/blackpepper = 5,
				/obj/item/reagent_containers/food/snacks/meat/slab/mutantmeat/dog_meat = 1,
				/obj/item/reagent_containers/food/snacks/meat/slab/mutantmeat/flesh_meat = 1,
				/obj/item/reagent_containers/food/snacks/meat/slab/mutantmeat/boar_meat = 1,
				/obj/item/reagent_containers/food/snacks/grown/potato = 1,
				/obj/item/reagent_containers/food/snacks/grown/tomato = 1,
				/obj/item/reagent_containers/food/snacks/grown/onion = 1,
				/obj/item/reagent_containers/food/snacks/grown/carrot = 1,
				/obj/item/reagent_containers/food/snacks/grown/mushroom = 1,
				/obj/item/reagent_containers/food/snacks/grown/garlic = 1)
	result = /obj/item/reagent_containers/food/snacks/stalker/meatstew/mutantdelight
	category = CAT_FOOD
//	subcategory = CAT_GOULASH

// SHISHKEBABS //

/datum/crafting_recipe/kebab/mutantmeatkebab
	name = "mutant meat shishkebab"
	reqs = list(
		/obj/item/trash/metalparts = 1,
		/obj/item/reagent_containers/food/snacks/meat/steak/mutant = 1
	)
	result = /obj/item/reagent_containers/food/snacks/stalker/kebab/mutantmeat
	category = CAT_FOOD
//	subcategory = CAT_SHISHKEBAB

/datum/crafting_recipe/kebab/mutantonionmeat
	name = "mutant meat shishkebab"
	reqs = list(
		/obj/item/trash/metalparts = 1,
		/obj/item/reagent_containers/food/snacks/meat/steak/mutant = 1,
		/obj/item/reagent_containers/food/snacks/grown/onion =1
	)
	result = /obj/item/reagent_containers/food/snacks/stalker/kebab/mutantonionmeat
	category = CAT_FOOD
//	subcategory = CAT_SHISHKEBAB

// RICE AND MEAT //

/datum/crafting_recipe/ricedish/flesh
	name = "rice and flesh"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/flesh = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/riceflesh
	category = CAT_FOOD
//	subcategory = CAT_RICEDISH

/datum/crafting_recipe/ricedish/boar
	name = "rice and boar"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/boar = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/riceboar
	category = CAT_FOOD
//	subcategory = CAT_RICEDISH

/datum/crafting_recipe/ricedish/dog
	name = "rice and mutant dog"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/dog = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/ricedog
	category = CAT_FOOD
//	subcategory = CAT_RICEDISH

/datum/crafting_recipe/ricedish/pseudo
	name = "rice and mutant pseudog"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/pseudo = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/ricepseudog
	category = CAT_FOOD
//	subcategory = CAT_RICEDISH

/datum/crafting_recipe/ricedish/snork
	name = "rice and snork"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/snork = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/ricesnork
	category = CAT_FOOD
//	subcategory = CAT_RICEDISH

/datum/crafting_recipe/ricedish/bloodsucker
	name = "rice and bloodsucker"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/bloodsucker = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/ricebloodsucker
	category = CAT_FOOD
//	subcategory = CAT_RICEDISH

/datum/crafting_recipe/ricedish/controller
	name = "rice and controller"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/controller = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/ricecontroller
	category = CAT_FOOD
//	subcategory = CAT_RICEDISH

/datum/crafting_recipe/ricedish/rat
	name = "rice and rat"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/rat = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/ricerat
	category = CAT_FOOD
//	subcategory = CAT_RICEDISH

// CORNED MEAT

/datum/crafting_recipe/food/corned/mutantmeat
	name = "corned mutant meat"
	reqs = list(
		/obj/item/reagent_containers/food/condiment/saltshaker,
		/obj/item/reagent_containers/food/snacks/meat/steak/mutant = 1,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 2
	)
	result = /obj/item/reagent_containers/food/snacks/corned/mutantmeat
	category = CAT_FOOD
//	subcategory = CAT_CORNED

/datum/crafting_recipe/food/corned/sausage
	name = "corned sausage"
	reqs = list(
		/obj/item/reagent_containers/food/condiment/saltshaker,
		/obj/item/reagent_containers/food/snacks/stalker/kolbasa = 1,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 2
	)
	result = /obj/item/reagent_containers/food/snacks/corned/sausage
	category = CAT_FOOD
//	subcategory = CAT_CORNED

/datum/crafting_recipe/food/corned/cannedpork
	name = "corned canned pork"
	reqs = list(
		/obj/item/reagent_containers/food/condiment/saltshaker,
		/obj/item/reagent_containers/food/snacks/stalker/konserva/MREkonserva1 = 1,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 2
	)
	result = /obj/item/reagent_containers/food/snacks/corned/cannedpork
	category = CAT_FOOD
//	subcategory = CAT_CORNED


// FERMENTED

/datum/crafting_recipe/food/fermented/sauerkraut
	name = "jar of sauerkraut"
	reqs = list(
		/obj/item/reagent_containers/food/condiment/saltshaker,
		/obj/item/trash/fermentingjar = 1,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 3
	)
	result = /obj/item/reagent_containers/food/snacks/stalker/fermented/sauerkraut
	category = CAT_FOOD
//	subcategory = CAT_FERMENTED

/datum/crafting_recipe/fermented/tomaty
	name = "jar of pickled tomatoes"
	reqs = list(
		//datum/reagent/consumable/sodiumchloride = 10,
		/obj/item/trash/fermentingjar = 1,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 3
	)
	result = /obj/item/reagent_containers/food/snacks/stalker/fermented/tomaty
	category = CAT_FOOD
//	subcategory = CAT_FERMENTED

// PASHTET

/datum/crafting_recipe/food/pashtet/mutantmix
	name = "mutant mix pashtet"
	reqs = list(
		/obj/item/reagent_containers/food/condiment/saltshaker,
		/obj/item/trash/konserva,
		/obj/item/stalker/loot/mutantparts = 2,
		/obj/item/reagent_containers/food/snacks/meat/steak/mutant = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pashtet/mutantmix
	category = CAT_FOOD
//	subcategory = CAT_PASHTET

/datum/crafting_recipe/food/pashtet/mutantmix
	name = "mutant meat pashtet"
	reqs = list(
		/obj/item/reagent_containers/food/condiment/saltshaker,
		/obj/item/trash/konserva,
		/obj/item/reagent_containers/food/snacks/meat/steak/mutant = 3
	)
	result = /obj/item/reagent_containers/food/snacks/pashtet/mutantmeatmix
	category = CAT_FOOD
//	subcategory = CAT_PASHTET

// CUTLETS

/obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant
	name = "raw mutant cutlet"
	desc = "A raw mutant meat cutlet."
	list_reagents = list("nutriment" = 5)
	bonus_reagents = list("nutriment" = 5, "vitamin" = 5)
	filling_color = "#C43C20"

/obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant/flesh
	name = "raw flesh cutlet"
	desc = "A raw flesh meat cutlet."

/obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant/boar
	name = "raw mutant boar cutlet"
	desc = "A raw mutant boar meat cutlet."

/obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant/dog
	name = "raw mutant dog cutlet"
	desc = "A raw mutant dog meat cutlet."

/obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant/pseudo
	name = "raw pseudog cutlet"
	desc = "A raw pseudo meat cutlet."

/obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant/snork
	name = "raw snork cutlet"
	desc = "A raw snork meat cutlet."

/obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant/bloodsucker
	name = "raw mutant bloodsucker cutlet"
	desc = "A raw bloodsucker meat cutlet."

/obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant/controller
	name = "rawcontroller cutlet"
	desc = "A raw controller meat cutlet."

/obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant/rat
	name = "raw rat cutlet"
	desc = "A raw rat meat cutlet."

/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant
	name = "mutant cutlet"
	desc = "A cooked mutant meat cutlet."
	icon_state = "cutlet"
	list_reagents = list("nutriment" = 5)
	bonus_reagents = list("nutriment" = 5, "vitamin" = 5)
	filling_color = "#8A5639"

/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/flesh
	name = "flesh cutlet"
	desc = "A cooked flesh meat cutlet."

/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/boar
	name = "mutant boar cutlet"
	desc = "A cooked mutant boar meat cutlet."

/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/dog
	name = "mutant dog cutlet"
	desc = "A cooked mutant dog meat cutlet."

/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/pseudo
	name = "pseudog cutlet"
	desc = "A cooked pseudo meat cutlet."

/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/snork
	name = "snork cutlet"
	desc = "A cooked snork meat cutlet."

/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/bloodsucker
	name = "mutant bloodsucker cutlet"
	desc = "A cooked bloodsucker meat cutlet."

/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/controller
	name = "controller cutlet"
	desc = "A cooked controller meat cutlet."

/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/rat
	name = "rat cutlet"
	desc = "A cooked rat meat cutlet."
