/obj/item/reagent_containers/food/snacks/stalker
	var/wrapped = 0
	icon = 'stalker/icons/food.dmi'

/obj/item/reagent_containers/food/snacks/stalker/konserva
	name = "tourist delight"
	desc = "Tourist's delight, also known as tourist breakfast, is a staple food of The Zone. Legend says these cans of conserva are from a raid against an army warehouse!"
	icon_state = "konserva"
	w_class = 2
	wrapped = 1
	trash = /obj/item/trash/konserva
	list_reagents = list("nutriment" = 13, "vitamin" = 2, "omnizine" = 0.5)
	icon = 'stalker/icons/food.dmi'
	var/icon_state_opened = "konserva_open"
	var/desc_opened = "Tourist's delight, also known as tourist breakfast is a staple food of The Zone. Legend says these cans of konserva are from a raid against an army warehouse! This one is opened."
	tastes = list("almost unedibly salty meat" = 1)

/obj/item/reagent_containers/food/snacks/stalker/konserva/attack_self(mob/user)
	if(wrapped)
		Unwrap(user)
	else
		..()

/obj/item/reagent_containers/food/snacks/stalker/konserva/proc/Unwrap(mob/user)
	icon_state = icon_state_opened
	desc = desc_opened
	if(user.client && (user.client.prefs.chat_toggles & CHAT_LANGUAGE))
		user << "<span class='notice'>You open the package.</span>"
	else
		user << "<span class='notice'>You open the package.</span>"
	wrapped = 0

/obj/item/trash/konserva
	name = "empty can"
	desc = "An empty delight can. Trash!"
	icon = 'stalker/icons/food.dmi'
	icon_state = "konserva_empty"
	w_class = 2

/obj/item/reagent_containers/food/snacks/stalker/konserva/shproti
	name = "anchovies"
	desc = "European sprats originating from the Latvian portcity of Riga. They've been preserved in a thick sunflower oil."
	icon_state = "shproti0"
	icon_state_opened = "shproti1"
	list_reagents = list("nutriment" = 17, "vitamin" = 3, "omnizine" = 0.75)
	trash = /obj/item/trash/konserva/shproti
	desc_opened = "European sprats originating from the Latvian port-city of Riga. They've been preserved in a thick sunflower oil. This one is opened."
	tastes = list("oily, salted fish" = 1)

/obj/item/trash/konserva/shproti
	name = "empty can"
	icon_state = "shproti2"
	desc = "An empty can that smells of fish. Trash!"

/obj/item/reagent_containers/food/snacks/stalker/konserva/soup
	name = "soup"
	desc = "Condensed soup that usually would be thinned with water. A staple of tourists within the zone."
	icon_state = "soup0"
	icon_state_opened = "soup1"
	list_reagents = list("nutriment" = 20, "vitamin" = 4, "omnizine" = 1)
	trash = /obj/item/trash/konserva/soup
	desc_opened = "Condensed soup that usually would be thinned with water. A staple of tourists within the zone. This one is opened."
	tastes = list("dry beets and sausage" = 1)

/obj/item/trash/konserva/soup
	name = "empty can"
	icon_state = "soup2"

/obj/item/reagent_containers/food/snacks/stalker/konserva/bobi
	name = "canned meal (bobi)"
	desc = "A can of 'Bean Surprise'. A melody of cheap flavourless nibbles of meat and watery beans."
	icon_state = "bobi0"
	icon_state_opened = "bobi1"
	list_reagents = list("nutriment" = 17, "vitamin" = 3, "omnizine" = 0.75)
	trash = /obj/item/trash/konserva/bobi
	desc_opened = "Looks appetizing."
	tastes = list("a vague earthy flavor with tasteless meat" = 1)

/obj/item/trash/konserva/bobi
	name = "empty can"
	icon_state = "bobi2"

