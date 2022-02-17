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
	w_class = WEIGHT_CLASS_NORMAL
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
	w_class = WEIGHT_CLASS_BULKY
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	hitsound = 'sound/weapons/knifeswing.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
	//butcher_speed = 1.25

/obj/item/kitchen/knife/machete2
	name = "machete"
	desc = "Great for hacking your problems away."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "machete2"
	item_state = "machete2"
	slot_flags = ITEM_SLOT_BELT
	force = 30
	throwforce = 20
	w_class = WEIGHT_CLASS_BULKY
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	hitsound = 'sound/weapons/knifeswing.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
	//butcher_speed = 1.25

/obj/item/kitchen/knife/machete3
	name = "machete"
	desc = "Great for hacking your problems away."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "machete3"
	item_state = "scrapsabre"
	slot_flags = ITEM_SLOT_BELT
	force = 30
	throwforce = 20
	w_class = WEIGHT_CLASS_BULKY
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	hitsound = 'sound/weapons/knifeswing.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
	//butcher_speed = 1.25

/obj/item/kitchen/knife/machete4
	name = "machete"
	desc = "Great for hacking your problems away."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "machete4"
	item_state = "salvagedmachete"
	slot_flags = ITEM_SLOT_BELT
	force = 30
	throwforce = 20
	w_class = WEIGHT_CLASS_BULKY
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	hitsound = 'sound/weapons/knifeswing.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
	//butcher_speed = 1.25

/obj/item/kitchen/knife/foreignsabre
	name = "foreign sabre"
	desc = "Great for hacking your problems away. This seems to be a genuine sabre, it is heavy and has seen a lot of use."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "foreignsabre"
	item_state = "sabre"
	slot_flags = ITEM_SLOT_BELT
	force = 30
	throwforce = 20
	w_class = WEIGHT_CLASS_BULKY
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	hitsound = 'sound/weapons/knifeswing.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
	//butcher_speed = 1.25

/obj/item/kitchen/knife/rapier0
	name = "rapier"
	desc = "Great for stabbing your problems away. This seems to be a genuine rapier, it is heavy and has seen a lot of use."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "rapier0"
	item_state = "rapier"
	slot_flags = ITEM_SLOT_BELT
	force = 30
	throwforce = 20
	w_class = WEIGHT_CLASS_BULKY
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	hitsound = 'sound/weapons/knifeswing.ogg'
	attack_verb = list("attacked", "stabbed", "penetrated", "pierced")
	sharpness = IS_SHARP_ACCURATE
	//butcher_speed = 1.25

/obj/item/kitchen/knife/sickle
	name = "sickle"
	desc = "Great for hacking your problems away. All you need is a hammer now!"
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "sickle"
	item_state = "sickle"
	slot_flags = ITEM_SLOT_BELT
	force = 20
	throwforce = 5
	w_class = WEIGHT_CLASS_NORMAL
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	hitsound = 'sound/weapons/knifeswing.ogg'
	attack_verb = list("attacked", "stabbed", "penetrated", "pierced")
	sharpness = IS_SHARP_ACCURATE
	//butcher_speed = 1.25

/obj/item/kitchen/knife/trench
	name = "trench knife"
	desc = "Dangerous, made for the trenches."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "knife_trench"
	item_state = "knife_trench"
	slot_flags = ITEM_SLOT_BELT
	force = 25
	throwforce = 20
	w_class = WEIGHT_CLASS_NORMAL
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
//	bayonet = TRUE
	//butcher_speed = 1.25

/obj/item/kitchen/knife/bowie
	name = "bowie knife"
	desc = "Day bow bow ... chicka chi-kow!"
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "knife_bowie"
	item_state = "knife_bowie"
	slot_flags = ITEM_SLOT_BELT
	force = 25
	throwforce = 25
	w_class = WEIGHT_CLASS_NORMAL
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
//	bayonet = TRUE
	//butcher_speed = 1.25

/obj/item/kitchen/knife/bolo
	name = "bolo knife"
	desc = "A large cutting tool of Filipino origin similar to the machete. It is used particularly in the Philippines, the jungles of Indonesia, Malaysia and Brunei, as well as in the sugar fields of Cuba."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "bolo"
	item_state = "bolo"
	slot_flags = ITEM_SLOT_BELT
	force = 33
	throwforce = 20
	w_class = WEIGHT_CLASS_NORMAL
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
//	bayonet = TRUE
	//butcher_speed = 1.25

