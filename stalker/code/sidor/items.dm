/sidoritem
	var/name = null
	var/itemtype = null
	var/cost = 0
	var/list/words = list()

//Автоматы

/sidoritem/ak74
    name = "Akm74/2"
    itemtype = /obj/item/weapon/gun/projectile/automatic/ak74
    cost = 14000
    words = list("Калаш" = 5, "калаш" = 5, "ак74" = 5, "ak74" = 5, "автомат" = 5, " Автомат" = 5, "Калашникова" = 5, "Калашников" = 5, "калашникова" = 5, "Калашникова" = 10)

/sidoritem/aksu74
    name = "Akm74/2y"
    itemtype = /obj/item/weapon/gun/projectile/automatic/aksu74
    cost = 17000
    words = list("укороченный" = 5, "Укороченный" = 5, "Калаш" = 5, "калаш" = 5, "ак74" = 5, "ak74" = 5, "автомат" = 5, " Автомат" = 5, "Калашникова" = 5, "Калашников" = 5, "калашникова" = 5, "Калашникова" = 10)

/sidoritem/mp5
    name = "Viper"
    itemtype = /obj/item/weapon/gun/projectile/automatic/mp5
    cost = 12000
    words = list("гадюку" = 5, "мп10" = 5, "mp10" = 5, "вайпер" = 5, "вайпера" = 5, "эмку" = 5, "эмочку" = 5, "Гадюка" = 10)

/sidoritem/groza
    name = "Grom C14"
    itemtype = /obj/item/weapon/gun/projectile/automatic/groza
    cost = 32000
    words = list("гром" = 5, "гроза" = 5, "грозу" = 5, "Гром" = 5, "гром" = 5, "С14" = 5, "C14" = 10)

//Снайперские винтовки

/sidoritem/vintorez
    name = "Vintar VS"
    itemtype = /obj/item/weapon/gun/projectile/automatic/vintorez
    cost = 27000
    words = list("винторез" = 5, "винтарь" = 5, "vintar" = 10)

/sidoritem/val
    name = "Specgun VLA"
    itemtype = /obj/item/weapon/gun/projectile/automatic/val
    cost = 23000
    words = list("вал" = 5, "спецавтомат вал" = 5, "вла" = 5, "спецавтомат вла" = 5, "specgun vla" = 5, "vla" = 5, "Вал" = 5, "Вла" = 10)

//Дробовики

/sidoritem/bm16
    name = "Doublebarrel"
    itemtype = /obj/item/weapon/gun/projectile/revolver/bm16
    cost = 12000
    words = list("Двустволку" = 5, "двустволку" = 5, "ружье" = 5, "Ружье" = 10)

/sidoritem/toz34
    name = "Tost-34"
    itemtype = /obj/item/weapon/gun/projectile/revolver/bm16/toz34
    cost = 15000
    words = list("тост" = 5, "Тост" = 5, "34" = 10)

/sidoritem/chaser
    name = "Chaser-13"
    itemtype = /obj/item/weapon/gun/projectile/shotgun/chaser
    cost = 20000
    words = list("Чейзер" = 5, "чейзер" = 5, "13" = 10)

//Пистолеты

/sidoritem/pm
    name = "PM"
    itemtype = /obj/item/weapon/gun/projectile/automatic/pistol/pm
    cost = 2500
    words = list("пм" = 5, "ПМ" = 5, "пистолет Макарова" = 5, "Пистолет Макарова" = 5, "пистолет макарова" = 10)

/sidoritem/sip
    name = "Sip-t M200"
    itemtype = /obj/item/weapon/gun/projectile/automatic/pistol/sip
    cost = 7500
    words = list("Сип" = 5, "сип" = 5, "Сип-т М200" = 15, "Сип-т" = 5, "сип-т м200" = 15, "сип-т" = 10)

/sidoritem/cora
    name = "Cora 919"
    itemtype = /obj/item/weapon/gun/projectile/automatic/pistol/cora
    cost = 8000
    words = list("Кора" = 5, "кора" = 5, "Кору" = 5, "кору" = 5, "Кора 919" = 5, "кора 919" = 5, "Кору 919" = 5, "кору 919" = 10)

/sidoritem/marta
    name = "Marta"
    itemtype = /obj/item/weapon/gun/projectile/automatic/pistol/marta
    cost = 10000
    words = list("Марта" = 5, "марта" = 5, "Марту" = 5, "марту" = 10)

