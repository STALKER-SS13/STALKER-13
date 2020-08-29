#define IU238 	1
#define IPU238 	2
#define	IPO210	4

/isotope
	var/name
	var/not_modified_ka = 0.0

/isotope/u238
	name = "Uranium 238"
	not_modified_ka = 0.59596

/isotope/pu238
	name = "Plutonium 238"
	not_modified_ka = 0.27030

/isotope/po210
	name = "Polonium 210"
	not_modified_ka = 0.44015

/obj/item/artifact
	icon = 'stalker/icons/artifacts.dmi'
	eng_desc = "Simple Artifact"
	var/isotope/isotope_base = null
	var/capacity = 0
	var/charge = 0
	var/list/art_armor = list()
	var/radiation = 2
	var/waspicked = 0
	var/level_s = 1
	w_class = 2
	var/obj/effect/fakeart/phantom = null

/obj/item/artifact/proc/Think(mob/user)
	if(!charge) return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		if(istype(loc, user))
			mob.radiation = max(0, mob.radiation + radiation)

		else if(istype(loc, /obj/item/storage))
			mob.radiation = max(0, mob.radiation + radiation)

		return art_armor
	return 0


/obj/item/artifact/Initialize()
	..()
	isotope_base = pick(/isotope/u238,
						/isotope/pu238,
						/isotope/po210)
	capacity = rand(1000, 10000)
	charge = capacity

/obj/item/artifact/pickup(mob/user)
	..()
	if(invisibility)
		invisibility = 0

	/////////////////////////////////////////Гравитационные артефакты/////////////////////////////////////////
/obj/item/artifact/meduza
	name = "meduza"
	desc = "Артефакт гравитационной природы, обладающий способностью активно притягивать и поглощать радиоактивные частицы, тем самым уменьшая облучённость организма. Широко распространён в Зоне; за её пределами широко, хотя и негласно, используется при лечении острой лучевой болезни."
	eng_desc = "This gravitational artifact attracts and absorbs radioactive particles, reducing the effects of radiation on the body. Very common in the Zone and is unofficially used outside the Zone for treating acute radiation sickness in exceptional circumstances."
	icon_state = "meduza"
	art_armor = list()
	radiation = -2
	level_s = 1

/obj/item/artifact/stoneflower
	name = "stone flower"
	desc = "Рождается в аномалиях гравитационного типа. Такой артефакт можно найти в немногих участках Зоны. Вкрапления металлических соединений дают красивую игру света."
	eng_desc = "Born in gravitional anomalies. This artifact is found in only a few areas of the Zone. The bits of metallic compounds create a beautiful light play."
	icon_state = "stoneflower"
	art_armor = list(bullet = 10)
	radiation = 2
	level_s = 2

/obj/item/artifact/nightstar
	name = "night star"
	desc = "Этот замечательный артефакт формируется гравитационным типом аномалий. Использование артефакта требует нейтрализации смертельного радиоактивного излучения."
	eng_desc = "This wonderful artifact is formed by gravitional anomalies anomaly. The use of the artifact demands the neutralization of deadly radiation. Expensive and rare."
	icon_state = "nightstar"
	art_armor = list(bullet = 20)
	radiation = 3
	level_s = 3

/obj/item/artifact/soul
	name = "soul"
	desc = "Органический артефакт с уникальными свойствами. Неизвестным пока образом увеличивает общую скорость восстановления организма после травм любой природы, не ускоряя накопление токсинов. Из-за приятного внешнего вида представляет особый интерес для коллекционеров. Радиоактивен."
	eng_desc = "A unique organic artifact with properties just as unique. Somehow it increases the body's overall recovery rate from damage of any kind, without accelerating the accumulation of toxins. Thanks to its effects and attractive appearance, this artifact is a valuable collector's item. Emits radiation."
	icon_state = "soul"
	art_armor = list()
	radiation = 2
	level_s = 4

/obj/item/artifact/soul/Think(mob/user)
	if(!..()) return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		mob.adjustBruteLoss(-1)
	return 1

	/////////////////////////////////////////Электро артефакты/////////////////////////////////////////

/obj/item/artifact/flash
	name = "flash"
	desc = "Артефакт электростатической природы. Демонстрирует удивительную способность к поглощению электрических зарядов и последующему их рассеиванию. Способен защитить организм человека от воздействия электротоков большой силы и высокого напряжения. Радиоактивен."
	eng_desc = "This electrostatic artifact is a powerful absorbent of electricity, which it later discharges. Flash is capable of protecting its bearer from electric shocks of up to 5,000 volts. Emits radiation."
	icon_state = "flash"
	art_armor = list(energy = 10)
	radiation = 1
	level_s = 1

/obj/item/artifact/moonlight
	name = "moonlight"
	desc = "Вырожденный случай активности аномалии Электра. Видимо, такую замечательную округлую форму можно получить, если подвергнуть аномалию термовоздействию. Дорогой артефакт."
	eng_desc = "Degenerate case of the activity of the Electro anomaly. It seems that such a wonderful round form is created when the anomaly is subjected to thermal influences. Expensive artifact."
	icon_state = "moonlight"
	art_armor = list(energy = 20)
	radiation = 2
	level_s = 2

