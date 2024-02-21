

///////////////////////////// Pistols //////////////////////////////////////////
/obj/item/gun/ballistic/automatic/pistol
	modifications = list("barrel_pistol" = 0, "frame_pistol" = 0, "grip_pistol" = 0)

/obj/item/gun/ballistic/automatic/pistol/pm   // Макаров
	name = "PMm"
	desc = "This Soviet legacy is the most common pistol in the Zone and is one of the best compact self-defense handguns available. It is small, highly reliable, easy to use and maintain in working order. It also suffers from several drawbacks, including its short range, low firing accuracy and poor stopping power, while also losing out to modern pistols in its class in terms of weight and magazine size."
	icon_state = "pm"
	w_class = 2
	fire_sound = 'stalker/sound/weapons/pm_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x18pm
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	durability = 60
	spread = 30
	recoil = 0.2
	damagelose = 0.2
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/tt   // ТТ
	name = "TT-33"
	desc = "An old soviet pistol made for similiarly old soviet ammo. Extremely widespread because of large numbers of those pistols left in USSR army stashes around Pripyat. Isn't very powerful, but bullets penetrate armor well enough."
	icon_state = "tt"
	w_class = 2
	fire_sound = 'stalker/sound/weapons/tt33_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/tt
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	fire_delay = 0.5
	durability = 50
	spread = 24
	recoil = 0.15
	damagelose = 0.1
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/sip  // Sig-Sauer
	name = "SIG-Sauer P220"
	desc = "The only remaining mass produced model of a globally renowned pistol, this weapon has earned a reputation for its excellent ergonomics and accuracy, and while its magazine is relatively small, it benefits from powerful ammo and a mechanism that functions like a Swiss watch. Some believe the P220 to be the best mass produced .45 ACP caliber handgun there and it has certainly got a following among experienced stalkers and mercenaries."
	icon_state = "sip"
	w_class = 2
	fire_sound = 'stalker/sound/weapons/sig220_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sc45
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	durability = 85
	spread = 18
	recoil = 0.4
	damagelose = 0.2
	draw_sound = 'stalker/sound/weapons/draw/sig220_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/cora  // Colt1911A
	name = "Colt M1911"
	desc = "An improved version of a classic automatic pistol, which passed all the major armed conflicts of the 20th century with flying colors and entered the new millennium with confidence. Produced by dozens if not hundreds of arms manufacturers around the world in both standard and modified configurations. The weapon's only drawback, its mediocre magazine capacity, is largely compensated by the hard-hitting ammo it uses."
	icon_state = "cora"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/colt1911_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sc45
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	spread = 24
	recoil = 0.5
	durability = 100
	damagelose = 0.15
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/marta  // Beretta92FS
	name = "Beretta 92FS"
	desc = "Beretta M9 pistols enjoy the reputation of a relatively reliable, albeit somewhat cumbersome weapon, around the world. In service with armed forces and police across the ocean, as well as various military and law enforcement organizations worldwide. The pistol is equally popular with members of the underworld, thanks to its powerful round and magazine capacity. Berettas found in the Zone are usually dated, probably from retired stock."
	icon_state = "marta"
	item_state = "marta"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/marta_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x19marta
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	spread = 21
	recoil = 0.25
	damagelose = 0.2
	durability = 75
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/fort12  // Фора12
	name = "Fort-12"
	desc = "An Ukranian-made pistol predominantly used by law enforcement organizations. Provides higher accuracy, better ergonomics and has a larger magazine than the PM. These pistols make it into the Zone in large numbers thanks to the sale of defective weapons, which suffer from technical miscalculations in early design models. Despite this, the pistol is in demand among stalkers thanks to its good combat characteristics."
	icon_state = "fort12"
	fire_sound = 'stalker/sound/weapons/fort_shot.ogg'
	w_class = 2
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x18fort
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	spread = 24
	recoil = 0.25
	durability = 50
	damagelose = 0.2
	draw_sound = 'stalker/sound/weapons/draw/fort_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/fort12/unique  // Фора12 - расширенный магазин
	desc = "Experimental prototype of the Fort pistol. A single copy."
	unique = 1
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x18fort_u

/obj/item/gun/ballistic/automatic/pistol/pb1s  //ПБ1С
	name = "PB1s"
	desc = "This pistol was developed in the second half of the 20th century on the basis of the PM for use by special forces and scouting units. The front of the pistol's barrel is covered with an integrated silencer, while the bolt mechanism is short, which prevents a back-moving spring from being located inside it, and it is therefore situated in the weapon's handle. Morally obsolete, the weapon is still effective in the right hands."
	icon_state = "pb1s"
	w_class = 2
	fire_sound = 'stalker/sound/weapons/pb_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x18pm
	force = 10
	suppressed = 1
	can_suppress = 0
	can_unsuppress = 0
	spread = 30
	recoil = 0.25
	durability = 50
	damagelose = 0.2
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/usp_match  // USP Match
	name = "H&K USP Match"
	desc = "Impeccable reliability and durability combined with excellent accuracy are the main noteworthy features of this weapon. Its minor drawbacks include its considerable size, relatively high center of gravity and massive bolt, which make it difficult to conceal but do not outweigh the weapon's positive features. The weapon is especially popular with the Zone's veterans."
	icon_state = "usp-match"
	w_class = 2
	mag_type = /obj/item/ammo_box/magazine/stalker/usp45
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	spread = 24
	recoil = 0.35
	durability = 60
	damagelose = 0.25
	draw_sound = 'stalker/sound/weapons/draw/usp_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/desert  // Desert Eagle
	name = "Desert Eagle .44"
	desc = "An extremely powerful gun, featured in many Hollywood movies and popularised by criminals. Truly a killing machine for close-range combat."
	icon_state = "desert"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/desert_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/desert
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	spread = 24
	recoil = 0.65
	durability = 50
	damagelose = 0.15
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/usp_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/revolver/anaconda // Colt Anaconda .44
	name = "Colt Anaconda .44"
	desc = "You feeling lucky today, gopnik?"
	icon_state = "anaconda"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/desert_shot.ogg'
	fire_delay = 1.5
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/anaconda
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	spread = 18
	recoil = 1
	durability = 500
	damagelose = 0.1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/usp_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/obrez_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/obrez_open.ogg'

