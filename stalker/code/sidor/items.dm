/sidoritem
	var/name = null
	var/itemtype = null
	var/cost = 0
	var/list/words = list()

//Assault Rifles

/sidoritem/ak74
    name = "Akm74/2"
    itemtype = /obj/item/weapon/gun/projectile/automatic/ak74
    cost = 14000
    words = list("Kalash" = 5, "Kalash" = 5, "ak74" = 5, "ak74" = 5, "automatic" = 5, "Automatic" = 5, "Kalashnikov" = 5, "Kalashnikov" = 5, "Kalashnikov" = 5, "Kalashnikov" = 10)

/sidoritem/aksu74
    name = "Akm74/2y"
    itemtype = /obj/item/weapon/gun/projectile/automatic/aksu74
    cost = 17000
    words = list("shortened" = 5, "Shortened" = 5, "Kalash" = 5, "Kalash" = 5, "ak74" = 5, "ak74" = 5, "automatic" = 5, "Automatic" = 5, "Kalashnikov" = 5, "Kalashnikov" = 5, "Kalashnikov" = 5, "Kalashnikov" = 10)

/sidoritem/mp5
    name = "Viper"
    itemtype = /obj/item/weapon/gun/projectile/automatic/mp5
    cost = 12000
    words = list("viper" = 5, "mp10" = 5, "mp10" = 5, "viper" = 5, "viper" = 5, "emku" = 5, "emochka" = 5, "Viper" = 10)

/sidoritem/groza
    name = "Grom C14"
    itemtype = /obj/item/weapon/gun/projectile/automatic/groza
    cost = 32000
    words = list("thunder" = 5, "thunderstorm" = 5, "thunderstorm" = 5, "Thunder" = 5, "thunder" = 5, "C14" = 5, "C14" = 10)

//Sniper Rifles

/sidoritem/vintorez
    name = "Vintar VS"
    itemtype = /obj/item/weapon/gun/projectile/automatic/vintorez
    cost = 27000
    words = list("vintorez" = 5, "vintar" = 5, "vintar" = 10)

/sidoritem/val
    name = "Specgun VLA"
    itemtype = /obj/item/weapon/gun/projectile/automatic/val
    cost = 23000
    words = list("shaft" = 5, "spetsavtomat shaft" = 5, "vla" = 5, "spetsavtomat vla" = 5, "specgun vla" = 5, "vla" = 5, "Shaft" = 5, "Vla" = 10)

//Shotguns

/sidoritem/bm16
    name = "Doublebarrel"
    itemtype = /obj/item/weapon/gun/projectile/revolver/bm16
    cost = 12000
    words = list("Double-barreled" = 5, "double-barreled" = 5, "gun" = 5, "Gun" = 10)

/sidoritem/toz34
    name = "Tost-34"
    itemtype = /obj/item/weapon/gun/projectile/revolver/bm16/toz34
    cost = 15000
    words = list("toast" = 5, "Toast" = 5, "34" = 10)

/sidoritem/chaser
    name = "Chaser-13"
    itemtype = /obj/item/weapon/gun/projectile/shotgun/chaser
    cost = 20000
    words = list("Chaser" = 5, "chaser" = 5, "13" = 10)

//Firearms

/sidoritem/pm
    name = "PM"
    itemtype = /obj/item/weapon/gun/projectile/automatic/pistol/pm
    cost = 2500
    words = list("pm" = 5, "PM" = 5, "Makarov pistol" = 5, "Makarov pistol" = 5, "Makarov pistol" = 10)

/sidoritem/sip
    name = "Sip-t M200"
    itemtype = /obj/item/weapon/gun/projectile/automatic/pistol/sip
    cost = 7500
    words = list("Epa" = 5, "epa" = 5, "Epa-t M200" = 15, "Sip-t" = 5, "epa-t m200" = 15, "epa-t" = 10)

/sidoritem/cora
    name = "Cora 919"
    itemtype = /obj/item/weapon/gun/projectile/automatic/pistol/cora
    cost = 8000
    words = list("Crust" = 5, "bark" = 5, "Koru" = 5, "bark" = 5, "Crust 919" = 5, "bark 919" = 5, "Crust 919" = 5, "bark 919" = 10)