/obj/item/reagent_containers/food/snacks/stalker/konserva/govyadina2
	name = "canned meal (stew)"
	desc = "A can of beef-stew! An avidly loved staple of those who scour around old ruins in search for loot!"
	//weight = 0.7
	icon_state = "govyadina0"
	icon_state_opened = "govyadina1"
	list_reagents = list("nutriment" = 20, "vitamin" = 4, "omnizine" = 1)
	trash = /obj/item/trash/konserva/govyadina
	desc_opened = "A can of beef-stew! An avidly loved staple of those who scour around old ruins in search for loot! This one is opened."
	tastes = list("flavorful gravy over meat and potatoes" = 1)

/obj/item/trash/konserva/govyadina
	name = "empty can"
	icon_state = "govyadina2"

/obj/item/reagent_containers/food/snacks/stalker/konserva/fish
	name = "canned meal (fish)"
	desc = "Canned fish. Simple, easy to digest and generally well-liked by most in the Zone."
	icon_state = "fish0"
	icon_state_opened = "fish1"
	list_reagents = list("nutriment" = 17, "vitamin" = 3, "omnizine" = 0.75)
	trash = /obj/item/trash/konserva/fish
	desc_opened = "Canned fish. Simple, easy to digest and generally well-liked by most in the Zone. This one is opened."
	tastes = list("dry beets and sausage" = 1)

/obj/item/trash/konserva/fish
	name = "empty can"
	icon_state = "fish2"

/obj/item/reagent_containers/food/snacks/stalker/konserva/snack/sirok
	name = "canned snack (cream cheese)"
	desc = "A can of creamed cheese commonly seen in UAF mountaineer rations. It... might be in date."
	icon_state = "sirok"
	icon_state_opened = "sirok1"
	list_reagents = list("nutriment" = 11, "vitamin" = 1, "omnizine" = 0.3)
	trash = /obj/item/trash/konserva/sirok
	desc_opened = "A can of creamed cheese commonly seen in UAF mountaineer rations. This one is opened and looks in date."
	tastes = list("sweetened curd with a vanilla kick" = 1)

/obj/item/trash/konserva/sirok
	name = "trash"
	//weight = 0.01
	icon_state = "sirok2"

/obj/item/reagent_containers/food/snacks/stalker/konserva/snack/snikers
	name = "snikers"
	desc = "Snickers. A reminder of home for western-tourists, a oddly sweet snack for locals."
	icon_state = "snikers"
	icon_state_opened = "snikers1"
	list_reagents = list("nutriment" = 8, "sugar" = 6, "omnizine" = 0.2)
	trash = /obj/item/trash/konserva/snikers
	desc_opened = "Snickers. A reminder of home for western-tourists, a oddly sweet snack for locals. This one is unwrapped."
	tastes = list("rich chocolate and peanut-butter with nuts" = 1)

/obj/item/trash/konserva/snikers
	name = "trash"
	//weight = 0.01
	icon_state = "snikers2"
	desc = "An empty Snickers wrapper. Trash!"

/obj/item/reagent_containers/food/snacks/stalker/konserva/snack/chocolate
	name = "chocolate"
	desc = "A bar of chocolate. A reminder of home in this harsh place."
	icon_state = "Choco1"
	icon_state_opened = "Choco2"
	list_reagents = list("nutriment" = 9, "sugar" = 1, "omnizine" = 0.1, "energetic" = 5)
	trash = /obj/item/trash/konserva/chocolate
	desc_opened = "A bar of chocolate. A reminder of home in this harsh place. This one is opened."
	tastes = list("artisinal chocolate. It isn't as sweet as processed chocolate, but still very good" = 1)

/obj/item/trash/konserva/chocolate
	name = "trash"
	//weight = 0.01
	icon_state = "Choco3"

/obj/item/storage/box/MRE
	name = "MRE"
	desc = "Ukrainian standard issue twenty-four hour ration pack. Filled with everything a Stalker will need in a day!"
	var/desc_opened = "Ukrainian standard issue twenty-four hour ration pack. Filled with everything a Stalker will need in a day! This one is opened."
	icon = 'stalker/icons/food.dmi'
	icon_state = "box1"
	var/icon_state_opened = "box3"
	var/wrapped = 1