/obj/item/gun/ballistic/revolver/c500revolver // .500 Bull
	name = ".500 Bull"
	desc = "Three bullets and enough recoil to move train tracks stapled to the ground, compacted snugly enough to fit on your belt. Will fetch a heavy price when sold."
	icon_state = "c500revolver"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/desert_shot.ogg'
	fire_delay = 2
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/c500revolver
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	spread = 18
	recoil = 6
	durability = 500
	damagelose = 0
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/usp_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/obrez_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/obrez_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/luger  // Luger P08 pistol
	name = "luger P08 pistol"
	desc = "Luger P08 pistols are a toggle-locked recoil-operated semi-automatic pistol. It was widely used in other countries as a military service pistol and by police forces since the turn of the 20th century."
	icon_state = "luger"
	item_state = "marta-silenced"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/luger_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x19luger
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	spread = 21
	recoil = 0.25
	damagelose = 0.2
	durability = 75
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/groza_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/luger_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/walther  // Walther P38
	name = "walther P38"
	desc = "The Walther P38 is a semi-automatic pistol that was developed by Carl Walther GmbH as the service pistol of the Wehrmacht at the beginning of World War II. The P.38 was a cutting edge semi-automatic pistol design, which introduced technical features still used today in current commercial and military semi-automatic pistols, such as the Beretta92FS. This pistol has seen better days."
	icon_state = "waltherp38"
	item_state = "marta-silenced"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/pistol_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x19waltherp38
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	spread = 21
	recoil = 0.25
	damagelose = 0.2
	durability = 75
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/berettam38_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/val_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/aps  // Stechkin APS
	name = "stechkin automatic pistol"
	desc = "The APS or stechkin automatic pistol was designed by the Soviets and introduced into service in 1951 for use with artillery and mortar crews, tank crews and aircraft personnel, where a cumbersome assault rifle was deemed unnecessary. It was later favored by special forces such as the Spetsnaz, who needed a more effective sidearm than the Makarov PM. It has seen service in a number of wars such as the Vietnam war, War in Donbas and Syrian Civil War... and now resides in the Zone."
	icon_state = "aps"
	item_state = "cora"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/pm_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x18aps
	force = 10
	automatic = 1
	burst_size = 5
	fire_delay = 1.7
	can_suppress = 1
	can_unsuppress = 1
	spread = 36
	recoil = 5
	damagelose = 0.2
	durability = 75
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/pernach  // OTs-33 Pernach
	name = "OTs-33 Pernach"
	desc = "The Pernach is a selective fire blowback-operated pistol designed to replace the Stechkin APS in various special OMON units within the Russian police, the Russian Ministry of Internal Affairs (MVD) and other paramilitary units. The OTs-33 was developed in 1995 by Igor Stechkin at the TsKIB SOO design bureau, and it went into limited production at the KBP Instrument Design Bureau."
	icon_state = "pernach"
	item_state = "cora"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/pm_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x18aps
	force = 10
	automatic = 1
	burst_size = 5
	fire_delay = 1.5
	can_suppress = 1
	can_unsuppress = 1
	spread = 16
	recoil = 3.5
	damagelose = 0.2
	durability = 75
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/mauser  // Mauser C96
	name = "mauser C96"
	desc = "The Mauser C96 is a semi-automatic pistol that was originally produced by German arms manufacturer Mauser from 1896 to 1937. The distinctive characteristics of the C96 are the box magazine in front of the trigger, the long barrel, and a grip shaped like the handle of a broom. It looks like it is in miraculous condition."
	icon_state = "mauser"
	item_state = "mauser"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/mauser_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/mauser
	force = 10
	vary_fire_sound = 1
	can_suppress = 1
	can_unsuppress = 1
	burst_size = 3
	fire_delay = 1
	spread = 30
	recoil = 3
	damagelose = 0.2
	durability = 75
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/mauser_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/mauser_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/glock  // Glock 17
	name = "glock G17"
	desc = "The Glock 17 is the original 9×19mm Parabellum model, with a standard magazine capacity of 17 rounds, introduced in 1982. It is a polymer-framed, short recoil-operated, locked-breech semi-automatic pistol designed and produced by Austrian manufacturer Glock Ges.m.b.H. This one looks like it has seen better days."
	icon_state = "glock"
	item_state = "marta"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/pistol_shot2.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x19glock
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	durability = 85
	spread = 18
	recoil = 0.4
	damagelose = 0.2
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/tpc301_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/tt30   // TT-30
	name = "TT-30"
	desc = "An old soviet pistol made for similiarly old soviet ammo. Extremely widespread because of large numbers of those pistols left in USSR army stashes around Pripyat. Isn't very powerful, but bullets penetrate armor well enough."
	icon_state = "tt30"
	item_state = "sip"
	w_class = 2
	fire_sound = 'stalker/sound/weapons/tt33_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/tt
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	fire_delay = 0.5
	durability = 50
	spread = 24
	recoil = 0.15
	damagelose = 0.1
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/fiveseven // Five Seven
	name = "FN Five-Seven"
	desc = "The Five Seven Pistol was designed by the FN company (Belgium) as a complimentary sidearm for the P90 submachine gun. The P90 and Five Seven share the same ammunition, the 5.7x28mm SS190 cartridge."
	icon_state = "fiveseven"
	fire_sound = 'stalker/sound/weapons/fort_shot.ogg'
	w_class = 2
	mag_type = /obj/item/ammo_box/magazine/stalker/m57x28fiveseven
	force = 10
	can_suppress = 0
	can_unsuppress = 0
	spread = 21
	recoil = 0.50
	durability = 100
	damagelose = 0.2
	draw_sound = 'stalker/sound/weapons/draw/fort_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/waltherpp  // Walther PP
	name = "walther PP"
	desc = "The Walther PP (Polizeipistole, or police pistol) is a semi-automatic pistol that was developed by Carl Walther GmbH and was one of the first successful double action semi-automatic pistols.  The design inspired other pistols, among them the Soviet Makarov. This one looks like its in good shape!"
	icon_state = "waltherpp"
	item_state = "marta"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/pistol_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x19waltherpp
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	spread = 21
	recoil = 0.25
	damagelose = 0.2
	durability = 75
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/berettam38_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/val_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/cz83  // CZ 83
	name = "CZ 83"
	desc = ""
	icon_state = "cz83"
	item_state = "marta"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/pistol_shot2.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x18cz83
	force = 10
	durability = 85
	spread = 18
	recoil = 0.4
	damagelose = 0.2
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/tpc301_open.ogg'

/obj/item/gun/ballistic/automatic/pistol/silvermarta  // Silver Beretta92FS
	name = "silver beretta 92FS"
	desc = "Beretta M9 pistols enjoy the reputation of a relatively reliable, albeit somewhat cumbersome weapon, around the world. In service with armed forces and police across the ocean, as well as various military and law enforcement organizations worldwide. The pistol is equally popular with members of the underworld, thanks to its powerful round and magazine capacity. Berettas found in the Zone are usually dated, probably from retired stock."
	icon_state = "martasilver"
	item_state = "marta"
	w_class = 3
	fire_sound = 'stalker/sound/weapons/marta_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x19marta
	force = 10
	can_suppress = 1
	can_unsuppress = 1
	spread = 21
	recoil = 0.25
	damagelose = 0.2
	durability = 75
	draw_sound = 'stalker/sound/weapons/draw/pm_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/pm_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/pm_open.ogg'


///////////////////////////// ARs,SMGs //////////////////////////////////////////

/obj/item/gun/ballistic
	var/image/mag_overlay 			= null
	var/image/mag_overlay_inhands 	= null
	var/image/silencer_overlay 		= null
	var/image/scope_overlay 		= null
	var/image/colored_overlay 		= null
	var/colored 					= null

/obj/item/gun/ballistic/New()
	..()
	if(!istype(src, /obj/item/gun/ballistic/automatic/pistol))
		mag_overlay = image('stalker/icons/projectile_overlays32x32.dmi', "[initial(icon_state)]-mag", layer = FLOAT_LAYER)

	if(can_suppress)
		silencer_overlay = image('stalker/icons/projectile_overlays48x48.dmi', "[initial(icon_state)]-silencer", layer = FLOAT_LAYER)

	if(can_scope)
		scope_overlay = image('stalker/icons/projectile_overlays32x32.dmi', "[initial(icon_state)]-scope", layer = FLOAT_LAYER)

	if(colored)
		colored_overlay = image('stalker/icons/projectile_overlays32x32.dmi', "[initial(icon_state)]-[colored]", layer = FLOAT_LAYER)
		overlays += colored_overlay

	update_icon()

/obj/item/gun/ballistic/update_icon()
	..()
	//overlays.Cut()

	if(colored)
		overlays += colored_overlay

	if(magazine && mag_overlay)
		overlays += mag_overlay

	if(suppressed && silencer_overlay)
		overlays += silencer_overlay

	if(zoomable && scope_overlay)
		overlays += scope_overlay

	if(unique)
		overlays += image('stalker/icons/projectile_overlays32x32.dmi', "unique", layer = FLOAT_LAYER)

	if(istype(src, /obj/item/gun/ballistic/automatic/pistol))
		icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"
	else
		item_state = "[initial(item_state)][magazine ? "" : "-e"]"	//Пока не разберусь с оверлеями на мобах, будет так

	return
