var/id_ = 0

/obj/structure/stalker/modification_table
	name = "modification table"
	desc = "A table that allows you to invest money and time into bettering your gear."
	icon = 'stalker/icons/weapon_mods.dmi'
	icon_state = "modification_table"
	layer = 2.8
	var/datum/browser/popup = null
	var/obj/item/modificated = null
	var/balance = 0
	density = 1
	anchored = 1
	var/list/modifications_list = list(
	/////////////////////////////////////////////////////////////////////////////////////
		"Lining" = list(
		//LINNING I
			new /datum/data/modification/clothing/suit/lining/rubberoid(),
			new /datum/data/modification/clothing/suit/lining/thinsulate(),
		//LINNING II
			new /datum/data/modification/clothing/suit/lining/nitrile(),
			new /datum/data/modification/clothing/suit/lining/fiberglass()
		),
		"Material" = list(
		//MATERIAL I
			new /datum/data/modification/clothing/suit/material/kevlar(),
			new /datum/data/modification/clothing/suit/material/lead(),
			new /datum/data/modification/clothing/suit/material/alloy(),

			new /datum/data/modification/clothing/head/material/kevlar(),
		//MATERIAL II
			new /datum/data/modification/clothing/suit/material/composite(),
			new /datum/data/modification/clothing/suit/material/wolfram(),
			new /datum/data/modification/clothing/suit/material/alloy_advanced(),

			new /datum/data/modification/clothing/head/material/composite()
		),
		"Padding" = list(
		//PADDING I
			new /datum/data/modification/clothing/suit/padding/steelfiber(),
			new /datum/data/modification/clothing/suit/padding/neylon(),

			new /datum/data/modification/clothing/head/padding/psionic(),
			new /datum/data/modification/clothing/head/padding/filter(),
		//PADDING II
			new /datum/data/modification/clothing/suit/padding/twaron(),
			new /datum/data/modification/clothing/suit/padding/teflon(),

			new /datum/data/modification/clothing/head/padding/psionic_advanced(),
			new /datum/data/modification/clothing/head/padding/filter_advanced()
		),
		"Visor" = list(
		//NIGHTVISION I + II
			new /datum/data/modification/clothing/suit/nightvision/basic(),	//Костюм с замкнутой системой дыхания - ночное виденье
			new /datum/data/modification/clothing/suit/nightvision/advanced(),
			new /datum/data/modification/clothing/head/nightvision/basic(),	//Шлем - ночное виденье
			new /datum/data/modification/clothing/head/nightvision/advanced(),
			new /datum/data/modification/clothing/mask/nightvision/basic(),	//Противогаз
			new /datum/data/modification/clothing/mask/nightvision/advanced()
		),
		//"Accessory Slot" = list(
		//ACCESSORY SLOT I
		//new /datum/data/modification/clothing/suit/accessory/webbing(),
		//new /datum/data/modification/clothing/suit/accessory/container(),
		//new /datum/data/modification/clothing/suit/accessory/guncase(),
		//ACCESSORY SLOT II
		//new /datum/data/modification/clothing/suit/accessory/webbing/advanced(),
		//new /datum/data/modification/clothing/suit/accessory/container/advanced(),
		//ACESSORY SLOT III
		//new /datum/data/modification/clothing/suit/accessory/webbing/modern(),
		//new /datum/data/modification/clothing/suit/accessory/container/modern()
		//)//NEED REWORK
	)
	/////////////////////////////////////////////////////////////////////////////////////

/datum/data/modification
	name = "modification"
	var/cost = 5000
	var/desc = "This is a modification"
	var/eng_desc = "This is deprecated. Do not use me for descriptions."
	var/list/add_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)
	var/id = null
	var/tier = 1
	var/modificated_type = null
/*
/datum/data/modification/New()
	if(!id)
		id_++
		id = num2text(id_)
*/
/datum/data/modification/proc/AffectEquipment(var/obj/item/I)
	I.modifications[id]++
	I.unique = 1
	I.update_icon()
	return 1

/datum/data/modification/proc/SpecialCheck(var/obj/item/I)
	return 1

/datum/data/modification/clothing
	name = "clothing modification"
	desc = "You shouldn't see this."

/datum/data/modification/clothing/AffectEquipment(var/obj/item/I)
	//I.armor = getArmor(arglist(I.armor))
	add_armor = getArmor(arglist(add_armor))
	I.armor = I.armor.attachArmor(add_armor)
	//I.modifications += src.id
	return ..(I)
