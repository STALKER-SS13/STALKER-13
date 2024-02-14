/obj/item/clothing
	var/durability = -1

/obj/item/clothing/suit
	var/obj/item/storage/internal_slot/internal_slot = null

/obj/item/clothing/examine(mob/user)
	..()
	var/msg = ""
	var/list/arm = src.armor.getList()

	var/melee = arm["melee"]
	var/bullet = arm["bullet"]
	var/bomb = arm["bomb"]
	var/fire = arm["fire"]
	var/rad = arm["rad"]
	var/psy = arm["psy"]

	msg += "<span class='info'><b>Defense:</b>\n"
	msg += "Melee: [melee] | Bullet: [bullet] | Explosion: [bomb]\n"
	msg += "Fire: [fire] | Rad: [rad] | Psy: [psy]\n"
	msg += "</span>"
	to_chat(user, msg)

/obj/item/clothing/head/examine(mob/user)
	..()
	if(durability)
		var/percentage = (durability / (initial(durability)))*100
		if(percentage >= 50)
			to_chat(user, "<span class='notice'>Durability: [percentage]%</span>")
		else
			to_chat(user, "<span class='warning'>Durability: [percentage]%</span>")

/obj/item/clothing/mask/examine(mob/user)
	..()
	if(durability)
		var/percentage = (durability / (initial(durability)))*100
		if(percentage >= 50)
			to_chat(user, "<span class='notice'>Durability: [percentage]%</span>")
		else
			to_chat(user, "<span class='warning'>Durability: [percentage]%</span>")

/obj/item/clothing/suit/examine(mob/user)
	..()
	if(durability)
		var/percentage = (durability / (initial(durability)))*100
		if(percentage >= 50)
			to_chat(user, "<span class='notice'>Durability: [percentage]%</span>")
		else
			to_chat(user, "<span class='warning'>Durability: [percentage]%</span>")

/obj/item/clothing/update_icon()
	..()
	overlays.Cut()

	if(unique)
		overlays += image('stalker/icons/projectile_overlays32x32.dmi', "unique", layer = FLOAT_LAYER)

/obj/item/clothing/New()
	..()
	update_icon()

/obj/item/clothing/proc/RefreshPockets()
	if(ispath(pocket_storage_component_path))
		LoadComponent(pocket_storage_component_path)

//obj/item/clothing/suit/MouseDrop(atom/over_object)
//	if(!usr || (loc != usr))
//		return
//	src.throwing = 0
//	if (loc == usr)
//		if(!usr.is_holding(src))
//			return
//
//	pickup(usr)
//	add_fingerprint(usr)
//	if(!usr.put_in_active_hand(src))
//		dropped(usr)
//	return

//obj/item/clothing/suit/attack_hand(mob/user)
//	..()
//	if(!ishuman(user))
//		return ..()
//
//	var/mob/living/carbon/human/H = user
//
//	if(!pocket_storage_component_path || H.wear_suit != src)
//		return ..()
//
//	pocket_storage_component_path.show_to(user)

/////////////////////////////////////////////////////////////////////NIGHT VISION HELMETS, INTERIOR STORAGE, ETC./////////////////////////////////////////////////

/obj/item/clothing
	var/obj/item/nightvision/nvg
	//var/datum/action/item_action/nightvision/nva
/*
/obj/item/clothing/New()
	. = ..()
	if(nvg)
		nva = new(src)

/obj/item/clothing/proc/AttachNvg()
	if(nvg)
		nva = new(src)
*/

/obj/item/clothing/proc/AttachNVG(var/type = /obj/item/nightvision)
	nvg = new type(src)
	src.actions_types += new/datum/action/item_action/nightvision(src)

/obj/item/nightvision
	var/active = 0
	var/colour_matrix = /datum/client_colour/nvg	//NIGHTVISION_MATRIX_I
	actions_types = list(/datum/action/item_action/nightvision)

/datum/action/item_action/nightvision
	name = "Toggle Night Vision"

/obj/item/nightvision/advanced
	colour_matrix = /datum/client_colour/nvg2		//NIGHTVISION_MATRIX_II

/obj/item/clothing/proc/toggle_nightvision()
	var/mob/living/carbon/human/user = usr

	if (user.wear_mask != src && user.head != src)
		to_chat(usr, "You turn the NVR switch[src] hoping to make out something in the darkness, but nothing comes of it. Should I wear it? ")
		playsound(usr, 'stalker/sound/nv_start.ogg', 50, 1, -1)
		//if (prob(5))
		//	to_chat(usr, "<b>Thus, bringing the device into a state of useless rag!</b>")
		//	playsound(usr, 'stalker/sound/nv_off.ogg', 50, 1, -1)
		//	qdel(src)
		return

	if(!nvg)
		return

	nvg.active = !nvg.active
	update_nightvision()
	//user.seek_screen_colour()
	user.update_sight()

/obj/item/clothing/proc/update_nightvision()
	if(nvg)
		var/mob/living/carbon/human/user = usr
		if(!nvg.active)
			playsound(usr, 'stalker/sound/nv_off.ogg', 50, 1, -1)
			to_chat(usr, "You have deactivate the optical sensor[src].")
			user.remove_client_colour(nvg.colour_matrix)
			user.see_override_nva = 0
		else
			playsound(usr, 'stalker/sound/nv_start.ogg', 50, 1, -1)
			to_chat(usr, "You have activate the optical sensor[src].")
			user.add_client_colour(nvg.colour_matrix)
			user.see_override_nva = 4
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/clothing/dropped(mob/user)
	..()
	if(nvg)
		if (nvg.active)
			toggle_nightvision()

/obj/item/clothing/ui_action_click(mob/user, actiontype)
	if(istype(actiontype, /datum/action/item_action/nightvision))
		toggle_nightvision()
	else
		..()

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/obj/item/clothing/suit/hooded/kozhanka
	name = "leather jacket"
	desc = "Common garb of a novice stalker. It won’t save you from bullets or anomalies, but it’s still better than being naked."
	icon_state = "kozhanka"
	item_state = "det_suit"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	slowdown = 0.05
	armor = list("melee" = 10, "bullet" = 10, "laser" = 10, "energy" = 10, "bomb" = 10, "bio" = 10, "rad" = 30, "fire" = 10, "psy" = 0)
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	resistance_flags = UNACIDABLE
	hoodtype = /obj/item/clothing/head/hooded/stalker/kozhanka
	durability = 75
	//МОДИФИКАЦИИ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/head/hooded/stalker
	name = "hood"
	body_parts_covered = HEAD
	cold_protection = HEAD
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	durability = -1
	flags_inv = HIDEEARS|HIDEHAIR
	dynamic_hair_suffix = ""