/*
/obj/item/gun/ballistic/automatic/worn_overlays(var/isinhands = TRUE)
	. = list()
	if(!isinhands)
		if(magazine )
			overlays += mag_overlay

		if(suppressed )
			overlays += silencer_overlay
        . += image(icon = 'icons/effects/effects.dmi', icon_state = "[shield_state]")
*/

/obj/item/gun/ballistic/automatic
	modifications = list("barrel_automatic" = 0, "frame_automatic" = 0, "grip_automatic" = 0, "compensator_automatic" = 0)

/obj/item/gun/ballistic/automatic/sten  // Sten MK II
	name = "Sten MK II"
	desc = "The STEN (or Sten gun) is a family of British submachine guns chambered in 9×19mm which were used extensively by British and Commonwealth forces throughout World War II and the Korean War. They had a simple design and very low production cost, making them effective insurgency weapons for resistance groups, and they continue to see usage to this day by irregular military forces."
	icon_state = "sten"
	item_state = "sterling"
	fire_sound = 'stalker/sound/weapons/mac10_shoot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sten
	can_suppress = 1
	burst_size = 4
	fire_delay = 1.8
	slot_flags = ITEM_SLOT_BACK
	durability = 80
	w_class = 3
	spread = 30
	recoil = 1.4
	damagelose = 0.05
	can_scope = 0
	automatic = 1
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/mp5_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/mp5_open.ogg'


/obj/item/gun/ballistic/automatic/sterling  // Sterling Submachine Gun
	name = "sterling submachine gun"
	desc = "The Sterling submachine gun is a British submachine gun. It was tested with the British Army in 1944-1945 as a replacement for the Sten but it did not start to replace it until 1953."
	icon_state = "sterling"
	item_state = "sterling"
	fire_sound = 'stalker/sound/weapons/mac10_shoot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sterling
	can_suppress = 1
	burst_size = 4
	fire_delay = 1.8
	slot_flags = ITEM_SLOT_BACK
	durability = 80
	w_class = 3
	spread = 24
	recoil = 1.7
	damagelose = 0.05
	can_scope = 0
	automatic = 1
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/mp5_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/mp5_open.ogg'

/obj/item/gun/ballistic/automatic/m3a1  // M3A1 Grease Gun
	name = "M3A1 Grease Gun"
	desc = "The M3 is an American .45-caliber submachine gun adopted for the U.S. Army service on 12 December 1942, as the United States Submachine Gun, Cal. .45, M3. The M3 was chambered for the same .45 ACP round fired by the Thompson submachine gun, but was cheaper to produce and lighter, although, contrary to popular belief, it was less accurate."
	icon_state = "m3a1"
	item_state = "greasegun"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m3a1
	fire_sound = 'stalker/sound/weapons/abakan_shoot.ogg'
	can_suppress = 0
	burst_size = 5
	fire_delay = 2.5
	pin = /obj/item/firing_pin
	durability = 200
	w_class = 4
	spread = 12
	recoil = 1
	damagelose = 0.2
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/abakan_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/abakan_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/abakan_open.ogg'

/obj/item/gun/ballistic/automatic/reising  // Reising Model 55
	name = "Reising Model 55"
	desc = "The .45 Reising submachine gun was manufactured by Harrington & Richardson (H&R) Arms Company in Worcester, Massachusetts, USA, and was designed and patented by Eugene Reising in 1940. Over 100,000 Reisings were ordered during World War II, and were initially used by the United States Navy, Marine Corps, and the United States Coast Guard, though some were shipped to Canadian, Soviet, and other allied forces to fight the Axis powers. Now its evidently here in the Zone."
	icon_state = "reising"
	item_state = "mat49"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/reising
	fire_sound = 'stalker/sound/weapons/abakan_shoot.ogg'
	can_suppress = 0
	burst_size = 5
	fire_delay = 2.5
	pin = /obj/item/firing_pin
	durability = 200
	w_class = 4
	spread = 12
	recoil = 1
	damagelose = 0.2
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/abakan_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/abakan_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/abakan_open.ogg'

/obj/item/gun/ballistic/automatic/m76  // Smith & Wesson M76
	name = "smith & wesson M76"
	desc = "The Smith & Wesson M76 submachine gun (SMG) was produced by Smith & Wesson from 1967 to 1974. It was used in conflicts such as the Vietnam War."
	icon_state = "m76"
	item_state = "mat49"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x19m76
	fire_sound = 'stalker/sound/weapons/abakan_shoot.ogg'
	can_suppress = 0
	burst_size = 3
	fire_delay = 2
	pin = /obj/item/firing_pin
	durability = 200
	w_class = 4
	spread = 12
	recoil = 1
	damagelose = 0.2
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/abakan_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/abakan_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/abakan_open.ogg'

/obj/item/gun/ballistic/automatic/mp40  // MP-40
	name = "MP-40"
	desc = "A submachine gun chambered for the 9×19mm Parabellum cartridge. It was developed in Nazi Germany and used extensively by the Axis powers during World War II."
	icon_state = "mp40"
	item_state = "mp40"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/mp40
	fire_sound = 'stalker/sound/weapons/tpc301_shoot.ogg'
	can_suppress = 1
	burst_size = 3
	fire_delay = 1.4
	pin = /obj/item/firing_pin
	durability = 80
	w_class = 4
	spread = 19
	recoil = 1
	damagelose = 0.2
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/tpc301_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/tpc301_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/tpc301_open.ogg'

/obj/item/gun/ballistic/automatic/mp3008  // MP 3008
	name = "MP 3008"
	desc = "A German last ditch submachine gun manufactured towards the end of World War II in early 1945. After the war it was distributed across the world for proxy conflicts."
	icon_state = "mp3008"
	item_state = "mat49"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/mp40
	fire_sound = 'stalker/sound/weapons/tpc301_shoot.ogg'
	can_suppress = 1
	burst_size = 4
	fire_delay = 2
	pin = /obj/item/firing_pin
	durability = 80
	w_class = 4
	spread = 25
	recoil = 1
	damagelose = 0.2
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/tpc301_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/tpc301_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/tpc301_open.ogg'

/obj/item/gun/ballistic/automatic/pps43  // PPS-43
	name = "PPS-43"
	desc = "A Soviet submachine gun chambered in 7.62×25mm Tokarev, developed by Alexei Sudayev as a low-cost personal defense weapon for reconnaissance units, vehicle crews and support service personnel. It was highly cost effective and easy to manufacture due to its efficient and simple, largely sheet metal design. It was produced from 1942-1946 and they gave an output of approximately two million."
	icon_state = "pps43"
	item_state = "pps"
	fire_sound = 'stalker/sound/weapons/ppsh_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/pps43
	can_suppress = 0
	slowdown = 0.15
	burst_size = 5
	fire_delay = 1.5
	slot_flags = ITEM_SLOT_BACK
	durability = 50
	w_class = 4
	spread = 21
	recoil = 0.35
	damagelose = 0.25
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/mp5_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/mp5_open.ogg'

/obj/item/gun/ballistic/automatic/bizon  // PP-19 Bizon
	name = "PP-19 bizon"
	desc = "The Bizon was developed at the request of the Russian Ministry of Internal Affairs and is primarily intended for counter-terrorist and law enforcement units that need fast and accurate fire at close ranges. The Bizon is issued to armed response units of the Federal Security Service (FSB) and Ministry of Justice in Russia."
	icon_state = "bizon"
	item_state = "vz58"
	fire_sound = 'stalker/sound/weapons/ppsh_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x18bizon
	can_suppress = 0
	slowdown = 0.15
	burst_size = 3
	fire_delay = 0.8
	slot_flags = ITEM_SLOT_BACK
	durability = 50
	w_class = 4
	spread = 18
	recoil = 0.35
	damagelose = 0.25
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/mp5_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/mp5_open.ogg'