////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////МОДИФИКАЦИИ ШЛЕМОВ (и масок)///////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
/datum/data/modification/clothing/head
	name = "helmet modification"
	desc = "This is a helmet modification."
	modificated_type = /obj/item/clothing/head

/datum/data/modification/clothing/head/material
	name = "Material Modification"
	id = "material_head"

/datum/data/modification/clothing/head/padding
	name = "Padding Modification"
	id = "padding_head"

/////////////////////////////////////MATERIAL - I TIER//////////////////////////////////////////////////////
/datum/data/modification/clothing/head/material/kevlar
	name = "Kevlar padding"
	cost = 18000
	desc = "Kevlar helmet coverage protects from bullets."
	add_armor = list("melee" = 0, "bullet" = 10, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)
	tier = 1

/////////////////////////////////////MATERIAL - II TIER/////////////////////////////////////////////////////
/datum/data/modification/clothing/head/material/composite
	name = "Ceramic padding"
	cost = 18000
	desc = "Ceramic armor provides great protection from bullets and explosions."
	add_armor = list("melee" = 0, "bullet" = 15, "laser" = 0, "energy" = 0, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)
	tier = 2

/////////////////////////////////////PADDING - I TIER///////////////////////////////////////////////////////
/datum/data/modification/clothing/head/padding/psionic
	name = "Psionic Protection module"
	cost = 15000
	desc = "Psionic protection module protects head and brain from psionic waves."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 15)
	tier = 1

/datum/data/modification/clothing/head/padding/filter
	name = "Filter module"
	cost = 15000
	desc = "Filter installation protects user from radiation."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 15, "fire" = 0, "psy" = 0)
	tier = 1

/////////////////////////////////////PADDING - II TIER///////////////////////////////////////////////////////
/datum/data/modification/clothing/head/padding/psionic_advanced
	name = "Advanced Psionic Protection module"
	cost = 30000
	desc = "Advanced psionic protection module protects head from psionic waves."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 25)
	tier = 2

/datum/data/modification/clothing/head/padding/filter_advanced
	name = "Advanced Filter Module"
	cost = 25000
	desc = "Installation of advanced filter, protects user not only from radiation, but acidic atmosphere and high temperature."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 5, "energy" = 0, "bomb" = 0, "bio" = 5, "rad" = 20, "fire" = 0, "psy" = 0)
	tier = 2

/////////////////////////////////////NIGHTVISION////////////////////////////////////////////////////////

/datum/data/modification/clothing/head/nightvision
	name = "Nightvision"

/datum/data/modification/clothing/head/nightvision/AffectEquipment(var/obj/item/clothing/head/Gear)
	return ..(Gear)

/datum/data/modification/clothing/head/nightvision/basic
	name = "Nightvision (Gen I)"
	cost = 12000
	desc = "Installation of a 1st gerantion nightvision device."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)
	id = "visor_head"
	tier = 1

/datum/data/modification/clothing/head/nightvision/basic/AffectEquipment(var/obj/item/clothing/head/Gear)
	if(!Gear.nvg)
		//Gear.nvg = new /obj/item/nightvision(Gear)
		Gear.AttachNVG()
	Gear.nvg.colour_matrix = NIGHTVISION_MATRIX_I
	return ..(Gear)

/datum/data/modification/clothing/head/nightvision/advanced
	name = "Nightvision (Gen II)"
	cost = 25000
	desc = "Installation of a 2nd generation nightvision device."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)
	id = "visor_head"
	tier = 2

/datum/data/modification/clothing/head/nightvision/advanced/AffectEquipment(var/obj/item/clothing/head/Gear)
	if(!Gear.nvg)
		//Gear.nvg = new /obj/item/nightvision(Gear)
		Gear.AttachNVG()
	Gear.nvg.colour_matrix = NIGHTVISION_MATRIX_II
	return ..(Gear)

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////МОДИФИКАЦИИ МАСОК///////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/datum/data/modification/clothing/mask
	name = "helmet modification"
	desc = "This is a mask modification."
	modificated_type = /obj/item/clothing/mask/gas/stalker

/datum/data/modification/clothing/mask/nightvision
	name = "Nightvision"

