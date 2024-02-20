/*
/obj/item/clothing/head/New()
	..()
	sleep(5)
	if(nvg)
		if(nvg.colour_matrix == NIGHTVISION_MATRIX_I)
			modifications += "visor"
		else if(nvg.colour_matrix == NIGHTVISION_MATRIX_II)
			modifications += "visor"
*/
/obj/item/clothing/head/steel
	name = "Steel Helmet"
	desc = "A desperately outdated steel army helmet without any additions. Provides no protection against anomalies or radiation, but can deflect bullets. This helmet was never particularly popular in the Zone, except for use in brief armed conflicts between factions."
	icon_state = "steelhelmet"
	item_state = "steelhelmet"
	slowdown = 0.15
	armor = list("melee" = 25, "bullet" = 30, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0, "psy" = 10)
	flags_inv = HIDEHAIR
	flags_cover = 0
	resistance_flags = UNACIDABLE
	durability = 40
	modifications = list("material_head" = 0)

/obj/item/clothing/head/ssh
	name = "SSH-68"
	desc = "The SSh-68 replaced the general-army SSh-60 helmet. It differs from its predecessor in greater durability, a large inclination of the front part and short side boards."
	icon_state = "ssh-68"
	item_state = "ssh-68"
	slowdown = 0.025
	armor = list("melee" = 25, "bullet" = 35, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0, "psy" = 10)
	flags_inv = HIDEHAIR
	flags_cover = 0
	resistance_flags = UNACIDABLE
	durability = 40
	modifications = list("material_head" = 0)

/obj/item/clothing/head/tsh
	name = "TSH-4M"
	desc = "This helmet is designed to provide two-way radiotelephone communication in objects with a high level of noise, to protect it from climatic factors and from impacts on structural elements of objects. It has poor protection for the zone's needs, but is very warm."
	icon_state = "TSH-4M"
	item_state = "TSH-4M"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	slowdown = 0.025
	armor = list("melee" = 5, "bullet" = 5, "laser" = 0, "energy" = 15, "bomb" = 5, "bio" = 5, "rad" = 10, "fire" = 30, "acid" = 0, "psy" = 5)
	flags_inv = HIDEHAIR
	resistance_flags = UNACIDABLE|FIRE_PROOF
	durability = 30

/obj/item/clothing/head/mob_can_equip(mob/M, slot, disable_warning = 0)
	if(!iscarbon(M))
		return ..()

	var/mob/living/carbon/C = M

	if(slot != ITEM_SLOT_HEAD)
		return ..()

	if(!(flags_cover & HEADCOVERSMOUTH))
		return ..()

	if(!(C.wear_mask))
		return ..()

	return 0

/obj/item/clothing/head/tacticalhelmet
	name = "Tactical helmet"
	desc = "French SPECTRA tactical helmet that lacks camouflage. It is not known how it made its way into the Zone. The helmet is designed to provide a squad leader with strategic superiority over the enemy via its many scanners and satellite communications devices, which have not been installed in this particular helmet. Comes with multi-layered Kevlar protection and armored elements to protect electronic components. Includes a respirator and a nightvision device."
	icon_state = "hardhat0_tactical"
	item_state = "hardhat0_tactical"
	item_color = "tactical"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	dynamic_hair_suffix = ""
	slowdown = 0.15
	armor = list("melee" = 50, "bullet" = 60, "laser" = 0, "energy" = 30, "bomb" = 0, "bio" = 30, "rad" = 40, "fire" = 20, "acid" = 0, "psy" = 12)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = UNACIDABLE
	durability = 300
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 1)

/obj/item/clothing/head/tacticalhelmet/New()
	nvg = new /obj/item/nightvision(src)
	..()

/obj/item/clothing/head/hardhat/tactical/light
	name = "Light tactical helmet"
	desc = "A British MK VI model of a tactical helmet that lacks camouflage. It is not known how it made its way into the Zone. Comes with multi-layered Kevlar protection and armored elements to protect electronic components."
	icon_state = "hardhat0_lighttactical"
	item_state = "hardhat0_lighttactical"
	item_color = "lighttactical"
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR
	dynamic_hair_suffix = ""
	slowdown = 0.1
	armor = list("melee" = 35, "bullet" = 45, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0, "psy" = 5)
	brightness_on = 3 //luminosity when on
	flags_cover = HEADCOVERSEYES
	resistance_flags = UNACIDABLE
	durability = 200
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/head/hardhat/tactical/light/New()
	..()
	return

/obj/item/clothing/head/hardhat/tactical/guardian_of_freedom
	name = "Guardian of Freedom helmet"
	desc = "A British MK VI model of a tactical helmet modified by the Freedom faction. It is not known how it made its way into the Zone. Comes with multi-layered Kevlar protection and armored elements to protect electronic components."
	icon_state = "hardhat0_gof"
	item_state = "hardhat0_gof"
	item_color = "gof"
	flags_inv = HIDEEARS|HIDEEYES|HIDEHAIR
	dynamic_hair_suffix = ""
	slowdown = 0.1
	armor = list("melee" = 35, "bullet" = 45, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0, "psy" = 10)
	brightness_on = 3 //luminosity when on
	flags_cover = HEADCOVERSEYES
	resistance_flags = UNACIDABLE
	durability = 200
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/head/hardhat/tactical/guardian_of_freedom/New()
	..()
	return