/obj/item/gun/ballistic/automatic/skorpion  // Skorpion
	name = "skorpion vz. 61"
	desc = "A Czechoslovak machine pistol developed in 1959 by Miroslav Rybá. Although it was developed for use with security forces, the weapon was also accepted into service with the Czechoslovak Army as a personal sidearm for lower-ranking army staff, vehicle drivers, armoured vehicle personnel and special forces."
	icon_state = "skorpion"
	item_state = "arg"
	fire_sound = 'stalker/sound/weapons/fort_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x19skorpion
	can_suppress = 0
	burst_size = 3
	fire_delay = 1
	slot_flags = ITEM_SLOT_BELT
	durability = 80
	w_class = 3
	spread = 21
	recoil = 0.15
	damagelose = 0.25
	can_scope = 0
	automatic = 1
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/mp5_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/mp5_open.ogg'

/obj/item/gun/ballistic/automatic/mat49  // MAT-49
	name = "MAT-49"
	desc = "The MAT-49 was a submachine gun which was developed by French arms factory Manufacture Nationale d'Armes de Tulle (MAT) for use by the French Army and was first produced in 1949."
	icon_state = "mat49"
	item_state = "mat49"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x19mat49
	fire_sound = 'stalker/sound/weapons/abakan_shoot.ogg'
	can_suppress = 0
	burst_size = 3
	fire_delay = 1
	pin = /obj/item/firing_pin
	durability = 200
	w_class = 4
	spread = 14
	recoil = 1
	damagelose = 0.2
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/abakan_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/abakan_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/abakan_open.ogg'

/obj/item/gun/ballistic/automatic/mac10  // MAC10
	name = "MAC10 Ingram"
	desc = "An american submachinegun developed in the 70s of the previous century, notable for its high rate of fire and reliability. Chambered in 9x19."
	icon_state = "mac10"
	item_state = "mac10"
	fire_sound = 'stalker/sound/weapons/mac10_shoot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/mac10
	can_suppress = 1
	burst_size = 4
	fire_delay = 0.8
	slot_flags = ITEM_SLOT_BELT
	durability = 80
	w_class = 3
	spread = 50
	recoil = 0.8
	damagelose = 0.25
	can_scope = 0
	automatic = 1
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/mp5_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/mp5_open.ogg'

/obj/item/gun/ballistic/rifle/semiautobolt/sks // SKS
	name = "SKS"
	desc = "The SKS is a Soviet semi-automatic carbine chambered for the 7.62x39mm round, designed in 1943 by Sergei Gavrilovich Simonov. The SKS-45 was manufactured at Tula Arsenal from 1949 to 1958 and at Izhevsk Arsenal in just 1953 and 1954, resulting in a total Soviet production of about 2.7 million carbines. In the early 1950s, the Soviets took the SKS carbine out of front-line service and replaced it with the AK-47; however, the SKS remained in second-line service for decades."
	icon_state = "sks"
	item_state = "sks"
	fire_sound = 'stalker/sound/weapons/sks_shot.ogg'
	durability = 200
	slot_flags = ITEM_SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/semiautobolt/sks
	can_suppress = 0
	slowdown = 0.15
	fire_delay = 1.2
	durability = 150
	force = 15
	recoil = 0.5
	w_class = 4
	burst_size = 1
	randomspread = 0
	spread = 6
	damagelose = 0.1
	can_scope = 1
	load_sound = 'stalker/sound/weapons/load/bolt_load.ogg'
	draw_sound = 'stalker/sound/weapons/draw/shotgun_draw.ogg'

/obj/item/gun/ballistic/automatic/ak74  // AK-74
	name = "AK 74"
	desc = "This weapon, designed in 1974, signaled the adoption of small caliber and low impulse rounds by Warsaw Pact countries. A descendant of the most popular assault rifle in the world, the AK-74 has an even bigger muzzle brake, resulting in a reduction of what was already manageable recoil. This facilitates better accuracy and groupings, especially when fired in fast single shots or bursts. As before, the rifle is very simple and reliable."
	icon_state = "ak74"
	item_state = "ak74"
	colored = 0//"normal"
	slot_flags = ITEM_SLOT_BACK//|SLOT_BELT
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m545
	fire_sound = 'stalker/sound/weapons/ak74_shot.ogg'
	can_suppress = 1
	can_unsuppress = 1
	slowdown = 0.15
	burst_size = 3
	fire_delay = 1.6
	pin = /obj/item/firing_pin
	durability = 120
	w_class = 4
	spread = 18
	recoil = 0.5
	damagelose = 0.25
	can_scope = 1
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/ak74_draw.ogg'
// Work in Progress
/*	var/overlay_state
	var/overlay_list = list(
		"classic",
		"camo",
		"black",
		"blackout"
		)

/obj/item/gun/ballistic/automatic/ak74/Initialize()
	. = ..()
	if(!overlay_state)
		overlay_state = pick(overlay_list)
	update_icon()

	*/

/obj/item/gun/ballistic/automatic/ak74/camo
	name = "AK 74"
	desc = "This weapon, designed in 1974, signaled the adoption of small caliber and low impulse rounds by Warsaw Pact countries. A descendant of the most popular assault rifle in the world, the AK-74 has an even bigger muzzle brake, resulting in a reduction of what was already manageable recoil. This facilitates better accuracy and groupings, especially when fired in fast single shots or bursts. As before, the rifle is very simple and reliable. This one has camo paint."
	icon_state = "ak74_camo"
	item_state = "ak74_camo"


/obj/item/gun/ballistic/automatic/ak74/black
	name = "AK 74"
	desc = "This weapon, designed in 1974, signaled the adoption of small caliber and low impulse rounds by Warsaw Pact countries. A descendant of the most popular assault rifle in the world, the AK-74 has an even bigger muzzle brake, resulting in a reduction of what was already manageable recoil. This facilitates better accuracy and groupings, especially when fired in fast single shots or bursts. As before, the rifle is very simple and reliable. The metal parts are black."
	icon_state = "ak74_black"
	item_state = "ak74_black"


/obj/item/gun/ballistic/automatic/ak74/blackout
	name = "AK 74"
	desc = "This weapon, designed in 1974, signaled the adoption of small caliber and low impulse rounds by Warsaw Pact countries. A descendant of the most popular assault rifle in the world, the AK-74 has an even bigger muzzle brake, resulting in a reduction of what was already manageable recoil. This facilitates better accuracy and groupings, especially when fired in fast single shots or bursts. As before, the rifle is very simple and reliable. The entire gun is black."
	icon_state = "ak74_blackout"
	item_state = "ak74_blackout"


/obj/item/gun/ballistic/automatic/ak74/unfurnished
	name = "AK 74"
	desc = "This weapon, designed in 1974, signaled the adoption of small caliber and low impulse rounds by Warsaw Pact countries. A descendant of the most popular assault rifle in the world, the AK-74 has an even bigger muzzle brake, resulting in a reduction of what was already manageable recoil. This facilitates better accuracy and groupings, especially when fired in fast single shots or bursts. As before, the rifle is very simple and reliable. This one is stripped of its wooden furniture."
	icon_state = "ak74_furnitureless"
	item_state = "ak74_furnitureless"