/obj/item/storage/box/MRE/New()
	..()
	new /obj/item/reagent_containers/food/snacks/stalker/konserva/galets(src)
	new /obj/item/reagent_containers/food/snacks/stalker/konserva/galets(src)
	new /obj/item/reagent_containers/food/snacks/stalker/konserva/galets(src)
	new /obj/item/reagent_containers/food/snacks/stalker/konserva/galets(src)
	new /obj/item/reagent_containers/food/snacks/stalker/konserva/kasha(src)
	new /obj/item/reagent_containers/food/snacks/stalker/konserva/MREkonserva1(src)
	new /obj/item/reagent_containers/food/snacks/stalker/konserva/MREkonserva2(src)
	new /obj/item/reagent_containers/food/snacks/stalker/konserva/MREkonserva3(src)
	new /obj/item/reagent_containers/food/snacks/stalker/konserva/snack/chocolate(src)
	new /obj/item/reagent_containers/food/drinks/soda_cans/voda(src)

/obj/item/storage/box/MRE/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 10
	STR.can_hold = typecacheof(list(/obj/item/reagent_containers/food/snacks/stalker/konserva, /obj/item/trash/konserva, /obj/item/reagent_containers/food/drinks))

/obj/item/storage/box/MRE/attack_self(mob/user)
	if(wrapped)
		Unwrap(user)

/obj/item/storage/box/MRE/proc/Unwrap(mob/user)
	icon_state = icon_state_opened
	//desc = desc_opened
	if(user.client && (user.client.prefs.chat_toggles & CHAT_LANGUAGE))
		user << "<span class='notice'>You unwrap the package</span>"
	else
		user << "<span class='notice'>You unwrap the package</span>"
	wrapped = 0

/obj/item/reagent_containers/food/snacks/stalker/konserva/galets
	name = "galets"
	desc = "Dry crackers that'd chip the tooth of anyone thinking this was a buttery biscuit!"
	desc_opened = "Dry crackers that'd chip the tooth of anyone thinking this was a buttery biscuit! This one is opened."
	icon_state = "GAL1"
	icon_state_opened = "GAL2"
	list_reagents = list("nutriment" = 10, "omnizine" = 0.1)
	trash = /obj/item/trash/konserva/galets
	tastes = list("dry, stale crackers. Better than starving" = 1)

/obj/item/trash/konserva/galets
	name = "trash"
	icon_state = "GAL3"

/obj/item/reagent_containers/food/snacks/stalker/konserva/kasha
	name = "canned meal (porridge)"
	desc = "Vacuum-sealed can of boiled buckwheat porridge. Isn't this traditionally baked?"
	desc_opened = "Vacuum-sealed can of boiled buckwheat porridge. Isn't this traditionally baked? This one is opened."
	icon_state = "Kasha1"
	icon_state_opened = "Kasha2"
	list_reagents = list("nutriment" = 15, "omnizine" = 0.2)
	trash = /obj/item/trash/konserva/kasha
	tastes = list("a strong, nutty flavor of buckwheat" = 1)

/obj/item/trash/konserva/kasha
	name = "trash"
	icon_state = "Kasha3"

/obj/item/reagent_containers/food/snacks/stalker/konserva/MREkonserva1
	name = "canned meal (pork)"
	desc = "Canned pork, salt n' spices. Doesn't get much simpler or wholesome in the zone!"
	desc_opened = "Canned pork, salt n' spices. Doesn't get much simpler or wholesome in the zone! This one is opened."
	icon_state = "TushenkaRed1"
	icon_state_opened = "TushenkaRed2"
	list_reagents = list("nutriment" = 17, "omnizine" = 0.2)
	trash = /obj/item/trash/konserva/MREkonserva1
	tastes = list("spiced meat and salt" = 1)