/obj/item/artifact/pustishka
	name = "pustishka"
	desc = "Ранее этот артефакт считался хламом, лишённым каких-либо полезных свойств. Однако некоторое время назад выяснилось, что при постоянном контакте с телом человека данный артефакт оказывает защиту от электростатических аномалий. Радиоактивен."
	icon_state = "pustishka"
	art_armor = list(energy = 30)
	radiation = 2
	level_s = 3

/obj/item/artifact/battery
	name = "battery"
	desc = "Происхождение этой вещи окутано завесой научной тайны. Понятно, что в его состав входят диэлектрические элементы, но при каких физических условиях он формируется - науке не известно. Не облучает носителя."
	eng_desc = "The composition of this artifact includes electrostatic elements, but scientists have yet to identify the exact physical conditions required for its formation. The artifact is popular in the Zone and valued by its residents and visitors for its energizing properties, although it can tire the body out through prolonged use. Doesn't emit radiation."
	icon_state = "battery"
	art_armor = list(energy = 30)
	level_s = 4

	/////////////////////////////////////////Огненные артефакты/////////////////////////////////////////

/obj/item/artifact/droplet
	name = "droplet"
	desc = "Формируется аномалией Жарка при высоких температурах. Внешне выглядит как почерневшее каплевидное образование с глянцевой поверхностью, покрытое трещинами"
	eng_desc = "Formed in the fireer anomaly at high temperatures. From the exterior looks like a tear-like shade compound with a glossy surface, covered in cracks."
	icon_state = "droplet"
	art_armor = list(rad = 10)
	radiation = -1
	level_s = 1
/*
/obj/item/artifact/droplet/Think(user)
	if(!..()) return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		mob.adjustStaminaLoss(1.8)
	return 1
*/
/obj/item/artifact/fireball
	name = "fireball"
	desc = "Кристаллизируется в аномалии «Жарка». Хорошо борется с радиоактивностью, хотя ускоренный энергообмен изнашивает мышцы двигательного аппарата. Долго бежать не получится. Артефакт излучает тепло."
	eng_desc = "Crystallizes in the anomaly fireer. Fights well with radioactivity, though the heightened rate of energy exchange wears out the muscles of the moving apparatus. Won't be able to run for long. Artifact emits heat."
	icon_state = "fireball"
	art_armor = list(rad = 15)
	radiation = -2
	level_s = 2

/obj/item/artifact/crystal
	name = "crystal"
	desc = "Получается при попадании тяжелого металла в аномалию «Жарка». Этот артефакт замечательно выводит радиацию. Такой артефакт высоко ценится сталкерами, и мало где его можно добыть."
	eng_desc = "Is created when heavy metals fall into the fireer anomaly. This artifact eliminates radiation wonderfully. It is highly valued by stalkers and hard to find."
	icon_state = "crystal"
	art_armor = list()
	radiation = -5
	level_s = 4

/obj/item/artifact/maminibusi
	name = "mama's beads"
	desc = "Артефакт кристаллизуется в аномальных зонах с высокой термальной активностью. Активно поглощает избыточное тепло, при этом оставаясь прохладным на ощупь. Многое в этом артефакте остаётся полной загадкой для учёных. Впрочем, точно установлено, что излучение, возникающее при пульсации утолщений «Маминых бус», ускоряет протекание метаболических процессов в организме. Радиоактивен."
	eng_desc = "Much about this artifact remains a complete mystery to scientists. At the same time, it is known for certain that emissions produced by pulses in its thicker sections force blood in open wounds to clot quicker, forming a protective scab. One of the most noticeable effects of this artifact is the increased speed of wound healing. Emits radiation."
	icon_state = "mamini_busi"
	art_armor = list()
	radiation = 5
	level_s = 4

/obj/item/artifact/maminibusi/Think(mob/user)
	if(!..()) return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		mob.adjustFireLoss(-1)
	return 1


	/////////////////////////////////////////Химические артефакты/////////////////////////////////////////

/obj/item/artifact/stone_blood
	name = "stone blood"
	desc = "Представляет собой красноватое образование из спрессованных и окаменевших остатков растений, почвы и останков животных. Обладает способностью частично нейтрализовать вредные для человека химические вещества. Радиоактивен."
	eng_desc = "A reddish formation of compressed and fossilized plants, soil and animal debris. Can partially neutralize chemical poisons. Emits radiation."
	icon_state = "stone_blood"
	art_armor = list(bio = 10)
	radiation = 1
	level_s = 1

/obj/item/artifact/bubble
	name = "bubble"
	desc = "Артефакт представляет собой несколько полых образований органической природы, соединённых между собой. Выделяет газообразное вещество, способное нейтрализовать радиоактивные частицы в организме человека; какого-либо вредоносного воздействия данного вещества не выявлено. Ввиду высокой эффективности пользуется огромным спросом."
	eng_desc = "A compound of several hollow organic formations, this artifact emits a gaseous substance that can neutralize radioactive particles inside the body without harming it. Because of its effectiveness, this artifact is in great demand."
	icon_state = "bubble"
	art_armor = list()
	radiation = -3
	level_s = 2