/obj/item/gun/ballistic/automatic/aksu74  // АКС74У
	name = "AK 74S"
	desc = "Despite being similar to submachineguns in size, weight and tactical purpose, this weapon is classified as an assault rifle due to the fact that its internal mechanism is identical to that of the AK-74. The weapon is notable for its mobility in close quarters and high armor-penetration capacity, while its drawbacks are its short effective range, despite the relatively long bullet range, a tendency to overheat and high ricochet propensity."
	icon_state = "aksu74"
	item_state = "aksu74"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m545
	fire_sound = 'stalker/sound/weapons/ak74u_shot.ogg'
	can_suppress = 1
	slowdown = 0.15
	burst_size = 3
	fire_delay = 1.5
	pin = /obj/item/firing_pin
	durability = 100
	w_class = 4
	spread = 27
	recoil = 0.7
	damagelose = 0.5
	can_scope = 1
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/ak74u_draw.ogg'

/obj/item/gun/ballistic/automatic/strelok_ak  // АКС74У
	name = "Fast-Firing AK 74S"
	desc = "Looks like this has seen incredible modifications. It has reduced recoil, a faster firing rate and better durability."
	icon = 'stalker/icons/weapons.dmi'
	icon_state = "ak74-green"
	item_state = "ak74-green"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m545
	fire_sound = 'stalker/sound/weapons/ak74u_shot.ogg'
	can_suppress = 1
	slowdown = 0.15
	burst_size = 5
	fire_delay = 1
	pin = /obj/item/firing_pin
	durability = 200
	w_class = 4
	spread = 27
	recoil = 0.3
	damagelose = 0.5
	can_scope = 1
	automatic = 1
	unique = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/ak74u_draw.ogg'

/obj/item/gun/ballistic/automatic/fnfal  // FN FAL
	name = "FN FAL"
	desc = "During the Cold War the FAL was adopted by many countries of the North Atlantic Treaty Organization (NATO), with the notable exception of the United States. It is one of the most widely used rifles in history, having been used by more than 90 countries. Because of its prevalence and widespread usage among the militaries of many NATO and first world countries during the Cold War, it received the title 'The right arm of the Free World'. This one is set to double tap."
	icon_state = "fnfal"
	item_state = "fnfal"
	colored = 0//"normal"
	slot_flags = ITEM_SLOT_BACK//|SLOT_BELT
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/fnfal
	fire_sound = 'stalker/sound/weapons/berettam38_shot.ogg'
	can_suppress = 1
	can_unsuppress = 1
	slowdown = 0.15
	burst_size = 2
	fire_delay = 1.6
	pin = /obj/item/firing_pin
	durability = 120
	w_class = 4
	spread = 12
	recoil = 1
	damagelose = 0.25
	can_scope = 1
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/ak74_draw.ogg'

/obj/item/gun/ballistic/automatic/woodfnfal  // FN FAL with wooden furniture
	name = "FN FAL"
	desc = "During the Cold War the FAL was adopted by many countries of the North Atlantic Treaty Organization (NATO), with the notable exception of the United States. It is one of the most widely used rifles in history, having been used by more than 90 countries. Because of its prevalence and widespread usage among the militaries of many NATO and first world countries during the Cold War, it received the title 'The right arm of the Free World'. This one has wooden furniture."
	icon_state = "fnfalwood"
	item_state = "fnfalwood"
	colored = 0//"normal"
	slot_flags = ITEM_SLOT_BACK//|SLOT_BELT
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/fnfal
	fire_sound = 'stalker/sound/weapons/berettam38_shot.ogg'
	can_suppress = 1
	can_unsuppress = 1
	slowdown = 0.15
	burst_size = 5
	fire_delay = 1.6
	pin = /obj/item/firing_pin
	durability = 120
	w_class = 4
	spread = 12
	recoil = 1
	damagelose = 0.25
	can_scope = 1
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/ak74_draw.ogg'

/obj/item/gun/ballistic/automatic/famas  // FAMAS
	name = "FAMAS"
	desc = "The FAMAS is a bullpup assault rifle designed and manufactured in France by MAS in 1978, a year after the Austrian Steyr AUG. The FAMAS is recognised for its high rate of fire at 1,100 rounds per minute, and has participated in many conflicts throughout time."
	icon_state = "famas"
	item_state = "famas"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	fire_sound = 'stalker/sound/weapons/il86_shoot.ogg'
	can_suppress = 1
	slowdown = 0.15
	burst_size = 3
	fire_delay = 1.8
	pin = /obj/item/firing_pin
	durability = 75
	w_class = 4
	spread = 12
	recoil = 0.4
	damagelose = 0.1
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/l85_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/groza_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/groza_open.ogg'

/obj/item/gun/ballistic/automatic/aug // Steyr AUG
	name = "Steyr AUG"
	desc = "an Austrian bullpup assault rifle chambered for the 5.56×45mm NATO intermediate cartridge, designed in the 1960s by Steyr-Daimler-Puch, and now manufactured by Steyr Mannlicher GmbH & Co KG. is a selective-fire, bullpup weapon with a conventional gas-piston-operated action that fires from a closed bolt. It is designed as a Modular Weapon System that could be quickly configured as a rifle, a carbine, a sniper rifle, a sub-machine gun and even an open-bolt squad automatic weapon."
	icon_state = "aug"
	item_state = "aug"
	slot_flags = ITEM_SLOT_BACK
	fire_sound = 'stalker/sound/weapons/sigsg550_shoot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	can_suppress = 0
	slowdown = 0.15
	durability = 125
	burst_size = 4
	fire_delay = 1.3
	w_class = 4
	spread = 9
	recoil = 0.3
	damagelose = 0.2
	zoomable = TRUE
	zoom_amt = 5
	zoom_out_amt = 5
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/fnf2000_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/fnf2000_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/fnf2000_open.ogg'

/obj/item/gun/ballistic/automatic/akm // AKM
	name = "AKM"
	desc = "The AKM is a 7.62×39mm assault rifle designed by Mikhail Kalashnikov. It is a common modernised variant of the AK-47 rifle developed in the 1940s. Introduced into service with the Soviet Army in 1959, the AKM is the prevalent variant of the entire AK series of firearms and it has found widespread use with most member states of the former Warsaw Pact and its African and Asian allies as well as being widely exported and produced in many other countries."
	icon_state = "akm"
	item_state = "akm"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/akm
	fire_sound = 'stalker/sound/weapons/akm_shot.ogg'
	can_suppress = 0
	burst_size = 3
	fire_delay = 1.7
	durability = 150
	w_class = 4
	spread = 36
	slowdown = 0.15
	recoil = 0.9
	damagelose = 0.25
	can_scope = 1
	draw_sound = 'stalker/sound/weapons/draw/ak74u_draw.ogg'

/obj/item/gun/ballistic/automatic/vz58 // vz. 58
	name = "vz. 58"
	desc = "The vz. 58 is a 7.62×39mm assault rifle designed and manufactured in Czechoslovakia and accepted into service in the late 1950s as the 7.62mm submachine gun model 1958."
	icon_state = "vz58"
	item_state = "vz58"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/vz58
	fire_sound = 'stalker/sound/weapons/vz58_shot.ogg'
	can_suppress = 0
	burst_size = 3
	fire_delay = 1.5
	durability = 150
	w_class = 4
	spread = 36
	slowdown = 0.10
	recoil = 0.9
	damagelose = 0.25
	can_scope = 0
	draw_sound = 'stalker/sound/weapons/draw/ak74u_draw.ogg'

/obj/item/gun/ballistic/automatic/m16  //M16A1
	name = "M16A1"
	desc = "By the end of the 1960s, the M16 rifle was a full-fledged combat weapon with a number of significant advantages. Compared to the main opponent of the M16 on the world stage - the Kalashnikov assault rifle (AKM), the M16 had greater accuracy and accuracy of firing single shots, was more comfortable and easy to handle. On the other hand, the M16 required much more careful maintenance and better ammunition."
	icon_state = "m16"
	item_state = "m16"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	fire_sound = 'stalker/sound/weapons/tpc301_shoot.ogg'
	can_suppress = 1
	burst_size = 3
	fire_delay = 1.7
	durability = 70
	slowdown = 0.15
	w_class = 4
	spread = 15
	recoil = 0.6
	damagelose = 0.2
	can_scope = 0
	draw_sound = 'stalker/sound/weapons/draw/tpc301_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/tpc301_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/tpc301_open.ogg'

