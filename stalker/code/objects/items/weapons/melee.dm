/obj/item/kitchen/knife/tourist
	name = "tourist knife"
	desc = "Дешевый, но достаточно хороший для туриста."
	eng_desc = "Cheap knife but good enough for a tourist."
	icon = 'stalker/icons/weapons.dmi'
	icon_state = "knife"
	slot_flags = ITEM_SLOT_BELT
	force = 25
	throwforce = 15
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	sharpness = IS_SHARP_ACCURATE
	//butcher_speed = 1

/obj/item/kitchen/knife/bayonet
	name = "bayonet"
	desc = "Опасный, но плохой в разделке туш мутантов штык-нож."
	eng_desc = "Dangerous, but bad at butchering mutants bayonet."
	icon = 'stalker/icons/weapons.dmi'
	icon_state = "bayonet"
	slot_flags = ITEM_SLOT_BELT
	force = 37
	throwforce = 20
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
	//butcher_speed = 1.25