/obj/item/kitchen/knife/kukri
	name = "kukri"
	desc = "A large curved blade lodged in an ornate handle. Most people would assume that it is of australian descent. Exceptionally effective when thrown."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "kukri"
	item_state = "kukri"
	slot_flags = ITEM_SLOT_BELT
	force = 33
	throwforce = 50
	w_class = WEIGHT_CLASS_NORMAL
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
//	bayonet = TRUE
	//butcher_speed = 1.25

/obj/item/shovel/entrenching_tool
	name = "entrenching tool"
	desc = "The most useful tool in the trenches!"
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "entrenching_tool"
	item_state = "entrenching_tool"
	slot_flags = ITEM_SLOT_BELT
	force = 30
	throwforce = 15
	w_class = WEIGHT_CLASS_NORMAL
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
//	bayonet = TRUE


/obj/item/hatchet/ancienthatchet
	name = "ancienthatchet"
	desc = "An old looking hand axe, still seems sturdy and sharp."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "ancienthatchet"
	item_state = "hatchet"
	slot_flags = ITEM_SLOT_BELT
	force = 24
	throwforce = 20
	w_class = WEIGHT_CLASS_SMALL
	lefthand_file = 'icons/mob/inhands/equipment/hydroponics_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/hydroponics_righthand.dmi'
	hitsound = 'sound/weapons/knifeswing.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
	//butcher_speed = 1.25

/obj/item/hatchet/woodhatchet
	name = "wooden hatchet"
	desc = "An old wooden hand axe, still seems sturdy and sharp."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "woodhatchet"
	item_state = "hatchet"
	slot_flags = ITEM_SLOT_BELT
	force = 27
	throwforce = 20
	w_class = WEIGHT_CLASS_SMALL
	lefthand_file = 'icons/mob/inhands/equipment/hydroponics_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/hydroponics_righthand.dmi'
	hitsound = 'sound/weapons/knifeswing.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
	//butcher_speed = 1.25

/obj/item/melee/halliganbar
	name = "tire iron"
	desc = "A rusty metal halligan bar which can be used to beat mutants and stalkers. The end is bent and unusable to use it properly."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "halliganbar"
	item_state = "crowbar"
	slot_flags = ITEM_SLOT_BELT
	force = 28
	throwforce = 15
	w_class = WEIGHT_CLASS_NORMAL
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
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
	force = 24
	throwforce = 15
	w_class = WEIGHT_CLASS_NORMAL
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
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
	force = 24
	throwforce = 15
	w_class = WEIGHT_CLASS_NORMAL
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
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
	force = 24
	throwforce = 15
	w_class = WEIGHT_CLASS_NORMAL
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
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
	force = 24
	throwforce = 15
	w_class = WEIGHT_CLASS_NORMAL
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
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
	w_class = WEIGHT_CLASS_NORMAL
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
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
	w_class = WEIGHT_CLASS_NORMAL
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	hitsound = 'sound/weapons/bluntswing.ogg'
	attack_verb = list("attacked", "smacked", "beat", "bludgened")
	sharpness = IS_BLUNT

/obj/item/melee/baseball_bat/nail
	name = "nail bat"
	desc = "There ain't a skull in the league that can withstand a swatter. This one has nails through it."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "nailbat"
	item_state = "nailbat"
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	force = 20
	throwforce = 12
	attack_verb = list("beat", "smacked", "bonked", "bludgened", "battered")
	w_class = WEIGHT_CLASS_HUGE
	slot_flags = ITEM_SLOT_BELT

/obj/item/melee/baseball_bat/barbed
	name = "barbed bat"
	desc = "There ain't a skull in the league that can withstand a swatter. This one has barbed wire wrapped around it."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "barbedbat"
	item_state = "barbedbat"
	lefthand_file = 'icons/mob/inhands/weapons/melee_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/weapons/melee_righthand.dmi'
	force = 25
	throwforce = 12
	attack_verb = list("beat", "smacked", "bonked", "bludgened", "battered")
	w_class = WEIGHT_CLASS_HUGE
	slot_flags = ITEM_SLOT_BELT