/sidoritem/fort12
	name = "Fora-12 Mk2"
	itemtype = /obj/item/weapon/gun/projectile/automatic/pistol/fort12
	cost = 5000
	words = list("Фору" = 5, "фору" = 5, "Фору 12" = 5, "фору 12" = 5, "Фору12" = 5, "фору12" = 5, "12 Мк2" = 5, "12 МК2" = 5, "12Мк2" = 5, "12МК2" = 10)

/sidoritem/pb1s
	name = "PB1s"
	itemtype = /obj/item/weapon/gun/projectile/automatic/pistol/pb1s
	cost = 4000
	words = list("ПБ1с" = 5, "пб1с" = 5, "Пб1с" = 5, "ПБ1С" = 5, "пБ1с" = 5, "пб1С" = 10)

/sidoritem/usp_match
	name = "Usip"
	itemtype = /obj/item/weapon/gun/projectile/automatic/pistol/usp_match
	cost = 9000
	words = list("Юсп" = 5, "юсп" = 5, "Юсип" = 5, "юсип" = 10)

//Шлемы

/sidoritem/gasmask
	name = "Gasmask"
	itemtype = /obj/item/clothing/mask/gas/stalker
	cost = 3000
	words = list("Противогаз" = 5, "противогаз" = 5)

/sidoritem/tacticalhelmet
	name = "Tactical Helmet"
	itemtype = /obj/item/clothing/head/tacticalhelmet
	cost = 7000
	words = list("Тактический шлем" = 5, "тактический шлем" = 5, "Тактический Шлем" = 10)

/sidoritem/spheram
	name = "Sphera M12"
	itemtype = /obj/item/clothing/head/spheram
	cost = 9000
	words = list("Сферу" = 5, "сферу" = 5, "Сфера" = 5, "сфера" = 5, "М12" = 5)

//Легка&#255; брон&#255;

/sidoritem/kozhanka
	name = "Kozhanka"
	itemtype = /obj/item/clothing/suit/hooded/kozhanka
	cost = 6000
	words = list("Кожанку" = 5, "кожанку" = 5, "Кожаную" = 5, "кожаную" = 5, "куртку" = 5, "Куртку" = 5, "Кожанка" = 5, "кожанка" = 5, "Кожана&#255;" = 5, "кожана&#255;" = 5, "куртка" = 5, "Куртка" = 5)

/sidoritem/kozhanka/white
	itemtype = /obj/item/clothing/suit/hooded/kozhanka/white
	words = list("Кожанку" = 5, "кожанку" = 5, "Белую" = 5, "белую" = 5, "Кожаную" = 5, "кожаную" = 5, "Куртку" = 5, "куртку" = 5, "Кожанка" = 5, "кожанка" = 5, "Бела&#255;" = 5, "бела&#255;" = 5, "Кожана&#255;" = 5, "кожана&#255;" = 5, "Куртка" = 5, "куртка" = 5)

/sidoritem/kozhanka/banditka
	itemtype = /obj/item/clothing/suit/hooded/kozhanka/banditka
	words = list("Бандитку" = 5, "Бандитскую" = 5, "бандитскую" = 5, "кожаную" = 5, "Кожаную" = 5, "Куртку" = 5, "куртку" = 5, "Бандитка" = 5, "Бандитска&#255;" = 5, "бандитска&#255;" = 5, "кожана&#255;" = 5, "Кожана&#255;" = 5, "Куртка" = 5, "куртка" = 5)

/sidoritem/banditcoat
	name = "Cloack"
	itemtype = /obj/item/clothing/suit/hooded/kozhanka/banditka/coat
	cost = 10000
	words = list("Бандитский" = 5, "бандитский" = 5, "плащ" = 5, "Плащ" = 5)

/sidoritem/kombez
	name = "Zarya"
	itemtype = /obj/item/clothing/suit/hooded/kombez
	cost = 22000
	words = list("Кобинезон" = 5, "комбинезон" = 5, "Сталкерский" = 5, "сталкерский" = 5, "Зар&#255;" = 5, "зар&#255;" = 5)

//Средн&#255;&#255; брон&#255;

/sidoritem/ecolog
	name = "SPP-99"
	itemtype = /obj/item/clothing/suit/hooded/sealed/ecolog
	cost = 85000
	words = list("Эколога" = 5, "эколога" = 5, "Зеленый" = 5, "зеленый" = 5, "СПП" = 5, "СПП-99" = 5, "99" = 5, "Эколог" = 5, "эколог" = 10)