/datum/data/modification/clothing/mask/nightvision/AffectEquipment(var/obj/item/clothing/mask/Gear)
	return ..(Gear)

/////////////////////////////////////NIGHTVISION///////////////////////////////////////////////////////
/datum/data/modification/clothing/mask/nightvision/basic
	name = "Nightvision (Gen I)"
	cost = 12000
	desc = "Installation of a 1st gerantion nightvision device."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)
	id = "visor_mask"
	tier = 1
	modificated_type = /obj/item/clothing/mask/gas/stalker

/datum/data/modification/clothing/mask/nightvision/basic/AffectEquipment(var/obj/item/clothing/mask/Gear)
	if(!Gear.nvg)
		//Gear.nvg = new /obj/item/nightvision(Gear)
		Gear.AttachNVG()
	Gear.nvg.colour_matrix = NIGHTVISION_MATRIX_I
	return ..(Gear)

/datum/data/modification/clothing/mask/nightvision/advanced
	name = "Nightvision (Gen II)"
	cost = 25000
	desc = "Installation of a 2nd gerantion nightvision device."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)
	id = "visor_mask"
	tier = 2
	modificated_type = /obj/item/clothing/mask/gas/stalker

/datum/data/modification/clothing/mask/nightvision/advanced/AffectEquipment(var/obj/item/clothing/mask/Gear)
	if(!Gear.nvg)
		//Gear.nvg = new /obj/item/nightvision(Gear)
		Gear.AttachNVG()
	Gear.nvg.colour_matrix = NIGHTVISION_MATRIX_II
	return ..(Gear)
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////МОДИФИКАЦИИ КОСТЮМОВ////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/datum/data/modification/clothing/suit
	name = "suit modification"
	desc = "This is a suit modification."
	modificated_type = /obj/item/clothing/suit

/datum/data/modification/clothing/suit/lining
	name = "Lining Modification"
	id = "lining_suit"

/datum/data/modification/clothing/suit/material
	name = "Material Modification"
	id = "material_suit"

/datum/data/modification/clothing/suit/padding
	name = "Padding Modification"
	id = "padding_suit"

/datum/data/modification/clothing/suit/accessory
	name = "Accessory Modification"
	id = "accessory_slot"
	var/int_slot = /datum/component/storage/concrete/pockets/internal_slot

/datum/data/modification/clothing/suit/accessory/AffectEquipment(var/obj/item/clothing/suit/Gear)
	//if(Gear.pocket_storage_component_path)
		//if(Gear.pocket_storage_component_path.contents.len)
		//	return 0
	//	qdel(Gear.pocket_storage_component_path)
	Gear.pocket_storage_component_path = new int_slot()
	//if(ispath(Gear.pocket_storage_component_path))
	//	LoadComponent(Gear.pocket_storage_component_path)
	Gear.RefreshPockets()
	return ..(Gear)


/////////////////////////////////////LINING - I TIER////////////////////////////////////////////////////////
/datum/data/modification/clothing/suit/lining/rubberoid
	name = "Rubber insulation"
	cost = 10000
	desc = "Through the use of a specialized spray to coat the inner lining of your clothing, You can increase your clothing's protection against electrical anomalies."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 10, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)
	tier = 1

/datum/data/modification/clothing/suit/lining/thinsulate
	name = "Fire Resistant Cloth"
	cost = 12000
	desc = "Through the use of specialized, fire resistant cloth, you can in increase your clothing's protection against flash fires, and fire based anomalies."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "psy" = 0)
	tier = 1
/////////////////////////////////////LINING - II TIER///////////////////////////////////////////////////////
/datum/data/modification/clothing/suit/lining/nitrile
	name = "Nitrile insulation"
	cost = 20000
	desc = "Light nitrile compound improves electricity insulation."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 20, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)
	tier = 2

/datum/data/modification/clothing/suit/lining/fiberglass
	name = "Fiberglass lining layer"
	cost = 24000
	desc = "With this thin layer of fiberglass lining, the user gains significant resistance to fire and flames, granting optimal protection again fire anomalies."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 20, "rad" = 0, "fire" = 0, "psy" = 0)
	tier = 2
/////////////////////////////////////MATERIAL - I TIER//////////////////////////////////////////////////////
/datum/data/modification/clothing/suit/material/kevlar
	name = "Kevlar layer"
	cost = 15000
	desc = "A light Kevlar layer increases your suit's resistance against projectile based weaponry."
	add_armor = list("melee" = 5, "bullet" = 10, "laser" = 0, "energy" = 0, "bomb" = 5, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)
	tier = 1

