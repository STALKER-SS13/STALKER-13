/obj/machinery/vending/boozeomat
	name = "\improper Booze Dispenser"
	desc = "A smart fridge which holds everything one would need to run a bar."
	icon_state = "boozeomat"
	icon_deny = "boozeomat-deny"
	products = list(/obj/item/reagent_containers/food/drinks/drinkingglass = 30,
					/obj/item/reagent_containers/food/drinks/drinkingglass/shotglass = 12,
					/obj/item/reagent_containers/food/drinks/ice = 5,
					/obj/item/reagent_containers/food/drinks/bottle/orangejuice = 2,
					/obj/item/reagent_containers/food/drinks/bottle/tomatojuice = 2,
					/obj/item/reagent_containers/food/drinks/bottle/limejuice = 2,
					/obj/item/reagent_containers/food/drinks/bottle/cream = 2,
					/obj/item/reagent_containers/food/drinks/soda_cans/cola = 2,
					/obj/item/reagent_containers/food/drinks/soda_cans/tonic = 2,
					/obj/item/reagent_containers/food/drinks/soda_cans/sodawater = 2,
					/obj/item/reagent_containers/food/drinks/bottle/grenadine = 2,
					/obj/item/reagent_containers/food/drinks/bottle/menthol = 2,
					/obj/item/reagent_containers/food/drinks/soda_cans/terragon = 2,
					/obj/item/reagent_containers/food/drinks/soda_cans/pineapple = 2,
					/obj/item/reagent_containers/food/drinks/soda_cans/purifiedwater = 2,
					/obj/item/reagent_containers/food/drinks/soda_cans/zonetea = 1,
					/obj/item/reagent_containers/food/drinks/soda_cans/voda = 2,
					/obj/item/reagent_containers/food/drinks/ale = 1,
					/obj/item/reagent_containers/food/drinks/beer = 6,
					/obj/item/reagent_containers/food/drinks/bottle/gin = 1,
		            /obj/item/reagent_containers/food/drinks/bottle/whiskey = 1,
					/obj/item/reagent_containers/food/drinks/bottle/tequila = 1,
					/obj/item/reagent_containers/food/drinks/bottle/vodka = 1,
					/obj/item/reagent_containers/food/drinks/bottle/vermouth = 1,
					/obj/item/reagent_containers/food/drinks/bottle/rum = 1,
					/obj/item/reagent_containers/food/drinks/bottle/wine = 1,
					/obj/item/reagent_containers/food/drinks/bottle/cognac = 1,
					/obj/item/reagent_containers/food/drinks/bottle/kahlua = 1,
					/obj/item/reagent_containers/food/drinks/bottle/hcider = 1,
					/obj/item/reagent_containers/food/drinks/bottle/absinthe = 1,
					/obj/item/reagent_containers/food/drinks/bottle/grappa = 1,
					/obj/item/reagent_containers/food/drinks/bottle/sake = 1,
					/obj/item/reagent_containers/food/drinks/soda_cans/lowqualbeer = 6,
					/obj/item/reagent_containers/food/drinks/soda_cans/highqualbeer = 6,
					)
	contraband = list(/obj/item/reagent_containers/food/drinks/mug/tea = 12,
					  /obj/item/reagent_containers/food/drinks/bottle/fernet = 2)
	premium = list(/obj/item/reagent_containers/glass/bottle/ethanol = 2)
	product_slogans = "Na Zdorovie!!;Alcohol is humanity's friend, and unlike other humans it wont let you down!;Quite delighted to serve you the most delicious drinks in the Zone!;Is nobody thirsty on the Zone??"
	product_ads = "Na Zdorovie!!;Drink up!;Booze is good for you!;Alcohol is humanity's friend, and unlike other humans it wont let you down!;Quite delighted to serve you the most delicious drinks in the Zone!;Care for a nice, cold beer?;Nothing cures you like booze!;Have a sip!;Have a drink!;Have a beer!;Beer is good for you!;Only the finest alcohol!;Best quality booze since 1989!;Award-winning wine!;Maximum alcohol!;Man loves beer.;A toast for progress!"
//	req_access = list(ACCESS_BAR)
	refill_canister = /obj/item/vending_refill/boozeomat
	default_price = 0
	extra_price = 0
//	payment_department = ACCOUNT_SRV

/obj/machinery/vending/boozeomat/all_access
	desc = "A technological marvel, supposedly able to mix just the mixture you'd like to drink the moment you ask for one. This model appears to have no access restrictions."
	req_access = null
//	scan_id = 0
	onstation = FALSE

/obj/machinery/vending/boozeomat/pubby_maint //abandoned bar on Pubbystation
	products = list(/obj/item/reagent_containers/food/drinks/bottle/whiskey = 1,
			/obj/item/reagent_containers/food/drinks/bottle/absinthe = 1,
			/obj/item/reagent_containers/food/drinks/bottle/limejuice = 1,
			/obj/item/reagent_containers/food/drinks/bottle/cream = 1,
			/obj/item/reagent_containers/food/drinks/soda_cans/tonic = 1,
			/obj/item/reagent_containers/food/drinks/drinkingglass = 10,
			/obj/item/reagent_containers/food/drinks/ice = 3,
			/obj/item/reagent_containers/food/drinks/drinkingglass/shotglass = 6,
			/obj/item/reagent_containers/food/drinks/flask = 1)
	req_access = null

/obj/machinery/vending/boozeomat/pubby_captain //Captain's quarters on Pubbystation
	products = list(/obj/item/reagent_containers/food/drinks/bottle/rum = 1,
					/obj/item/reagent_containers/food/drinks/bottle/wine = 1,
					/obj/item/reagent_containers/food/drinks/ale = 1,
					/obj/item/reagent_containers/food/drinks/drinkingglass = 6,
					/obj/item/reagent_containers/food/drinks/ice = 1,
					/obj/item/reagent_containers/food/drinks/drinkingglass/shotglass = 4);
	req_access = list(ACCESS_CAPTAIN)

/obj/machinery/vending/boozeomat/syndicate_access
	req_access = list(ACCESS_SYNDICATE)

/obj/item/vending_refill/boozeomat
	machine_name = "Booze-O-Mat"
	icon_state = "refill_booze"
