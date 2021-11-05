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

/obj/item/kitchen/knife/machete
	name = "machete"
	desc = "Great for hacking your problems away."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "machete"
	item_state = "machete"
	slot_flags = ITEM_SLOT_BELT
	force = 30
	throwforce = 20
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/knifeswing.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
	//butcher_speed = 1.25

/obj/item/kitchen/knife/machete2
	name = "machete2"
	desc = "Great for hacking your problems away."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "machete2"
	item_state = "machete2"
	slot_flags = ITEM_SLOT_BELT
	force = 30
	throwforce = 20
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/knifeswing.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
	//butcher_speed = 1.25

/obj/item/kitchen/knife/ancienthatchet
	name = "ancienthatchet"
	desc = "An old looking hand axe, still seems sturdy and sharp."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "ancienthatchet"
	item_state = "hatchet"
	slot_flags = ITEM_SLOT_BELT
	force = 27
	throwforce = 20
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/knifeswing.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
	//butcher_speed = 1.25

/obj/item/kitchen/knife/ancienthatchet
	name = "woodhatchet"
	desc = "An old looking hand axe, still seems sturdy and sharp."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "ancienthatchet"
	item_state = "hatchet"
	slot_flags = ITEM_SLOT_BELT
	force = 27
	throwforce = 20
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/knifeswing.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
	//butcher_speed = 1.25

/obj/item/melee/halliganbar
	name = "tire iron"
	desc = "A rusty metal tire iron which can be used to beat mutants and stalkers. The end is bent and unusable."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "halliganbar"
	item_state = "crowbar"
	slot_flags = ITEM_SLOT_BELT
	force = 28
	throwforce = 15
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bluntswing.ogg'
	attack_verb = list("attacked", "smacked", "beat", "bludgened")
	sharpness = IS_BLUNT

/obj/item/melee/largewrench
	name = "large wrench"
	desc = "A rusty metal wrench which can be used to beat mutants and stalkers. The end is bent and unusable."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "largewrench"
	item_state = "bigwrench"
	slot_flags = ITEM_SLOT_BELT
	force = 20
	throwforce = 15
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bluntswing.ogg'
	attack_verb = list("attacked", "smacked", "beat", "bludgened")
	sharpness = IS_BLUNT

/obj/item/melee/redwrench
	name = "large wrench"
	desc = "A rusty red metal wrench which can be used to beat mutants and stalkers. The end is bent and unusable."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "redwrench"
	item_state = "bigwrench"
	slot_flags = ITEM_SLOT_BELT
	force = 20
	throwforce = 15
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bluntswing.ogg'
	attack_verb = list("attacked", "smacked", "beat", "bludgened")
	sharpness = IS_BLUNT

/obj/item/melee/tireiron
	name = "tire iron"
	desc = "A rusty metal tire iron which can be used to beat mutants and stalkers. The end is bent and unusable."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "tireiron"
	item_state = "tireiron"
	slot_flags = ITEM_SLOT_BELT
	force = 20
	throwforce = 15
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bluntswing.ogg'
	attack_verb = list("attacked", "smacked", "beat", "bludgened")
	sharpness = IS_BLUNT

/obj/item/melee/tireiron2
	name = "tire iron"
	desc = "A rusty metal tire iron which can be used to beat mutants and stalkers. The end is bent and unusable."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "tireiron2"
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
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "pipe"
	item_state = "nullrod"
	slot_flags = ITEM_SLOT_BELT
	force = 20
	throwforce = 15
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bluntswing.ogg'
	attack_verb = list("attacked", "smacked", "beat", "bludgened")
	sharpness = IS_BLUNT

/obj/item/melee/pipe2
	name = "metal pipe"
	desc = "A rusty metal pipe which can be used to beat mutants and stalkers."
	icon_state = "pipe2"
	item_state = "pipe"
	slot_flags = ITEM_SLOT_BELT
	force = 20
	throwforce = 15
	w_class = WEIGHT_CLASS_SMALL
	hitsound = 'sound/weapons/bluntswing.ogg'
	attack_verb = list("attacked", "smacked", "beat", "bludgened")
	sharpness = IS_BLUNT
