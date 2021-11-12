//// PILLS ////

/obj/item/reagent_containers/pill/potassium_iodide
	name = "potassium iodide pill"
	desc = "A common anti-radiation medication used by Stalkers after minor radiation exposure."
	icon_state = "pill11"
	list_reagents = list("potass_iodide" = 20)

/obj/item/reagent_containers/pill/radioprotectant
	name = "radioprotectant pill"
	desc = "A powerful radioprotectant that prevents the user from accumulating additional radiation during exposure."
	icon_state = "pill17"
	list_reagents = list("indraline" = 20)

/obj/item/reagent_containers/pill/vinca
	name = "vinca pill"
	desc = "An artificial equivalent of vitamin K that rapidly accelerates blood coagulation in the body."
	icon_state = "pill7"
	list_reagents = list("viksolum" = 20)

/obj/item/reagent_containers/pill/psyblock
	name = "psy-block pill"
	desc = "An experimental drug that protects against the strange psionic energies found in the Zone."
	icon_state = "pill12"
	list_reagents = list("psyblock" = 20)

/obj/item/reagent_containers/pill/cocaine
	name = "cocaine pill"
	desc = "Cocaine compressed into pill form for easier consumption. It provides alertness and reduces fatigue after ingestion."
	icon_state = "pill9"
	list_reagents = list("cocaine" = 10)

/obj/item/reagent_containers/pill/analgesic
	name = "diclofenac sodium pill"
	desc = "A popular painkiller in the Zone which allows Stalkers to withstand severe injuries, such as gunshot and shrapnel wounds. Users may experience extreme side effects."
	icon_state = "pill8"
	list_reagents = list("analgesic" = 10)

/obj/item/reagent_containers/pill/caffeine
	name = "caffeine pill"
	desc = "Caffeine and sodium benzoate which cause central nervous to work with highest effectiveness possible at a given time. Reduce sleepiness to a large degree."
	icon_state = "pill0"
	list_reagents = list("coffee" = 20)

//// AUTOINJECTORS ////

/obj/item/reagent_containers/hypospray/medipen/stalker
	name = "STALKER injector"
	desc = "If you see this, tell an admin."
	ignore_flags = 1 // This allows injecting through hardsuits.

/obj/item/reagent_containers/hypospray/medipen/stalker/anabiotic
	name = "anabiotic autoinjector"
	desc = "An autoinjector filled with anabiotics allowing the user to survive blowouts outside of shelter. For the duration of the effect \
			the user will be in a coma indistinguishable from death."
	icon_state = "stimpen"
	volume = 25
	amount_per_transfer_from_this = 25
	list_reagents = list("anabiotic" = 25)

/obj/item/reagent_containers/hypospray/medipen/stalker/hercules
	name = "hercules autoinjector"
	desc = "An autoinjector filled with hercules, an artifical steroid that reduces fatigue."
	icon_state = "stimpen"
	volume = 24
	amount_per_transfer_from_this = 24
	list_reagents = list("anabiotic" = 24)

/obj/item/reagent_containers/hypospray/medipen/stalker/metamizole
	name = "metamizole ampoule"
	desc = "An iron ampoule designed as field equipment for military field personnel for instant pain reduction. It contains a powerful dose of \
			metamizole mixed with an antihaemorrhagic drug. Its availability in the Zone is limited due to the difficulty of smuggling the \
			medicine across military cordons."
	icon_state = "stimpen"
	volume = 25
	amount_per_transfer_from_this = 25
	list_reagents = list("sal_acid" = 20, "iron" = 5)

/obj/item/reagent_containers/hypospray/medipen/stalker/antirad
	name = "anti-rad syrette"
	desc = "Mexaminum radiation protection drugs are common in the Zone. When used, this drug induces contraction of peripheral blood vessels and oxygen deprivation, which serves to treat and prevent radiation exposure. The drug does not have severe side effects, although isolated cases of mild nausea, dizziness, cramps and stomach pain have been reported. Can be used twice."
	icon = 'stalker/icons/items.dmi'
	icon_state = "antirad"
	item_state = "antirad"
	amount_per_transfer_from_this = 9
	volume = 18
	list_reagents = list("pen_acid" = 18)

/obj/item/reagent_containers/hypospray/medipen/stalker/axyltallisal
	name = "axyltallisal \"The Rebirth\""
	desc = "Warning! Do not use in combination with any other drug as this may prove lethal. This powerful mixture contained in a small syringe will make you lose consciousness. But when you wake up (if you wake up), you will feel reborn. Inject the syringe into your thigh when sitting down."
	icon_state = "stimpen"
	volume = 20
	amount_per_transfer_from_this = 20
	list_reagents = list("axyltallisal" = 20)