/obj/item/trash/konserva/MREkonserva1
	name = "trash"
	icon_state = "TushenkaRed3"

/obj/item/reagent_containers/food/snacks/stalker/konserva/MREkonserva2
	name = "canned meal (chicken)"
	desc = "Canned chicken with an assortment of vegetables. A hearty meal in The Zone."
	desc_opened = "Canned chicken with an assortment of vegetables. A hearty meal in The Zone. This one is opened."
	icon_state = "TushenkaGreen1"
	icon_state_opened = "TushenkaGreen2"
	list_reagents = list("nutriment" = 17, "omnizine" = 0.2)
	trash = /obj/item/trash/konserva/MREkonserva2
	tastes = list("poultry and various vegetables" = 1)

/obj/item/trash/konserva/MREkonserva2
	name = "trash"
	icon_state = "TushenkaGreen3"

/obj/item/reagent_containers/food/snacks/stalker/konserva/MREkonserva3
	name = "canned meal (veggies)"
	desc = "Canned meat with an assortment of vegetables. A healthy and substantial meal within The Zone!"
	desc_opened = "Canned meat with an assortment of vegetables. A healthy and substantial meal within The Zone! This one is opened."
	icon_state = "TushenkaBlue1"
	icon_state_opened = "TushenkaBlue2"
	list_reagents = list("nutriment" = 17, "omnizine" = 0.2, "vitamin" = 10)
	trash = /obj/item/trash/konserva/MREkonserva3
	tastes = list("a wide variety of vegetables" = 1)

/obj/item/trash/konserva/MREkonserva3
	name = "trash"
	icon_state = "TushenkaBlue3"

/obj/item/reagent_containers/food/snacks/stalker/kolbasa
	name = "diet sausage"
	desc = "Made from a mixture of chicken and soya, the \"diet\" sausage is often, for lack of other options, a Stalker's breakfast, lunch and dinner in one."
	icon_state = "kolbasa"
	w_class = 2
	list_reagents = list("nutriment" = 11, "vitamin" = 1, "omnizine" = 0.3)
	tastes = list("a distinct cardamom kick over a classic ukrainian sausage" = 1)

/obj/item/reagent_containers/food/snacks/stalker/baton
	name = "bread"
	desc = "A loaf of bread of completely questionable origin. Nobody has complained of off-flavours or issues with it in all the years it has been apart of a Stalkers diet!"
	icon_state = "baton_stalker"
	w_class = 2
	list_reagents = list("nutriment" = 8, "omnizine" = 0.2)
	tastes = list("dry but pleasant bread" = 1)

/obj/item/reagent_containers/food/snacks/stalker/fermented/tomaty
	name = "pickled tomatoes"
	desc = "Pickled tomatoes of unknown age. Try at your own peril."
	icon_state = "tomaty"
	w_class = 2
	list_reagents = list("nutriment" = 16, "omnizine" = 5, "vitamin" = 10)
	tastes = list("tart, tangy tomatoes. They are a little mushy" = 1)

/obj/item/reagent_containers/food/snacks/stalker/fermented/sauerkraut
	name = "sauerkraut"
	desc = "Pickled cabbage of unknown age. Try at your own peril."
	icon_state = "sauerkraut"
	w_class = 2
	list_reagents = list("nutriment" = 16, "omnizine" = 5, "vitamin" = 10)
	tastes = list("tart, tangy sauerkraut. They are a little mushy" = 1)

/obj/item/reagent_containers/food/snacks/stalker/stew
	name = "meat and veggie stew"
	desc = "Pieces of meat with vegetables in a bowl. It doesn't look very edible."
	icon_state = "stew"
	w_class = 2
	list_reagents = list("nutriment" = 25, "omnizine" = 1, "vitamin" = 5)
	tastes = list("bland meat and vegetables. It's barely food" = 1)

