/obj/machinery/vending/sovietsoda
	name = "\improper BODA"
	desc = "Old sweet water vending machine."
	icon_state = "sovietsoda"
	product_ads = "For Tsar and Country.;Have you fulfilled your nutrition quota today?;Very nice!;We are simple people, for this is all we eat.;If there is a person, there is a problem. If there is no person, then there is no problem.;Refreshing!;Hope you're thirsty!;Over 1 million drinks sold!;Thirsty? Why not Crunk?;Please, have a drink!;Drink up!;The best drinks in the Zone!"
	products = list(/obj/item/reagent_containers/food/drinks/soda_cans/voda = 5, /obj/item/reagent_containers/food/drinks/soda_cans/energetic = 2, /obj/item/reagent_containers/food/drinks/soda_cans/crunk = 1, /obj/item/reagent_containers/food/drinks/soda_cans/purifiedwater = 2, /obj/item/reagent_containers/food/drinks/soda_cans/terragon = 2)
	contraband = list(/obj/item/reagent_containers/food/drinks/drinkingglass/filled/cola = 20)
	armor = list("melee" = 100, "bullet" = 100, "laser" = 100, "energy" = 100, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 50)
	resistance_flags = FIRE_PROOF
	default_price = 0
	extra_price = 0
//	payment_department = NO_FREEBIES