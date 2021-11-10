/obj/item/reagent_containers/food/drinks/soda_cans/energetic
	name = "energy drink"
	desc = "Excellent energy drink Non-Stop. Contains caffeine, taurine, and a powerful vitamin complex that relieves fatigue and adds strength. Feel like you need a boost? Then this is exactly what you need."
	eng_desc = "Great energy drink. Contains caffeine, taurine and lots of vitamines. Can't make a step? Then it's what you need."
	icon = 'stalker/icons/food.dmi'
	icon_state = "nonstop"
	list_reagents = list("energetic" = 10, "water" = 20)
	w_class = 2


// Alcoholism redoes drinks below here. Above needs to be redone if still exists.
// FROM WORST TO BEST (If that exists!)


// VODKA
/* ////// REMOVED SO MARRONES POTATO UPDATE CAN BE SHIFTED
/obj/item/reagent_containers/food/drinks/bottle/vodka/stalkervodka
	name = "Zone-Produced vodka"
	desc = "Vodka produced by the desperation of some 'ingenious' stalkers using local mushrooms and wild-grasses. It tastes and smells like filthy piss, but it'll do the job cheap!"
	icon = 'stalker/icons/food.dmi'
	icon_state = "stalker_vodka"
	list_reagents = list("stalkervodka" = 100) */

/obj/item/reagent_containers/food/drinks/bottle/vodka/kazaki
	name = "Cossacks vodka"
	desc = "Vodka by ukrainian company GSC. Easy to drink. Can reduce radiation from human's body."
	eng_desc = "Vodka by ukrainian company GSC. Easy to drink. Can reduce radiation from human's body."
	icon = 'stalker/icons/food.dmi'
	icon_state = "gsc_vodka"
	list_reagents = list("vodka" = 90, "potass_iodide" = 10)

/obj/item/reagent_containers/food/drinks/bottle/vodka/stolichnaya
	name = "Stolichnaya vodka"
	desc = "Vodka which comes from some of Russia's oldest distilleries. Smooth in both flavour and burn. Some Stalkers swear by it's ability to cure radiation poisoning!"
	icon = 'icons/obj/drinks.dmi'
	icon_state = "stolichnaya"
	list_reagents = list("vodka" = 80, "potass_iodide" = 20)
	w_class = 2

/obj/item/reagent_containers/food/drinks/bottle/vodka/blacklabelvodka
	name = "Black-Label vodka"
	desc = "Produced in the European Union. This grain-alcohol is proof that even in The Zone? Luxury can be found! A potent and energetic drink!"
	icon = 'icons/obj/drinks.dmi'
	icon_state = "blacklabel_vodka"
	list_reagents = list("vodka" = 70, "potass_iodide" = 20, "energetic" = 10)
	w_class = 2


// BEER

/obj/item/reagent_containers/food/drinks/soda_cans/lowqualbeer
	name = "Ukrainian Beer"
	desc = "Refreshing wheat-beer made in the Ukraine."
	icon = 'stalker/icons/food.dmi'
	icon_state = "pivo"
	list_reagents = list("beer" = 40)
	w_class = 2

/obj/item/reagent_containers/food/drinks/soda_cans/highqualbeer
	name = "Russian Beer"
	desc = "Tasty and thick Imperial Dark-Stout made in Russia."
	icon = 'stalker/icons/food.dmi'
	icon_state = "pivo2"
	list_reagents = list("ale" = 38, "omnizine" = 2)
	w_class = 2

// JUICE & DRINKS

/obj/item/reagent_containers/food/drinks/soda_cans/terragon
	name = "Terragon Soda"
	desc = "Refreshing and slightly sweet Terragon soda!"
	icon = 'stalker/icons/food.dmi'
	icon_state = "terragon"
	list_reagents = list("energetic" = 3, "terragonsoda" = 37)
	w_class = 2

/obj/item/reagent_containers/food/drinks/soda_cans/pineapple
	name = "Army-Pineapple Juice"
	desc = "Army-Pineapple juice. Sugary and full of carbohydrates: It's just what a Stalker needs!"
	icon = 'stalker/icons/food.dmi'
	icon_state = "army_pineapple"
	list_reagents = list("omnizine" = 3, "pine" = 37)
	w_class = 2

/obj/item/reagent_containers/food/drinks/soda_cans/purifiedwater
	name = "Purified Water"
	desc = "a small plastic container filled with purified and deradiated water!"
	icon = 'stalker/icons/food.dmi'
	icon_state = "purified_water"
	list_reagents = list("water" = 40)
	w_class = 2

/obj/item/reagent_containers/food/drinks/soda_cans/zonetea
	name = "Beards Tea"
	desc = "Produced from select medicinal mushrooms with a birch tannin base: This invigorating and rejuvinating beverage is well-loved by any Stalkers who can afford it!"
	icon = 'stalker/icons/food.dmi'
	icon_state = "zonetea"
	list_reagents = list("tea" = 15, "omnizine" = 10, "potass_iodide" = 10, "energetic" = 3, "psicodine" = 2)
	w_class = 2

/obj/item/reagent_containers/food/drinks/soda_cans/voda
	name = "Mineral Water"
	desc = "Refreshing mineral water."
	icon = 'stalker/icons/food.dmi'
	icon_state = "voda"
	list_reagents = list("energetic" = 3, "water" = 37)
	w_class = 2
