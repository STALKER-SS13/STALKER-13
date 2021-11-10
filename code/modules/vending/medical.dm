/obj/machinery/vending/medical
	name = "\improper Medical Vendor"
	desc = "Medical drug dispenser."
	icon_state = "med"
	icon_deny = "med-deny"
	product_ads = "Go save some lives!;The best stuff for your infirmary.;Only the finest tools.;Natural chemicals!;This stuff saves lives.;Don't you want some?;Ping!"
//	req_access = list(ACCESS_MEDICAL)
	products = list(/obj/item/stack/medical/gauze = 8,
					/obj/item/reagent_containers/syringe = 12,
					/obj/item/reagent_containers/dropper = 3,
					/obj/item/storage/box/pillbottles = 2,
					/obj/item/reagent_containers/pill/patch/styptic = 2,
					/obj/item/reagent_containers/pill/patch/silver_sulf = 2,
					/obj/item/reagent_containers/pill/salbutamol = 2,
					/obj/item/reagent_containers/pill/insulin = 2,
					/obj/item/reagent_containers/glass/bottle/charcoal = 2,
					/obj/item/reagent_containers/glass/bottle/epinephrine = 2,
					/obj/item/reagent_containers/glass/bottle/morphine = 1,
					/obj/item/reagent_containers/glass/bottle/toxin = 1,
					/obj/item/reagent_containers/medspray/styptic = 1,
					/obj/item/reagent_containers/medspray/silver_sulf = 1,
					/obj/item/reagent_containers/medspray/sterilizine = 1,
					/obj/item/reagent_containers/pill/potassium_iodide = 2,
					/obj/item/reagent_containers/pill/radioprotectant = 2,
					/obj/item/reagent_containers/pill/vinca = 2,
					/obj/item/reagent_containers/pill/psyblock = 2,
					/obj/item/reagent_containers/pill/cocaine = 2,
					/obj/item/reagent_containers/pill/analgesic = 2,
					/obj/item/reagent_containers/pill/caffeine = 2,
					/obj/item/reagent_containers/hypospray/medipen/stalker/anabiotic = 2,
					/obj/item/reagent_containers/hypospray/medipen/stalker/hercules = 1,
					/obj/item/reagent_containers/hypospray/medipen/stalker/metamizole = 2,
					/obj/item/reagent_containers/hypospray/medipen/stalker/antirad = 2,
					/obj/item/reagent_containers/hypospray/medipen/stalker/axyltallisal = 1,
					)
	armor = list("melee" = 100, "bullet" = 100, "laser" = 100, "energy" = 100, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 50)
	resistance_flags = FIRE_PROOF
	refill_canister = /obj/item/vending_refill/medical
//	default_price = 0
//	extra_price = 0
	payment_department = ACCOUNT_MED
/obj/item/vending_refill/medical
	machine_name = "Med Vend"
	icon_state = "refill_medical"

/obj/machinery/vending/medical/syndicate_access
	name = "\improper SyndiMed Plus"
	req_access = list(ACCESS_SYNDICATE)

/obj/machinery/vending/medical/busted
	name = "\improper Busted Medical Vendor"
	desc = "Medical drug dispenser."
	icon_state = "med-broken"
	icon_deny = "med-deny"
//	product_ads = "Go save some lives!;The best stuff for your infirmary!.;Only the finest tools.;Natural chemicals!;This stuff saves lives.;Don't you want some?;Ping!"
//	req_access = list(ACCESS_MEDICAL)
	products = list(/obj/item/reagent_containers/pill/potassium_iodide = 1,
/obj/item/reagent_containers/pill/radioprotectant = 1,
/obj/item/reagent_containers/pill/vinca = 1,
/obj/item/reagent_containers/pill/psyblock = 0,
/obj/item/reagent_containers/pill/cocaine = 1,
/obj/item/reagent_containers/pill/analgesic = 0,
/obj/item/reagent_containers/pill/caffeine = 1,
/obj/item/reagent_containers/hypospray/medipen/stalker/anabiotic = 0,
/obj/item/reagent_containers/hypospray/medipen/stalker/hercules = 0,
/obj/item/reagent_containers/hypospray/medipen/stalker/metamizole = 0,
/obj/item/reagent_containers/hypospray/medipen/stalker/antirad = 2,
/obj/item/reagent_containers/hypospray/medipen/stalker/axyltallisal = 0,
)
	armor = list("melee" = 100, "bullet" = 100, "laser" = 100, "energy" = 100, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 50)
	resistance_flags = FIRE_PROOF
	refill_canister = /obj/item/vending_refill/medical
//	default_price = 25
//	extra_price = 100
//	payment_department = ACCOUNT_MED
/obj/item/vending_refill/medical
	machine_name = "Med Vend"
	icon_state = "refill_medical"

///obj/machinery/vending/medical/syndicate_access
//	name = "\improper SyndiMed Plus"
//	req_access = list(ACCESS_SYNDICATE)