/obj/item/artifact/mica
	name = "mica"
	desc = "Аномалия «Холодец» способна породить такой артефакт при редчайшем, экстремальном наборе физических условий. В результате получается полупрозрачный твёрдый объект. Артефакт дорогой и редкостный. Ношение артефакта на поясе значительно уменьшает поражение от аномалий «Ржавые волосы» и «Жгучий пух» и отпугивает хищников, однако при длительном ношении приводит к тому что любая царапина становится смертельно опасной из-за ускоренных кровотечений. Цена высокая. Интерес к артефакту проявляют научные организации."
	eng_desc = "Anomaly \"Fruit Punch\" is able to create such an artifact at the rarest, most extreme collection of physical conditions. The result is a semi-transparent, hard object. A rare and expensive artifact."
	icon_state = "mica"
	art_armor = list(laser = 10, bio = 10)
	radiation = 3
	level_s = 3

/obj/item/artifact/mica/Think(mob/user)
	if(!..()) return 0
	if(istype(user, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = user
		if(!H.bleedsuppress) //so you can't stack bleed suppression
			H.suppress_bloodloss(1)

			if(H.stat != DEAD && H.bodytemperature >= 170)

				var/blood_volume = round(H.reagents.get_reagent_amount("blood"))
				if(blood_volume < 560 && blood_volume)

					var/datum/reagent/blood/B = locate() in H.reagents.reagent_list
					if(B)
						if(B.data["donor"] != src) //If it's not theirs, then we look for theirs
							for(var/datum/reagent/blood/D in H.reagents.reagent_list)
								if(D.data["donor"] == src)
									B = D
									break

						B.volume += 0.5
	return 1

/obj/item/artifact/firefly
	name = "firefly"
	desc = "«Светляк» работает с недоступными науке полями, ускоряя регенерацию тканей и органов живых существ, а также нормализуя метаболические процессы. Способен буквально на глазах поставить на ноги тяжелораненого. К сожалению, артефакт встречается крайне редко. Радиоактивен.."
	eng_desc = "Firefly interacts with fields unknown to science, considerably speeding up regeneration of tissue and organs in living beings, as well as normalizing metabolic processes. This artifact can literally get a badly wounded stalker back on his feet in seconds. Unfortunately, Firefly is extremely rare. Emits radiation."
	icon_state = "firefly"
	art_armor = list()
	radiation = 5
	level_s = 4

/obj/item/artifact/firefly/Think(mob/user)
	if(!..()) return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		mob.adjustFireLoss(-0.5)
		mob.adjustBruteLoss(-0.5)
	return 1

	//ПОЯС
/obj/item/storage/belt/stalker
	name = "artifact belt"
	desc = "Специальный пояс для артефактов."
	icon = 'icons/obj/clothing/belts.dmi'
	icon_state = "utilitybelt"
	item_state = "utility"

/obj/item/storage/belt/stalker/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 5
	STR.can_hold = typecacheof(list(/obj/item/artifact))

/obj/item/storage/belt/stalker/artifact_belt
	var/thinkrate = 100

/obj/item/storage/belt/stalker/artifact_belt/small
	name = "small artifact belt"
	desc = "Специальный пояс для артефактов."
	icon = 'icons/obj/clothing/belts.dmi'
	icon_state = "fannypack_black"
	item_state = "artifacts"

/obj/item/storage/belt/stalker/artifact_belt/small/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 2

/obj/item/storage/belt/stalker/artifact_belt/proc/Think(mob/user)
	for(var/obj/item/artifact/A in contents)
		A.Think(user)
	//spawn(thinkrate)
	//	Think()
/*
/obj/item/storage/belt/stalker/artifact_belt/handle_item_insertion(obj/item/W, prevent_warning = 0, mob/user)
	if(..(W, prevent_warning, user) && istype(W, /obj/item/artifact))
		var/obj/item/artifact/artifact = W
		var/mob/living/carbon/mob = loc
		for(var/i=1,i<=artifact.art_armor.len,i++)
			var/armortype = artifact.art_armor[i]
			if(!(armortype in mob.global_armor))
				mob.global_armor += armortype
			mob.global_armor[armortype] += artifact.art_armor[armortype]
		return 1
	return 0

/obj/item/storage/belt/stalker/artifact_belt/remove_from_storage(obj/item/W, atom/new_location, fire = 0)
	if(..(W, new_location, fire) && istype(W, /obj/item/artifact))
		var/obj/item/artifact/artifact = W
		var/mob/living/carbon/mob = loc
		for(var/i=1,i<=artifact.art_armor.len,i++)
			var/armortype = artifact.art_armor[i]
			if(!(armortype in mob.global_armor))
				mob.global_armor += armortype
			mob.global_armor[armortype] -= artifact.art_armor[armortype]
		return 1
	return 0
*/