/sidoritem/marta
    name = "Marta"
    itemtype = /obj/item/weapon/gun/projectile/automatic/pistol/marta
    cost = 10000
    words = list("Marta" = 5, "Marta" = 5, "Marta" = 5, "March" = 10)

/sidoritem/fort12
	name = "Fora-12 Mk2"
	itemtype = /obj/item/weapon/gun/projectile/automatic/pistol/fort12
	cost = 5000
	words = list("Fort" = 5, "fort" = 5, "Fort 12" = 5, "fort 12" = 5, "Fort12" = 5, "12 Mk2" = 5, "12 MK2" = 5, "12Mk2" = 5, "12Mk2" = 5, "12Mk2" = 10)

/sidoritem/pb1s
	name = "PB1s"
	itemtype = /obj/item/weapon/gun/projectile/automatic/pistol/pb1s
	cost = 4000
	words = list("PB1s" = 5, "pb1s" = 5, "Pb1s" = 5, "PB1C" = 5, "pB1s" = 5, "pb1C" = 10)

/sidoritem/usp_match
	name = "Usip"
	itemtype = /obj/item/weapon/gun/projectile/automatic/pistol/usp_match
	cost = 9000
	words = list("Usp" = 5, "yusp" = 5, "Yusip" = 5, "yusip" = 10)

//Helmets

/sidoritem/gasmask
	name = "Gasmask"
	itemtype = /obj/item/clothing/mask/gas/stalker
	cost = 3000
	words = list("Gas mask" = 5, "gas mask" = 5)

/sidoritem/tacticalhelmet
	name = "Tactical Helmet"
	itemtype = /obj/item/clothing/head/tacticalhelmet
	cost = 7000
	words = list("Tactical helmet" = 5, "tactical helmet" = 5, "Tactical Helmet" = 10)

/sidoritem/spheram
	name = "Sphera M12"
	itemtype = /obj/item/clothing/head/spheram
	cost = 9000
	words = list("Sphere" = 5, "sphere" = 5, "Sphere" = 5, "sphere" = 5, "M12" = 5)

//Легка&#255; брон&#255;

/sidoritem/kozhanka
	name = "Kozhanka"
	itemtype = /obj/item/clothing/suit/hooded/kozhanka
	cost = 6000
	words = list("Kozhanka" = 5, "kozhanka" = 5, "Leather" = 5, "leather" = 5, "jacket" = 5, "Jacket" = 5, "kozhanka" = 5, "kozhanka" = 5, "Kozhanaÿ" = 5, "leatherÿ" = 5, "jacket" = 5, "Jacket" = 5)

/sidoritem/kozhanka/white
	itemtype = /obj/item/clothing/suit/hooded/kozhanka/white
	words = list("Kozhanka" = 5, "kozhanka" = 5, "White" = 5, "white" = 5, "leather" = 5, "jacket" = 5, "jacket" = 5, "Kozhanka" = 5, "kozhanka" = 5, "kozhanka" = 5, "Belaÿ" = 5, "belaÿ" = 5, "Kozhanaÿ" = 5, "kozhanaÿ" = 5, "Jacket" = 5, "jacket" = 5)

