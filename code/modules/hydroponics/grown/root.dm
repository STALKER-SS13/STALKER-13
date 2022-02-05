// Carrot
/obj/item/seeds/carrot
	name = "pack of carrot seeds"
	desc = "These seeds grow into carrots."
	icon_state = "seed-carrot"
	species = "carrot"
	plantname = "Carrots"
	product = /obj/item/reagent_containers/food/snacks/grown/carrot
	maturation = 10
	production = 1
	yield = 5
	growthstages = 3
	growing_icon = 'icons/obj/hydroponics/growing_vegetables.dmi'
	mutatelist = list(/obj/item/seeds/carrot/parsnip)
	reagents_add = list("oculine" = 0.25, "vitamin" = 0.04, "nutriment" = 0.05)

/obj/item/reagent_containers/food/snacks/grown/carrot
	seed = /obj/item/seeds/carrot
	name = "carrot"
	desc = "It's good for the eyes!"
	icon_state = "carrot"
	filling_color = "#FFA500"
	bitesize_mod = 2
	foodtype = VEGETABLES
	juice_results = list("carrotjuice" = 0)
	wine_power = 30

/obj/item/reagent_containers/food/snacks/grown/carrot/attackby(obj/item/I, mob/user, params)
	if(I.is_sharp())
		to_chat(user, "<span class='notice'>You sharpen the carrot into a shiv with [I].</span>")
		var/obj/item/kitchen/knife/carrotshiv/Shiv = new /obj/item/kitchen/knife/carrotshiv
		remove_item_from_storage(user)
		qdel(src)
		user.put_in_hands(Shiv)
	else
		return ..()

/obj/item/seeds/carrot/zona
	name = "pack of mutant carrot seeds"
	desc = "These seeds grow into carrots."
	icon_state = "seed-carrot"
	species = "zona carrot"
	plantname = "Carrots"
	product = /obj/item/reagent_containers/food/snacks/grown/carrot/zona
	maturation = 10
	production = 1
	yield = 5
	growthstages = 3
	growing_icon = 'icons/obj/hydroponics/growing_vegetables.dmi'
	mutatelist = list(/obj/item/seeds/carrot/parsnip)
	reagents_add = list("oculine" = 0.25, "vitamin" = 0.04, "nutriment" = 0.05, "uranium" = 0.25)

/obj/item/reagent_containers/food/snacks/grown/carrot/zona
	seed = /obj/item/seeds/carrot/zona
	name = "decrepit carrot"
	desc = "It's good for the eyes! This one seems sickly."
	icon_state = "zonacarrot"
	filling_color = "#FFA500"
	bitesize_mod = 2
	foodtype = VEGETABLES
	juice_results = list("carrotjuice" = 0)
	wine_power = 30

/obj/item/reagent_containers/food/snacks/grown/carrot/zona/attackby(obj/item/I, mob/user, params)
	if(I.is_sharp())
		to_chat(user, "<span class='notice'>You sharpen the carrot into a shiv with [I].</span>")
		var/obj/item/kitchen/knife/carrotshiv/Shiv = new /obj/item/kitchen/knife/carrotshiv
		remove_item_from_storage(user)
		qdel(src)
		user.put_in_hands(Shiv)
	else
		return ..()

// Parsnip
/obj/item/seeds/carrot/parsnip
	name = "pack of parsnip seeds"
	desc = "These seeds grow into parsnips."
	icon_state = "seed-parsnip"
	species = "zona parsnip"
	plantname = "Parsnip"
	product = /obj/item/reagent_containers/food/snacks/grown/carrot/parsnip
	icon_dead = "carrot-dead"
	mutatelist = list()
	reagents_add = list("vitamin" = 0.05, "nutriment" = 0.05)

/obj/item/reagent_containers/food/snacks/grown/carrot/parsnip
	seed = /obj/item/seeds/carrot/parsnip
	name = "decrepit parsnip"
	desc = "Closely related to carrots."
	icon_state = "parsnip"
	bitesize_mod = 2
	foodtype = VEGETABLES
	wine_power = 35

/obj/item/seeds/carrot/parsnip/zona
	name = "pack of mutant parsnip seeds"
	desc = "These seeds grow into parsnips."
	icon_state = "seed-parsnip"
	species = "zona parsnip"
	plantname = "Parsnip"
	product = /obj/item/reagent_containers/food/snacks/grown/carrot/parsnip/zona
	icon_dead = "carrot-dead"
	mutatelist = list()
	reagents_add = list("vitamin" = 0.05, "nutriment" = 0.05, "uranium" = 0.25)