/datum/data/modification/clothing/suit/material/lead
	name = "Lead layer"
	cost = 13500
	desc = "A small, half inch thick lead plate that fits snugly underneath your suit, just big enough to shield most of your vital organs from radiation."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 5, "bio" = 0, "rad" = 15, "fire" = 0, "psy" = 0)
	tier = 1

/datum/data/modification/clothing/suit/material/alloy
	name = "Alloy layer"
	cost = 14000
	desc = "With the addition of a layer of a highly resistant mesh alloy, your suit will provide light, but general protection from most of the zones anomalies."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 5, "energy" = 10, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "psy" = 0)
	tier = 1

/////////////////////////////////////MATERIAL - II TIER/////////////////////////////////////////////////////
/datum/data/modification/clothing/suit/material/composite
	name = "Composite layer"
	cost = 30000
	desc = "With these Military grade composite armor plates, the user games significant protection against bladed, projectile, and explosion based weaponry."
	add_armor = list("melee" = 10, "bullet" = 15, "laser" = 0, "energy" = 0, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)
	tier = 2

/datum/data/modification/clothing/suit/material/wolfram
	name = "Wolfram layer"
	cost = 27000
	desc = "Mounting wolframe plate with width of 2-mm significantly improves radiation protection."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 30, "fire" = 0, "psy" = 0)
	tier = 2

/datum/data/modification/clothing/suit/material/alloy_advanced
	name = "Advanced alloy layer"
	cost = 28000
	desc = "With the addition of a layer of a highly Advanced mesh alloy, your suit will provide decent protection from most of the zones anomalies."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 10, "energy" = 15, "bomb" = 0, "bio" = 15, "rad" = 0, "fire" = 0, "psy" = 0)
	tier = 2

/////////////////////////////////////PADDING - I TIER///////////////////////////////////////////////////////
/datum/data/modification/clothing/suit/padding/steelfiber
	name = "Steelfiber padding"
	cost = 16000
	desc = "A specialised steel fiber padding that will increase the user's prection against bladed weaponry, punctures, and animal attacks."
	add_armor = list("melee" = 10, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)
	tier = 1

/datum/data/modification/clothing/suit/padding/neylon
	name = "Neylon padding"
	cost = 14000
	desc = "A specialized nylon padding will provide very light heat resistance, and high acidic and chemical resistance. Increasing the users fire and acid protection."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 5, "energy" = 0, "bomb" = 0, "bio" = 10, "rad" = 0, "fire" = 0, "psy" = 0)
	tier = 1
/////////////////////////////////////PADDING - II TIER//////////////////////////////////////////////////////
/datum/data/modification/clothing/suit/padding/twaron
	name = "Twaron padding"
	cost = 28000
	desc = "A specialized Twaron padding, will provide general protection against most of the zones mutants."
	add_armor = list("melee" = 15, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)
	tier = 2

/datum/data/modification/clothing/suit/padding/teflon
	name = "Teflon padding"
	cost = 24000
	desc = "Teflon padding provides perfect protection from any acidic effects."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 25, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)
	tier = 2

/////////////////////////////////////NIGHTVISION///////////////////////////////////////////////////////

/datum/data/modification/clothing/suit/nightvision
	name = "Nightvision"

/datum/data/modification/clothing/suit/nightvision/AffectEquipment(var/obj/item/clothing/suit/Gear)
	return ..(Gear)

/datum/data/modification/clothing/suit/nightvision/basic
	name = "Nightvision (Gen I)"
	cost = 20000
	desc = "With the installation of a first generation night vision device, the user will be able to see in complete darkness without the need of producing visible light."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)
	id = "visor_suit"
	tier = 1
	modificated_type = /obj/item/clothing/suit/hooded/sealed

/datum/data/modification/clothing/suit/nightvision/basic/AffectEquipment(var/obj/item/clothing/suit/hooded/Gear)
	if(!Gear.hood.nvg)
		//Gear.hood.nvg = new /obj/item/nightvision(Gear.hood)
		Gear.hood.AttachNVG()
	Gear.hood.nvg.colour_matrix = NIGHTVISION_MATRIX_I
	return ..(Gear)

