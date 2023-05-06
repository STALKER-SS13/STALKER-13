/obj/item/reagent_containers/pill/stalker
	icon = 'stalker/icons/items.dmi'
	w_class = 2
	possible_transfer_amounts = list()
	volume = 60
	apply_type = PATCH
	apply_method = "apply"
	self_delay = 30

/obj/item/reagent_containers/pill/stalker/aptechka
	name = "kit"
	desc = "An old Soviet first aid kit."

/obj/item/reagent_containers/pill/stalker/canconsume(mob/eater, mob/user)
	if(!iscarbon(eater))
		return 0
	return 1 // Masks were stopping people from "eating" patches. Thanks, inheritance.

obj/item/reagent_containers/pill/stalker/afterattack(obj/target, mob/user , proximity)
	return // thanks inheritance again

/obj/item/reagent_containers/pill/stalker/injector
	name = "Injector"
	icon_state = "brute"
	desc = "Small-effective combat stimulant. 15 units in one injector."
	item_state = "brute"
	var/wrapped = 1
	list_reagents = list("cryoxadone" = 14)
	var/icon_state_opened = "sj1_open"
	var/desc_opened = "Opened injector."

/obj/item/reagent_containers/pill/stalker/injector/attack_self(mob/user)
	if(wrapped)
		Unwrap(user)
	else
		..()

/obj/item/reagent_containers/pill/stalker/injector/proc/Unwrap(mob/user)
	icon_state = icon_state_opened
	desc = desc_opened
	to_chat(user, "<span class='notice'>You remove the injectors protective cover.</span>")
	wrapped = 0

/obj/item/reagent_containers/pill/stalker/injector/canconsume(mob/eater, mob/user)
	if(wrapped == 1)
		to_chat(user, "<span class='warning'>The injector is closed! You should probably open it.</span>")
		return 0
	return 1 // Masks were stopping people from "eating" patches. Thanks, inheritance.

// Pill-Bottle | Made for Fast-Use with Helmets | Simplifies use

/obj/item/reagent_containers/pill/stalker/pillbottle
	name = "Pill container"
	icon_state = "alcopill"
	desc = "If you're seeing this something has gone TERRIBLY fucking wrong"
	item_state = "brute"
	var/wrapped = 1
	list_reagents = list("water" = 15)
	var/icon_state_opened = "sj1_open"
	var/desc_opened = "Opened bottle."

/obj/item/reagent_containers/pill/stalker/pillbottle/attack_self(mob/user)
	if(wrapped)
		Unwrap(user)
	else
		..()

/obj/item/reagent_containers/pill/stalker/pillbottle/proc/Unwrap(mob/user)
	icon_state = icon_state_opened
	desc = desc_opened
	to_chat(user, "<span class='notice'>You cracked the protective seal on the pills!</span>")
	wrapped = 0

/obj/item/reagent_containers/pill/stalker/pillbottle/canconsume(mob/eater, mob/user)
	if(wrapped == 1)
		to_chat(user, "<span class='warning'>The safety seal is still closed! You need to open it to use this.</span>")
		return 0
	return 1 // Masks were stopping people from "eating" patches. Thanks, inheritance.

/obj/item/reagent_containers/pill/stalker/injector/brute
	name = "brute trauma treatment injector"
	icon_state = "brute"
	desc = "Small yet effective bruise-healing stimulant. 25 units in one injector. Taking three of those in a quick succession isn't recommended."
	item_state = "brute"
	list_reagents = list("bicaridine" = 15)
	icon_state_opened = "brute_open"
	desc_opened = "Opened injector."

/obj/item/reagent_containers/pill/stalker/injector/burn
	name = "burn trauma treatment injector"
	icon_state = "burn"
	desc = "Small yet effective burn-treating solution. 15 units in one injector. Taking three of those in a quick succession isn't recommended."
	item_state = "burn"
	list_reagents = list("kelotane" = 15)
	icon_state_opened = "burn_open"
	desc_opened = "Opened injector."

/obj/item/reagent_containers/pill/stalker/injector/toxin
	name = "antitoxin injector"
	icon_state = "toxin"
	desc = "Small yet effective antitoxin injector. 15 units in one injector."
	item_state = "toxin"
	list_reagents = list("charcoal" = 15)
	icon_state_opened = "toxin_open"
	desc_opened = "Opened injector."

/obj/item/reagent_containers/pill/stalker/injector/oxygen
	name = "blood oxygenation injector"
	icon_state = "oxygen"
	desc = "Small yet effective oxygenation injector. 15 units in one injector."
	list_reagents = list("salbutamol" = 15)
	icon_state_opened = "oxygen_open"
	desc_opened = "Opened injector."

/obj/item/reagent_containers/pill/stalker/injector/blood
	name = "blood-refilling coagulant injector"
	icon_state = "blood"
	desc = "Effective coagulant that also doubles as hematogen. 25 units in one injector."
	item_state = "blood"
	list_reagents = list("coagulant" = 25)
	icon_state_opened = "blood_open"
	desc_opened = "Opened injector."