/obj/item/gun/ballistic/automatic/m16a4 //M16A4
	name = "M16A4"
	desc = "By the end of the 1960s, the M16 rifle was a full-fledged combat weapon with a number of significant advantages. Compared to the main opponent of the M16 on the world stage - the Kalashnikov assault rifle (AKM), the M16 had greater accuracy and accuracy of firing single shots, was more comfortable and easy to handle. On the other hand, the M16 required much more careful maintenance and better ammunition."
	icon_state = "m16a4"
	item_state = "m16a4"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	fire_sound = 'stalker/sound/weapons/tpc301_shoot.ogg'
	can_suppress = 1
	burst_size = 3
	fire_delay = 1.7
	durability = 70
	slowdown = 0.15
	w_class = 4
	spread = 15
	recoil = 0.6
	damagelose = 0.2
	can_scope = 0
	draw_sound = 'stalker/sound/weapons/draw/tpc301_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/tpc301_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/tpc301_open.ogg'

/obj/item/gun/ballistic/automatic/m14  // M14 Carbine
	name = "M14"
	desc = "The M14 Carbine was designed and developed the US military during WWII and has seen widespread distribution throughout the world. Now it is in the Zone!"
	icon_state = "m14"
	item_state = "m14"
	fire_sound = 'stalker/sound/weapons/berettam38_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m14
	can_suppress = 0
	slot_flags = ITEM_SLOT_BACK
	durability = 75
	w_class = 4
	spread = 6
	slowdown = 0.15
	recoil = 0.3
	damagelose = 0.15
	can_scope = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/berettam38_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/berettam38_open.ogg'

/obj/item/gun/ballistic/automatic/m4  // M4 Carbine
	name = "M4 carbine"
	desc = "The M4 Carbine is a 5.56×45mm NATO, air-cooled, gas-operated, direct impingement, magazine-fed, select fire carbine. It has a 14.5 in (370 mm) barrel and a telescoping stock. It is essentially a lighter and shorter variant of the M16A2 assault rifle."
	icon_state = "m4"
	item_state = "m4"
	fire_sound = 'stalker/sound/weapons/berettam38_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	can_suppress = 1
	slot_flags = ITEM_SLOT_BACK
	durability = 75
	w_class = 4
	spread = 6
	recoil = 0.3
	slowdown = 0.15
	damagelose = 0.15
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/berettam38_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/berettam38_open.ogg'

/obj/item/gun/ballistic/automatic/ar15 // ArmaLite AR-15
	name = "AR-15"
	desc = "The ArmaLite AR-15 was designed to be a lightweight rifle and to fire a new high-velocity, lightweight, small-caliber cartridge to allow infantrymen to carry more ammunition."
	icon_state = "ar15"
	item_state = "m16"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	fire_sound = 'stalker/sound/weapons/tpc301_shoot.ogg'
	can_suppress = 0
	burst_size = 3
	fire_delay = 1.7
	durability = 70
	slowdown = 0.15
	w_class = 4
	spread = 15
	recoil = 0.6
	damagelose = 0.2
	can_scope = 0
	draw_sound = 'stalker/sound/weapons/draw/tpc301_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/tpc301_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/tpc301_open.ogg'

/obj/item/gun/ballistic/automatic/scarh // FN SCAR-H
	name = "FN SCAR-H"
	icon_state = "scarh"
	item_state = "scarh"
	desc = "A Belgian-designed automatic rifle, chambered in 7.62x51mm."
	fire_sound = 'stalker/sound/weapons/berettam38_shot.ogg'
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/mp5_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/mp5_open.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/scarh
	slowdown = 0.15
	force = 15
	can_suppress = 1
	burst_size = 3
	fire_delay = 2.2
	durability = 70
	slowdown = 0.15
	w_class = 4
	spread = 15
	recoil = 0.6
	damagelose = 0.2
	can_scope = 0
	slot_flags = ITEM_SLOT_BACK

/obj/item/gun/ballistic/automatic/makeshiftak  // Makeshift AK
	name = "makeshift ak"
	desc = "A kalashnakov made of junk parts. Very unreliable."
	icon_state = "makeshiftak"
	item_state = "ak74"
	slot_flags = ITEM_SLOT_BACK//|SLOT_BELT
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m545
	fire_sound = 'stalker/sound/weapons/ak74_shot.ogg'
	slowdown = 0.15
	burst_size = 3
	fire_delay = 1.8
	pin = /obj/item/firing_pin
	durability = 40
	w_class = 4
	spread = 54
	recoil = 3
	randomspread = 6
	damagelose = 0.25
	can_scope = 0
	automatic = 1
	draw_sound = 'stalker/sound/weapons/draw/ak74_draw.ogg'

/obj/item/gun/ballistic/automatic/mp5  // MP5
	name = "MP-5"
	desc = "This submachine gun has gained popularity around the world thanks to its reliability, ease of use and accuracy. Over the last few decades the MP5 was in service with special armed forces and police units worldwide. Not surprisingly, having flooded the global black markets, it eventually made its way to the Zone."
	icon_state = "mp5"
	item_state = "arg"
	fire_sound = 'stalker/sound/weapons/mp5_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m9x19mp5
	can_suppress = 1
	burst_size = 3
	fire_delay = 1.25
	slot_flags = ITEM_SLOT_BELT
	durability = 100
	w_class = 3
	spread = 21
	recoil = 0.2
	damagelose = 0.4
	can_scope = 1
	automatic = 1
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/mp5_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/mp5_open.ogg'


/obj/item/gun/ballistic/automatic/kiparis  // Кипарис
	name = "Kiparis"
	desc = "A small, light submachine gun firing a low-powered bullet, was designed by USSR Defense Ministry in the year 1972. Wasn't adopted by army, but found use and popularity amongst different modern russian government military forces and police."
	icon_state = "kiparis"
	item_state = "arg"
	fire_sound = 'stalker/sound/weapons/fort_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/kiparis
	can_suppress = 1
	burst_size = 2
	fire_delay = 1
	slot_flags = ITEM_SLOT_BELT
	durability = 80
	w_class = 3
	spread = 24
	recoil = 0.15
	damagelose = 0.25
	can_scope = 0
	automatic = 1
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/mp5_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/mp5_open.ogg'

/obj/item/gun/ballistic/automatic/ppsh  // ППШ
	name = "PPSh"
	desc = "The PPSh saw extensive combat use during World War II and the Korean War. It was one of the major infantry weapons of the Soviet Armed Forces during World War II. Around six million PPSh-41s were manufactured. In the form of the Chinese Type 50 (licensed copy), it was still being used by the Viet Cong as late as 1970. According to the 2002 edition of the Encyclopedia of Weapons of World War II the PPSh was still in use with irregular militaries."
	icon_state = "ppsh"
	item_state = "arg"
	fire_sound = 'stalker/sound/weapons/ppsh_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/ppsh
	can_suppress = 0
	burst_size = 5
	fire_delay = 1.2
	slot_flags = ITEM_SLOT_BELT
	durability = 50
	w_class = 4
	spread = 24
	recoil = 0.25
	damagelose = 0.5
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/mp5_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/mp5_open.ogg'