/obj/item/reagent_containers/food/snacks/stalker/veggiestew
	name = "veggie stew"
	desc = "Pieces of vegetables in a bowl. It doesn't look very edible."
	icon_state = "stew"
	w_class = 2
	list_reagents = list("nutriment" = 25, "omnizine" = 1, "vitamin" = 5)
	tastes = list("bland vegetables. It's barely food" = 1)

/obj/item/reagent_containers/food/snacks/stalker/kolbasa/doctorsausage
	name = "doctor sausage"
	desc = "A boiled, pale pink sausage made out of heavily processed beef. Produced in the USSR, the sausage was intended to be a dietary supplement for people exhibiting signs of prolonged starvation."
	icon_state = "sausage"
	w_class = 2
	list_reagents = list("nutriment" = 15, "vitamin" = 1, "omnizine" = 0.3)
	tastes = list("a distinctly classic sausage taste" = 1)


// STALKER NEW-FOODS

// Goulash

/obj/item/reagent_containers/food/snacks/stalker/putridstew
	name = "putrid goulash"
	desc = "Pieces of scrap meat cooked in a thick-gruel made of mutant tato stock. It isn't very tasty, to say the least!"
	icon_state = "stew"
	w_class = 2
	list_reagents = list("nutriment" = 17, "omnizine" = 1, "sodiumchloride" = 2)
	tastes = list("gritty and chewy meat with a overly bitter broth. This is absolutely putrid.." = 1)

/obj/item/reagent_containers/food/snacks/stalker/putrescentstew
	name = "putrescent goulash"
	desc = "Pieces of diet sausage meat cooked in a thick-gruel made of pickled tomato stock. It isn't very tasty, to say the least!"
	icon_state = "stew"
	w_class = 2
	list_reagents = list("nutriment" = 25, "omnizine" = 5, "sodiumchloride" = 2)
	tastes = list("gritty and chewy meat with a overly vinegar-tomato broth. This is absolutely putrid.." = 1)

/obj/item/reagent_containers/food/snacks/stalker/lowgradestew
	name = "low-grade goulash"
	desc = "Pieces of scrap meat cooked in a thin-gruel made of mushroom stock. It isn't very tasty, but it'll keep you from starving to death!"
	icon_state = "lowgrade_goulash"
	w_class = 2
	list_reagents = list("nutriment" = 20, "omnizine" = 5, "sodiumchloride" = 2)
	tastes = list("gritty and chewy meat with a overly earthy broth. This isn't very enjoyable.." = 1)

/obj/item/reagent_containers/food/snacks/stalker/shroomstew
	name = "mushroom goulash"
	desc = "A grueling meal offered by barkeeps for those down on their luck. Consisting of whatever crap just barely fits for human-consumption."
	icon_state = "stew"
	w_class = 2
	list_reagents = list("nutriment" = 15, "sodiumchloride" = 5, "mushroomhallucinogen" = 0.05)
	tastes = list("sand-textured grit with a overbearing earthy flavour. This is horrible.." = 1)

/// BORSCHT

/obj/item/reagent_containers/food/snacks/stalker/borscht/poor
	name = "poor mans borscht"
	desc = "A sour soup common in Eastern Europe and Northern Asia. In English, the word 'borscht' is most often associated with the soup's variant of Ukrainian origin, made with beetroots as one of the main ingredients, which give the dish its distinctive red color."
	icon_state = "beetsoup"
	w_class = 2
	list_reagents = list("nutriment" = 20, "omnizine" = 10, "vitamin" = 5, "sodiumchloride" = 2)
	tastes = list("sand-textured grit with a overbearing earthy flavour. This is horrible.." = 1)

