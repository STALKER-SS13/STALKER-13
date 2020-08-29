/*
/obj/item/clothing/head/New()
	..()
	sleep(5)
	if(nvg)
		if(nvg.colour_matrix == NIGHTVISION_MATRIX_I)
			modifications += "visor"
		else if(nvg.colour_matrix == NIGHTVISION_MATRIX_II)
			modifications += "visor"
*/
/obj/item/clothing/head/steel
	name = "Steel helmet"
	desc = "Каска из темной, местами ржавой стали, такой ваши деды въебывали по щам нацистам. На ура держит прилетевшую по касательной пулю, но от хорошенького ножевого удара под козырек не спасет."
	eng_desc = "Steel helmet made of old rusty steel. You look nazi wearing it. Protects your head but won't hold lots of bullets"
	icon_state = "steelhelmet"
	item_state = "steelhelmet"
	armor = list("melee" = 25, "bullet" = 40, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0, "psy" = 5)
	flags_inv = HIDEHAIR
	flags_cover = 0
	resistance_flags = UNACIDABLE
	durability = 40
	modifications = list("material_head" = 0)

/obj/item/clothing/head/mob_can_equip(mob/M, slot, disable_warning = 0)
	if(!iscarbon(M))
		return ..()

	var/mob/living/carbon/C = M

	if(slot != ITEM_SLOT_HEAD)
		return ..()

	if(!(flags_cover & HEADCOVERSMOUTH))
		return ..()

	if(!(C.wear_mask))
		return ..()

	return 0

/obj/item/clothing/head/tacticalhelmet
	name = "Tactical helmet"
	desc = "Отечественный образец тактического шлема, лишённый какой-либо маркировки. Предназначен для обеспечения командира подразделения базовым количеством тактической информации при установке соответствующей электронной начинки. Отличается крепкой конструкцией, также оснащён многослойной кевларовой защитой, респиратором и прибором ночного виденья первого поколения."
	eng_desc = "A Western model of a tactical helmet that lacks ca	mouflage. It is not known how it made its way into the Zone. The helmet is designed to provide a squad leader with strategic superiority over the enemy via its many scanners and satellite communications devices, which have not been installed in this particular helmet. Comes with multi-layered Kevlar protection and armored elements to protect electronic components. Includes a respirator and a nightvision device."
	icon_state = "hardhat0_tactical"
	item_state = "hardhat0_tactical"
	item_color = "tactical"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("melee" = 50, "bullet" = 60, "laser" = 0, "energy" = 30, "bomb" = 0, "bio" = 30, "rad" = 40, "fire" = 20, "acid" = 0, "psy" = 10)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = UNACIDABLE
	durability = 300
	//МОДИФИКАЦИИ//
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 1)

/obj/item/clothing/head/tacticalhelmet/New()
	nvg = new /obj/item/nightvision(src)
	..()

/obj/item/clothing/head/hardhat/tactical/light
	name = "Light tactical helmet"
	desc = "Отечественный образец тактического шлема, лишённый какой-либо маркировки. Предназначен для обеспечения бойцов спецназа надежной защитой головы. Отличается крепкой конструкцией, также оснащён многослойной кевларовой защитой, но респиратор и ПНВ отсутствуют."
	eng_desc = "A Western model of a tactical helmet that lacks camouflage. It is not known how it made its way into the Zone. The helmet is designed to provide a squad leader with strategic superiority over the enemy via its many scanners and satellite communications devices, which have not been installed in this particular helmet. Comes with multi-layered Kevlar protection and armored elements to protect electronic components."
	icon_state = "hardhat0_lighttactical"
	item_state = "hardhat0_lighttactical"
	item_color = "lighttactical"
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("melee" = 35, "bullet" = 50, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0, "psy" = 5)
	brightness_on = 2 //luminosity when on
	flags_cover = HEADCOVERSEYES
	resistance_flags = UNACIDABLE
	durability = 200
	//МОДИФИКАЦИИ//
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/head/hardhat/tactical/light/New()
	..()
	return

/obj/item/clothing/head/assaultmerc
	name = "Mercenary helmet"
	desc = "Необычной формы шлем в тускло-серой маскировочной краске, судя по маркировке - швейцарского производства. Затемненное забрало матово отражает свет, и без того тусклый, ослабленный облаками Чернобыля. Чертова западная дрянь."
	icon_state = "assaultmerc"
	item_state = "assaultmerc"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("melee" = 50, "bullet" = 75, "laser" = 25, "energy" = 50, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 50, "acid" = 0, "psy" = 5)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = UNACIDABLE
	durability = 250
	//МОДИФИКАЦИИ//
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/head/gopcap
	name = "Сap"
	desc = "Модная у чётких пацанов кепка."
	icon_state = "gopcap"
	item_state = "gopcap"
	flags_inv = HIDEHAIR

/obj/item/clothing/head/soft/jacknoircap
	name = "Сap"
	desc = "Потрепанная кепка машиниста. Чух-чух!"
	icon_state = "jacknoirsoft"
	item_color = "jacknoir"
	item_state = "greysoft"