/datum/data/modification/clothing/suit/nightvision/advanced
	name = "Nightvision (Gen II)"
	cost = 35000
	desc = "With the installation of a second generation night vision device, the user will be able to see in complete darkness without the need of producing visible light."
	add_armor = list("melee" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "psy" = 0)
	id = "visor_suit"
	tier = 2
	modificated_type = /obj/item/clothing/suit/hooded/sealed

/datum/data/modification/clothing/suit/nightvision/advanced/AffectEquipment(var/obj/item/clothing/suit/hooded/Gear)
	if(!Gear.hood.nvg)
		//Gear.hood.nvg = new /obj/item/nightvision(Gear.hood)
		Gear.hood.AttachNVG()
	Gear.hood.nvg.colour_matrix = NIGHTVISION_MATRIX_II
	return ..(Gear)

/////////////////////////////////////ACCESSORY SLOT/////////////////////////////////////////////////////////

/////////////////////////////////////WEBBING////////////////////////////////////////////////////////////////
/datum/data/modification/clothing/suit/accessory/webbing
	name = "Integrated Webbing"
	cost = 8000
	desc = "With the installation of a mounted webbing, the user will be able to carry more gear."
	tier = 1
	int_slot = /datum/component/storage/concrete/pockets/internal_slot/webbing

/datum/data/modification/clothing/suit/accessory/webbing/advanced
	name = "Advanced Inergrated Webbing"
	cost = 14000
	desc = "With the expansion of mounted webbing, the user will be able to carry extra gear."
	tier = 2
	int_slot = /datum/component/storage/concrete/pockets/internal_slot/webbing/advanced

/datum/data/modification/clothing/suit/accessory/webbing/advanced/SpecialCheck(var/obj/item/I)
	if(!istype(I, /obj/item/clothing/suit))
		return 0
	var/obj/item/clothing/suit/S = I
	if(!S.pocket_storage_component_path || !istype(S.pocket_storage_component_path, /datum/component/storage/concrete/pockets/internal_slot/webbing))
		return 0
	return 1

/datum/data/modification/clothing/suit/accessory/webbing/modern
	name = "Modern Inergrated Webbing"
	cost = 22000
	desc = "With the expansion of mounted webbing, the user will be able to carry extra gear."
	tier = 3
	int_slot = /datum/component/storage/concrete/pockets/internal_slot/webbing/modern

/datum/data/modification/clothing/suit/accessory/webbing/modern/SpecialCheck(var/obj/item/I)
	if(!istype(I, /obj/item/clothing/suit))
		return 0
	var/obj/item/clothing/suit/S = I
	if(!S.pocket_storage_component_path || !istype(S.pocket_storage_component_path, /datum/component/storage/concrete/pockets/internal_slot/webbing/advanced))
		return 0
	return 1

/////////////////////////////////////CONTAINER////////////////////////////////////////////////////////////////
/datum/data/modification/clothing/suit/accessory/container
	name = "Integrated Artifact Container"
	cost = 16000
	desc = "With the integration of specialized artifact container, user recieves ability to use their special effects."
	tier = 1
	int_slot = /datum/component/storage/concrete/pockets/internal_slot/container

/datum/data/modification/clothing/suit/accessory/container/advanced
	name = "Artifact Container Expansion"
	cost = 32000
	desc = "Integrated container expansion allows user to carry more artifacts."
	tier = 2
	int_slot = /datum/component/storage/concrete/pockets/internal_slot/container/advanced

/datum/data/modification/clothing/suit/accessory/container/advanced/SpecialCheck(var/obj/item/I)
	if(!istype(I, /obj/item/clothing/suit))
		return 0
	var/obj/item/clothing/suit/S = I
	if(!S.pocket_storage_component_path || !istype(S.pocket_storage_component_path, /datum/component/storage/concrete/pockets/internal_slot/container))
		return 0
	return 1

/datum/data/modification/clothing/suit/accessory/container/modern
	name = "Artifact Container Radiation Shield"
	cost = 64000
	desc = "Installation of radiation protection around integrated container."
	tier = 3
	int_slot = /datum/component/storage/concrete/pockets/internal_slot/container/modern

/datum/data/modification/clothing/suit/accessory/container/modern/SpecialCheck(var/obj/item/I)
	if(!istype(I, /obj/item/clothing/suit))
		return 0
	var/obj/item/clothing/suit/S = I
	if(!S.pocket_storage_component_path || !istype(S.pocket_storage_component_path, /datum/component/storage/concrete/pockets/internal_slot/container/advanced))
		return 0
	return 1

