/obj/item/kitchen/knife/tourist
	name = "tourist knife"
	desc = "Cheap knife but good enough for a tourist."
	icon = 'stalker/icons/weapons.dmi'
	icon_state = "knife"
	slot_flags = ITEM_SLOT_BELT
	force = 20
	throwforce = 15
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	sharpness = IS_SHARP_ACCURATE
	//butcher_speed = 1

/obj/item/kitchen/knife/bayonet
	name = "bayonet"
	desc = "Dangerous, but bad at butchering mutants."
	icon = 'stalker/icons/weapons.dmi'
	icon_state = "bayonet"
	slot_flags = ITEM_SLOT_BELT
	force = 25
	throwforce = 20
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
	bayonet = TRUE
	//butcher_speed = 1.25

/obj/item/kitchen/knife/throwing
	name = "throwing knife"
	desc = "A small knife which is best thrown rather than used in close combat."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "throwingknife"
	slot_flags = ITEM_SLOT_BELT
	force = 8
	throwforce = 24
	throw_speed = 4
	embedding = list("embedded_pain_multiplier" = 4, "embed_chance" = 75, "embedded_fall_chance" = 25)
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("penetrated", "stabbed", "skewered", "pierced")
	sharpness = IS_SHARP_ACCURATE

/obj/item/melee/tireiron
	name = "tire iron"
	desc = "A rusty metal tire iron which can be used to beat mutants and stalkers. The end is bent and unusable."
	icon_state = "tireiron"
	item_state = "tireiron"
	slot_flags = ITEM_SLOT_BELT
	force = 20
	throwforce = 15
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bluntswing.ogg'
	attack_verb = list("attacked", "smacked", "beat", "bludgened")
	sharpness = IS_BLUNT

/obj/item/melee/pipe
	name = "metal pipe"
	desc = "A rusty metal pipe which can be used to beat mutants and stalkers."
	icon_state = "pipe"
	item_state = "nullrod"
	slot_flags = ITEM_SLOT_BELT
	force = 20
	throwforce = 15
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bluntswing.ogg'
	attack_verb = list("attacked", "smacked", "beat", "bludgened")
	sharpness = IS_BLUNT