/obj/item/clothing/head/hooded/stalker/kozhanka
	icon_state = "winterhood_kozhanka"
	slowdown = 0.05
	armor = list("melee" = 10, "bullet" = 10, "laser" = 10, "energy" = 10, "bomb" = 10, "bio" = 10, "rad" = 30, "fire" = 10, "psy" = 0)
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/suit/hooded/kozhanka/white
	icon_state = "kozhanka_wh"
	item_state = "labcoat"
	hoodtype = /obj/item/clothing/head/hooded/stalker/kozhanka_wh

/obj/item/clothing/head/hooded/stalker/kozhanka_wh
	slowdown = 0.05
	armor = list("melee" = 10, "bullet" = 10, "laser" = 10, "energy" = 10, "bomb" = 10, "bio" = 10, "rad" = 30, "fire" = 10, "psy" = 0)
	icon_state = "winterhood_kozhanka_wh"
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/suit/hooded/kozhanka/dolg
	icon_state = "kozhanka_dolg"
	item_state = "labcoat"
	hoodtype = /obj/item/clothing/head/hooded/stalker/kozhanka_dolg

/obj/item/clothing/head/hooded/stalker/kozhanka_dolg
	slowdown = 0.05
	armor = list("melee" = 10, "bullet" = 10, "laser" = 10, "energy" = 10, "bomb" = 10, "bio" = 10, "rad" = 30, "fire" = 10, "psy" = 0)
	icon_state = "winterhood_dolg"
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/suit/hooded/kozhanka/banditka
	name = "Bandit jacket"
	desc = "Traditional bandit clothing - a leather jacket with armor pieces sewed in. The protection it provides is completely inadequate for the harsh conditions of the Zone."
	icon_state = "banditka"
	item_state = "ro_suit"
	slowdown = 0.075
	armor = list("melee" = 15, "bullet" = 15, "laser" = 15, "energy" = 5, "bomb" = 15, "bio" = 5, "rad" = 20, "fire" = 5, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/banditka
	durability = 75

/obj/item/clothing/head/hooded/stalker/banditka
	slowdown = 0.075
	armor = list("melee" = 15, "bullet" = 15, "laser" = 15, "energy" = 5, "bomb" = 0, "bio" = 5, "rad" = 20, "fire" = 5, "psy" = 0)
	icon_state = "winterhood_banditka"
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/suit/hooded/kozhanka/banditka/unique
	name = "Chain-mail jacket"
	desc = "The usual weak bandit body armor, but chain mail is sewn into the lining. Almost anyone can do this, but not everyone will have enough patience."
	//icon_state = "banditka_unique"
	slowdown = 0.15
	armor = list("melee" = 15, "bullet" = 28, "laser" = 15, "energy" = 5, "bomb" = 15, "bio" = 5, "rad" = 20, "fire" = 5, "psy" = 0)
	unique = 1

/obj/item/clothing/suit/hooded/kozhanka/unique
	name = "Anomaly jacket"
	desc = "This jacket was removed from the corpse of one of the stalkers who died in the 'jelly' anomaly. After lying in an anomaly for a long time, the jacket has acquired the ability to speed up the wearer's metabolism."
	icon_state = "kozhanka_unique"
	slowdown = 0.05
	armor = list("melee" = 10, "bullet" = 10, "laser" = 10, "energy" = 10, "bomb" = 20, "bio" = 20, "rad" = 30, "fire" = 10, "psy" = 0)
	unique = 0

/obj/item/clothing/suit/hooded/kozhanka/renegadecoat
	name = "Renegade coat"
	desc = "A tan trenchcoat with light armor plates and shoulder pads strapped onto it. Apart of looking cool, it provides light protection against bullets and melee attacks. Has a very minor anti-radiation & Biological protection. Better than nothing."
	icon_state = "renegadecoat"
	item_state = "renegadecoat_t"
	slowdown = 0.075
	armor = list("melee" = 15, "bullet" = 15, "laser" = 15, "energy" = 5, "bomb" = 15, "bio" = 5, "rad" = 20, "fire" = 5, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/renegade
	durability = 75

/obj/item/clothing/head/hooded/stalker/renegade
	slowdown = 0.075
	armor = list("melee" = 15, "bullet" = 15, "laser" = 15, "energy" = 5, "bomb" = 0, "bio" = 5, "rad" = 20, "fire" = 5, "psy" = 0)
	icon_state = "winterhood_renegade"
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/suit/hooded/kozhanka/tancoat
	name = "Tan coat"
	desc = "A tan trenchcoat with light armor plates and shoulder pads strapped on it. Apart of looking cool, it provides light protection against bullets and melee attacks. Has a very minor anti-radiation & Biological protection. Better than nothing."
	icon_state = "tancoat"
	item_state = "tancoat_t"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	slowdown = 0.1
	armor = list("melee" = 20, "bullet" = 20, "laser" = 15, "energy" = 30, "bomb" = 0, "bio" = 10, "rad" = 30, "fire" = 30, "psy" = 0)
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	resistance_flags = UNACIDABLE
	hoodtype = /obj/item/clothing/head/hooded/stalker/tancoat
	durability = 75
	//МОДИФИКАЦИИ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/head/hooded/stalker/tancoat
	icon_state = "winterhood_tancoat"
	slowdown = 0.1
	armor = list("melee" = 20, "bullet" = 20, "laser" = 10, "energy" = 10, "bomb" = 10, "bio" = 10, "rad" = 30, "fire" = 10, "psy" = 0)
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/suit/kozhanka
	name = "jacket subtype made for the tourist clothings."
	desc = "Common attire of the novice stalker. It wont save you from bullets or anomalies, but its still better than nothing."
	icon_state = "kozhanka"
	item_state = "det_suit"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	slowdown = 0.05
	armor = list(melee = 10, bullet = 10, laser = 10,burn = 10, bomb = 10, bio = 10, rad = 10, electro = 10, psy = 0)
	durability = 75
	//�����������//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/kozhanka/tourist/jacket
	name = "Leather Jacket"
	desc = "A bare leather jacket from outside of the zone. Has no beneficial properties whatsoever apart of protection from basic elements."
	icon_state = "tourist1"
	item_state = "det_suit"

/obj/item/clothing/suit/kozhanka/tourist/coat
	name = "Green Winter Coat"
	desc = "Thick winter coat from outside of the zone. Does'nt have any properties usable in the zone."
	icon_state = "tourist2"
	item_state = "det_suit"

/obj/item/clothing/suit/kozhanka/tourist/gorka
	name = "Gorka Jacket"
	desc = "A gorka jacket in good condition. Apart of protecting you from the elements of nature, it does not hold any beneficial properties from the zone at all."
	icon_state = "tourist3"
	item_state = "det_suit"

/obj/item/clothing/suit/hooded/kombez
	name = "Sunrise"
	desc = "A gold standard suit of every Loner. Most common medium-grade suit of every Loner. Provides solid protection from what zone has to offer including bullets and melee. A decent choice for a zone dweller. "
	icon_state = "kombez"
	item_state = "syndicate-green"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	resistance_flags = UNACIDABLE
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.125
	armor = list("melee" = 35, "bullet" = 25, "laser" = 50, "energy" = 50, "bomb" = 30, "bio" = 50, "rad" = 50, "fire" = 50, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/kombez
	durability = 200
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/head/hooded/stalker/kombez
	slowdown = 0.125
	armor = list("melee" = 35, "bullet" = 20, "laser" = 50, "energy" = 50, "bomb" = 0, "bio" = 50, "rad" = 50, "fire" = 50, "psy" = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_kombez"
	flags_inv = HIDEEARS|HIDEHAIR

//strelok
/obj/item/clothing/suit/hooded/strelok
	name = "Upgraded Sunrise Suit"
	desc = "An advanced step forward from a standard sunrise suit. Provides substantially better protection across all attributes. Very good all around choice for the wandering in the zone."
	icon_state = "kombez"
	item_state = "syndicate-green"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	resistance_flags = UNACIDABLE
	strip_delay = 120
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.125
	armor = list("melee" = 65, "bullet" = 65, "laser" = 50, "energy" = 50, "bomb" = 30, "bio" = 50, "rad" = 50, "fire" = 50, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/strelok
	durability = 400
	unique = 1

/obj/item/clothing/head/hooded/stalker/strelok
	slowdown = 0.125
	armor = list("melee" = 65, "bullet" = 	35, "laser" = 50, "energy" = 50, "bomb" = 0, "bio" = 50, "rad" = 50, "fire" = 50, "psy" = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_kombez"
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/suit/hooded/kozhanka/cs_hood
	name = "Clear sky coat"
	desc = "A coat sporting clear sky camoflauge with light armor plates and shoulder pads strapped on it. Provides minimal, almost negligible protection from bullets, lacerations and the dangers of zone. Not optimal for expeditions."
	icon_state = "cs_hood"
	item_state = "cs_hood_t"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	slowdown = 0.05
	armor = list("melee" = 10, "bullet" = 10, "laser" = 10, "energy" = 10, "bomb" = 10, "bio" = 10, "rad" = 30, "fire" = 10, "psy" = 0)
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	resistance_flags = UNACIDABLE
	hoodtype = /obj/item/clothing/head/hooded/stalker/cs_hood
	durability = 75
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/head/hooded/stalker/cs_hood
	icon_state = "winterhood_cs"
	slowdown = 0.05
	armor = list("melee" = 10, "bullet" = 10, "laser" = 10, "energy" = 10, "bomb" = 10, "bio" = 10, "rad" = 30, "fire" = 10, "psy" = 0)
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/suit/hooded/cs_medium
	name = "CS-3a body armor"
	desc = "An armor worn exclusively by the Clear Sky faction, designed for conducting search operations in areas of low anomalous activity. It's higher quality materials result in greater durability. Provides protection comparable to sunrise suit, but with significantly higher protection from anomalous elements."
	icon_state = "cs_medium"
	item_state = "syndicate-green"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	resistance_flags = UNACIDABLE
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.125
	armor = list("melee" = 35, "bullet" = 25, "laser" = 50, "energy" = 50, "bomb" = 30, "bio" = 50, "rad" = 50, "fire" = 50, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/cs_medium
	durability = 250
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/head/hooded/stalker/cs_medium
	slowdown = 0.125
	armor = list("melee" = 35, "bullet" = 25, "laser" = 50, "energy" = 50, "bomb" = 30, "bio" = 50, "rad" = 50, "fire" = 50, "psy" = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_cs_medium"
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/suit/cs_heavy
	name = "CS-1 Body Armor"
	desc = "Standard equipment used by Clear Sky assault squads. This body armor is able to stop a pistol bullet. Provides a solid all round protection comparable to sunrise suit with stronger adjustements."
	icon_state = "cs_heavy"
	item_state = "syndicate-green"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	resistance_flags = UNACIDABLE
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.175
	armor = list("melee" = 35, "bullet" = 35, "laser" = 50, "energy" = 50, "bomb" = 30, "bio" = 50, "rad" = 50, "fire" = 50, "psy" = 0)
	durability = 200
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

	/*
	Not sprited suits based off sunrise in here
	Currently: none
	*/


/obj/item/clothing/suit/jacket/sidor
	name = "Old vest"
	desc = "A kosher vest made of chimera leather. Provides absolutely no protection from the zone. "
	icon_state = "sidor_vest"
	item_state = "det_suit"
	resistance_flags = FIRE_PROOF
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	allowed = list(/obj/item/flashlight,/obj/item/tank/internals/emergency_oxygen,/obj/item/toy,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/gun/ballistic/automatic/pistol,/obj/item/gun/ballistic/revolver,/obj/item/gun/ballistic/revolver/detective,/obj/item/kitchen/knife/tourist)

/obj/item/clothing/suit/hooded/kozhanka/banditka/coat
	name = "trenchcoat"
	desc = "A regular black leather trench coat. Has no special purpose other than to keep the wearer warm at night or protect from a blind dog bite. Although the trench coat is not particularly comfortable, it is often used by Bandits in the Zone - either because it allows them to hide in the dark or simply due to its \"cool\" appearance. Provides an okay all round protection."
	icon_state = "banditcoat"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	slowdown = 0.075
	armor = list("melee" = 20, "bullet" = 15, "laser" = 15, "energy" = 30, "bomb" = 0, "bio" = 10, "rad" = 30, "fire" = 30, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/bandit
	durability = 150

/obj/item/clothing/head/hooded/stalker/bandit
	slowdown = 0.075
	armor = list("melee" = 15, "bullet" = 15, "laser" = 15, "energy" = 30, "bomb" = 10, "bio" = 10, "rad" = 30, "fire" = 30, "psy" = 0)
	icon_state = "winterhood_banditcoat"
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/suit/hooded/kozhanka/banditka/coat/brown
	icon_state = "banditcoatbrown"
	desc = "A regular brown leather trench coat. Does not protect wearer against any dangers in the zone, but it happens to look aesthetically superior."
	hoodtype = /obj/item/clothing/head/hooded/stalker/banditbrown

/obj/item/clothing/head/hooded/stalker/banditbrown
	slowdown = 0.075
	armor = list("melee" = 20, "bullet" = 15, "laser" = 15, "energy" = 30, "bomb" = 0, "bio" = 10, "rad" = 30, "fire" = 30, "psy" = 0)
	icon_state = "winterhood_banditcoatbrown"
	flags_inv = HIDEEARS|HIDEHAIR

/obj/item/clothing/suit/hooded/sealed
	name = "test"
	desc = "Sealed suit with closed-cycle breathing system."
	icon_state = "kombez"
	item_state = "syndicate-green"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	resistance_flags = UNACIDABLE
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	armor = list("melee" = 90, "bullet" = 25, "laser" = 50, "energy" = 50, "bomb" = 30, "bio" = 50, "rad" = 50, "fire" = 50, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed
	durability = 200
	//МОДИФИКАЦИИ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)
/*
/obj/item/clothing/head/hooded/stalker/sealed
	modifications = list("visor_suit" = 0)
*/

/obj/item/clothing/suit/hooded/sealed/ToggleHood()
	if(!suittoggled)
		if(ishuman(src.loc))
			var/mob/living/carbon/human/H = src.loc
			if(H.wear_suit != src)
				to_chat(H, "<span class='warning'>You must be wearing [src] to put up the hood!</span>")
				return
			if(H.head || H.wear_mask)
				to_chat(H, "<span class='warning'>You're already wearing something on your head!</span>")
				return
			else if(H.equip_to_slot_if_possible(hood,SLOT_HEAD,0,0,1))
				suittoggled = TRUE
				src.icon_state = "[initial(icon_state)]_t"
				H.update_inv_wear_suit()
				for(var/X in actions)
					var/datum/action/A = X
					A.UpdateButtonIcon()
	else
		RemoveHood()

/obj/item/clothing/suit/hooded/sealed/New()
	..()
	//spawn(10)
	//	if(hood)
	//		modifications += hood.modifications
	//if(hood.nvg)
	//	if(hood.nvg.colour_matrix == NIGHTVISION_MATRIX_I)
	//		modifications += "visor"
	//	else if(hood.nvg.colour_matrix == NIGHTVISION_MATRIX_II)
	//		modifications += "visor"

/obj/item/clothing/suit/hooded/sealed/ecolog
	name = "SSP-99"
	desc = "A SSP-99 chemical protection suit specially designed for the Zone conditions. It is used by scientific expeditions and the eco-stalkers who cooperate with them. It has an integrated air-filtering and air-conditioning system. It is heat and electricity resistant, provides good protection from radiation and biological anomalies. It is resistant to chemically aggressive environments. It is not designed for combat, but it provides very minimal bullet and melee protections."
	icon_state = "ecolog"
	item_state = "syndicate-orange"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.3
	armor = list("melee" = 15, "bullet" = 15, "laser" = 90, "energy" = 90, "bomb" = 40, "bio" = 90, "rad" = 95, "fire" = 90, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/ecolog
	resistance_flags = FIRE_PROOF
	durability = 200
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "visor_suit" = 1, "accessory_slot" = 0)

/obj/item/clothing/head/hooded/stalker/sealed/ecolog
	name = "SSP-99 helmet"
	slowdown = 0.075
	armor = list("melee" = 15, "bullet" = 15, "laser" = 90, "energy" = 90, "bomb" = 40, "bio" = 90, "rad" = 95, "fire" = 90, "psy" = 20)
	heat_protection = HEAD
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "ecolog_helmet"

/obj/item/clothing/head/hooded/stalker/sealed/ecolog/Initialize()
	AttachNVG()
	//nvg = new /obj/item/nightvision(src)
	..()

/obj/item/clothing/suit/hooded/sealed/ecologm
	name = "SSP-99M"
	desc = "High quality modified SSP-99 suit. It provides increased body protection from bullet and splinter damage. It is designed for the guards working with scientific expeditions. It provides good protection from radiation and biological anomalies. It is resistant to chemically aggressive environments and other effects dangerous to the body. This variant provides a decent protection from firearms & melee damage."
	icon_state = "ecologg"
	item_state = "syndicate-green"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.15
	armor = list("melee" = 40, "bullet" = 30, "laser" = 90, "energy" = 90, "bomb" = 60, "bio" = 90, "rad" = 90, "fire" = 90, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/ecologm
	resistance_flags = FIRE_PROOF
	durability = 250
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "visor_suit" = 1, "accessory_slot" = 0)

/obj/item/clothing/head/hooded/stalker/sealed/ecologm
	name = "SSP-99M helmet"
	slowdown = 0.075
	armor = list("melee" = 40, "bullet" = 30, "laser" = 90, "energy" = 90, "bomb" = 60, "bio" = 90, "rad" = 90, "fire" = 90, "psy" = 25)
	heat_protection = HEAD
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "ecologg_helmet"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/head/hooded/stalker/sealed/ecologm/Initialize()
	AttachNVG()
	//nvg = new /obj/item/nightvision(src)
	..()

/obj/item/clothing/suit/hooded/sealed/seva
	name = "SEVA"
	desc = "This bodysuit, intended for conducting research in the Zone, combines a closed-cycle respiratory module and an external isolation coating, resulting in excellent protection from anomalies. It provides a very fair protection from bullets and lacerations. It comes with a built-in artifact transportation container."
	icon_state = "seva"
	item_state = "syndicate-black"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.3
	armor = list("melee" = 60, "bullet" = 60, "laser" = 80, "energy" = 80, "bomb" = 50, "bio" = 70, "rad" = 80, "fire" = 80, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/seva
	resistance_flags = FIRE_PROOF
	durability = 200
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "visor_suit" = 1, "accessory_slot" = 0)

/obj/item/clothing/head/hooded/stalker/sealed/seva
	name = "SEVA helmet"
	slowdown = 0.1
	armor = list("melee" = 60, "bullet" = 50, "laser" = 80, "energy" = 80, "bomb" = 50, "bio" = 70, "rad" = 80, "fire" = 80, "psy" = 15)
	heat_protection = HEAD
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "seva_helmet"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/head/hooded/stalker/sealed/seva/Initialize()
	AttachNVG()
	//nvg = new /obj/item/nightvision(src)
	..()

/obj/item/clothing/suit/hooded/sealed/seva/orange
	icon_state = "sevao"
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/seva/orange

/obj/item/clothing/head/hooded/stalker/sealed/seva/orange
	icon_state = "sevao_helmet"

/obj/item/clothing/suit/hooded/sealed/psz9md
	name = "PSZ-9MD"
	desc = "A wonderful protective suit for the Zone. Stalkers appreciate it because it combines excellent anomaly-proof and bullet-proof qualities. It includes the PSZ-9d suit, a closed cycle breathing system and an integrated system of anomalous field suppression. It provides quality bullet and splinter protection."
	icon_state = "psz9md"
	item_state = "syndicate-black-red"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.25
	armor = list("melee" = 50, "bullet" = 50, "laser" = 80, "energy" = 75, "bomb" = 50, "bio" = 50, "rad" = 75, "fire" = 75, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/psz9md
	resistance_flags = FIRE_PROOF
	durability = 150
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "visor_suit" = 1, "accessory_slot" = 0)

/obj/item/clothing/head/hooded/stalker/sealed/psz9md
	name = "PSZ-9MD helmet"
	slowdown = 0.1
	armor = list("melee" = 50, "bullet" = 50, "laser" = 80, "energy" = 65, "bomb" = 50, "bio" = 50, "rad" = 70, "fire" = 65, "psy" = 20)
	heat_protection = HEAD
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "psz9md_helmet"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/head/hooded/stalker/sealed/psz9md/Initialize()
	AttachNVG()
	//nvg = new /obj/item/nightvision(src)
	..()

/obj/item/clothing/suit/hooded/sealed/sin
	name = "Sinner suit"
	desc = "A strange sealed suit worn by Sin members. It provides fair all round protection from the zone."
	icon_state = "sin"
	item_state = "syndicate-black-red"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.25
	armor = list("melee" = 50, "bullet" = 50, "laser" = 80, "energy" = 75, "bomb" = 50, "bio" = 50, "rad" = 75, "fire" = 75, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/sin
	resistance_flags = FIRE_PROOF
	durability = 150
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "visor_suit" = 1, "accessory_slot" = 0)

/obj/item/clothing/head/hooded/stalker/sealed/sin
	name = "Sinner suit Mask"
	slowdown = 0.1
	armor = list("melee" = 50, "bullet" = 50, "laser" = 80, "energy" = 65, "bomb" = 50, "bio" = 50, "rad" = 70, "fire" = 65, "psy" = 20)
	heat_protection = HEAD
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "sin_helmet"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/head/hooded/stalker/sealed/psz9md/Initialize()
	AttachNVG()
	//nvg = new /obj/item/nightvision(src)
	..()

/obj/item/clothing/suit/hooded/sealed/exoskelet
	name = "Exoskeleton"
	desc = "An experimental sample of a military exoskeleton. Was never mass-produced due to extraordinary cost and some design flaws. Despite this, it is in demand due to its ability to take on the weight of all carried equipment, and therefore small batches are made in underground facilities outside Ukraine. Comes with a built-in artifact container."
	icon_state = "exoskelet"
	item_state = "syndicate-black"
	slowdown = 0.4
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	armor = list("melee" = 75, "bullet" = 75, "laser" = 50, "energy" = 30, "bomb" = 80, "bio" = 50, "rad" = 85, "fire" = 50, "psy" = 40)
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/exoskelet
	durability = 200
	resistance_flags = UNACIDABLE | FIRE_PROOF

/obj/item/clothing/head/hooded/stalker/sealed/exoskelet
	name = "Exoskeleton helmet"
	slowdown = 0.1
	armor = list("melee" = 75, "bullet" = 75, "laser" = 50, "energy" = 30, "bomb" = 80, "bio" = 100, "rad" = 100, "fire" = 50, "psy" = 30)
	heat_protection = HEAD
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	resistance_flags = UNACIDABLE | FIRE_PROOF
	icon_state = "exoskelet_helmet"
/obj/item/clothing/head/hooded/stalker/sealed/exoskelet/New()
	..()
	AttachNVG()
	//nvg = new /obj/item/nightvision(src)

/obj/item/clothing/suit/hooded/sealed/exoskelet/duty
	name = "Duty exoskeleton"
	desc = "An experimental sample of a military exoskeleton. Was never mass-produced due to extraordinary cost and some design flaws. Despite this, it is in demand due to its ability to take on the weight of all carried equipment, and therefore small batches are made in underground facilities outside Ukraine. Comes with a built-in artifact container."
	icon_state = "exoskeletd"
	item_state = "syndicate-black"
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/exoskelet/duty

/obj/item/clothing/head/hooded/stalker/sealed/exoskelet/duty
	name = "Duty exoskeleton helmet"
	icon_state = "exoskeletd_helmet"

/obj/item/clothing/suit/hooded/sealed/exoskelet/freedom
	name = "Freedom exoskeleton"
	desc = "An experimental sample of a military exoskeleton. Was never mass-produced due to extraordinary cost and some design flaws. Despite this, it is in demand due to its ability to take on the weight of all carried equipment, and therefore small batches are made in underground facilities outside Ukraine. Comes with a built-in artifact container."
	icon_state = "exoskeletf"
	item_state = "syndicate-black"
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/exoskelet/freedom

/obj/item/clothing/head/hooded/stalker/sealed/exoskelet/freedom
	name = "Freedom Exoskeleton Helmet"
	icon_state = "exoskeletf_helmet"

/obj/item/clothing/suit/hooded/sealed/exoskelet/merc
	name = "Mercenary Exoskeleton"
	desc = "An experimental sample of a military exoskeleton. Was never mass-produced due to extraordinary cost and some design flaws. Despite this, it is in demand due to its ability to take on the weight of all carried equipment, and therefore small batches are made in underground facilities outside Ukraine. Comes with a built-in artifact container."
	icon_state = "exoskeletm"
	item_state = "syndicate-black"
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/exoskelet/merc

/obj/item/clothing/head/hooded/stalker/sealed/exoskelet/merc
	name = "Mecenary Exoskeleton Helmet"
	icon_state = "exoskeletm_helmet"

/obj/item/clothing/suit/hooded/sealed/exoskelet/bandit
	name = "Bandit exoskeleton"
	desc = "An experimental sample of a military exoskeleton. Was never mass-produced due to extraordinary cost and some design flaws. Despite this, it is in demand due to its ability to take on the weight of all carried equipment, and therefore small batches are made in underground facilities outside Ukraine. Comes with a built-in artifact container."
	icon_state = "exoskeletm"
	item_state = "syndicate-black"
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/exoskelet/bandit

/obj/item/clothing/head/hooded/stalker/sealed/exoskelet/bandit
	name = "Bandit exoskeleton helmet"
	icon_state = "exoskeletm_helmet"

/obj/item/clothing/suit/hooded/sealed/exoskelet/monolith
	name = "Monolith exoskeleton"
	desc = "An experimental sample of a military exoskeleton. Was never mass-produced due to extraordinary cost and some design flaws. Despite this, it is in demand due to its ability to take on the weight of all carried equipment, and therefore small batches are made in underground facilities outside Ukraine. Comes with a built-in artifact container."
	icon_state = "exoskeletmo"
	item_state = "syndicate-black"
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/exoskelet/monolith

/obj/item/clothing/head/hooded/stalker/sealed/exoskelet/monolith
	name = "monolith exoskeleton helmet"
	icon_state = "exoskeletmo_helmet"

/obj/item/clothing/suit/army
	name = "Army Body Armor"
	desc = "Standard army body armor issued to all military personnel guarding the perimeter of the Zone. Provides good protection against bullets and melee weapons, absolutely unsuitable for forays deep into the Zone, since it has almost no protection against the effects of anomalous fields."
	icon_state = "army_armor1"
	item_state = "armor"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	resistance_flags = UNACIDABLE
	slowdown = 0.2
	armor = list("melee" = 30, "bullet" = 40, "laser" = 10, "energy" = 25, "bomb" = 10, "bio" = 0, "rad" = 20, "fire" = 25, "psy" = 0)

	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)

	durability = 125
	//МОДИФИКАЦИИ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/mil
	name = "military vest"
	desc = "A poor protective outfit contracted by government bureaucrats outsourcing to the lowest bidder. Typically issued to helicopter pilots, tank drivers, rear-echelon personnel, conscripts and enlisted servicemen. Provides adequate protection from small mutants. Although its overall combat protection is better than the leather jackets commonly found on the rookies of other factions, that really isn't saying much."
	icon_state = "milbodyarmor"
	item_state = "milbodyarmor"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	resistance_flags = UNACIDABLE
	slowdown = 0.2
	armor = list("melee" = 30, "bullet" = 40, "laser" = 10, "energy" = 25, "bomb" = 10, "bio" = 0, "rad" = 20, "fire" = 25, "psy" = 0)
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	durability = 125
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/ballistic
	name = "ballistic vest"
	desc = "Ballistic vest commonly used by the Merc faction. Its design is based on the vest used by the special forces of the Western armies. Due to a special treatment of the fabric, the armor has a strengthened stability during the physical movement of its plates. Its protective properties are slightly better then those of the PSZ-7 military bulletproof vests."
	icon_state = "bodyarmor"
	item_state = "bodyarmor"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	slowdown = 0.225
	armor = list(melee = 20, bullet = 45, laser = 10,burn = 15, bomb = 10, bio = 0, rad = 10, electro = 15, psy = 0)
	durability = 150

/obj/item/clothing/suit/civ
	name = "flak jacket"
	desc = "A dated flak jacket that will provide slight ballistic protection and is poor against damage from mutants and anomalies."
	icon_state = "flakjacket"
	item_state = "flakjacket"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	slowdown = 0.15
	armor = list(melee = 20, bullet = 30, laser = 10,burn = 10, bomb = 35, bio = 0, rad = 0, electro = 0, psy = 0)
	durability = 150
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/toggle/flight
	name = "Flight vest"
	desc = "A regional flight jacket. features an added button-in/out liner for extra warmth, along with a cotton-fiber stretch coif. You'd have to wonder how exactly it got here into the zone other than previous disaster."
	icon_state = "flightvest"
	item_state = "flightvest"
	blood_overlay_type = "armor"
	togglename = "buttons"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	slowdown = 0.15
	armor = list(melee = 45, bullet = 30, laser = 10,burn = 10, bomb = 20, bio = 0, rad = 0, electro = 0, psy = 0)
	durability = 150
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/sixb2
	name = "6B2"
	desc = "The 6B2 bulletproof vest was developed at the request of the USSR Ministry of Defense in 1980, after which it was supplied to the Soviet Army. The vest was used in all branches of the Soviet Army during the Afghan War of 1979-1989, and still remains in service in some post-Soviet states. The bulletproof vest has an average area of protection, has a height adjustment in the shoulder section, and is fastened on the user with Velcro."
	icon_state = "6b2"
	item_state = "6b2"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN
	cold_protection = CHEST|GROIN
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	resistance_flags = UNACIDABLE
	slowdown = 0.275
	armor = list("melee" = 50, "bullet" = 55, "laser" = 45, "energy" = 30, "bomb" = 60, "bio" = 20, "rad" = 20, "fire" = 20, "psy" = 0)
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	durability = 190
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0)

/obj/item/clothing/suit/d2
	name = "Defender II Vest"
	desc = "Experience in  the First Chechen War has shown that personnel need durable protection, which includes both front and back plates and neck and groin protection, because even one fragmentary injury might cause death. For this problem. FORT TECHNOLOGY issued the Defender 2 vest, which became standard equipment element in different SF units of FSB, FSO and Rusguard. It provides users with optimal protection coverage and includes detachable neck protectors and groin pads. This particular one comes with a groin pad."
	icon_state = "d2"
	item_state = "d2"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN
	cold_protection = CHEST|GROIN
	heat_protection = CHEST|GROIN
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	resistance_flags = UNACIDABLE
	slowdown = 0.4
	armor = list("melee" = 85, "bullet" = 80, "laser" = 45, "energy" = 60, "bomb" = 80, "bio" = 30, "rad" = 30, "fire" = 20, "psy" = 0)
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	durability = 150
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)



/*
/obj/item/clothing/suit/army/army2
	icon_state = "army_armor2"
*/
/obj/item/clothing/suit/army/New()
	..()
	icon_state = "army_armor[rand(1, 2)]"

/obj/item/clothing/suit/berill
	name = "berill-5M"
	desc = "This item comprises military PS5 series body armor with beryllium sputter modified for use in the Zone. Designed for assault operations in highly radioactive areas, it is ineffective in areas of high anomalous activity. The suit makes its way to stalkers through the military, who exchange it for loot. Does not come with an artifact container."
	icon_state = "berill_5m"
	item_state = "syndicate-green"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.3
	armor = list("melee" = 40, "bullet" = 60, "laser" = 30, "energy" = 30, "bomb" = 40, "bio" = 30, "rad" = 30, "fire" = 30, "psy" = 0)
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	durability = 150
	//МОДИФИКАЦИИ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/guardian_of_freedom
	name = "Guardian of Freedom"
	desc = "A military Berill-5M suit 'liberated' from the military and modified for the freedom faction. Designed for assault operations in highly radioactive areas, it is ineffective in areas of high anomalous activity. The suit makes its way to stalkers through the military, who exchange it for loot. Does not come with an artifact container."
	icon_state = "guardian_of_freedom"
	item_state = "syndicate-green"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.3
	armor = list("melee" = 40, "bullet" = 60, "laser" = 30, "energy" = 30, "bomb" = 40, "bio" = 35, "rad" = 40, "fire" = 35, "psy" = 0)
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	durability = 150
	//МОДИФИКАЦИИ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/hooded/kombez/monolith
	name = "monolith armor"
	desc = "Stalker suit worn by the Monolith. The producer is unknown. Its protective properties are slightly worse then those of the PSZ-9a military bulletproof vest. Its structure is similar to the suit popular with neutral stalkers which combines a bulletproof vest and a radiation protection suit. It provides good protection from gunfire. Its level of anomaly protection is low due to the absence of an air filtering system."
	icon_state = "monolit"
	item_state = "syndicate-green"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.175
	armor = list("melee" = 35, "bullet" = 35, "laser" = 50, "energy" = 30, "bomb" = 40, "bio" = 30, "rad" = 30, "fire" = 30, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/monolith
	durability = 150

/obj/item/clothing/head/hooded/stalker/monolith
	slowdown = 0.025
	armor = list("melee" = 35, "bullet" = 25, "laser" = 50, "energy" = 50, "bomb" = 0, "bio" = 50, "rad" = 30, "fire" = 50, "psy" = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_monolit"

/obj/item/clothing/suit/hooded/sealed/monolith
	name = "monolith scientific suit"
	desc = "This bodysuit, intended for conducting research in the Zone, combines a closed-cycle respiratory module and an external isolation coating, resulting in excellent protection from anomalies. Due to poor protection from physical impact, the suit is not a good defense against bullet and fragmentation damage. It comes with a built-in artifact transportation container."
	icon_state = "monolith_scientific"
	item_state = "syndicate-green"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.25
	armor = list("melee" = 45, "bullet" = 50, "laser" = 45, "energy" = 45, "bomb" = 45, "bio" = 65, "rad" = 75, "fire" = 60, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/monolith
	resistance_flags = FIRE_PROOF
	durability = 200
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "visor_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/head/hooded/stalker/sealed/monolith
	name = "monolith scientific suit helmet"
	slowdown = 0.5
	armor = list("melee" = 50, "bullet" = 50, "laser" = 45, "energy" = 45, "bomb" = 45, "bio" = 65, "rad" = 75, "fire" = 60, "psy" = 0)
	heat_protection = HEAD
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "monolith_scientific_helmet"
	resistance_flags = FIRE_PROOF

/obj/item/clothing/suit/hooded/sealed/merc
	name = "merc ace suit"
	desc = "This bodysuit, intended for conducting research in the Zone, combines a closed-cycle respiratory module and an external isolation coating, resulting in excellent protection from anomalies. Due to poor protection from physical impact, the suit is not a good defense against bullet and fragmentation damage. It comes with a built-in artifact transportation container."
	icon_state = "mercace"
	item_state = "mercace"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.25
	armor = list("melee" = 45, "bullet" = 50, "laser" = 45, "energy" = 45, "bomb" = 45, "bio" = 65, "rad" = 75, "fire" = 60, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/sealed/merc
	resistance_flags = FIRE_PROOF
	durability = 200
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "visor_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/head/hooded/stalker/sealed/merc
	name = "merc ace suit helmet"
	slowdown = 0.5
	armor = list("melee" = 50, "bullet" = 50, "laser" = 45, "energy" = 45, "bomb" = 45, "bio" = 65, "rad" = 75, "fire" = 60, "psy" = 0)
	heat_protection = HEAD
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	icon_state = "mercace_helmet"
	resistance_flags = FIRE_PROOF


/obj/item/clothing/suit/skat
	name = "SKAT-M9"
	desc = "This Skat-9M bulletproof military suit is designed for assault operations in areas of anomalous activity. It includes a PSZ-12p heavy military bulletproof suit, an integrated compensation suit and a Sphera-12M helmet. It provides perfect protection from bullets and splinters and it doesn't decrease the soldier's mobility. It has a balanced system of anomaly protection."
	icon_state = "skat"
	item_state = "syndicate-black"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	resistance_flags = UNACIDABLE
	slowdown = 0.35
	armor = list("melee" = 60, "bullet" = 70, "laser" = 60, "energy" = 50, "bomb" = 70, "bio" = 35, "rad" = 35, "fire" = 50, "psy" = 0)
	durability = 200
	//МОДИФИКАЦИИ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/hooded/kombez/ps5m
	name = "PS5-M"
	desc = "This modern version of the Duty bodysuit is better suited for stalker recruits who are used to lightweight suits. Unlike the PSZ series, this suit provides good protection against anomalies while also being capable of stopping a pistol bullet. The suit cannot be modified with an artifact container, but may be upgraded with a combat support system instead."
	icon_state = "ps5m"
	item_state = "syndicate-black-red"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.175
	armor = list("melee" = 30, "bullet" = 35, "laser" = 50, "energy" = 35, "bomb" = 30, "bio" = 30, "rad" = 30, "fire" = 35, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/ps5m
	durability = 200

/obj/item/clothing/head/hooded/stalker/ps5m
	armor = list("melee" = 30, "bullet" = 0, "laser" = 50, "energy" = 35, "bomb" = 0, "bio" = 30, "rad" = 30, "fire" = 35, "psy" = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_psz9d"

/obj/item/clothing/suit/psz9d
	name = "PSZ-9D"
	desc = "Produced by one of Kiev's defence research institutes and commissioned by the Duty faction. It is as simple and reliable as the standard PSZ-9 model, but due to the new materials, it provides good protection from various harmful impacts, including firearm damage. The vest still needs some work because it has no breathing protection system."
	icon_state = "psz9d"
	item_state = "syndicate-black"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	resistance_flags = UNACIDABLE
	slowdown = 0.325
	armor = list("melee" = 75, "bullet" = 65, "laser" = 50, "energy" = 40, "bomb" = 80, "bio" = 35, "rad" = 45, "fire" = 40, "psy" = 0)
	durability = 200
	//МОДИФИКАЦИИ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/hooded/kombez/mercenary
	name = "mercenary armor"
	desc = "Stalker suit from the Merc faction. Its design is based on the suit used by the special forces of the Western armies. Due to a special treatment of the fabric, the armor has a strengthened stability during the physical movement of its plates. Its protective properties are slightly better then those of the PSZ-7 military bulletproof suits."
	icon_state = "mercenary"
	item_state = "syndicate-black"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.225
	armor = list("melee" = 20, "bullet" = 45, "laser" = 10, "energy" = 15, "bomb" = 10, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/mercenary
	durability = 150

/obj/item/clothing/head/hooded/stalker/mercenary
	slowdown = 0.05
	armor = list("melee" = 20, "bullet" = 25, "laser" = 10, "energy" = 15, "bomb" = 50, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_mercenary"

/obj/item/clothing/suit/hooded/kombez/eco_mercenary
	name = "ecologist mercenary armor"
	desc = "Stalker suit from the Merc faction donning an ecologist armband. Its design is based on the suit used by the special forces of the Western armies. Due to a special treatment of the fabric, the armor has a strengthened stability during the physical movement of its plates. Its protective properties are slightly better then those of the PSZ-7 military bulletproof suits."
	icon_state = "eco_mercenary"
	item_state = "syndicate-black"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.225
	armor = list("melee" = 20, "bullet" = 45, "laser" = 10, "energy" = 15, "bomb" = 10, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/eco_mercenary
	durability = 150

/obj/item/clothing/head/hooded/stalker/eco_mercenary
	slowdown = 0.05
	armor = list("melee" = 20, "bullet" = 25, "laser" = 10, "energy" = 15, "bomb" = 50, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_eco_merc"

/obj/item/clothing/suit/hooded/kombez/veter
	name = "Sentinel of Freedom"
	desc = "This lightweight stalker bodysuit is made by Freedom craftsmen. The suit's fabric is treated with Horizon, a special solution developed by the faction by trial and error to increase resistance to anomalies. Like the Sunrise suit, the Wind of Freedom comes with built-in body armor and artifact containers."
	icon_state = "veter"
	item_state = "syndicate-green"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.125
	armor = list("melee" = 25, "bullet" = 25, "laser" = 50, "energy" = 65, "bomb" = 30, "bio" = 50, "rad" = 40, "fire" = 65, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/veter
	durability = 200

/obj/item/clothing/head/hooded/stalker/veter
	slowdown = 0.05
	armor = list("melee" = 25, "bullet" = 25, "laser" = 50, "energy" = 45, "bomb" = 0, "bio" = 20, "rad" = 40, "fire" = 45, "psy" = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_strazh"

/obj/item/clothing/suit/hooded/strazh
	name = "Wind of Freedom"
	desc = "This stalker bodysuit with reinforced body armor made by Freedom craftsmen represents a good compromise between combat and anomaly protection. The built-in body armor comprises armor plating and ten Kevlar layers, capable of stopping a pistol bullet. The suit uses the relatively expensive Sovereign compound for anomaly protection. Comes with an artifact container."
	icon_state = "wind_of_freedom"
	item_state = "syndicate-green"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.25
	armor = list("melee" = 50, "bullet" = 50, "laser" = 30, "energy" = 50, "bomb" = 40, "bio" = 50, "rad" = 40, "fire" = 50, "psy" = 0)
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	hoodtype = /obj/item/clothing/head/hooded/stalker/strazh
	durability = 150
	//МОДИФИКАЦИИ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/head/hooded/stalker/strazh
	slowdown = 0.05
	armor = list("melee" = 25, "bullet" = 25, "laser" = 50, "energy" = 45, "bomb" = 0, "bio" = 20, "rad" = 40, "fire" = 45, "psy" = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_wind_of_freedom"

/obj/item/clothing/suit/assaultmerc
	name = "Mercenary Heavy Armor"
	desc = "Heavy armor used by mercenaries, which includes a multi-layered ballistic vest with collar and forearm protectors, as well as a pair of neoprene-plastic bracers and greaves to protect against local bites. You are not sure if such a suit will protect well against anomalies, but for the conditions of the zone, it is difficult to find better combat armor. "
	icon_state = "assaultmerc"
	item_state = "syndicate-black"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.325
	armor = list("melee" = 50, "bullet" = 65, "laser" = 40, "energy" = 20, "bomb" = 80, "bio" = 20, "rad" = 25, "fire" = 20, "psy" = 0)
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)
	durability = 250
	//МОДИФИКАЦИИ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/suit/hooded/kombez/kombez_bandit
	name = "Bandit Armor"
	desc = "Stalker suit worn by the Bandits. Its design is based on the suit used by the special forces of the Western armies. Due to a special treatment of the fabric, the armor has a strengthened stability during the physical movement of its plates. Its protective properties are slightly better then those of the PSZ-7 military bulletproof suits."
	icon_state = "combez_bandit"
	item_state = "syndicate-orange"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.225
	armor = list("melee" = 20, "bullet" = 45, "laser" = 10, "energy" = 15, "bomb" = 10, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/kombez_bandit
	durability = 150

/obj/item/clothing/head/hooded/stalker/kombez_bandit
	slowdown = 0.05
	armor = list("melee" = 20, "bullet" = 25, "laser" = 10, "energy" = 15, "bomb" = 50, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_combez_bandit"

/obj/item/clothing/suit/hooded/kombez/kombez_renegade
	name = "Renegade Armor"
	desc = "Stalker suit worn by the Renegades. Its design is based on the suit used by the special forces of the Western armies. Due to a special treatment of the fabric, the armor has a strengthened stability during the physical movement of its plates. Its protective properties are slightly better then those of the PSZ-7 military bulletproof suits."
	icon_state = "combez_renegade"
	item_state = "syndicate-orange"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.175
	armor = list("melee" = 35, "bullet" = 35, "laser" = 10, "energy" = 15, "bomb" = 10, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/kombez_renegade
	durability = 150

/obj/item/clothing/head/hooded/stalker/kombez_renegade
	slowdown = 0.125
	armor = list("melee" = 20, "bullet" = 25, "laser" = 10, "energy" = 15, "bomb" = 50, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	icon_state = "winterhood_combez_renegade"


/obj/item/clothing/suit/hooded/kombez/mercenary/leader
	name = "Mercenary Leader Armor"
	desc = "The usual armor of a mercenary with a cloak thrown over it, in a very shabby condition. You wonder why no one else thought of wearing a cloak over light armor before... is there really something hindering this?"
	icon_state = "mercleader"
	item_state = "syndicate-black"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.225
	armor = list("melee" = 20, "bullet" = 45, "laser" = 10, "energy" = 15, "bomb" = 10, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	durability = 150

/obj/item/clothing/suit/hooded/kozhanka/ghillie
	name = "Ghillie Suit"
	desc = "A ghillie suit is a type of camouflage clothing designed to resemble the background environment such as foliage, snow or sand. Such suits rarely come into use in the Zone due to their general bulkiness and incredible uncomfortability, yet they're especially valued by sniper due to their ability to hide you among the grass."
	icon_state = "ghillie"
	item_state = "ghillie"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	slowdown = 0.05
	armor = list("melee" = 10, "bullet" = 10, "laser" = 10, "energy" = 10, "bomb" = 10, "bio" = 10, "rad" = 30, "fire" = 10, "psy" = 0)
	allowed = list(/obj/item/gun/ballistic,/obj/item/ammo_box,/obj/item/ammo_casing,/obj/item/restraints/handcuffs,/obj/item/flashlight/seclite,/obj/item/storage/fancy/cigarettes,/obj/item/lighter,/obj/item/kitchen/knife/tourist)

	resistance_flags = UNACIDABLE
	hoodtype = /obj/item/clothing/head/hooded/stalker/ghillie
	durability = 75
	//МОДИФИКАЦИИ//
	modifications = list("lining_suit" = 0, "padding_suit" = 0, "material_suit" = 0, "accessory_slot" = 0)

/obj/item/clothing/head/hooded/stalker/ghillie
	slowdown = 0.05
	armor = list("melee" = 10, "bullet" = 10, "laser" = 10, "energy" = 10, "bomb" = 10, "bio" = 10, "rad" = 30, "fire" = 10, "psy" = 0)
	flags_inv = HIDEEARS|HIDEHAIR
	icon_state = "ghillie"

/obj/item/clothing/suit/hooded/kombez/kombezrenegadewornd2
	name = "Renegade Vest"
	desc = "A revised version of the old suit. Nevertheless, it does not give any guarantees."
	icon_state = "combez_renegade_worn_d2"
	item_state = "combez_renegade_worn_d2"
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = SPACE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 80
	flags_inv = HIDEJUMPSUIT
	slowdown = 0.225
	armor = list("melee" = 20, "bullet" = 45, "laser" = 10, "energy" = 15, "bomb" = 10, "bio" = 0, "rad" = 30, "fire" = 15, "psy" = 0)
	hoodtype = /obj/item/clothing/head/hooded/stalker/banditbrown
	durability = 150
