/obj/item/storage/firstaid/stalker
	name = "first-aid kit for Stalker13 (you shouldn't see  this)"
	desc = "It's an emergency medical kit for those serious boo-boos, but slav and NEVER FUCKING ACQUIRABLE. Report in dev channel if you get one."
	icon = 'stalker/icons/items.dmi'
	icon_state = "aptechkar"
	w_class = WEIGHT_CLASS_SMALL
	throw_speed = 3
	throw_range = 7

/obj/item/storage/firstaid/stalker/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 4
	STR.can_hold = typecacheof(list(
		/obj/item/reagent_containers/pill,
		/obj/item/reagent_containers/pill/patch,
		/obj/item/stack/medical,
		/obj/item/reagent_containers/pill/stalker/injector))

/obj/item/storage/firstaid/stalker/civillian
	name = "civillian medkit"
	icon_state = "aptechkar"
	desc = "An all-purpose medkit. Used to treat injuries of various types and severities - wounds, burns, poisonings, etc."

/obj/item/storage/firstaid/stalker/civillian/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 6

/obj/item/storage/firstaid/stalker/civillian/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/stack/medical/gauze/bint = 1,
		/obj/item/stack/medical/ointment = 1,
		/obj/item/stack/medical/bruise_pack = 1,
		/obj/item/reagent_containers/pill/charcoal = 1,
		/obj/item/reagent_containers/pill/stalker/injector/oxygen = 1,
		/obj/item/reagent_containers/pill/stalker/injector/epinephrine = 1)
	generate_items_inside(items_inside,src)

/obj/item/storage/firstaid/stalker/military
	name = "military medkit"
	icon_state = "aptechkab"
	desc = "A specialized medical set to fight against physical damage and blood loss. In it is included a component for blood coagulation, antibiotics, immunal stimulators, and painkillers."

/obj/item/storage/firstaid/stalker/military/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 9

/obj/item/storage/firstaid/stalker/military/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/stack/medical/gauze/bint = 1,
		/obj/item/reagent_containers/pill/patch/synthflesh = 3,
		/obj/item/reagent_containers/pill/stalker/injector/blood = 1,
		/obj/item/reagent_containers/pill/stalker/injector/painkiller = 1,
		/obj/item/reagent_containers/pill/stalker/injector/toxin = 1,
		/obj/item/reagent_containers/pill/stalker/injector/oxygen = 1,
		/obj/item/reagent_containers/pill/stalker/injector/epinephrine = 1)
	generate_items_inside(items_inside,src)

/obj/item/storage/firstaid/stalker/scientific
	name = "scientific medkit"
	icon_state = "aptechkay"
	desc = "High end medical set designed for use in The Zone. This medkit includes items used to stop bleeding, treat burns, clean wounds, and treat a variety of different injuries. It also includes anti-radiation pills and medicine."

/obj/item/storage/firstaid/stalker/scientific/ComponentInitialize()
	. = ..()
	GET_COMPONENT(STR, /datum/component/storage)
	STR.max_items = 9

/obj/item/storage/firstaid/stalker/scientific/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/stack/medical/gauze/bint = 1,
		/obj/item/reagent_containers/pill/stalker/injector/brute = 1,
		/obj/item/reagent_containers/pill/stalker/injector/burn = 1,
		/obj/item/reagent_containers/pill/stalker/injector/blood = 1,
		/obj/item/reagent_containers/pill/stalker/injector/painkiller = 1,
		/obj/item/reagent_containers/pill/stalker/injector/toxin = 1,
		/obj/item/reagent_containers/pill/stalker/injector/oxygen = 1,
		/obj/item/reagent_containers/pill/stalker/injector/epinephrine = 1,
		/obj/item/reagent_containers/pill/stalker/injector/antirad = 1)
	generate_items_inside(items_inside,src)

/obj/item/stack/medical/gauze/bint
	desc = "A common gauze bandage. It'll work extremely well for stopping any bleeding!"
	eng_desc = "A common gauze bandage. It'll work extremely well for stopping any bleeding!"
	icon = 'stalker/icons/items.dmi'
	icon_state = "bint"
	amount = 2
	max_amount = 2
	self_delay = 10