/obj/item/reagent_containers/food/snacks/stalker/borscht
	name = "plain borscht"
	desc = "A sour soup common in Eastern Europe and Northern Asia. In English, the word 'borscht' is most often associated with the soup's variant of Ukrainian origin, made with beetroots as one of the main ingredients, which give the dish its distinctive red color."
	icon_state = "beetsoup"
	w_class = 2
	list_reagents = list("nutriment" = 25, "omnizine" = 10, "vitamin" = 5, "sodiumchloride" = 2)
	tastes = list("root-textured grit with a overbearing earthy flavour. This is palatable..." = 1)

/obj/item/reagent_containers/food/snacks/stalker/borscht/luxury
	name = "luxury borscht"
	desc = "A sour soup common in Eastern Europe and Northern Asia. In English, the word 'borscht' is most often associated with the soup's variant of Ukrainian origin, made with beetroots as one of the main ingredients, which give the dish its distinctive red color."
	icon_state = "beetsoup"
	w_class = 2
	list_reagents = list("nutriment" = 30, "omnizine" = 10, "vitamin" = 5, "sodiumchloride" = 2)
	tastes = list("flavorful seasoned veggies with a slight earthy flavour. This is wonderful!" = 1)

/obj/item/reagent_containers/food/snacks/stalker/okroshkasoup
	name = "okroshka soup"
	desc = "Okróshka is a cold soup of Russian origin and probably originated in the Volga region. The classic soup is a mix of mostly raw vegetables, boiled potatoes, eggs, and a cooked meat such as beef, veal, sausages, or ham with kvass, which is a non-alcoholic beverage made from fermented black or rye bread."
	icon = 'stalker/icons/food.dmi'
	icon_state = "lowgrade_goulash"
	w_class = 2
	list_reagents = list("nutriment" = 35, "omnizine" = 10, "vitamin" = 5, "sodiumchloride" = 2)
	tastes = list("flavourful chunks of chewy flesh meat in a broth of thick creamy broth. This is wonderful!" = 1)

/obj/item/reagent_containers/food/snacks/stalker/ukha
	name = "ukha soup"
	desc = "Ukha started to be used as a term for fish broth in Russian cuisine in the late 17th to early 18th centuries. In earlier times, this term referred to thick meat broths, and then later chicken. Beginning in the 15th century, fish was more and more often used to prepare ukha, thus creating a dish that had a distinctive taste among soups. In the 19th century, many travellers visiting Russia claimed ukha to be one of the best dishes in Russian cuisine."
	icon_state = "stew"
	w_class = 2
	list_reagents = list("nutriment" = 35, "omnizine" = 10, "vitamin" = 10, "sodiumchloride" = 2)
	tastes = list("flavourful chunks of chewy fish meat in a broth of thin clear broth. This is wonderful!" = 1)

/obj/item/reagent_containers/food/snacks/stalker/meatstew/rat
	name = "rat meat goulash"
	desc = "Pieces of braised rat meat cooked with tons of pepper n' salt with quality cultured mushrooms! Nothing warms a Stalkers belly better!"
	icon_state = "lowgrade_goulash"
	w_class = 2
	list_reagents = list("nutriment" = 30, "omnizine" = 10, "vitamin" = 5, "sodiumchloride" = 2)
	tastes = list("flavourful chunks of chewy rat-meat in a broth of thick gravy with veggies. This is wonderful!" = 1)

/obj/item/reagent_containers/food/snacks/stalker/meatstew/flesh
	name = "flesh meat goulash"
	desc = "Pieces of braised Flesh meat cooked with tons of pepper n' salt with quality cultured mushrooms! Nothing warms a Stalkers belly better!"
	icon_state = "meat_goulash"
	w_class = 2
	list_reagents = list("nutriment" = 30, "omnizine" = 10, "vitamin" = 5, "sodiumchloride" = 2)
	tastes = list("flavourful chunks of chewy pork-meat in a broth of thick gravy with veggies. This is wonderful!" = 1)