/sidoritem/ecologm
	name = "SPP-99M"
	itemtype = /obj/item/clothing/suit/hooded/sealed/ecologm
	cost = 100000
	words = list("Эколога" = 5, "эколога" = 5, "Оранжевый" = 5, "оранжевый" = 5, "улучшенного" = 5, "Улучшенного" = 5, "СПП" = 5, "СПП-99М" = 15, "99М" = 5, "Улучшенный" = 5, "улучшенный" = 5, "Эколог" = 5, "эколог" = 10)

/sidoritem/seva
	name = "Seva"
	itemtype = /obj/item/clothing/suit/hooded/sealed/seva
	cost = 80000
	words = list("Севу" = 5, "севу" = 5, "Сева" = 5, "сева" = 5)

/sidoritem/berill
	name = "Berill 5M"
	itemtype = /obj/item/clothing/suit/berill
	cost = 40000
	words = list("Берилл" = 5, "берилл" = 5, "Берил" = 5, "берил" = 5)

/sidoritem/army
	name = "Army Armor"
	itemtype = /obj/item/clothing/suit/army
	cost = 8000
	words = list("Армейский" = 5, "армейский" = 5, "Бронежилет" = 5, "бронежилет" = 5)
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
	words = list("Костюм" = 5, "костюм" = 5, "Наемника" = 5, "наемника" = 5, "броню" = 5, "Броню" = 5)
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
	words = list("Экзоскелет" = 5, "экзосклет" = 5, "Экзу" = 5, "экзу" = 5)

/sidoritem/psz9md
	name = "PSZ-9MD"
	itemtype = /obj/item/clothing/suit/hooded/sealed/psz9md
	cost = 80000
	words = list("ПСЗ" = 5, "9МД" = 5, "ПСЗ9МД" = 5, "псз" = 5, "9мд" = 5, "псз9мд" = 5, "Севу" = 5, "севу" = 5, "Долга" = 5, "долга" = 5)

//Медикаменты

/sidoritem/firstaid/stalker
	name = "Firstaid"
	itemtype = /obj/item/weapon/reagent_containers/pill/stalker/aptechka/civilian
	cost = 500
	words = list("Аптечку" = 5, "аптечку" = 5, "Атпечка" = 5, "аптечка" = 5)

/sidoritem/firstaid/army
	name = "Army firstaid"
	itemtype = /obj/item/weapon/reagent_containers/pill/stalker/aptechka/army
	cost = 1000
	words = list("Аптечку" = 5, "аптечку" = 5, "Армейскую" = 5, "армейскую" = 5, "Военную" = 5, "военную" = 5, "Военна&#255;" = 5, "военна&#255;" = 5, "Атпечка" = 5, "аптечка" = 5)

/sidoritem/firstaid/science
	name = "Science firstaid"
	itemtype = /obj/item/weapon/reagent_containers/pill/stalker/aptechka/scientific
	cost = 2000
	words = list("Аптечку" = 5, "аптечку" = 5, "Научную" = 5, "научную" = 5, "Научна&#255;" = 5, "научна&#255;" = 5, "Атпечка" = 5, "аптечка" = 5)

/sidoritem/bint
	name = "Bint"
	itemtype = /obj/item/stack/medical/gauze/bint
	cost = 100
	words = list("Бинт" = 5, "бинт" = 5)

/sidoritem/antirad
	name = "Antirad"
	itemtype = /obj/item/weapon/reagent_containers/hypospray/medipen/stalker/antirad
	cost = 700
	words = list("Антирад" = 5, "антирад" = 5)

//Еда

/sidoritem/dogtail
	name = "Dog tail"
	itemtype = /obj/item/weapon/stalker/loot/dog_tail
	cost = 1000

/sidoritem/flesheye
	name = "Flesh Eye"
	itemtype = /obj/item/weapon/stalker/loot/flesh_eye
	cost = 2000

/sidoritem/boarleg
	name = "Boar Leg"
	itemtype = /obj/item/weapon/stalker/loot/boar_leg
	cost = 4000

/sidoritem/konserva
	name = "Canned"
	itemtype = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva
	cost = 200
	words = list("Банку" = 5, "банку" = 5, "Консерв" = 5, "консерв" = 5, "Консервы" = 5, "консервы" = 5, "Завтрак" = 5, "завтрак" = 5, "Туриста" = 5, "туриста" = 5, "Банка" = 5, "банка" = 5)

