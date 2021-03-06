

////////////////////////////////////////////////KEBABS////////////////////////////////////////////////

/datum/crafting_recipe/food/humankebab
	name = "Human kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/reagent_containers/food/snacks/meat/steak/plain/human = 2
	)
	result = /obj/item/reagent_containers/food/snacks/kebab/human
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/kebab
	name = "Kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/reagent_containers/food/snacks/meat/steak = 2
	)
	result = /obj/item/reagent_containers/food/snacks/kebab/monkey
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/tofukebab
	name = "Tofu kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/reagent_containers/food/snacks/tofu = 2
	)
	result = /obj/item/reagent_containers/food/snacks/kebab/tofu
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/tailkebab
	name = "Lizard tail kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/organ/tail/lizard = 1
	)
	result = /obj/item/reagent_containers/food/snacks/kebab/tail
	subcategory = CAT_MEAT

// see code/module/crafting/table.dm

////////////////////////////////////////////////FISH////////////////////////////////////////////////

/datum/crafting_recipe/food/cubancarp
	name = "Cuban carp"
	reqs = list(
		/datum/reagent/consumable/flour = 5,
		/obj/item/reagent_containers/food/snacks/grown/chili = 1,
		/obj/item/reagent_containers/food/snacks/carpmeat = 1
	)
	result = /obj/item/reagent_containers/food/snacks/cubancarp
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/fishandchips
	name = "Fish and chips"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/fries = 1,
		/obj/item/reagent_containers/food/snacks/carpmeat = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fishandchips
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/fishfingers
	name = "Fish fingers"
	reqs = list(
		/datum/reagent/consumable/flour = 5,
		/obj/item/reagent_containers/food/snacks/bun = 1,
		/obj/item/reagent_containers/food/snacks/carpmeat = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fishfingers
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/sashimi
	name = "Sashimi"
	reqs = list(
		/datum/reagent/consumable/soysauce = 5,
		/obj/item/reagent_containers/food/snacks/spidereggs = 1,
		/obj/item/reagent_containers/food/snacks/carpmeat = 1
	)
	result = /obj/item/reagent_containers/food/snacks/sashimi
	subcategory = CAT_MEAT

////////////////////////////////////////////////MR SPIDER////////////////////////////////////////////////

/datum/crafting_recipe/food/spidereggsham
	name = "Spider eggs ham"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 1,
		/obj/item/reagent_containers/food/snacks/spidereggs = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/spider = 2
	)
	result = /obj/item/reagent_containers/food/snacks/spidereggsham
	subcategory = CAT_MEAT

////////////////////////////////////////////////MISC RECIPE's////////////////////////////////////////////////

/datum/crafting_recipe/food/cornedbeef
	name = "Corned beef"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 5,
		/obj/item/reagent_containers/food/snacks/meat/steak = 1,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 2
	)
	result = /obj/item/reagent_containers/food/snacks/cornedbeef
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/bearsteak
	name = "Filet migrawr"
	reqs = list(
		/datum/reagent/consumable/ethanol/manly_dorf = 5,
		/obj/item/reagent_containers/food/snacks/meat/steak/bear = 1,
	)
	tools = list(/obj/item/lighter)
	result = /obj/item/reagent_containers/food/snacks/bearsteak
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/enchiladas
	name = "Enchiladas"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 2,
		/obj/item/reagent_containers/food/snacks/grown/chili = 2,
		/obj/item/reagent_containers/food/snacks/tortilla = 2
	)
	result = /obj/item/reagent_containers/food/snacks/enchiladas
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/stewedsoymeat
	name = "Stewed soymeat"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/soydope = 2,
		/obj/item/reagent_containers/food/snacks/grown/carrot = 1,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 1
	)
	result = /obj/item/reagent_containers/food/snacks/stewedsoymeat
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/sausage
	name = "Sausage"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/faggot = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 2
	)
	result = /obj/item/reagent_containers/food/snacks/sausage
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/nugget
	name = "Chicken nugget"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 1
	)
	result = /obj/item/reagent_containers/food/snacks/nugget
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/rawkhinkali
	name = "Raw Khinkali"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/doughslice = 1,
		/obj/item/reagent_containers/food/snacks/faggot = 1
	)
	result =  /obj/item/reagent_containers/food/snacks/rawkhinkali
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/pigblanket
	name = "Pig in a Blanket"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/bun = 1,
		/obj/item/reagent_containers/food/snacks/butter = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 1
	)
	result = /obj/item/reagent_containers/food/snacks/pigblanket
	subcategory = CAT_MEAT
/*
/datum/crafting_recipe/food/ratkebab
	name = "Rat Kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/reagent_containers/food/snacks/deadmouse = 1
	)
	result = /obj/item/reagent_containers/food/snacks/kebab/rat
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/doubleratkebab
	name = "Double Rat Kebab"
	reqs = list(
		/obj/item/stack/rods = 1,
		/obj/item/reagent_containers/food/snacks/deadmouse = 2
	)
	result = /obj/item/reagent_containers/food/snacks/kebab/rat/double
	subcategory = CAT_MEAT
*/
/datum/crafting_recipe/food/ricepork
	name = "Rice and pork"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/ricepork
	subcategory = CAT_MEAT

// STALKER Foods

/datum/crafting_recipe/food/mutantmeatkebab
	name = "mutant meat kebab"
	reqs = list(
		/obj/item/trash/metalparts = 1,
		/obj/item/reagent_containers/food/snacks/meat/steak/mutant = 1
	)
	result = /obj/item/reagent_containers/food/snacks/stalker/kebab/mutantmeat
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/mutantonionmeatkebab
	name = "mutant meat kebab"
	reqs = list(
		/obj/item/trash/metalparts = 1,
		/obj/item/reagent_containers/food/snacks/meat/steak/mutant = 1,
		/obj/item/reagent_containers/food/snacks/grown/onion =1
	)
	result = /obj/item/reagent_containers/food/snacks/stalker/kebab/mutantonionmeat
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/ricepork
	name = "rice and flesh"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/flesh = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/riceflesh
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/riceboar
	name = "rice and boar"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/boar = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/riceboar
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/ricedog
	name = "rice and mutant dog"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/dog = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/ricedog
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/ricepseudo
	name = "rice and mutant pseudog"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/pseudo = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/ricepseudog
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/ricesnork
	name = "rice and snork"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/snork = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/ricesnork
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/ricebloodsucker
	name = "rice and bloodsucker"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/bloodsucker = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/ricebloodsucker
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/ricecontroller
	name = "rice and controller"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/controller = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/ricecontroller
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/ricerat
	name = "rice and rat"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/salad/boiledrice = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet/mutant/rat = 2
	)
	result = /obj/item/reagent_containers/food/snacks/salad/ricerat
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/cornedmutantmeat
	name = "Corned mutant meat"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 5,
		/obj/item/reagent_containers/food/snacks/meat/steak/mutant = 1,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 2
	)
	result = /obj/item/reagent_containers/food/snacks/corned/mutantmeat
	subcategory = CAT_MEAT
/*
/datum/crafting_recipe/food/cornedbeef
	name = "Corned beef"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 5,
		/obj/item/reagent_containers/food/snacks/meat/steak = 1,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 2
	)
	result = /obj/item/reagent_containers/food/snacks/cornedbeef
	subcategory = CAT_MEAT
	*/