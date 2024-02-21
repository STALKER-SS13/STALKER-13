/obj/structure/closet/crate/stalker
	icon = 'stalker/icons/crates.dmi'
	anchored = 1

/obj/structure/closet/crate/stalker/blue
	name = "crate"
	desc = "An ordinary iron box."
	icon_state = "blue"

/obj/structure/closet/crate/stalker/blue/stash
	name = "stash"
	desc = "Stalkers commonly use these crates to hide their loot. The lock is rusted away."
	var/lootcount = 1		//how many items will be spawned
	var/lootdoubles = 1		//if the same item can be spawned twice
	var/list/loot = list()
	var/waspicked = 0
	var/rating_add

/obj/structure/closet/crate/stalker/blue/stash/low
	lootdoubles = 1
	lootcount = 1
	rating_add = 100

/obj/structure/closet/crate/stalker/blue/stash/medium
	lootdoubles = 1
	lootcount = 2
	rating_add = 250

/obj/structure/closet/crate/stalker/blue/stash/high
	lootdoubles = 0
	lootcount = 2
	rating_add = 500

/*
/obj/structure/closet/crate/stalker/blue/stash/New()
	..()
	if(prob(40))
		qdel(src)
		return
*/
/obj/structure/closet/crate/stalker/blue/stash/Initialize()
	..()
	switch(rating_add)
		if(0 to 200)
			loot = GLOB.low_tier_sidormatitems
		if(201 to 400)
			loot = GLOB.medium_tier_sidormatitems
		if(401 to INFINITY)
			loot = GLOB.high_tier_sidormatitems

	if(!loot || !loot.len)
		return

	for(var/i = lootcount, i > 0, i--)
		if(!loot.len)
			break

		var/datum/data/stalker_equipment/lootspawn = pick(loot)

		if(!lootdoubles)
			loot.Remove(lootspawn)

		if(lootspawn)
			new lootspawn.equipment_path(src)

/obj/structure/closet/crate/stalker/blue/stash/open()
	..()
	if(!waspicked && istype(usr, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = usr
		waspicked = 1
		if(istype(H.wear_id, /obj/item/stalker_pda))
			var/obj/item/stalker_pda/KPK = H.wear_id
			if(KPK.owner)
				show_lenta_message(null, KPK, null, "PDA", "System", "You discovered a cache!", selfsound = 1)


		var/datum/data/record/sk = find_record("sid", H.sid, GLOB.data_core.stalkers)
		if(sk)
			sk.fields["rating"] += rating_add

	return 1

/obj/structure/closet/stalker
	icon = 'stalker/icons/crates.dmi'
	anchored = 1

/obj/structure/closet/stalker/shkaf
	name = "closet"
	desc = "A regular iron locker."
	icon_state = "shkaf"