/////////////////////////////////////GUNCASE/////////////////////////////////////////////////////////////////
/datum/data/modification/clothing/suit/accessory/guncase
	name = "Integrated Gun Slot"
	cost = 32000
	desc = "Integrated container expansion allows user to carry another gun."
	tier = 1
	int_slot = /datum/component/storage/concrete/pockets/internal_slot/gun_case

//Some suit internal slots

/datum/component/storage/concrete/pockets/internal_slot
	var/touch_sound = 'stalker/sound/objects/internal_slot_toggle.ogg'
	var/radiation_protection = 0
	max_combined_w_class = 2
	max_items = 1
	max_w_class = WEIGHT_CLASS_SMALL
	attack_hand_interact = TRUE

/datum/component/storage/concrete/pockets/internal_slot/show_to(mob/user)
	..()
	playsound(user, touch_sound, 50, 1, -5)

//Artifact container//

/datum/component/storage/concrete/pockets/internal_slot/container
	max_items = 1

/datum/component/storage/concrete/pockets/internal_slot/container/Initialize()
	can_hold = typecacheof(list(/obj/item/artifact))

/datum/component/storage/concrete/pockets/internal_slot/container/advanced
	max_combined_w_class = 4
	max_items = 2

/datum/component/storage/concrete/pockets/internal_slot/container/modern
	max_combined_w_class = 4
	max_items = 2
	radiation_protection = 1

//Item slots//

/datum/component/storage/concrete/pockets/internal_slot/webbing
	max_combined_w_class = 4
	max_items = 2

/datum/component/storage/concrete/pockets/internal_slot/webbing/advanced
	max_combined_w_class = 6
	max_items = 3

/datum/component/storage/concrete/pockets/internal_slot/webbing/modern
	max_w_class = WEIGHT_CLASS_NORMAL
	max_combined_w_class = 6
	max_items = 4

//Gun slot//

/datum/component/storage/concrete/pockets/internal_slot/gun_case
	max_w_class = WEIGHT_CLASS_GIGANTIC
	max_combined_w_class = 6
	max_items = 1

/datum/component/storage/concrete/pockets/internal_slot/gun_case/Initialize()
	can_hold = typecacheof(list(/obj/item/gun))

/////////////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////МОДИФИКАЦИИ ОРУЖИЯ//////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/datum/data/modification/gun
	name = "gun modification"
	desc = "This is a gun modification."

/datum/data/modification/gun/automatic/pistol

/datum/data/modification/gun/automatic

/datum/data/modification/gun/shotgun

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
/obj/structure/stalker/modification_table/attackby(obj/item/I, mob/user, params)
	if(!ishuman(usr))
		return

	var/mob/living/carbon/human/Hu = usr

	if(!istype(Hu.wear_id, /obj/item/stalker_pda))
		say("Put on your PDA.")
		return

	var/datum/data/record/sk = find_record("sid", Hu.sid, GLOB.data_core.stalkers)
	var/obj/item/stalker_pda/KPK = Hu.wear_id

	if(!sk || !KPK.owner)
		say("Activate your PDA profile.")
		return

	if(KPK.owner != Hu)
		say("No access.")
		return

	if(istype(I, /obj/item/clothing/head))
		var/obj/item/clothing/head/H = I
		if(H.durability)
			if(!user.is_holding(I))
				return 0
			if(!user.transferItemToLoc(I, src))
				to_chat(user, "<span class='warning'>\The [I] is stuck to your hand, you cannot put it in the [src.name]!</span>")
				return
			I.loc = src
			modificated = I
			return 1
		return 0

	if(istype(I, /obj/item/clothing/mask))
		var/obj/item/clothing/mask/M = I
		if(M.durability)
			if(!user.is_holding(I))
				return 0
			if(!user.transferItemToLoc(I, src))
				to_chat(user, "<span class='warning'>\The [I] is stuck to your hand, you cannot put it in the [src.name]!</span>")
				return
			I.loc = src
			modificated = I
			return 1
		return 0

	if(istype(I, /obj/item/clothing/suit))
		var/obj/item/clothing/suit/S = I
		if(S.durability)
			if(!user.is_holding(I))
				return 0
			if(!user.transferItemToLoc(I, src))
				to_chat(user, "<span class='warning'>\The [I] is stuck to your hand, you cannot put it in the [src.name]!</span>")
				return
			modificated = I
			return 1
		return 0

	if(istype(I, /obj/item/gun/ballistic))
		var/obj/item/gun/ballistic/P = I
		if(P.durability)
			if(!user.is_holding(I))
				return 0
			if(!user.transferItemToLoc(I, src))
				to_chat(user, "<span class='warning'>\The [I] is stuck to your hand, you cannot put it in the [src.name]!</span>")
				return
			I.loc = src
			modificated = I
			return 1
		return 0