/sidoritem/kozhanka/banditka
	itemtype = /obj/item/clothing/suit/hooded/kozhanka/banditka
	words = list("Bandit" = 5, "Bandit" = 5, "bandit" = 5, "leather" = 5, "Leather" = 5, "Jacket" = 5, "jacket" = 5, "Bandit" = 5, "Bandit" & #255;" = 5, "banditryÿ" = 5, "leatherÿ" = 5, "Kozhanaÿ" = 5, "Jacket" = 5, "jacket" = 5, "jacket" = 5)

/sidoritem/banditcoat
	name = "Cloack"
	itemtype = /obj/item/clothing/suit/hooded/kozhanka/banditka/coat
	cost = 10000
	words = list("Bandit" = 5, "bandit" = 5, "cloak" = 5, "Cloak" = 5)

/sidoritem/kombez
	name = "Zarya"
	itemtype = /obj/item/clothing/suit/hooded/kombez
	cost = 22000
	words = list("Jumpsuit" = 5, "jumpsuit" = 5, "Stalker" = 5, "Stalker" = 5, "Zarÿ" = 5)
//Средн&#255;&#255; брон&#255;

/sidoritem/ecolog
	name = "SPP-99"
	itemtype = /obj/item/clothing/suit/hooded/sealed/ecolog
	cost = 85000
	words = list("Ecologist" = 5, "ecologist" = 5, "Green" = 5, "green" = 5, "SPP" = 5, "SPP-99" = 5, "99" = 5, "Ecologist" = 5, "ecologist" = 10)

/sidoritem/ecologm
	name = "SPP-99M"
	itemtype = /obj/item/clothing/suit/hooded/sealed/ecologm
	cost = 100000
	words = list("Ecologist" = 5, "ecologist" = 5, "Orange" = 5, "orange" = 5, "improved" = 5, "Improved" = 5, "SPP" = 5, "SPP-99M" = 15, "99M" = 5, "Improved" = 5, "Improved" = 5, "Ecologist" = 5, "ecologist" = 10)

/sidoritem/seva
	name = "Seva"
	itemtype = /obj/item/clothing/suit/hooded/sealed/seva
	cost = 80000
	words = list("Seva" = 5, "seva" = 5, "Seva" = 5, "seva" = 5)

/sidoritem/berill
	name = "Berill 5M"
	itemtype = /obj/item/clothing/suit/berill
	cost = 40000
	words = list("Beryl" = 5, "beryl" = 5, "Beryl" = 5, "beryl" = 5)

/sidoritem/army
	name = "Army Armor"
	itemtype = /obj/item/clothing/suit/army
	cost = 8000
	words = list("Army" = 5, "army" = 5, "Bulletproof vest" = 5, "body armor" = 5)
/*
/sidoritem/psz9d
	name = "PSZ 9D"
	itemtype = /obj/item/clothing/suit/hooded/kombez/psz9d
	cost = 60000
	words = list("ПСЗ" = 5, "9Д" = 5, "ПСЗ9Д" = 5, "псз" = 5, "9д" = 5, "псз9д" = 10)
*/
/sidoritem/mercenary
	name = "Mercenary suit"
	itemtype = /obj/item/clothing/suit/hooded/kombez/mercenary
	cost = 19000
	words = list("Suit" = 5, "suit" = 5, "Mercenary" = 5, "mercenary" = 5, "armor" = 5, "Armor" = 5)
/*
/sidoritem/strazh
	name = "Strazh Svobodi"
	itemtype = /obj/item/clothing/suit/hooded/kozhanka/strazh
	cost = 68000
	words = list("Страж" = 5, "страж" = 5, "Свободы" = 5, "свободы" = 5, "Стража" = 5, "стража" = 5)
*/
//Т&#255;жела&#255; брон&#255;

/sidoritem/exoskelet
	name = "Exoskelet"
	itemtype = /obj/item/clothing/suit/hooded/sealed/exoskelet
	cost = 120000
	words = list("Exoskeleton" = 5, "exoskeleton" = 5, "Exo" = 5, "exo" = 5)

/sidoritem/psz9md
	name = "PSZ-9MD"
	itemtype = /obj/item/clothing/suit/hooded/sealed/psz9md
	cost = 80000
	words = list("PSZ" = 5, "9MD" = 5, "PSZ9MD" = 5, "PSZ" = 5, "9md" = 5, "PSZ9MD" = 5, "Seva" = 5, "Seva" = 5, "Debt" = 5, "debt" = 5)

//Medicines

/sidoritem/firstaid/stalker
	name = "Firstaid"
	itemtype = /obj/item/weapon/reagent_containers/pill/stalker/aptechka/civilian
	cost = 500
	words = list("First aid kit" = 5, "first aid kit" = 5, "Atpechka" = 5, "first aid kit" = 5)

/sidoritem/firstaid/army
	name = "Army firstaid"
	itemtype = /obj/item/weapon/reagent_containers/pill/stalker/aptechka/army
	cost = 1000
	words = list("First aid kit" = 5, "first aid kit" = 5, "Army" = 5, "Army" = 5, "military" = 5, "Military" = 5, "Militaryÿ" = 5, "militaryÿ" = 5, "Atpechka" = 5, "first aid kit" = 5)

/sidoritem/firstaid/science
	name = "Science firstaid"
	itemtype = /obj/item/weapon/reagent_containers/pill/stalker/aptechka/scientific
	cost = 2000
	words = list("First aid kit" = 5, "first aid kit" = 5, "Scientific" = 5, "Scientific" = 5, "Scientificÿ" = 5, "scientificÿ" = 5, "Atpechka" = 5, "first aid kit" = 5)

/sidoritem/bint
	name = "Bint"
	itemtype = /obj/item/stack/medical/gauze/bint
	cost = 100
	words = list("Bandage" = 5, "bint" = 5)

/sidoritem/antirad
	name = "Antirad"
	itemtype = /obj/item/weapon/reagent_containers/hypospray/medipen/stalker/antirad
	cost = 700
	words = list("Antirad" = 5, "antirad" = 5)

//Meal

/sidoritem/dogtail
	name = "Dog tail"
	itemtype = /obj/item/weapon/stalker/loot/mutantparts/dog_tail
	cost = 1000

/sidoritem/flesheye
	name = "Flesh Eye"
	itemtype = /obj/item/weapon/stalker/loot/mutantparts/flesh_eye
	cost = 2000

/sidoritem/boarleg
	name = "Boar Leg"
	itemtype = /obj/item/weapon/stalker/loot/mutantparts/boar_leg
	cost = 4000

/sidoritem/konserva
	name = "Canned"
	itemtype = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva
	cost = 200
	words = list("Can" = 5, "can" = 5, "Canned" = 5, "canned" = 5, "Canned food" = 5, "Canned food" = 5, "Breakfast" = 5, "Breakfast" = 5, "Tourist" = 5, "Tourist" = 5, "Bank" = 5, "Bank" = 5)

/sidoritem/konserva/shproti
	itemtype = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/shproti
	words = list("Banku" = 5, "banku" = 5, "Sprat" = 5, "sprat" = 5, "Sprats" = 5, "sprats" = 5, "Riga" = 5, "Riga" = 5, "Riga" = 5, "Riga" = 5, "Bank" = 5, "bank" = 5)

/sidoritem/konserva/soup
	name = "Canned Soup"
	itemtype = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/soup
	words = list("Jar" = 5, "can" = 5, "Canned" = 5, "canned" = 5, "Soup" = 5, "soup" = 5, "Can" = 5, "can" = 5)

/sidoritem/konserva/bobi
	itemtype = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/bobi
	words = list("Can" = 5, "can" = 5, "Canned" = 5, "canned" = 5, "Beans" = 5, "Beans" = 5, "Bank" = 5, "can" = 5)

/sidoritem/konserva/govyadina
	itemtype = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/govyadina2
	words = list("Bank" = 5, "bank" = 5, "Conserated" = 5, "canned" = 5, "Hovÿdiny" = 5, "hovÿdiny" = 5, "Bank" = 5, "bank" = 5)

/sidoritem/kolbasa
	name = "Sausage"
	itemtype = /obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa
	cost = 100
	words = list("Stick" = 5, "stick" = 5, "Sausages" = 5, "sausages" = 5, "Sausage" = 5, "sausage" = 10)

/sidoritem/hleb
	name = "Bread"
	itemtype = /obj/item/weapon/reagent_containers/food/snacks/stalker/baton
	cost = 100
	words = list("Baton" = 5, "loaf" = 5, "Batona" = 5, "loaf" = 5, "Bread" = 5, "Bread" = 5, "Bread" = 5, "bread" = 5)

/sidoritem/vodka
	name = "Kazaki"
	itemtype = /obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki
	cost = 300
	words = list("Bottle" = 5, "bottle" = 5, "Vodka" = 5, "vodka" = 5, "Waterÿry" = 5, "waterÿry" = 5, "Cossacks" = 5, "Cossacks" = 5, "Vodka" = 5, "vodka" = 10)

/sidoritem/energetic
	name = "NonStop"
	itemtype = /obj/item/weapon/reagent_containers/food/drinks/soda_cans/energetic
	cost = 200
	words = list("Energetik" = 5, "energetik" = 5, "Energy" = 5, "NonStop" = 5, "nonstop" = 5)

//Melee Weapons

/sidoritem/knife
	name = "Knife"
	itemtype = /obj/item/weapon/kitchen/knife/tourist
	cost = 600
	words = list("Knife" = 5, "Knife" = 10)

//Ammo

/sidoritem/b545
	name = "b545"
	itemtype = /obj/item/ammo_box/stalker/b545
	cost = 2000
	words = list("Box" = 5, "box" = 5, "cartridges" = 5, "Cartridges" = 5, "Cartridge" = 5, "cartridge" = 5, "Kalasha" = 5, "Kalasha" = 5, "Pÿgrater" = 20, "pÿgrater" = 20, "Pÿgraters" = 20, "pÿgraters" = 20, "5.45x39" = 5, "5.45x39" = 5)

/sidoritem/b545ap
	name = "b545ap"
	itemtype = /obj/item/ammo_box/stalker/b545ap
	cost = 3000
	words = list("Box" = 5, "box" = 5, "Armor-piercing" = 5, "armor-piercing" = 5, "Armor-piercing" = 5, "armor-piercing" = 5, "cartridges" = 5, "Cartridge" = 5, "cartridge" = 5, "cartridge" = 5, "Kalasha" = 5, "Kalasha" = 5, "Pÿgrater" = 20, "pÿgrater" = 20, "Pÿgraters" = 20, "pÿgraters" = 20, "5.45x39" = 5, "5.45x39" = 5)

/sidoritem/m545
	name = "m545"
	itemtype = /obj/item/ammo_box/magazine/stalker/m545
	cost = 800
	words = list("Shop" = 5, "shop" = 5, "Kalasha" = 5, "kalashu" = 5, "5.45x39" = 5, "5.45x39" = 5)

/sidoritem/b9x18
	name = "b9x18"
	itemtype = /obj/item/ammo_box/stalker/b9x18
	cost = 1000
	words = list("Box" = 5, "box" = 5, "cartridges" = 5, "Cartridges" = 5, "cartridge" = 5, "cartridge" = 5, "9x18" = 5, "9x18" = 5)

/sidoritem/b9x18P
	name = "b9x18P"
	itemtype = /obj/item/ammo_box/stalker/b9x18P
	cost = 1500
	words = list("Box" = 5, "box" = 5, "Armor-piercing" = 5, "armor-piercing" = 5, "armor-piercing" = 5, "cartridges" = 5, "Cartridges" = 5, "Cartridge" = 5, "cartridge" = 5, "cartridge" = 5, "9x18" = 5, "9x18" = 5)

/sidoritem/m9x18
	name = "m9x18"
	itemtype = /obj/item/ammo_box/magazine/stalker/m9x18pm
	cost = 200
	words = list("Shop" = 5, "shop" = 5, "PMU" = 5, "pmu" = 5, "PMA" = 5, "pma" = 5, "PB1s" = 5, "pb1s" = 5, "PB1S" = 5, "9x18" = 5, "9x18" = 5)

/sidoritem/f9x18
	name = "f9x18"
	itemtype = /obj/item/ammo_box/magazine/stalker/m9x18fort
	cost = 300
	words = list("Shop" = 5, "shop" = 5, "Fore" = 5, "Fore" = 5, "handicap" = 5, "handicap" = 5, "handicaps" = 5, "handicaps" = 5, "9x18f" = 5, "9x18f" = 5)

/sidoritem/b12x70
	name = "b12x70"
	itemtype = /obj/item/ammo_box/stalker/b12x70
	cost = 400
	words = list("Box" = 5, "box" = 5, "cartridges" = 5, "Cartridges" = 5, "Cartridge" = 5, "cartridge" = 5, "Shotgun" = 5, "shotgun" = 5, "12x70" = 5, "12x70" = 5)

/sidoritem/b12x70P
	name = "b12x70P"
	itemtype = /obj/item/ammo_box/stalker/b12x70P
	cost = 500
	words = list("Box" = 5, "box" = 5, "Armor-piercing" = 5, "armor-piercing" = 5, "Armor-piercing" = 5, "armor-piercing" = 5, "cartridges" = 5, "Cartridges" = 5, "Cartridge" = 5, "cartridge" = 5, "Shotgun" = 5, "shotgun" = 5, "12x70" = 5, "12x70" = 5)

/sidoritem/b12x70D
	name = "b12x70D"
	itemtype = /obj/item/ammo_box/stalker/b12x70D
	cost = 800
	words = list("Box" = 5, "box" = 5, "Dart" = 5, "dart" = 5, "Dart" = 5, "dart" = 5, "cartridges" = 5, "Cartridges" = 5, "Cartridge" = 5, "cartridge" = 5, "Shotgun" = 5, "shotgun" = 5, "12x70" = 5, "12x70" = 5)

/sidoritem/b9x19
	name = "b9x19"
	itemtype = /obj/item/ammo_box/stalker/b9x19
	cost = 1200
	words = list("Box" = 5, "box" = 5, "cartridges" = 5, "Cartridges" = 5, "Cartridge" = 5, "cartridge" = 5, "March" = 5, "Martha" = 5, "Marty" = 5, "Viper" = 5, "Viper" = 5, "Viper" = 5, "Vipers" = 5, "vipers" = 5, "mp5" = 5, "MP5" = 5, "9x19" = 5, "9x19" = 5)

/sidoritem/b9x19P
	name = "b9x19P"
	itemtype = /obj/item/ammo_box/stalker/b9x19P
	cost = 1700
	words = list("Box" = 5, "box" = 5, "Armor-piercing" = 5, "armor-piercing" = 5, "Armor-piercing" = 5, "armor-piercing", "cartridges" = 5, "Cartridge" = 5, "Cartridge" = 5, "cartridge" = 5, "Marte" = 5, "March" = 5, "March" = 5, "March" = 5, "18x19" = 5, "18x19" = 5)

/sidoritem/p9x19
	name = "p9x19"
	itemtype = /obj/item/ammo_box/magazine/stalker/m9x19marta
	cost = 200
	words = list("Shop" = 5, "shop" = 5, "Marte" = 5, "March" = 5, "March" = 5, "March" = 5, "9x19" = 5, "9x19" = 5)

/sidoritem/m9x19g
	name = "m9x19g"
	itemtype = /obj/item/ammo_box/magazine/stalker/m9x19mp5
	cost = 500
	words = list("Shop" = 5, "shop" = 5, "Viper" = 5, "viper" = 5, "Vipers" = 5, "vipers" = 5, "mp5" = 5, "MP5" = 5, "9x19" = 5, "9x19" = 5)

/sidoritem/sc45
	name = "sc45"
	itemtype = /obj/item/ammo_box/magazine/stalker/sc45
	cost = 300
	words = list("Shop" = 5, "shop" = 5, "Kore" = 5, "kore" = 5, "Kory" = 5, "kory" = 5, "Sipu" = 5, "sipu" = 5, "Sipa" = 5, "sipa" = 5, "45" = 5)

/sidoritem/sp9x39vint
	name = "sp9x39vint"
	itemtype = /obj/item/ammo_box/magazine/stalker/sp9x39vint
	cost = 700
	words = list("Shop" = 5, "shop" = 5, "Vintorez" = 5, "screw cutter" = 5, "Vintorez" = 5, "vintorez" = 5, "9x39" = 5, "9x39" = 5)

/sidoritem/sp9x39val
	name = "sp9x39val"
	itemtype = /obj/item/ammo_box/magazine/stalker/sp9x39val
	cost = 1200
	words = list("Shop" = 5, "shop" = 5, "Valu" = 5, "shaft" = 5, "Shaft" = 5, "shaft" = 5, "Vla" = 5, "vla" = 5, "9x39" = 5, "9x39" = 5)

/sidoritem/sp9x39groza
	name = "sp9x39groza"
	itemtype = /obj/item/ammo_box/magazine/stalker/sp9x39groza
	cost = 1200
	words = list("Shop" = 5, "shop" = 5, "Groze" = 5, "groze" = 5, "thunderstorms" = 5, "Thunderstorms" = 5, "thunder" = 5, "thunder" = 5, "Thunder" = 5, "thunder" = 5, "9x39" = 5, "9x39" = 5)



//Artifacts

/sidoritem/meduza
	name = "Meduza"
	itemtype = /obj/item/weapon/artifact/meduza
	cost = 2000

/sidoritem/stoneflower
	name = "Stoneflower"
	itemtype = /obj/item/weapon/artifact/stoneflower
	cost = 5000

/sidoritem/nighstar
	name = "Nightstar"
	itemtype = /obj/item/weapon/artifact/nightstar
	cost = 8000

/sidoritem/maminibusi
	name = "Mamini busi"
	itemtype = /obj/item/weapon/artifact/maminibusi
	cost = 30000

/sidoritem/flash
	name = "Flash"
	itemtype = /obj/item/weapon/artifact/flash
	cost = 3000

/sidoritem/moonlight
	name = "Moonlight"
	itemtype = /obj/item/weapon/artifact/moonlight
	cost = 5000

/sidoritem/pushtishka
	name = "Pushtishka"
	itemtype = /obj/item/weapon/artifact/pustishka
	cost = 30000

/sidoritem/battery
	name = "Battery"
	itemtype = /obj/item/weapon/artifact/battery
	cost = 30000

/sidoritem/droplet
	name = "Droplet"
	itemtype = /obj/item/weapon/artifact/droplet
	cost = 2500

/sidoritem/fireball
	name = "Fireball"
	itemtype = /obj/item/weapon/artifact/fireball
	cost = 6000

/sidoritem/crystal
	name = "Crystal"
	itemtype = /obj/item/weapon/artifact/crystal
	cost = 40000

//Miscellaneous

/sidoritem/guitar
	name = "Guitar"
	itemtype = /obj/item/device/instrument/guitar
	cost = 3000
	words = list("Guitar" = 5, "guitar" = 5, "Guitar" = 5, "guitar" = 5)

/*/sidoritem/geiger
	name = "Geiger Counter"
	itemtype = /obj/item/device/geiger_counter
	cost = 500
	words = list("Counter" = 5, "counter" = 5, "Geiger" = 5, "Geiger" = 5)
	*/

/sidoritem/shovel
	name = "Shovel"
	itemtype = /obj/item/weapon/shovel
	cost = 1500
	words = list("Shovel" = 5, "shovel" = 5, "Shovel" = 5, "shovel" = 5)

/sidoritem/flashlight
	name = "flashlight"
	itemtype = /obj/item/device/flashlight/seclite
	cost = 500
	words = list("Lantern" = 5, "lantern" = 5, "Flashlight" = 5, "flashlight" = 5)

/sidoritem/artifactbelt
	name = "artbelt"
	itemtype = /obj/item/weapon/storage/belt/stalker
	cost = 500
	words = list("Belt" = 5, "belt" = 5, "Artifacts" = 5, "artifacts" = 5)

/sidoritem/radio
	name = "radio"
	itemtype = /obj/item/device/radio
	cost = 600
	words = list("Radio" = 5, "radio" = 10)

/sidoritem/mathes
	name = "match"
	itemtype = /obj/item/weapon/storage/box/matches
	cost = 50
	words = list("Matches" = 5, "matches" = 5, "Matches" = 5, "matches" = 5)

/sidoritem/cigars
	name = "cigars"
	itemtype = /obj/item/weapon/storage/fancy/cigarettes/cigpack/maxim
	cost = 200
	words = list("Cigarettes" = 5, "cigarettes" = 5, "Cigarettes" = 5, "cigarettes" = 5)

/sidoritem/cigarsup
	name = "cigars"
	itemtype = /obj/item/weapon/storage/fancy/cigarettes/cigars
	cost = 5000
	words = list("Cigars" = 5, "cigars" = 5, "Cigars" = 5, "cigars" = 5)