/sidoritem/konserva/shproti
	itemtype = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/shproti
	words = list("Банку" = 5, "банку" = 5, "Шпрот" = 5, "шпрот" = 5, "Шпроты" = 5, "шпроты" = 5, "Рижские" = 5, "рижские" = 5, "Рижских" = 5, "рижских" = 5, "Банка" = 5, "банка" = 5)

/sidoritem/konserva/soup
	name = "Canned Soup"
	itemtype = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/soup
	words = list("Банку" = 5, "банку" = 5, "Консервированного" = 5, "консервированного" = 5, "Супа" = 5, "супа" = 5, "Банка" = 5, "банка" = 5)

/sidoritem/konserva/bobi
	itemtype = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/bobi
	words = list("Банку" = 5, "банку" = 5, "Консервированных" = 5, "консервированных" = 5, "Бобов" = 5, "бобов" = 5, "Банка" = 5, "банка" = 5)

/sidoritem/konserva/govyadina
	itemtype = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/govyadina2
	words = list("Банку" = 5, "банку" = 5, "Консерированной" = 5, "консервированной" = 5, "Гов&#255;дины" = 5, "гов&#255;дины" = 5, "Банка" = 5, "банка" = 5)

/sidoritem/kolbasa
	name = "Sausage"
	itemtype = /obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa
	cost = 100
	words = list("Палку" = 5, "палку" = 5, "Колбасы" = 5, "колбасы" = 5, "Колбасу" = 5, "колбасу" = 10)

/sidoritem/hleb
	name = "Bread"
	itemtype = /obj/item/weapon/reagent_containers/food/snacks/stalker/baton
	cost = 100
	words = list("Батон" = 5, "батон" = 5, "Батона" = 5, "батона" = 5, "Хлеб" = 5, "хлеб" = 5, "Хлеба" = 5, "хлеба" = 5)

/sidoritem/vodka
	name = "Kazaki"
	itemtype = /obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki
	cost = 300
	words = list("Бутылку" = 5, "бутылку" = 5, "Водки" = 5, "водки" = 5, "Вод&#255;ры" = 5, "вод&#255;ры" = 5 , "Казаки" = 5, "казаки" = 5, "Водка" = 5, "водка" = 10)

/sidoritem/energetic
	name = "NonStop"
	itemtype = /obj/item/weapon/reagent_containers/food/drinks/soda_cans/energetic
	cost = 200
	words = list("Энергетик" = 5, "энергетик" = 5, "Энергетика" = 5, "энергетика" = 5, "NonStop" = 5, "nonstop" = 5)

//Оружие ближнего бо&#255;

/sidoritem/knife
	name = "Knife"
	itemtype = /obj/item/weapon/kitchen/knife/tourist
	cost = 600
	words = list("Нож" = 5, "Ножик" = 10)

//Амуници&#255;

/sidoritem/b545
	name = "b545"
	itemtype = /obj/item/ammo_box/stalker/b545
	cost = 2000
	words = list("Коробку" = 5, "коробку" = 5, "патронами" = 5, "Патронами" = 5, "Патрон" = 5, "патрон" = 5, "Калаша" = 5, "калаша" = 5, "П&#255;теркой" = 20, "п&#255;теркой" = 20, "П&#255;терки" = 20, "п&#255;терки" = 20, "5.45x39" = 5, "5.45х39" = 5)

/sidoritem/b545ap
	name = "b545ap"
	itemtype = /obj/item/ammo_box/stalker/b545ap
	cost = 3000
	words = list("Коробку" = 5, "коробку" = 5, "Бронебойными" = 5, "бронебойными" = 5, "Бронебойных" = 5, "бронебойных" = 5, "патронами" = 5, "Патронами" = 5, "Патрон" = 5, "патрон" = 5, "Калаша" = 5, "калаша" = 5, "П&#255;теркой" = 20, "п&#255;теркой" = 20, "П&#255;терки" = 20, "п&#255;терки" = 20, "5.45x39" = 5, "5.45х39" = 5)

/sidoritem/m545
	name = "m545"
	itemtype = /obj/item/ammo_box/magazine/stalker/m545
	cost = 800
	words = list("Магазин" = 5, "магазин" = 5, "Калашу" = 5, "калашу" = 5, "5.45x39" = 5, "5.45х39" = 5)