/obj/item/reagent_containers/food/snacks/stalker/meatstew/dog
	name = "dog meat goulash"
	desc = "Pieces of braised mutant dog meat cooked with tons of pepper n' salt with quality cultured mushrooms! Nothing warms a Stalkers belly better!"
	icon_state = "meat_goulash"
	w_class = 2
	list_reagents = list("nutriment" = 30, "omnizine" = 10, "vitamin" = 5, "sodiumchloride" = 2)
	tastes = list("flavourful chunks of chewy dog-meat in a broth of thick gravy with veggies. This is wonderful!" = 1)

/obj/item/reagent_containers/food/snacks/stalker/meatstew/boar
	name = "boar meat goulash"
	desc = "Pieces of braised mutant boar meat cooked with tons of pepper n' salt with quality cultured mushrooms! Nothing warms a Stalkers belly better!"
	icon_state = "meat_goulash"
	w_class = 2
	list_reagents = list("nutriment" = 30, "omnizine" = 10, "vitamin" = 5, "sodiumchloride" = 2)
	tastes = list("flavourful chunks of chewy boar-meat in a broth of thick gravy with veggies. This is wonderful!" = 1)

/obj/item/reagent_containers/food/snacks/stalker/meatstew/snork
	name = "snork meat goulash"
	desc = "Pieces of braised snork meat cooked with tons of pepper n' salt with quality cultured mushrooms! Nothing warms a Stalkers belly better!"
	icon_state = "meat_goulash"
	w_class = 2
	list_reagents = list("nutriment" = 30, "omnizine" = 10, "vitamin" = 5, "sodiumchloride" = 2)
	tastes = list("flavourful chunks of chewy snork-meat in a broth of thick gravy with veggies. This is wonderful!" = 1)

/obj/item/reagent_containers/food/snacks/stalker/meatstew/pseudo
	name = "pseudodog meat goulash"
	desc = "Pieces of braised psuedodog meat cooked with tons of pepper n' salt with quality cultured mushrooms! Nothing warms a Stalkers belly better!"
	icon_state = "meat_goulash"
	w_class = 2
	list_reagents = list("nutriment" = 30, "omnizine" = 10, "vitamin" = 5, "sodiumchloride" = 2)
	tastes = list("flavourful chunks of chewy dog-meat in a broth of thick gravy with veggies. This is wonderful!" = 1)

/obj/item/reagent_containers/food/snacks/stalker/meatstew/bloodsucker
	name = "bloodsucker meat goulash"
	desc = "Pieces of braised bloodsucker meat cooked with tons of pepper n' salt with quality cultured mushrooms! Nothing warms a Stalkers belly better!"
	icon_state = "meat_goulash"
	w_class = 2
	list_reagents = list("nutriment" = 30, "omnizine" = 10, "vitamin" = 5, "sodiumchloride" = 2)
	tastes = list("flavourful chunks of chewy bloodsucker-meat in a broth of thick gravy with veggies. This is wonderful!" = 1)

/obj/item/reagent_containers/food/snacks/stalker/meatstew/controller
	name = "controller meat goulash"
	desc = "Pieces of braised controller meat cooked with tons of pepper n' salt with quality cultured mushrooms! Nothing warms a Stalkers belly better!"
	icon_state = "meat_goulash"
	w_class = 2
	list_reagents = list("nutriment" = 30, "omnizine" = 10, "vitamin" = 5, "sodiumchloride" = 2)
	tastes = list("flavourful chunks of chewy controller-meat in a broth of thick gravy with veggies. This is wonderful!" = 1)

/obj/item/reagent_containers/food/snacks/stalker/meatstew/mutantdelight
	name = "mutant delight goulash"
	desc = "A variety of braised mutant meat cooked with tons of pepper n' salt with quality cultured mushrooms and all sorts of veggies! Nothing warms a Stalkers belly better!"
	icon_state = "meat_goulash"
	w_class = 2
	list_reagents = list("nutriment" = 45, "omnizine" = 10, "vitamin" = 10, "sodiumchloride" = 2)
	tastes = list("flavourful chunks of chewy mutant meat in a broth of thick gravy with veggies. This is delightful!" = 1)