/obj/item/clothing/head/assaultmerc
	name = "Mercenary helmet"
	desc = "Schutzhelm 04 made in Switzerland used by the Mercenaries of the Dead City. A high quality model worn mostly by mercenaries. Provides a dependable protection."
	icon_state = "assaultmerc"
	item_state = "assaultmerc"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	dynamic_hair_suffix = ""
	slowdown = 0.25
	armor = list("melee" = 50, "bullet" = 75, "laser" = 25, "energy" = 50, "bomb" = 50, "bio" = 0, "rad" = 20, "fire" = 50, "acid" = 0, "psy" = 10)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = UNACIDABLE
	durability = 250
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/head/gopcap
	name = "cap"
	desc = "Put a fucking bullet in his forehead!"
	icon_state = "gopcap"
	item_state = "gopcap"
	flags_inv = HIDEHAIR

/obj/item/clothing/head/soft/jacknoircap
	name = "Сap"
	desc = "Who knows how the British made it to Chernobyl?"
	icon_state = "jacknoirsoft"
	item_color = "jacknoir"
	item_state = "greysoft"

/obj/item/clothing/head/spheram
	name = "Sphera M12"
	desc = "An aluminum/titanium helmet with a cloth exterior that comes with pockets for additional steel armor pieces and an armor face mask. Sphera M12 are normally used as part of a combination that includes PSZ series Spetsnaz body armor. Quite popular in the Zone thanks to its respirator and built-in first generation night vision device, as well as providing the maximum head protection possible. Comes with electronics slots."
	icon_state = "sphera"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	dynamic_hair_suffix = ""
	slowdown = 0.2
	armor = list("melee" = 60, "bullet" = 65, "laser" = 0, "energy" = 35, "bomb" = 0, "bio" = 30, "rad" = 60, "fire" = 35, "acid" = 0, "psy" = 20)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = UNACIDABLE
	durability = 400
	//МОДИФИКАЦИИ//
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 1)

/obj/item/clothing/head/spheram/New()
	//nvg = new /obj/item/nightvision(src)
	AttachNVG()
	..()

/obj/item/clothing/head/skathelmet
	name = "SKAT-M9"
	desc = "A slightly advanced version of the Sphera M12. Normally used as part of a combination that includes PSZ series Spetsnaz body armor. Quite popular in the Zone thanks to its respirator and built-in first generation night vision device, as well as providing the maximum head protection possible. Comes with electronics slots."
	icon_state = "helmet_skat"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	dynamic_hair_suffix = ""
	slowdown = 0.225
	armor = list("melee" = 75, "bullet" = 75, "laser" = 60, "energy" = 70, "bomb" = 70, "bio" = 50, "rad" = 80, "fire" = 70, "acid" = 0, "psy" = 10)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = UNACIDABLE
	durability = 400
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 1)

/obj/item/clothing/head/skathelmet/New()
	//nvg = new /obj/item/nightvision(src)
	AttachNVG()
	..()

/obj/item/clothing/head/petrovichhelmet
	name = "SKOT-M777"
	desc = "An aluminum-cardboard helmet made with sprats with pockets for change and armor. Usually comes with vodka. Not popular enough in the Zone due to Petrovich's conspiracy. You feel losing a bit of your sanity by just thinking about wearing this for a minute. "
	icon_state = "helmet_skot"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	slowdown = 0.225
	armor = list("melee" = 75, "bullet" = 75, "laser" = 60, "energy" = 70, "bomb" = 70, "bio" = 50, "rad" = 80, "fire" = 70, "acid" = 0, "psy" = 50)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = UNACIDABLE
	durability = 400
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/head/beret_ua
	name = "military beret"
	desc = "A beret made from hard fabric with rubber band on the opening side. It's clean and rigid. Fits well on your skull."
	icon_state = "beret_ua"
	armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0, "psy" = 0)
	strip_delay = 80
/*
/obj/item/clothing/mask/gas/New()
	..()
	sleep(5)
	if(nvg)
		if(nvg.colour_matrix == NIGHTVISION_MATRIX_I)
			modifications += "visor"
		else if(nvg.colour_matrix == NIGHTVISION_MATRIX_II)
			modifications += "visor"
*/

/obj/item/clothing/head/maska_1
	name = "MASKA-1 SCH Helmet"
	desc = "The Maska 1 helmet was in use by the Russian MVD until being largely replaced by the aluminum ZSh-1-2. Now it is more commonly seen being worn by Clear Sky stalkers."
	icon_state = "maska_1"
	item_state = "maska_1"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	dynamic_hair_suffix = ""
	slowdown = 0.12
	armor = list("melee" = 50, "bullet" = 45, "laser" = 0, "energy" = 30, "bomb" = 0, "bio" = 30, "rad" = 40, "fire" = 20, "acid" = 0, "psy" = 12)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = UNACIDABLE
	durability = 300
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 1)