/obj/item/reagent_containers/pill/stalker/injector/painkiller
	name = "combat stimulants injector"
	icon_state = "painkiller"
	desc = "Military-grade mix of combat stimulants and painkillers. 30 units in one injector. Taking more than one of those in a quick succession isn't recommended."
	item_state = "painkiller"
	list_reagents = list("mine_salve" = 30)
	icon_state_opened = "painkiller_open"
	desc_opened = "Opened injector."

/obj/item/reagent_containers/pill/stalker/injector/epinephrine
	name = "epinephrine injector"
	icon_state = "epipen"
	desc = "Generic epinephrine injector for the critically wounded. 15 units in one injector."
	item_state = "epipen"
	list_reagents = list("epinephrine" = 15)
	icon_state_opened = "epipen_open"
	desc_opened = "Opened injector."

/obj/item/reagent_containers/pill/stalker/injector/antirad
	name = "antirad injector"
	icon_state = "radanti"
	desc = "Antiradiation chemicals that treat radiation sickness and intoxication. 15 units in one injector. Might deal some mild bruisings."
	item_state = "radanti"
	list_reagents = list("pen_acid" = 15)
	icon_state_opened = "radanti_open"
	desc_opened = "Opened injector."

// MEDICAL REWORK

// AI-2 MEDICATIONS

/obj/item/reagent_containers/pill/stalker/injector/ai2
	name = "Promedol injector"
	icon_state = "burn"
	desc = "Contained within the AI-2 medical kit. Contains low-grade medications to promote healing."
	item_state = "epipen"
	list_reagents = list("promedolsolution" = 15)
	icon_state_opened = "burn_open"
	desc_opened = "Opened injector."

/obj/item/reagent_containers/pill/stalker/pillbottle/radprotectorai2
	name = "Raspberry bottle"
	icon_state = "promepill"
	desc = "A rasberry colored bottle containing radioprotectant medication. They expired decades ago.."
	item_state = "epipen"
	list_reagents = list("ai2rp" = 15)
	icon_state_opened = "promepill_open"
	desc_opened = "Pop 'em back and hail mary."

/obj/item/reagent_containers/pill/stalker/pillbottle/antiradai2
	name = "Strawberry bottle"
	icon_state = "strawpill"
	desc = "A strawberry colored bottle containing anti-radiation medications. They're rather weak and expired.."
	item_state = "epipen"
	list_reagents = list("ai2ar" = 15)
	icon_state_opened = "strawpill_open"
	desc_opened = "Pop 'em back and hail mary."

// ARMY MEDKIT MEDICATIONS

/obj/item/reagent_containers/pill/stalker/injector/armymedicalinjector
	name = "Army injector"
	icon_state = "brute"
	desc = "Contained within the ARMY medical kit. Used to deal with combat injuries."
	item_state = "epipen"
	list_reagents = list("armysolution" = 15)
	icon_state_opened = "brute_open"
	desc_opened = "Opened injector."

// SCIENCE MEDKIT MEDICATION

/obj/item/reagent_containers/pill/stalker/injector/scimedicalinjector
	name = "Scientific injector"
	icon_state = "sci"
	desc = "Contained within the SCIENTIFIC medical kit. Used to deal with effectively all wounds!"
	item_state = "epipen"
	list_reagents = list("scisolution" = 15)
	icon_state_opened = "sci_open"
	desc_opened = "Opened injector."

/obj/item/reagent_containers/pill/stalker/injector/sciradinjector
	name = "Scientific Antirad injector"
	icon_state = "radanti"
	desc = "Contained within the SCIENTIFIC medical kit. Used to effectively cure radiation!"
	item_state = "epipen"
	list_reagents = list("sciradsolution" = 15)
	icon_state_opened = "radanti_open"
	desc_opened = "Opened injector."

// Stimpacks

// Improvised Stimpack

/obj/item/reagent_containers/pill/stalker/injector/improvisedstim
	name = "Improvised Stimpack"
	icon_state = "stimimprov"
	desc = "An improvised stimpack reusing an old injector. It's safety is questionable."
	item_state = "epipen"
	list_reagents = list("impstim" = 5)
	icon_state_opened = "stimimprov_open"
	desc_opened = "The needle is extended."

// Army Stimpack
/obj/item/reagent_containers/pill/stalker/injector/armystim
	name = "Army Stimpack"
	icon_state = "stimarmy"
	desc = "A military produced combat stim for dealing with extreme bodily damage."
	item_state = "epipen"
	list_reagents = list("stimarmypack" = 5)
	icon_state_opened = "stimarmy_open"
	desc_opened = "The needle is extended."

// Scientific Stimpack

/obj/item/reagent_containers/pill/stalker/injector/scistim
	name = "Scientific Stimpack"
	icon_state = "stimsci"
	desc = "Produced outside of the Zone for military contracts. This extremely rare and powerful stim is capable of saving even the most wounded Stalker."
	item_state = "epipen"
	list_reagents = list("scistim" = 5)
	icon_state_opened = "stimsci_open"
	desc_opened = "The needle is extended."