/sidoritem/b9x18
	name = "b9x18"
	itemtype = /obj/item/ammo_box/stalker/b9x18
	cost = 1000
	words = list("Коробку" = 5, "коробку" = 5, "патронами" = 5, "Патронами" = 5, "Патрон" = 5, "патрон" = 5, "9x18" = 5, "9х18" = 5)

/sidoritem/b9x18P
	name = "b9x18P"
	itemtype = /obj/item/ammo_box/stalker/b9x18P
	cost = 1500
	words = list("Коробку" = 5, "коробку" = 5, "Бронебойными" = 5, "бронебойными" = 5, "Бронебойных" = 5, "бронебойных" = 5, "патронами" = 5, "Патронами" = 5, "Патрон" = 5, "патрон" = 5, "9x18" = 5, "9х18" = 5)

/sidoritem/m9x18
	name = "m9x18"
	itemtype = /obj/item/ammo_box/magazine/stalker/m9x18pm
	cost = 200
	words = list("Магазин" = 5, "магазин" = 5, "ПМу" = 5, "пму" = 5, "ПМа" = 5, "пма" = 5, "ПБ1с" = 5, "пб1с" = 5, "ПБ1С" = 5, "9x18" = 5, "9х18" = 5)

/sidoritem/f9x18
	name = "f9x18"
	itemtype = /obj/item/ammo_box/magazine/stalker/m9x18fort
	cost = 300
	words = list("Магазин" = 5, "магазин" = 5, "Форе" = 5, "Фору" =5, "форе" = 5, "фору" = 5, "Форы" = 5, "форы" = 5, "9x18f" = 5, "9х18f" = 5)

/sidoritem/b12x70
	name = "b12x70"
	itemtype = /obj/item/ammo_box/stalker/b12x70
	cost = 400
	words = list("Коробку" = 5, "коробку" = 5, "патронами" = 5, "Патронами" = 5, "Патрон" = 5, "патрон" = 5, "Дробовика" = 5, "дробовика" = 5, "12x70" = 5, "12х70" = 5)

/sidoritem/b12x70P
	name = "b12x70P"
	itemtype = /obj/item/ammo_box/stalker/b12x70P
	cost = 500
	words = list("Коробку" = 5, "коробку" = 5, "Бронебойными" = 5, "бронебойными" = 5, "Бронебойных" = 5, "бронебойных" = 5, "патронами" = 5, "Патронами" = 5, "Патрон" = 5, "патрон" = 5, "Дробовика" = 5, "дробовика" = 5, "12x70" = 5, "12х70" = 5)

/sidoritem/b12x70D
	name = "b12x70D"
	itemtype = /obj/item/ammo_box/stalker/b12x70D
	cost = 800
	words = list("Коробку" = 5, "коробку" = 5, "Дротиковыми" = 5, "дротиковыми" = 5, "Дротиковых" = 5, "дротиковых" = 5, "патронами" = 5, "Патронами" = 5, "Патрон" = 5, "патрон" = 5, "Дробовика" = 5, "дробовика" = 5, "12x70" = 5, "12х70" = 5)

/sidoritem/b9x19
	name = "b9x19"
	itemtype = /obj/item/ammo_box/stalker/b9x19
	cost = 1200
	words = list("Коробку" = 5, "коробку" = 5, "патронами" = 5, "Патронами" = 5, "Патрон" = 5, "патрон" = 5, "Марте" = 5, "марте" = 5, "Марты" = 5, "марты" = 5, "Гадюке" = 5, "гадюке" = 5, "Гадюки" = 5, "гадюки" = 5, "мп5" = 5, "МП5" = 5, "9x19" = 5, "9х19" = 5)

/sidoritem/b9x19P
	name = "b9x19P"
	itemtype = /obj/item/ammo_box/stalker/b9x19P
	cost = 1700
	words = list("Коробку" = 5, "коробку" = 5, "Бронебойными" = 5, "бронебойными" = 5, "Бронебойных" = 5, "бронебойных", "патронами" = 5, "Патронами" = 5, "Патрон" = 5, "патрон" = 5, "Марте" = 5, "марте" = 5, "Марты" = 5, "марты" = 5, "18x19" = 5, "18х19" = 5)

/sidoritem/p9x19
	name = "p9x19"
	itemtype = /obj/item/ammo_box/magazine/stalker/m9x19marta
	cost = 200
	words = list("Магазин" = 5, "магазин" = 5, "Марте" = 5, "марте" = 5, "Марты" = 5, "марты" = 5, "9x19" = 5, "9х19" = 5)