/obj/item/gun/ballistic/automatic/berettam38  // Моделло 38
	name = "Beretta M38"
	desc = "Modello 38, or Model 38 and its variants were a series of official submachine guns of the Royal Italian Army introduced in 1938 and used during World War II."
	icon_state = "berettam38"
	item_state = "berettam38"
	fire_sound = 'stalker/sound/weapons/berettam38_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/berettam38
	can_suppress = 0
	burst_size = 3
	fire_delay = 1.7
	slot_flags = ITEM_SLOT_BELT
	durability = 75
	w_class = 4
	spread = 18
	recoil = 0.3
	damagelose = 0.45
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/berettam38_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/berettam38_open.ogg'

/obj/item/gun/ballistic/automatic/p90
	name = "\improper FN P90"
	desc = "An incredibly odd, albeit effecient, submachine gun. Chambered in FN 5.7×28mm."
	icon_state = "p90"
	item_state = "arg"
	mag_type = /obj/item/ammo_box/magazine/smg57
	fire_delay = 0.8
	can_suppress = 1
	burst_size = 3
	spread = 15
	recoil = 0.2
	automatic = 1
	can_scope = 1
	tac_reloads = TRUE//tacticool
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/mp5_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/mp5_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/mp5_open.ogg'
/*	mag_display = TRUE



/obj/item/gun/ballistic/automatic/p90/Initialize()
	. = ..()
	update_icon()*/

/obj/item/gun/ballistic/automatic/tpc301  // Эмка
	name = "LR-300"
	desc = "A new step in the development of this famous weapon family. The changes were made to the upper half of the steel construction comprising the barrel, gas tube and bolt assembly, reducing the weapon's weight, improving ergonomics and its gas system. The weapon is highly accurate, although its propensity to catch dirt makes it a poor choice for the Zone's difficult conditions."
	icon_state = "tpc301"
	item_state = "tpc301"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	fire_sound = 'stalker/sound/weapons/tpc301_shoot.ogg'
	can_suppress = 1
	burst_size = 3
	fire_delay = 1.4
	pin = /obj/item/firing_pin
	durability = 80
	w_class = 4
	spread = 12
	recoil = 0.4
	damagelose = 0.2
	can_scope = 1
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/tpc301_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/tpc301_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/tpc301_open.ogg'

/obj/item/gun/ballistic/automatic/abakan  // Абакан
	name = "AN-94"
	desc = "A modern assault rifle developed as a replacement for the ageing AK-74. The main difference is its high speed 2-round burst firing mode, which allows two bullets to be fired at exactly the same spot on a target up to 100 meters away. This significantly increases the likelihood of hitting the target in comparison to the 1 round firing mode, which considerably improves kill potential, stopping power and armor piercing capability."
	icon_state = "abakan"
	item_state = "abakan"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m545
	fire_sound = 'stalker/sound/weapons/abakan_shoot.ogg'
	can_suppress = 1
	slowdown = 0.15
	burst_size = 2
	fire_delay = 1.5
	pin = /obj/item/firing_pin
	durability = 200
	w_class = 4
	spread = 12
	recoil = 0.4
	damagelose = 0.2
	can_scope = 1
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/abakan_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/abakan_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/abakan_open.ogg'

/obj/item/gun/ballistic/automatic/il86  // ИЛ86
	name = "L85"
	desc = "This rifle's considerable number of drawbacks caused most of these weapons to be modernized, with the retired stock making its way to the Zone via the black market. The rifle's main advantages are its built-in 4x scope, high single-shot accuracy and reliable upgrade technology. When the weapon is fired in bursts, its accuracy decreases significantly and the rifle's basic internal mechanisms become somewhat unreliable."
	icon_state = "il86"
	item_state = "il86"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	fire_sound = 'stalker/sound/weapons/il86_shoot.ogg'
	can_suppress = 1
	slowdown = 0.15
	zoomable = TRUE
	zoom_amt = 9
	zoom_out_amt = 12
	burst_size = 3
	fire_delay = 1.8
	pin = /obj/item/firing_pin
	durability = 75
	w_class = 4
	spread = 12
	recoil = 0.4
	damagelose = 0.1
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/l85_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/groza_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/groza_open.ogg'

/obj/item/gun/ballistic/automatic/sigsg550
	name = "SIG SG 550"
	desc = "A relatively new assault rifle that has quickly found admirers around the world, despite lacking a \"trendy\" design. Weapons of this series are one of the best in their class, renowned for their reliability, accuracy and ease of use. Despite being relatively difficult to obtain in the Zone, this assault rifle is often ordered by experienced stalkers at considerable expense."
	icon_state = "sigsg550"
	item_state = "sigsg550"
	slot_flags = ITEM_SLOT_BACK
	fire_sound = 'stalker/sound/weapons/sigsg550_shoot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	can_suppress = 0
	slowdown = 0.15
	durability = 125
	burst_size = 3
	fire_delay = 1.3
	w_class = 4
	spread = 9
	recoil = 0.3
	damagelose = 0.2
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/fnf2000_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/fnf2000_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/fnf2000_open.ogg'

/obj/item/gun/ballistic/automatic/gp37  // GP37
	name = "GP37"
	desc = "A new addition to the Western-made assault rifle family, which differs significantly from previous models in the series built on an automatic foundation with a semi-open bolt assembly, this weapon is more like American automatic gas-operated assault rifles with a short-stroke gas piston system. These changes ensure that the rifle is a first-rate example of a modern weapon - lightweight, reliable and ergonomic."
	icon_state = "gp37"
	item_state = "gp37"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	fire_sound = 'stalker/sound/weapons/il86_shoot.ogg'
	can_suppress = 1
	slowdown = 0.15
	zoomable = TRUE
	zoom_amt = 10
	zoom_out_amt = 13
	burst_size = 3
	fire_delay = 1.25
	pin = /obj/item/firing_pin
	durability = 150
	w_class = 4
	spread = 9
	recoil = 0.35
	damagelose = 0.1
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/l85_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/groza_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/groza_open.ogg'

/obj/item/gun/ballistic/automatic/fnf2000  // fnf2000
	name = "FN-F2000"
	desc = "This futuristic-looking weapon with a bullpup layout is actually a mass produced modular system, comprising a rifle grenade complex with a computerized fire control system and a 40-mm grenade launcher. Despite its bulky appearance, the weapon is highly ergonomic, easy to use and benefits from good technical characteristics. This one lacks a built-in computerised scope, yet itself is very precise and powerful."
	icon_state = "fnf2000"
	item_state = "fnf2000"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	fire_sound = 'stalker/sound/weapons/fnf2000_shoot.ogg'
	can_suppress = 0
	slowdown = 0.15
	burst_size = 3
	fire_delay = 1.4
	pin = /obj/item/firing_pin
	durability = 250
	w_class = 4
	spread = 9
	recoil = 0.35
	damagelose = 0.15
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/fnf2000_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/fnf2000_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/fnf2000_open.ogg'

/obj/item/gun/ballistic/automatic/fnf2000s  // fnf2000
	name = "FN-F2000-OTBS"
	desc = "This futuristic-looking weapon with a bullpup layout is actually a mass produced modular system, comprising a rifle grenade complex with a computerized fire control system and a 40-mm grenade launcher. Despite its bulky appearance, the weapon is highly ergonomic, easy to use and benefits from good technical characteristics."
	icon_state = "fnf2000s"
	item_state = "fnf2000s"
	slot_flags = ITEM_SLOT_BACK
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/m556x45
	fire_sound = 'stalker/sound/weapons/fnf2000_shoot.ogg'
	can_suppress = 0
	slowdown = 0.15
	burst_size = 3
	fire_delay = 1.4
	zoomable = TRUE
	zoom_amt = 12
	zoom_out_amt = 15
	pin = /obj/item/firing_pin
	durability = 250
	w_class = 4
	spread = 4
	recoil = 0.35
	damagelose = 0.15
	can_scope = 0
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/fnf2000_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/fnf2000_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/fnf2000_open.ogg'


