/obj/item/reagent_containers/pill/stalker
	icon = 'stalker/icons/items.dmi'
	w_class = 2
	possible_transfer_amounts = list()
	volume = 60
	apply_type = PATCH
	apply_method = "apply"
	self_delay = 30

/obj/item/reagent_containers/pill/stalker/aptechka
	name = "kit"
	desc = "Старая советская аптечка."

/obj/item/reagent_containers/pill/stalker/canconsume(mob/eater, mob/user)
	if(!iscarbon(eater))
		return 0
	return 1 // Masks were stopping people from "eating" patches. Thanks, inheritance.

obj/item/reagent_containers/pill/stalker/afterattack(obj/target, mob/user , proximity)
	return // thanks inheritance again

/obj/item/reagent_containers/pill/stalker/aptechka/civilian
	name = "medkit"
	icon_state = "aptechkar"
	desc = "Универсальный медицинский набор. Позволяет справляться с травмами различного вида и степени сложности: ранениями, ожогами, отравлениями и прочим. Не останавливает кровотечение!"
	eng_desc = "All-purpose single-use medkit. Allows to handle injuries of different types and degrees of complexity. Doesn't stop bleeding!"
	item_state = "aptechkar"
	list_reagents = list("medicadone" = 6)

/obj/item/reagent_containers/pill/stalker/aptechka/army
	name = "army medkit"
	desc = "Специализированный медицинский набор для борьбы с физическими повреждениями и кровотечением. В него входят компоненты для ускорения свертывания крови, обезболивающие, антибиотики и иммунные стимуляторы. Останавливает кровотечение!"
	eng_desc = "Specialized medical kit to provide first-aid in case of in-battle injuries. The kit includes Menadion-based medicine for faster blood coagulation, painkillers, antibiotics, immunity stimulators, so as a kit to remove shrapnel and bullets from your body. Stops the bleeding."
	icon_state = "aptechkab"
	item_state = "aptechkab"
	list_reagents = list("medicadone" = 12)

/obj/item/reagent_containers/pill/stalker/aptechka/scientific
	name = "scientific medkit"
	desc = "Медицинский набор, разработанный специально для работы в условиях Зоны. Состав набора подобран как для борьбы с ранениями, так и для вывода радионуклидов из организма. Препятствует развитию лучевой болезни, а также снижает дозу накопленной радиации."
	eng_desc = "Medical set, designed especially for work in the Zone. The set includes means of healing wounds as well as means of eliminating radionuclides from the body. Prevents the development of radiowave sickness and lowers the dose of accumulated radiation. Stops the bleeding."
	icon_state = "aptechkay"
	item_state = "aptechkay"
	list_reagents = list("medicadone" = 24)

/datum/reagent/medicine/medicadone
	name = "Medicadone"
	id = "medicadone"
	description = "Fuck."
	color = "#FF00FF"

/datum/reagent/medicine/medicadone/on_mob_life(mob/living/M)
	M.adjustCloneLoss(-6)
	M.adjustOxyLoss(-10)
	M.adjustBruteLoss(-8)
	M.adjustFireLoss(-8)
	M.adjustToxLoss(-5)
	M.nutrition -= 8
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		H.hallucination = 0
		H.setBrainLoss(0)
		H.eye_blurry = 0
		H.eye_blind = 0
		H.silent = 0
		H.dizziness = 0
		H.drowsyness = 0
		H.stuttering = 0
		H.slurring = 0
		H.confused = 0
		H.jitteriness = 0
		H.radiation = max(0, H.radiation - 16)
		if(!H.bleedsuppress) //so you can't stack bleed suppression
			H.suppress_bloodloss(1)
	..()
	return

/obj/item/reagent_containers/pill/stalker/aptechka/bint
	name = "bint"
	desc = "Перевязочный материал. Помогает остановить кровотечение."
	eng_desc = "Bandage. Can stop your bleeding."
	icon = 'stalker/icons/items.dmi'
	icon_state = "bint"
	list_reagents = list("medicadone" = 1)