/sidoritem/m9x19g
	name = "m9x19g"
	itemtype = /obj/item/ammo_box/magazine/stalker/m9x19mp5
	cost = 500
	words = list("Магазин" = 5, "магазин" = 5, "Гадюке" = 5, "гадюке" = 5, "Гадюки" = 5, "гадюки" = 5, "мп5" = 5, "МП5" = 5, "9x19" = 5, "9х19" = 5)

/sidoritem/sc45
	name = "sc45"
	itemtype = /obj/item/ammo_box/magazine/stalker/sc45
	cost = 300
	words = list("Магазин" = 5, "магазин" = 5, "Коре" = 5, "коре" = 5, "Коры" = 5, "коры" = 5, "Сипу" = 5, "сипу" = 5, "Сипа" = 5, "сипа" = 5, "45" = 5)

/sidoritem/sp9x39vint
	name = "sp9x39vint"
	itemtype = /obj/item/ammo_box/magazine/stalker/sp9x39vint
	cost = 700
	words = list("Магазин" = 5, "магазин" = 5, "Винторезу" = 5, "винторезу" = 5, "Винтореза" = 5, "винтореза" = 5, "9x39" = 5, "9х39" = 5)

/sidoritem/sp9x39val
	name = "sp9x39val"
	itemtype = /obj/item/ammo_box/magazine/stalker/sp9x39val
	cost = 1200
	words = list("Магазин" = 5, "магазин" = 5, "Валу" = 5, "валу" = 5, "Вала" = 5, "вала" = 5, "Вла" = 5, "вла" = 5, "9x39" = 5, "9х39" = 5)

/sidoritem/sp9x39groza
	name = "sp9x39groza"
	itemtype = /obj/item/ammo_box/magazine/stalker/sp9x39groza
	cost = 1200
	words = list("Магазин" = 5, "магазин" = 5, "Грозе" = 5, "грозе" = 5, "грозы" = 5, "Грозы" = 5, "Грома" = 5, "грома" = 5, "Грому" = 5, "грому" = 5, "9x39" = 5, "9х39" = 5)



//Артефакты

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

//Разное

/sidoritem/guitar
	name = "Guitar"
	itemtype = /obj/item/device/instrument/guitar
	cost = 3000
	words = list("Гитару" = 5, "гитару" = 5, "Гитара" = 5, "гитара" = 5)

/sidoritem/geiger
	name = "Geiger Counter"
	itemtype = /obj/item/device/geiger_counter
	cost = 500
	words = list("Счетчик" = 5, "счетчик" = 5, "Гейгера" = 5, "гейгера" = 5)

/sidoritem/shovel
	name = "Shovel"
	itemtype = /obj/item/weapon/shovel
	cost = 1500
	words = list("Лопату" = 5, "лопату" = 5, "Лопата" = 5, "лопата" = 5)

/sidoritem/flashlight
	name = "flashlight"
	itemtype = /obj/item/device/flashlight/seclite
	cost = 500
	words = list("Фонарь" = 5, "фонарь" = 5, "Фонарик" = 5, "фонарик" = 5)

/sidoritem/artifactbelt
	name = "artbelt"
	itemtype = /obj/item/weapon/storage/belt/stalker
	cost = 500
	words = list("По&#255;с" = 5, "по&#255;с" = 5, "Артефактов" = 5, "артефактов" = 5)

/sidoritem/radio
	name = "radio"
	itemtype = /obj/item/device/radio
	cost = 600
	words = list("Радио" = 5, "радио" = 10)

/sidoritem/mathes
	name = "match"
	itemtype = /obj/item/weapon/storage/box/matches
	cost = 50
	words = list("Спички" = 5, "спички" = 5, "Спичек" = 5, "спичек" = 5)

/sidoritem/cigars
	name = "cigars"
	itemtype = /obj/item/weapon/storage/fancy/cigarettes/cigpack/maxim
	cost = 200
	words = list("Сигареты" = 5, "сигареты" = 5, "Сигарет" = 5, "сигарет" = 5)

/sidoritem/cigarsup
	name = "cigars"
	itemtype = /obj/item/weapon/storage/fancy/cigarettes/cigars
	cost = 5000
	words = list("Сигары" = 5, "сигары" = 5, "Сигар" = 5, "сигар" = 5)