/obj/item/reagent_containers/food/snacks/grown/carrot/parsnip/zona
	seed = /obj/item/seeds/carrot/parsnip/zona
	name = "decrepit parsnip"
	desc = "Closely related to carrots. This one looks sickly."
	icon_state = "zonaparsnip"
	bitesize_mod = 2
	foodtype = VEGETABLES
	wine_power = 35

// White-Beet
/obj/item/seeds/beet/white
	name = "pack of white-beet seeds"
	desc = "These seeds grow into sugary beet producing plants."
	icon_state = "seed-beet/white"
	species = "whitebeet"
	plantname = "white-beet plants"
	product = /obj/item/reagent_containers/food/snacks/grown/beet/white
	lifespan = 60
	endurance = 50
	yield = 6
	growing_icon = 'icons/obj/hydroponics/growing_vegetables.dmi'
	icon_dead = "beet/white-dead"
	mutatelist = list(/obj/item/seeds/beet/red)
	reagents_add = list("vitamin" = 0.04, "sugar" = 0.2, "nutriment" = 0.05)

/obj/item/reagent_containers/food/snacks/grown/beet/white
	seed = /obj/item/seeds/beet/white
	name = "white-beet"
	desc = "You can't beat white-beet."
	icon_state = "whitebeet"
	filling_color = "#F4A460"
	bitesize_mod = 2
	foodtype = VEGETABLES
	wine_power = 40

/obj/item/seeds/beet/white/zona
	name = "pack of mutant white-beet seeds"
	desc = "These seeds grow into sugary beet producing plants."
	icon_state = "seed-beet/white"
	species = "zona whitebeet"
	plantname = "white-beet plants"
	product = /obj/item/reagent_containers/food/snacks/grown/beet/white/zona
	lifespan = 60
	endurance = 50
	yield = 6
	growing_icon = 'icons/obj/hydroponics/growing_vegetables.dmi'
	icon_dead = "beet/white-dead"
	mutatelist = list(/obj/item/seeds/beet/red/zona)
	reagents_add = list("vitamin" = 0.04, "sugar" = 0.2, "nutriment" = 0.05, "uranium" = 0.25)

/obj/item/reagent_containers/food/snacks/grown/beet/white/zona
	seed = /obj/item/seeds/beet/white/zona
	name = "decrepit white-beet"
	desc = "You can't beat white-beet. This one looks sickly."
	icon_state = "zonawhitebeet"
	filling_color = "#F4A460"
	bitesize_mod = 2
	foodtype = VEGETABLES
	wine_power = 40

// Red Beet
/obj/item/seeds/beet/red
	name = "pack of redbeet seeds"
	desc = "These seeds grow into red beet producing plants."
	icon_state = "seed-beet/red"
	species = "redbeet"
	plantname = "red-beet plants"
	product = /obj/item/reagent_containers/food/snacks/grown/beet/red
	lifespan = 60
	endurance = 50
	yield = 6
	growing_icon = 'icons/obj/hydroponics/growing_vegetables.dmi'
	icon_dead = "whitebeet-dead"
	genes = list(/datum/plant_gene/trait/maxchem)
	reagents_add = list("vitamin" = 0.05, "nutriment" = 0.05)

/obj/item/reagent_containers/food/snacks/grown/beet/red
	seed = /obj/item/seeds/beet/red
	name = "red-beet"
	desc = "You can't beat red beet."
	icon_state = "redbeet"
	bitesize_mod = 2
	foodtype = VEGETABLES
	wine_power = 60

/obj/item/seeds/beet/red/zona
	name = "pack of redbeet seeds"
	desc = "These seeds grow into red beet producing plants."
	icon_state = "seed-beet/red"
	species = "zona redbeet"
	plantname = "red-beet plants"
	product = /obj/item/reagent_containers/food/snacks/grown/beet/red/zona
	lifespan = 60
	endurance = 50
	yield = 6
	growing_icon = 'icons/obj/hydroponics/growing_vegetables.dmi'
	icon_dead = "whitebeet-dead"
	genes = list(/datum/plant_gene/trait/maxchem)
	reagents_add = list("vitamin" = 0.05, "nutriment" = 0.05, "uranium" = 0.25)

/obj/item/reagent_containers/food/snacks/grown/beet/red/zona
	seed = /obj/item/seeds/beet/red/zona
	name = "red-beet"
	desc = "You can't beat red beet. This one looks sickly."
	icon_state = "zonaredbeet"
	bitesize_mod = 2
	foodtype = VEGETABLES
	wine_power = 60