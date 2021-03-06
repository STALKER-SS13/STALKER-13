// Tobacco
/obj/item/seeds/tobacco
	name = "pack of tobacco seeds"
	desc = "These seeds grow into tobacco plants."
	icon_state = "seed-tobacco"
	species = "tobacco"
	plantname = "Tobacco Plant"
	product = /obj/item/reagent_containers/food/snacks/grown/tobacco
	lifespan = 20
	maturation = 5
	production = 5
	yield = 10
	growthstages = 3
	icon_dead = "tobacco-dead"
	mutatelist = list(/obj/item/seeds/tobacco/strong)
	reagents_add = list("nicotine" = 0.03, "nutriment" = 0.03)

/obj/item/reagent_containers/food/snacks/grown/tobacco
	seed = /obj/item/seeds/tobacco
	name = "tobacco leaves"
	desc = "Dry them out to make some smokes."
	icon_state = "tobacco_leaves"
	filling_color = "#008000"
	distill_reagent = "creme_de_menthe" //Menthol, I guess.

// Strong Tobacco
/obj/item/seeds/tobacco/strong
	name = "pack of strong tobacco seeds"
	desc = "These seeds grow into strong tobacco plants."
	icon_state = "seed-stobacco"
	species = "stobacco"
	plantname = "Strong Tobacco Plant"
	product = /obj/item/reagent_containers/food/snacks/grown/tobacco/strong
	mutatelist = list()
	reagents_add = list("salbutamol" = 0.05, "nicotine" = 0.08, "nutriment" = 0.03)
	rarity = 20

/obj/item/reagent_containers/food/snacks/grown/tobacco/strong
	seed = /obj/item/seeds/tobacco/strong
	name = "strong tobacco leaves"
	desc = "Dry them out to make some strong smokes."
	icon_state = "stobacco_leaves"
	distill_reagent = null
	wine_power = 50