/obj/structure/stalker/modification_table/attack_hand(mob/user)
	if(!ishuman(user))
		return

	var/mob/living/carbon/human/H = user

	ui_interact(H)

/obj/structure/stalker/modification_table/ui_interact(mob/living/carbon/human/H)
	if(!istype(H.wear_id, /obj/item/stalker_pda))
		say("I can't connect with your PDA.")
		return

	var/obj/item/stalker_pda/KPK = H.wear_id

	if(!KPK.profile || !KPK.owner)
		say("Activate your PDA.")
		return

	if(KPK.owner != H)
		say("No access.")
		return

	if(!modificated)
		say("Insert an item for improvement.")
		return

	H.set_machine(src)
	balance = KPK.profile.fields["money"]

	var/dat
	dat +="<div class='statusDisplay'>"
	dat += "Balance: [balance] р.<br>"
	dat += "<br><br>Instructions: Insert an item for improvement."
	dat += "<br><A href='?src=\ref[src];eject=1'>Eject</A>"
	dat += "</div>"
	dat += "<div class='lenta_scroll'>"
	dat += "<br><BR><table border='0' width='400'>"
	for(var/ML in modifications_list)
		var/dat_
		for(var/datum/data/modification/M in modifications_list[ML])
			dat_ += SetMenu(H, M)
		if(dat_)
			dat += "<tr><td></td><td></td><td></td></tr><tr><td><center><big><b>[ML]</b></big></center></td><td></td><td></td></tr>"
			dat += dat_
	popup = new(H, "modtable", "Modification Table", 460, 705)
	popup.set_content(dat)
	popup.open()
	return

/obj/structure/stalker/modification_table/proc/SetMenu(var/mob/living/carbon/human/H, var/datum/data/modification/M)
	var/dat_
	if((M.id in modificated.modifications) && (M.tier == modificated.modifications[M.id] + 1))
		if(M.SpecialCheck(modificated))
			if(H.client.prefs.chat_toggles & CHAT_LANGUAGE)
				dat_ += "<tr><td><b>[M.name]</b></td><td><A href='?src=\ref[src];upgrade=\ref[M]'>UPGRADE</A></td></tr><tr><td style='padding-left:10px'>[M.desc]</td><td>[M.cost]</td></tr>"
			else
				dat_ += "<tr><td><b>[M.name]</b></td><td><A href='?src=\ref[src];upgrade=\ref[M]'>UPGRADE</A></td></tr><tr><td style='padding-left:10px'>[M.desc]</td><td>[M.cost]</td></tr>"
	return dat_

/obj/structure/stalker/modification_table/Topic(href, href_list)
	if(..())
		return

	var/mob/living/carbon/human/H = usr

	if(!istype(H.wear_id, /obj/item/stalker_pda))
		say("Put on your PDA.")
		updateUsrDialog()
		return

	var/obj/item/stalker_pda/KPK = H.wear_id

	if(href_list["upgrade"])
		var/datum/data/modification/M = locate(href_list["upgrade"])
		if(!M || (M.cost > KPK.profile.fields["money"]))
			say("You don't have enough money to upgrade your gear.")
			updateUsrDialog()
			return
		if(!M.AffectEquipment(modificated))
			updateUsrDialog()
			return
		KPK.profile.fields["money"] -= M.cost
		balance = KPK.profile.fields["money"]

	if(href_list["eject"])
		if(!modificated)
			return
		var/turf/T = get_turf(src)
		for(var/atom/movable/A in contents)
			A.forceMove(T)
		modificated = null
		usr.unset_machine()
		popup.close()
		new /obj/structure/stalker/modification_table(src.loc)
		qdel(src)

	updateUsrDialog()