/obj/item/clothing/head/spheram
	name = "Sphera M12"
	desc = "Отделанный тканью алюминиево-титановый шлем с карманами для стальных бронеэлементов и бронемаской. Обычно поставляется в комплекте с бронежилетами класса ПС3 для спецназа. Достаточно популярен в Зоне благодаря респиратору и встроенному прибору ночного видения, а также хорошей защите головы. Предусмотрена возможность установки электроники."
	eng_desc = "An aluminum/titanium helmet with a cloth exterior that comes with pockets for additional steel armor pieces and an armor face mask. Sphere M12 is normally used as part of a combination that includes PSZ series Spetsnaz body armor. Quite popular in the Zone thanks to its respirator and built-in first generation night vision device, as well as providing the maximum head protection possible. Comes with electronics slots."
	icon_state = "sphera"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("melee" = 60, "bullet" = 65, "laser" = 0, "energy" = 35, "bomb" = 0, "bio" = 30, "rad" = 60, "fire" = 35, "acid" = 0, "psy" = 20)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = UNACIDABLE
	durability = 400
	//МОДИФИКАЦИИ//
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 1)

/obj/item/clothing/head/spheram/New()
	//nvg = new /obj/item/nightvision(src)
	AttachNVG()
	..()

/obj/item/clothing/head/skathelmet
	name = "SKAT-M9"
	desc = "Отделанный тканью алюминиево-титановый шлем с карманами для стальных бронеэлементов и бронемаской. Обычно поставляется в комплекте с бронежилетами класса ПС3 для спецназа. Достаточно популярен в Зоне благодаря респиратору и встроенному прибору ночного видения, а также хорошей защите головы."
	eng_desc = "An aluminum/titanium helmet with a cloth exterior that comes with pockets for additional steel armor pieces and an armor face mask. Sphere M12 is normally used as part of a combination that includes PSZ series Spetsnaz body armor. Quite popular in the Zone thanks to its respirator and built-in first generation night vision device, as well as providing the maximum head protection possible. Comes with electronics slots."
	icon_state = "helmet_skat"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("melee" = 75, "bullet" = 75, "laser" = 60, "energy" = 70, "bomb" = 70, "bio" = 50, "rad" = 80, "fire" = 70, "acid" = 0, "psy" = 10)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = UNACIDABLE
	durability = 400
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 1)

/obj/item/clothing/head/skathelmet/New()
	//nvg = new /obj/item/nightvision(src)
	AttachNVG()
	..()

/obj/item/clothing/head/petrovichhelmet
	name = "SKOT-M777"
	desc = "Отделанный шпротами алюминиево-картонный шлем с карманами для мелочи и бронеусами. Обычно поставляется в комплекте с водкой. Недостаточно популярен в Зоне благодаря конспирации Петровича."
	icon_state = "helmet_skot"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("melee" = 75, "bullet" = 75, "laser" = 60, "energy" = 70, "bomb" = 70, "bio" = 50, "rad" = 80, "fire" = 70, "acid" = 0, "psy" = 50)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = UNACIDABLE
	durability = 400
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/head/beret_ua
	name = "military beret"
	desc = "Оффицерский берет с миниатюрной версией украинского флага."
	icon_state = "beret_ua"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0, "psy" = 0)
	strip_delay = 80
/*
/obj/item/clothing/mask/gas/New()
	..()
	sleep(5)
	if(nvg)
		if(nvg.colour_matrix == NIGHTVISION_MATRIX_I)
			modifications += "visor"
		else if(nvg.colour_matrix == NIGHTVISION_MATRIX_II)
			modifications += "visor"
*/
/obj/item/clothing/mask/gas/stalker
	name = "gas mask"
	desc = "Стандартный противогаз, предназначенный для фильтрации из воздуха радиоактивной пыли и отравляющих веществ. Широко используется как новичками, так и ветеранами всех группировок ввиду своей функциональной незаменимости. Не оснащён защитой от пуль, осколков и механических воздействий."
	eng_desc = "A regular plastic and rubber gas mask, used for filtering air for radioactive particles and poisonous substances. Widely used by rookies and veterans of all factions due to its universal functionality. Does not provide any physical protection."
	icon_state = "gasmasknew"
	item_state = "gasmasknew"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_cover = MASKCOVERSEYES | MASKCOVERSMOUTH
	flags_inv = HIDEHAIR
	armor = list("melee" = 5, "bullet" = 0, "laser" = 30, "energy" = 30, "bomb" = 0, "bio" = 0, "rad" = 100, "fire" = 30, "acid" = 0, "psy" = 0)
	resistance_flags = UNACIDABLE|FIRE_PROOF
	durability = 400
	//МОДИФИКАЦИИ//
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/mask/gas/stalker/mercenary
	name = "gas mask"
	desc = "Стандартный противогаз, предназначенный для фильтрации из воздуха радиоактивной пыли и отравляющих веществ. Широко используется членами группировки 'Наемники'. Не оснащён защитой от пуль, осколков и механических воздействий."
	eng_desc = "A regular plastic and rubber gas mask, used for filtering air for radioactive particles and poisonous substances. Widely used by mercenaries. Does not provide any physical protection."
	icon_state = "mercenary_gasmask"
	item_state = "mercenary_gasmask"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_cover = MASKCOVERSEYES | MASKCOVERSMOUTH
	flags_inv = HIDEHAIR
	armor = list("melee" = 5, "bullet" = 0, "laser" = 30, "energy" = 30, "bomb" = 0, "bio" = 20, "rad" = 100, "fire" = 30, "acid" = 0, "psy" = 0)
	resistance_flags = UNACIDABLE|FIRE_PROOF
	durability = 400
	//МОДИФИКАЦИИ//
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)
