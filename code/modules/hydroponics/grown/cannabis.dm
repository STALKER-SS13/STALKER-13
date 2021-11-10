// Cannabis
/obj/item/seeds/cannabis
	name = "pack of cannabis seeds"
	desc = "Taxable."
	icon_state = "seed-cannabis"
	species = "cannabis"
	plantname = "Cannabis Plant"
	product = /obj/item/reagent_containers/food/snacks/grown/cannabis
	maturation = 8
	potency = 20
	growthstages = 1
	growing_icon = 'goon/icons/obj/hydroponics.dmi'
	icon_grow = "cannabis-grow" // Uses one growth icons set for all the subtypes
	icon_dead = "cannabis-dead" // Same for the dead icon
	genes = list(/datum/plant_gene/trait/repeated_harvest)
	mutatelist = list(/obj/item/seeds/cannabis/violetriot,
						/obj/item/seeds/cannabis/death,
						/obj/item/seeds/cannabis/white,
						/obj/item/seeds/cannabis/neonpeon)
	reagents_add = list("lsd" = 0.15, "lipolicide" = 0.35) // gives u the munchies


/obj/item/seeds/cannabis/violetriot
	name = "pack of violet riot weed seeds"
	desc = "These seeds grow into the violent riot strain of weed. Groovy."
	icon_state = "seed-violetriotcannabis"
	species = "violetriotcannabis"
	plantname = "Violet Riot Weed"
	product = /obj/item/reagent_containers/food/snacks/grown/cannabis/violetriot
	mutatelist = list()
	reagents_add = list("mindbreaker" = 0.15, "lipolicide" = 0.35)
	rarity = 40

/obj/item/seeds/cannabis/death
	name = "pack of deathweed seeds"
	desc = "These seeds grow into deathweed. Not groovy."
	icon_state = "seed-blackcannabis"
	species = "blackcannabis"
	plantname = "Deathweed"
	product = /obj/item/reagent_containers/food/snacks/grown/cannabis/death
	mutatelist = list()
	reagents_add = list("cyanide" = 0.35, "lsd" = 0.15, "lipolicide" = 0.15)
	rarity = 40

/obj/item/seeds/cannabis/white
	name = "pack of lifeweed seeds"
	desc = "I will give unto him that is munchies of the fountain of the cravings of life, freely."
	icon_state = "seed-whitecannabis"
	species = "whitecannabis"
	plantname = "Lifeweed"
	product = /obj/item/reagent_containers/food/snacks/grown/cannabis/white
	mutatelist = list()
	reagents_add = list("omnizine" = 0.35, "lsd" = 0.15, "lipolicide" = 0.15)
	rarity = 40


/obj/item/seeds/cannabis/neonpeon
	name = "pack of neon peon weed seeds"
	desc = "These seeds grow into neon peon weed."
	icon_state = "seed-neonpeoncannabis"
	species = "neonpeoncannabis"
	plantname = "Neon Peon Weed"
	product = /obj/item/reagent_containers/food/snacks/grown/cannabis/neonpeon
	mutatelist = list()
	reagents_add = list("lsd" = 0.15,
						"mercury" = 0.15,
						"lithium" = 0.15,
						"atropine" = 0.15,
						"haloperidol" = 0.15,
						"methamphetamine" = 0.15,
						"capsaicin" = 0.15,
						"barbers_aid" = 0.15,
						"bath_salts" = 0.15,
						"itching_powder" = 0.15,
						"crank" = 0.15,
						"krokodil" = 0.15,
						"histamine" = 0.15,
						"lipolicide" = 0.15)
	rarity = 69


// ---------------------------------------------------------------

/obj/item/reagent_containers/food/snacks/grown/cannabis
	seed = /obj/item/seeds/cannabis
	icon = 'goon/icons/obj/hydroponics.dmi'
	name = "cannabis nug"
	desc = "It has a pungent, earthy smell."
	icon_state = "cannabisnug"
	filling_color = "#00FF00"
	bitesize_mod = 2
	foodtype = VEGETABLES //i dont really know what else weed could be to be honest
	tastes = list("cannabis" = 1)
	wine_power = 20

/obj/item/reagent_containers/food/snacks/grown/cannabis/violetriot
	seed = /obj/item/seeds/cannabis/violetriot
	name = "violet riot cannabis nug"
	desc = "It has a soothing earthy stench to it that has a hint of lavender."
	icon_state = "violetriotcannabisnug"
	wine_power = 60

/obj/item/reagent_containers/food/snacks/grown/cannabis/death
	seed = /obj/item/seeds/cannabis/death
	name = "death cannabis leaf"
	desc = "Looks a bit dark. Oh well."
	icon_state = "blackcannabis"
	wine_power = 40

/obj/item/reagent_containers/food/snacks/grown/cannabis/white
	seed = /obj/item/seeds/cannabis/white
	name = "white cannabis leaf"
	desc = "It feels smooth and nice to the touch."
	icon_state = "whitecannabis"
	wine_power = 10

/obj/item/reagent_containers/food/snacks/grown/cannabis/neonpeon
	seed = /obj/item/seeds/cannabis/neonpeon
	name = "neon peon nug"
	desc = "The nug emits a thin, wispy, green vapor that smells of sulfur married to a sickly sweet odor."
	icon_state = "neonpeoncannabisnug"
	volume = 420
	wine_power = 90
