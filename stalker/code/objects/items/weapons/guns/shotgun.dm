/obj/item/gun/ballistic/shotgun
	modifications = list("barrel_shotgun" = 0, "frame_shotgun" = 0, "grip_shotgun" = 0)

/obj/item/gun/ballistic/shotgun/bm16  // Горизонталка
	name = "BM-16"
	eng_desc = "The original BM16 rifle. Heavy and dangerous two barrel rifle, and it's effective in high range too."
	icon_state = "bm16"
	item_state = "bm16"
	w_class = 4
	force = 15
	flags_1 = CONDUCT_1
	slot_flags = ITEM_SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/shot/stalker/bm16
	recoil = 1
	durability = 150
	sawn_desc = "Much more compact and lighter than the new double-barreled gun, but effective only in close combat."
	randomspread = 0
	spread = 12
	damagelose = 0.3
	distro = 25
	can_scope = 1
	weapon_weight = WEAPON_MEDIUM
	semi_auto = TRUE
	bolt_type = BOLT_TYPE_NO_BOLT
	fire_sound = 'stalker/sound/weapons/bm16_shot.ogg'
	load_sound = 'stalker/sound/weapons/load/obrez_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/obrez_open.ogg'
	draw_sound = 'stalker/sound/weapons/draw/shotgun_draw.ogg'

/obj/item/gun/ballistic/shotgun/bm16/attackby(obj/item/A, mob/user, params)
	..()
	if(istype(A, /obj/item/ammo_box) || istype(A, /obj/item/ammo_casing))
		//playsound(user, load_sound, 50, 1)
		chamber_round()

/obj/item/gun/ballistic/shotgun/bm16/attack_self(mob/living/user)
	var/num_unloaded = 0
	while (get_ammo() > 0)
		var/obj/item/ammo_casing/CB
		CB = magazine.get_round(0)
		chambered = null
		CB.loc = get_turf(src.loc)
		CB.update_icon()
		num_unloaded++
	if (num_unloaded)
		playsound(user, eject_sound, 50, 1)
		user << "<span class='notice'>You break open \the [src] and unload [num_unloaded] shell\s.</span>"
	else
		user << "<span class='warning'>[src] is empty!</span>"

/obj/item/gun/ballistic/shotgun/bm16/toz34  //  Вертикалка
	name = "TOZ-34"
	eng_desc = "This extremely common over-and-under hunting shotgun can offer better protection against mutants than a pistol, thanks to its accuracy and stopping power. Used mostly by rookies on the outskirts of the Zone."
	icon_state = "toz34"
	item_state = "toz34"
	recoil = 0.6
	force = 15
	durability = 150
	spread = 6
	damagelose = 0.15
	distro = 10
	can_scope = 1
	weapon_weight = WEAPON_MEDIUM

/obj/item/gun/ballistic/shotgun
	modifications = list("barrel_shotgun" = 0, "frame_shotgun" = 0, "grip_shotgun" = 0)

/obj/item/gun/ballistic/shotgun/ithaca  //  Ithaca M37
	name = "Ithaca M37"
	eng_desc = " Pump-action shotgun made in large numbers for the civilian, military, and police markets. It utilizes a novel combination ejection/loading port on the bottom of the gun which leaves the sides closed to the elements. Since shotshells load and eject from the bottom, operation of the gun is equally convenient for both right and left hand shooters. This makes the gun popular with left-handed shooters. The model 37 is considered one of the most durable and reliable shotguns ever produced."
	icon_state = "ithacam37"
	item_state = "ithacam37"
	durability = 100
	slot_flags = ITEM_SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/shot/stalker/ithaca
	recoil = 1
	w_class = 4
	randomspread = 0
	spread = 12
	force = 15
	damagelose = 0.3
	distro = 25
	can_scope = 0
	weapon_weight = WEAPON_MEDIUM
	//fire_sound = 'stalker/sound/weapons/winchester1300_shot.ogg'
	load_sound = 'stalker/sound/weapons/load/chaser_load.ogg'
	rack_sound = 'stalker/sound/weapons/pump/ithacam37_pump.ogg'
	draw_sound = 'stalker/sound/weapons/draw/shotgun_draw.ogg'