/obj/item/clothing/mask/gas/stalker
	name = "gas mask"
	desc = "A regular plastic and rubber gas mask, used for filtering air for radioactive particles and poisonous substances. Widely used by rookies and veterans of all factions due to its universal functionality. Does not provide any physical protection."
	icon_state = "gasmasknew"
	item_state = "gasmasknew"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_cover = MASKCOVERSEYES | MASKCOVERSMOUTH
	flags_inv = HIDEHAIR
	armor = list("melee" = 5, "bullet" = 0, "laser" = 30, "energy" = 30, "bomb" = 0, "bio" = 0, "rad" = 100, "fire" = 30, "acid" = 0, "psy" = 0)
	resistance_flags = UNACIDABLE|FIRE_PROOF
	durability = 400
	//GAS MASK MODIFICATION//
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/mask/gas/stalker/gp4
	name = "gp-4 gas mask"
	desc = "The Soviet GP-4 is another mask in the Soviet GP series. It was made to be issued to civilians due to the rising panic about the Cold War. This model is extremely common in the Zone and is favored by many stalkers due to its relative reliability and light weight."
	icon_state = "gp4"
	item_state = "gp4"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_cover = MASKCOVERSEYES | MASKCOVERSMOUTH
	flags_inv = HIDEHAIR
	armor = list("melee" = 5, "bullet" = 0, "laser" = 30, "energy" = 30, "bomb" = 0, "bio" = 20, "rad" = 100, "fire" = 30, "acid" = 0, "psy" = 0)
	resistance_flags = UNACIDABLE|FIRE_PROOF
	durability = 400
	//GP-4 MODIFICATIONS//
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/mask/gas/stalker/gp5
	name = "gp-5 gas mask"
	desc = "Similar to the GP-4, this mask incudes an ShM-62 filter. Unforunately, this filter is dosed with asbestos and the casing is known to degrade lead into the filter. If it's your only option, look for a filter using activated charcoal."
	icon_state = "gp5"
	item_state = "gp5"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_cover = MASKCOVERSEYES | MASKCOVERSMOUTH
	flags_inv = HIDEHAIR
	armor = list("melee" = 5, "bullet" = 0, "laser" = 30, "energy" = 30, "bomb" = 0, "bio" = 20, "rad" = 100, "fire" = 30, "acid" = 0, "psy" = 0)
	resistance_flags = UNACIDABLE|FIRE_PROOF
	durability = 400
	//GP-5 MODIFICATIONS//
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/mask/gas/stalker/mercenary
	name = "gas mask"
	desc = "A western plastic and rubber gas mask, filters out air from radioactive particles and poisonous substances. Used by mercenaries by standard. Does not provide any physical protection whatsoever."
	icon_state = "mercenary_gasmask"
	item_state = "mercenary_gasmask"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_cover = MASKCOVERSEYES | MASKCOVERSMOUTH
	armor = list("melee" = 5, "bullet" = 0, "laser" = 30, "energy" = 30, "bomb" = 0, "bio" = 20, "rad" = 100, "fire" = 30, "acid" = 0, "psy" = 0)
	resistance_flags = UNACIDABLE|FIRE_PROOF
	durability = 400
	//МОДИФИКАЦИИ//
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/mask/gas/stalker/respirator
	name = "respirator"
	desc = "A very old and outdated respiration that still functions somehow. Can provide basic protection, but wont do wonders. Its better than nothing"
	icon_state = "respirator"
	item_state = "respirator"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_cover = MASKCOVERSEYES | MASKCOVERSMOUTH
	armor = list("melee" = 5, "bullet" = 0, "laser" = 30, "energy" = 30, "bomb" = 0, "bio" = 20, "rad" = 100, "fire" = 30, "acid" = 0, "psy" = 0)
	resistance_flags = UNACIDABLE|FIRE_PROOF
	durability = 400
	//МОДИФИКАЦИИ//
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/head/buckethelmet
	name = "Bucket Helmet"
	desc = "A bucket with two holes to see through. Protects the head from impacts at the cost of looking like an idiot. Come to think of it, maybe this is not the best choice for protection."
	icon_state = "bucket_helmet"
	item_state = "bucket_helmet"
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR
	armor = list("melee" = 15, "bullet" = 1, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0, "psy" = 10)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = FIRE_PROOF
	durability = 50

/obj/item/clothing/mask/gas/stalker/renegademask
	name = "renegade ballistic mask"
	desc = "A mask of lightweight but durable material that gives you a chance to survive a stray bullet to the face. It has two non-bullet holes. The mask looks intimidating, and very solid."
	icon_state = "renegade_mask"
	item_state = "renegade_mask"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_cover = MASKCOVERSEYES | MASKCOVERSMOUTH
	flags_inv = HIDEEARS
	dynamic_hair_suffix = ""
	slowdown = 0.1
	armor = list("melee" = 15, "bullet" = 15, "laser" = 0, "energy" = 20, "bomb" = 15, "bio" = 20, "rad" = 0, "fire" = 0, "acid" = 0, "psy" = 1)
	resistance_flags = UNACIDABLE
	durability = 300
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)