// Candy-Bars and King-Ass Rippers Snack

/obj/item/reagent_containers/food/snacks/stalker/konserva/snack/thebar
	name = "sugar-free candy bar"
	desc = "Brought in during the later years by Stalkers who clearly understood what a diet of bread, meat and vodka does to ones stomach. It'll make you... 'Clear-Sky' your bowels!"
	icon_state = "thebar"
	icon_state_opened = "thebar1"
	list_reagents = list("lipolicide" = 10, "omnizine" = 1)
	trash = /obj/item/trash/konserva/snikers
	desc_opened = "Brought in during the later years by Stalkers who clearly understood what a diet of bread, meat and vodka does to ones stomach. It'll make you... 'Clear-Sky' your bowels! This one has been opened!"
	tastes = list("Oddly satisfactory chocolate that seems to make your... Stomach.. Grumble.. Oh No..." = 1)

/obj/item/reagent_containers/food/snacks/stalker/konserva/snack/thebar
	name = "russian chocolate bar"
	desc = "A reminder of the life abandoned on the outside world by the locals.. This chocolate bar is rich with both flavour and homely vibes!"
	icon_state = "choco1"
	icon_state_opened = "choco2"
	list_reagents = list("nutriment" = 5, "omnizine" = 1, "psicodine" = 1)
	trash = /obj/item/trash/konserva/snikers
	desc_opened =  "A reminder of the life abandoned on the outside world by the locals.. This chocolate bar is rich with both flavour and homely vibes! This one has been opened."
	tastes = list("Delicious chocolate and a reminder of a more peaceful life.." = 1)

/// KEBABS ///

/obj/item/reagent_containers/food/snacks/stalker/kebab/mutantmeat
	name = "mutant meat kebab"
	desc = "Pieces of braised mutant meat cooked with tons of pepper n' salt on a rod! Nothing warms a Stalkers belly better!"
	icon_state = "meatkebab"
	w_class = 2
	list_reagents = list("nutriment" = 30, "omnizine" = 10, "vitamin" = 5, "sodiumchloride" = 5)
	tastes = list("flavourful chunks of chewy mutant-meat right off of a stick. This is wonderful!" = 1)

/obj/item/reagent_containers/food/snacks/stalker/kebab/mutantonionmeat
	name = "mutant meat and onion kebab"
	desc = "Pieces of braised mutant meat and onions cooked with tons of pepper n' salt on arod! Nothing warms a Stalkers belly better!"
	icon_state = "onionmeatkebab"
	w_class = 2
	list_reagents = list("nutriment" = 30, "omnizine" = 10, "vitamin" = 5, "sodiumchloride" = 5)
	tastes = list("flavourful chunks of chewy mutant-meat and onions right off of a stick. This is wonderful!" = 1)

// JERKY

/obj/item/reagent_containers/food/snacks/sosjerky/mutant
	name = "homemade mutant jerky"
	desc = "Homemade mutant jerky made from the finest in the Zone."
	list_reagents = list("nutriment" = 25, "vitamin" = 5, "omnizine" = 5, "sugar" = 3, "sodiumchloride" = 2)
	junkiness = 0

// PASHTET

/obj/item/reagent_containers/food/snacks/pashtet/mutantmix
	name = "homemade mutant pashtet"
	desc = "Homemade mutant meat pashtet made from all different parts of several kinds of mutants."
	list_reagents = list("nutriment" = 25, "vitamin" = 5, "omnizine" = 5, "sugar" = 3, "sodiumchloride" = 2)
	junkiness = 0

/obj/item/reagent_containers/food/snacks/pashtet/mutantmeatmix
	name = "homemade mutant pashtet"
	desc = "Homemade mutant meat pashtet made from the finest in the Zone."
	list_reagents = list("nutriment" = 35, "vitamin" = 5, "omnizine" = 5, "sugar" = 3, "sodiumchloride" = 2)
	junkiness = 0