/obj/item/gun/ballistic/shotgun/chaser  //  Winchester 1300
	name = "Chaser-13"
	eng_desc = "A Western smoothbore shotgun that is extremely popular around the world thanks to its amazing reliability and faster reloading speed. Particularly valued for its functionality by the Zone's hunters. All of its parts are coated with an anticorrosion compound."
	icon_state = "chaser"
	item_state = "chaser"
	durability = 100
	slot_flags = ITEM_SLOT_BELT|ITEM_SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/shot/chaser
	recoil = 0.8
	w_class = 4
	randomspread = 0
	spread = 10
	force = 15
	damagelose = 0.3
	distro = 16
	weapon_weight = WEAPON_MEDIUM
	//fire_sound = 'stalker/sound/weapons/winchester1300_shot.ogg'
	load_sound = 'stalker/sound/weapons/load/chaser_load.ogg'
	rack_sound = 'stalker/sound/weapons/pump/chaser_pump.ogg'
	draw_sound = 'stalker/sound/weapons/draw/shotgun_draw.ogg'

/obj/item/gun/ballistic/shotgun/bm16/sawnoff
	name = "sawed-off BM-16"
	eng_desc = "A sawed-off hunting shotgun with two side-by-side barrels, making it lighter and more compact than a full shotgun. One of the most popular weapons among bandits due to its combination of ease of concealment and extreme effectiveness in close combat."
	sawn_off = TRUE
	weapon_weight = WEAPON_LIGHT
	item_state = "gun"
	slot_flags = ITEM_SLOT_BELT|ITEM_SLOT_BACK
	w_class = 3
	durability = 75
	force = 15
	spread = 20
	recoil = 2.5
	damagelose = 0.45
	distro = 35

/obj/item/gun/ballistic/shotgun/bm16/sawnoff/New()
	..()
	update_icon()

/obj/item/gun/ballistic/shotgun/spsa
	name = "SPAS-12"
	eng_desc = "This special purpose smoothbore automatic shotgun was designed in the second half of the 20th century and comes with pump-action and self-cocking firing modes. Used as an all-purpose weapon by the police and assault troops. Notable for its reliability and tactical flexibility. Despite its large weight, complex mechanism and considerable cost it is in demand in the Zone due to its effectiveness against mutants."
	icon_state = "spsa"	//Нужно добавить
	item_state = "spsa" //Нужно добавить
	durability = 150
	slot_flags = ITEM_SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/shot/spsa
	recoil = 0.8
	w_class = 4
	randomspread = 0
	spread = 8
	force = 15
	damagelose = 0.35
	distro = 12
	weapon_weight = WEAPON_MEDIUM
	fire_sound = 'stalker/sound/weapons/spsa_shot.ogg'
	load_sound = 'stalker/sound/weapons/load/spsa_load.ogg'
	rack_sound = 'stalker/sound/weapons/pump/spsa_pump.ogg'
	draw_sound = 'stalker/sound/weapons/draw/shotgun_draw.ogg'

///////////////////////////// Винтовки //////////////////////////////////////////

/obj/item/gun/ballistic/rifle/boltaction/enfield
	name = "Lee Enfield"
	eng_desc = "A heavy and versatile rifle, rechambered in the powerful 7.62x51mm cartridge."
	icon_state = "enfield"
	item_state = "enfield"
	durability = 200
	slot_flags = ITEM_SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/boltaction/enfield
	recoil = 1
	w_class = 4
	randomspread = 1
	spread = 3
	force = 15
	damagelose = 0.1
	weapon_weight = WEAPON_MEDIUM
	fire_sound = 'stalker/sound/weapons/enfield_shot.ogg'
	load_sound = 'stalker/sound/weapons/load/bolt_load.ogg'
	draw_sound = 'stalker/sound/weapons/draw/shotgun_draw.ogg'
	can_scope = 1