/obj/item/gun/ballistic/automatic/l6_saw/pkm
	name = "PKM"
	desc = "This belt-fed machine gun is a portable modification with a complex two-stage feeding system. Despite its weight and low precision, this LMG has found admirers in the Zone. Used primarily to fight off outnumbering enemy forces during faction conflicts and clear out mutant lairs"
	icon_state = "PKMclosed200"
	item_state = "l6closedmag"
	w_class = 5
	slot_flags = ITEM_SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/stalker/pkm
	weapon_weight = WEAPON_HEAVY
	fire_sound = 'stalker/sound/weapons/pkm_shot.ogg'
	can_suppress = 0
	slowdown = 0.40
	can_scope = 0
	automatic = 1
	burst_size = 5
	fire_delay = 1.8
	spread = 18
	recoil = 1
	damagelose = 0.25
	pin = /obj/item/firing_pin
	durability = 500

/obj/item/gun/ballistic/automatic/l6_saw/pkm/update_icon()
	icon_state = "PKM[cover_open ? "open" : "closed"][magazine ? 200 : "-empty"]"

/obj/item/gun/ballistic/automatic/l6_saw/pkm/shottie
   name = "PTV M-777"
   desc = "Petrovich's personal weapon. Huyarit is like a zalupa."
   mag_type = /obj/item/ammo_box/magazine/stalker/pkm/shottie

///////////////////////////// Sniper Rifles //////////////////////////////////////////
/obj/item/gun/ballistic/automatic/val  // Вал
	name = "AS Val"
	desc = "A modified version of the silent Vintorez sniper rifle, the assault rifle was designed as a special forces weapon. The rifle's primary purpose is effective fire against enemies employing modern personal protection equipment without disclosing the shooter's location. Thanks to its integrated silencer and 9x39mm caliber round with a heavy subsonic bullet, the weapon's noise and muzzle flash have been reduced to a minimum."
	icon_state = "val"
	item_state = "val"
	fire_sound = 'stalker/sound/weapons/vintorez_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sp9x39val
	suppressed = 1
	can_suppress = 0
	can_unsuppress = 0
	slowdown = 0.15
	durability = 150
	slot_flags = ITEM_SLOT_BACK
	force = 15
	burst_size = 3
	fire_delay = 1.2
	pin = /obj/item/firing_pin
	w_class = 4
	spread = 9
	recoil = 0.3
	damagelose = 0.1
	can_scope = 1
	automatic = 1
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/val_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/val_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/val_open.ogg'

/obj/item/gun/ballistic/automatic/vintorez  // ВСС Винторез
	name = "VSS Vintorez"
	desc = "A special military sniper rifle purpose-built for silent, flashless sniping during special operations where early detection of the shooter may be critical. The Vintorez provides high armor-piercing capability and stopping power, as well as being equipped with an integrated sniper and optical scope. Highly rated by many stalkers despite its small magazine."
	icon_state = "vintorez"
	item_state = "vintorez"
	fire_sound = 'stalker/sound/weapons/vintorez_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sp9x39vint
	suppressed = 1
	can_suppress = 0
	can_unsuppress = 0
	slowdown = 0.15
	zoomable = TRUE
	zoom_amt = 7
	zoom_out_amt = 10
	burst_size = 3
	fire_delay = 1.2
	durability = 150
	slot_flags = ITEM_SLOT_BACK
	force = 15
	pin = /obj/item/firing_pin
	w_class = 4
	randomspread = 0//As below.
	spread = 0//For reason to use it over the SVD and Enfield.
	recoil = 0.1//This too. Ten round mag, so it's not that big of a deal.
	damagelose = 0
	can_scope = 0
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/val_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/val_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/val_open.ogg'

/obj/item/gun/ballistic/semiauto/svd  // SVD
	name = "SVD"
	desc = "Snaiperskaya Vintovka Dragunova, abbreviated as the SVD is a high-caiber, anti-personell sniper rifle developed and deployed originally in 1963. Comes with a high-grade inbuilt scope for long-range scopeouts, and unlike its smaller-caliber cousin (the VSS), is incapable of burst fire due to the aforementioned higher caliber."
	icon_state = "svd"
	item_state = "svd"
	fire_sound = 'stalker/sound/weapons/abakan_shoot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/svd
	can_suppress = 0
	can_unsuppress = 0
	slowdown = 0.15
	zoomable = TRUE
	zoom_amt = 9
	zoom_out_amt = 11
	fire_delay = 35
	durability = 180
	slot_flags = ITEM_SLOT_BACK
	force = 15
	pin = /obj/item/firing_pin
	w_class = 4
	spread = 3
	recoil = 0.5
	damagelose = 0
	can_scope = 0
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/val_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/val_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/val_open.ogg'

/obj/item/gun/ballistic/automatic/groza  // ОЦ-14 Гроза
	name = "Groza OTs-14"
	desc = "This assault rifle combined with a grenade launcher, which is similar to the AKM series, was specifically developed for rapid response units. The main differences are its 9x39mm caliber ammunition, bullpup layout and extensive configuration options. This weapon is highly valued by military stalkers due to its ability to kill enemies wearing body armor behind improvised cover at a distance during urban combat."
	icon_state = "groza"
	item_state = "groza"
	fire_sound = 'stalker/sound/weapons/groza_shot.ogg'
	mag_type = /obj/item/ammo_box/magazine/stalker/sp9x39groza
	can_suppress = 0
	slowdown = 0.15
	durability = 125
	slot_flags = ITEM_SLOT_BACK
	fire_delay = 1
	force = 15
	burst_size = 3
	pin = /obj/item/firing_pin
	w_class = 4
	spread = 15
	recoil = 0.4
	damagelose = 0.35
	can_scope = 0
	automatic = 1
	zoomable = TRUE
	zoom_amt = 4
	zoom_out_amt = 4
	weapon_weight = WEAPON_MEDIUM
	draw_sound = 'stalker/sound/weapons/draw/groza_draw.ogg'
	load_sound = 'stalker/sound/weapons/load/groza_load.ogg'
	eject_sound = 'stalker/sound/weapons/unload/groza_open.ogg'

///////////////////////////// ETC //////////////////////////////////////////

/obj/item/gun/ballistic/semiauto/gaussrifle  // Gauss Rifle
	name = "gauss rifle"
	desc = "Item no. 62, better known as the Gauss Rifle, is an experimental, highly powerful hybrid energy weapon initially designed by members of the infamous Group that operated in the Zone prior to it's creation. Now manufactured by an unknown force, the weapon is made operational by pieces of a Flash artefact, and is by far the most deadly weapon at the disposal of the Monolith's servants."
	icon_state = "gaussrifle"
	item_state = "gaussrifle"
	colored = 0//"normal"
	slot_flags = ITEM_SLOT_BACK//|SLOT_BELT
	force = 15
	mag_type = /obj/item/ammo_box/magazine/stalker/gaussbattery
	fire_sound = 'stalker/sound/weapons/gauss_shoot.ogg'
	can_suppress = 0
	can_unsuppress = 0
	slowdown = 0.15
	fire_delay = 80
	pin = /obj/item/firing_pin
	durability = 120
	w_class = 4
	spread = 0
	recoil = 0
	randomspread = 0
	damagelose = 0
	distro = 15
	zoomable = TRUE
	zoom_amt = 8
	zoom_out_amt = 10
	weapon_weight = WEAPON_MEDIUM
	empty_alarm = TRUE
	casing_ejector = FALSE
	magazine_wording = "battery"
	draw_sound = 'stalker/sound/weapons/draw/ak74_draw.ogg'
	load_sound = 'stalker/sound/weapons/gauss_reload.ogg'
	eject_sound = 'stalker/sound/weapons/unload/abakan_open.ogg'

