/obj/machinery/vending/cigarette
	name = "\improper Cigarette Machine"
	desc = "If you want to get cancer, might as well do it in style."
	product_slogans = "Cigarettes taste good like a cigarette should.;I'd rather walk right into an anomaly than never toke again! ... Smoke!;Don't believe the reports - smoke today, and smoke regularly!"
	product_ads = "Tested and proven by time to help humans overcome anything; Cigarettes. Smoke today, and smoke regularly!!;The cigarette is a versatile tool, and it's good for you!;The latest survey suggests that 7/10 stalkers who smoke survive engagement with psychological threats within the Zone! More information will come as updates arise.;Smoke!;Get a slice of nicotine heaven, no matter where you are in the world!;Most will disappoint, our cigarettes always deliver. Ditch uncertainty, and smoke today!.;Award-winning cigs, for award-winning stalkers!"
	icon_state = "cigs"
	products = list(/obj/item/storage/fancy/cigarettes = 1,
					/obj/item/storage/fancy/cigarettes/cigpack_belomorkanal = 1,
					/obj/item/storage/fancy/cigarettes/cigpack_marlboro = 1,
					/obj/item/storage/fancy/cigarettes/cigpack_java = 1,
					/obj/item/storage/fancy/cigarettes/cigpack_midori = 1,
					/obj/item/storage/fancy/cigarettes/cigpack_laika = 1,
					/obj/item/storage/fancy/cigarettes/cigpack_marlborogold = 3,
					/obj/item/storage/box/matches = 2,
					/obj/item/lighter/greyscale = 2,
					/obj/item/storage/fancy/rollingpapers = 5)
	contraband = list(/obj/item/clothing/mask/vape = 5)
	premium = list(/obj/item/lighter = 3,
		           /obj/item/storage/fancy/cigarettes/cigars = 1,
		           /obj/item/storage/fancy/cigarettes/cigars/havana = 1,
		           /obj/item/storage/fancy/cigarettes/cigars/cohiba = 1)
	refill_canister = /obj/item/vending_refill/cigarette
	default_price = 10
	extra_price = 50
	payment_department = ACCOUNT_SRV

//obj/machinery/vending/cigarette/syndicate
//	products = list(/obj/item/storage/fancy/cigarettes/cigpack_syndicate = 7,
//					/obj/item/storage/fancy/cigarettes/cigpack_belomorkanal = 3,					/obj/item/storage/fancy/cigarettes/cigpack_marlboro = 2,
//					/obj/item/storage/fancy/cigarettes/cigpack_java = 3,
//					/obj/item/storage/fancy/cigarettes/cigpack_midori = 1,
//					/obj/item/storage/fancy/cigarettes/cigpack_laika = 3,
//					/obj/item/storage/box/matches = 10,
//					/obj/item/lighter/greyscale = 4,
//					/obj/item/storage/fancy/rollingpapers = 5)

/obj/machinery/vending/cigarette/beach //Used in the lavaland_biodome_beach.dmm ruin
	name = "\improper Vendor Cigarette Machine"
	desc = "Now with extra premium products!"
	product_ads = "Dope will get you through times of no money better than money will get you through times of no dope!"
	product_slogans = "Turn on, tune in, drop out!;Toke!;Don't forget to keep a smile on your lips and a song in your heart!"
	products = list(/obj/item/storage/fancy/cigarettes = 3,
					/obj/item/storage/fancy/cigarettes/cigpack_belomorkanal = 3,
					/obj/item/storage/fancy/cigarettes/cigpack_marlboro = 3,
					/obj/item/storage/fancy/cigarettes/cigpack_java = 3,
					/obj/item/storage/fancy/cigarettes/cigpack_midori = 1,
					/obj/item/storage/fancy/cigarettes/cigpack_laika = 2,
					/obj/item/storage/fancy/cigarettes/cigpack_cannabis = 1,
					/obj/item/storage/box/matches = 5,
					/obj/item/lighter/greyscale = 4,
					/obj/item/storage/fancy/rollingpapers = 25)
	premium = list(/obj/item/storage/fancy/cigarettes/cigpack_mindbreaker = 1,
					/obj/item/clothing/mask/vape = 5,
					/obj/item/lighter = 3)

/obj/item/vending_refill/cigarette
	machine_name = "ShadyCigs Deluxe"
	icon_state = "refill_smoke"

/obj/machinery/vending/cigarette/pre_throw(obj/item/I)
	if(istype(I, /obj/item/lighter))
		var/obj/item/lighter/L = I
		L.set_lit(TRUE)

/obj/machinery/vending/cigarette/vendor
	name = "\improper Vendor Cigarette Machine"
	desc = "If you want to get cancer, might as well do it in style. This one is made for behind the counter of a trader."
	product_slogans = "Cigarettes taste good like a cigarette should.;I'd rather walk right into an anomaly than never toke again! ... Smoke!;Don't believe the reports - smoke today, and smoke regularly!"
	product_ads = "Tested and proven by time to help humans overcome anything; Cigarettes. Smoke today, and smoke regularly!!;The cigarette is a versatile tool, and it's good for you!;The latest survey suggests that 7/10 stalkers who smoke survive engagement with psychological threats within the Zone! More information will come as updates arise.;Smoke!;Get a slice of nicotine heaven, no matter where you are in the world!;Most will disappoint, our cigarettes always deliver. Ditch uncertainty, and smoke today!.;Award-winning cigs, for award-winning stalkers!"
	icon_state = "cigs"
	products = list(/obj/item/storage/fancy/cigarettes = 3,
					/obj/item/storage/fancy/cigarettes/cigpack_belomorkanal = 3,
					/obj/item/storage/fancy/cigarettes/cigpack_marlboro = 4,
					/obj/item/storage/fancy/cigarettes/cigpack_java = 4,
					/obj/item/storage/fancy/cigarettes/cigpack_midori = 2,
					/obj/item/storage/fancy/cigarettes/cigpack_laika = 2,
					/obj/item/storage/fancy/cigarettes/cigpack_marlborogold = 3,
					/obj/item/storage/box/matches = 5,
					/obj/item/lighter/greyscale = 5,
					/obj/item/storage/fancy/rollingpapers = 25)
	contraband = list(/obj/item/clothing/mask/vape = 5)
	premium = list(/obj/item/lighter = 3,
		           /obj/item/storage/fancy/cigarettes/cigars = 1,
		           /obj/item/storage/fancy/cigarettes/cigars/havana = 1,
		           /obj/item/storage/fancy/cigarettes/cigars/cohiba = 1)
	refill_canister = /obj/item/vending_refill/cigarette
	default_price = 10
	extra_price = 50
	payment_department = ACCOUNT_SRV