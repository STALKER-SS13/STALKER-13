/obj/sidor
	name = "Sidor"
	icon = 'stalker/icons/sidorovich.dmi'
	icon_state = "sidor"

	var/successText = list("Not bad! Good product!",
					"Well done, I'm satisfied!")

	var/failText = list("You'd still have cans to collect.",
					"Are you drunk?"
					"You pull that shit?")

	var/buyText = list("buy", "buy", "take", "take away", "privolok", "dragged")

	var/badLanguage = list("hui", "hui", "suck", "huesos", "shovno", "shit", "pidoras", "faggot",, "gandon", "uyebok", "huilo")

	var/howMany = list("how's going", "how much", "how much")

	var/itemloc = null
	var/itemloc2 = null
	flags = HEAR

/obj/sidor/New()
	//var/list/init = list()
	itemloc = locate(x, y - 1, z)
	itemloc2 = locate(x - 1, y - 1, z)
	/*
	for(var/sidoritem/I in sidoritems)
		init.Add(new I)
	items = init*/

/obj/sidor/Hear(message, atom/movable/speaker, message_langs, raw_message, radio_freq, list/spans)
	if(speaker == src)
		return

	if(!radio_freq)
		RecognizeSpeach(raw_message)


/obj/sidor/proc/RecognizeSpeach(msg)
	var/message = msg
	if(!findtext(message, "Sidor"))
		return

	for(var/T in buyText)
		if(findtext(message, lowertext(T)))
			SellItems()
			return

	for(var/T in badLanguage)
		if(findtext(message, lowertext(T)))
			say("You're not confused, stalker? You 't]!")
			return

	var/list/weights = list()

	for(var/sidoritem/I in sidoritems)
		weights.Add(I)
		for(var/W in I.words)
			if(findtext(message, lowertext(W)))
				weights[I] = I.words[W]

	var/bestWeight = 0
	var/sidoritem/bestItem = null

	for(var/sidoritem/I in weights)
		if(weights[I] >= bestWeight)
			bestItem = I
			bestWeight = weights[I]

	if(bestWeight)
		for(var/T in howMany)
			if(findtext(message, lowertext(T)))
				say("[GetCost(bestItem.itemtype)] Rubles.")
				return
		BuyItem(bestItem)



/obj/sidor/proc/BuyItem(sidoritem/I)
	var/list/ontable = GetItemsOnTable()
	var/total_cost = GetOnTableCost()

	if(total_cost >= I.cost)
		new I.itemtype(itemloc)
		for(var/item_on_table in ontable)
			qdel(item_on_table)
		say(pick(successText))
		GiveMoney(total_cost - I.cost)
	else
		NotEnoghMoney(total_cost, I.cost)


/obj/sidor/proc/SellItems()
	var/list/ontable = GetItemsOnTable()
	var/total_cost = GetOnTableCost()
	for(var/I in ontable)
		qdel(I)
	GiveMoney(total_cost)
	if(total_cost > 100)
		say(pick(successText))
	else
		say(pick(failText))



/obj/sidor/proc/GetItemsOnTable()
	var/list/ontable = list()
	for(var/atom/movable/AM in itemloc)
		if(GetCost(AM.type) || istype(AM, /obj/item/stack/spacecash))
			ontable.Add(AM)
	for(var/atom/movable/AM in itemloc2)
		if(GetCost(AM.type) || istype(AM, /obj/item/stack/spacecash))
			ontable.Add(AM)
	return ontable


/obj/sidor/proc/GetOnTableCost()
	var/list/ontable = GetItemsOnTable()
	var/total_cost = 0

	for(var/atom/item_on_table in ontable)
		var/obj/item/stack/spacecash/C = item_on_table
		switch(item_on_table.type)
			if(/obj/item/stack/spacecash/c50)
				total_cost += 50 * C.amount
			if(/obj/item/stack/spacecash/c100)
				total_cost += 100 * C.amount
			if(/obj/item/stack/spacecash/c500)
				total_cost += 500 * C.amount
			if(/obj/item/stack/spacecash/c1000)
				total_cost += 1000 * C.amount
			if(/obj/item/stack/spacecash/c5000)
				total_cost += 5000 * C.amount
		var/cost = GetCost(item_on_table.type, 1)
		if(cost)
			total_cost += cost
		else
			ontable.Remove(item_on_table)
	return total_cost


/obj/sidor/proc/GiveMoney(amount)
	var/balance = amount
	var/oldbalance = 0
	while(balance >= 50)
		oldbalance = balance

		var/to_give = RemoveFloat(balance / 5000)
		GiveBills(to_give, 5000)
		var/count = to_give * 5000
		balance -= count

		to_give = RemoveFloat(balance / 1000)
		GiveBills(to_give, 1000)
		count = to_give * 1000
		balance -= count

		to_give = RemoveFloat(balance / 500)
		GiveBills(to_give, 500)
		count = to_give * 500
		balance -= count

		to_give = RemoveFloat(balance / 100)
		GiveBills(to_give, 100)
		count = to_give * 100
		balance -= count

		to_give = RemoveFloat(balance / 50)
		GiveBills(to_give, 50)
		count = to_give * 50
		balance -= count


		if(balance == oldbalance)
			break


/obj/sidor/proc/GiveBills(amount, billtype)
	if(!amount)
		return

	var/obj/item/stack/spacecash/bill = null
	if(billtype == 5000)
		bill =	new /obj/item/stack/spacecash/c5000(itemloc)
	if(billtype == 1000)
		bill =	new /obj/item/stack/spacecash/c1000(itemloc)
	if(billtype == 500)
		bill = new /obj/item/stack/spacecash/c500(itemloc)
	if(billtype == 100)
		bill = new /obj/item/stack/spacecash/c100(itemloc)
	if(billtype == 50)
		bill = new /obj/item/stack/spacecash/c50(itemloc)
	bill.amount = amount

/proc/RemoveFloat(number)
	var/result = round(number)
	if(result > number)
		result--
	return result



/obj/sidor/proc/NotEnoghMoney(have, need)
	say("[pick(failText)] Or give khabara more [need - have] rubles, or add money, or fail!")



/obj/sidor/proc/GetCost(itemtype, half = 0)
	for(var/sidoritem/I in sidoritems)
		if(I.itemtype == itemtype)
			if(half)
				return I.cost / 2
			return I.cost
	return 0

/*var/list/sidorRooms = list()
//var/obj/sidor_enter/sidorEnter = null

/obj/sidor_enter
	var/roomtype = "sidor"
	invisibility = INVISIBILITY_LIGHTING
	icon = 'stalker/icons/areas.dmi'
	icon_state = "transfer_zone"

/obj/sidor_enter/Crossed(atom/movable/A)
	if(istype(A, /mob/living/carbon/human))
		SendToEmptyRoom(A)
	A.previous_teleport_dest = src.loc

/obj/sidor_enter/proc/SendToEmptyRoom(atom/movable/A)
	var/obj/sidor_exit/Room = GetEmptyRoom(roomtype)
	if(Room)
		A.loc = Room.loc
		Room.occupant = A
		sleep(5)

/obj/sidor_enter/proc/GetEmptyRoom(roomtype)
	for(var/obj/sidor_exit/R in sidorRooms)
		if(R.roomtype != roomtype)
			continue
		if(!R.occupant || R.occupant.stat == DEAD)
			return R
	return null

/obj/sidor_exit
	var/roomtype = "sidor"
	var/mob/living/occupant = null
	invisibility = INVISIBILITY_LIGHTING
	icon = 'stalker/icons/areas.dmi'
	icon_state = "transfer_zone"

/obj/sidor_exit/New()
	sidorRooms.Add(src)

/obj/sidor_exit/Crossed(atom/movable/A)
	if(istype(A, /mob/living/carbon/human))
		A.loc = A.previous_teleport_dest
		occupant = null
*/
var/global/sidoritems = list(
		new /sidoritem/ak74,
        new /sidoritem/aksu74,
        new /sidoritem/mp5,
        new /sidoritem/groza,
        new /sidoritem/vintorez,
        new /sidoritem/val,
        new /sidoritem/bm16,
        new /sidoritem/toz34,
        new /sidoritem/chaser,
        new /sidoritem/pm,
        new /sidoritem/sip,
        new /sidoritem/cora,
        new /sidoritem/marta,
        new /sidoritem/fort12,
        new /sidoritem/pb1s,
        new /sidoritem/usp_match,
        new /sidoritem/gasmask,
        new /sidoritem/tacticalhelmet,
        new /sidoritem/spheram,
        new /sidoritem/kozhanka,
        new /sidoritem/kozhanka/white,
        new /sidoritem/kozhanka/banditka,
        new /sidoritem/banditcoat,
        new /sidoritem/kombez,
        new /sidoritem/ecolog,
        new /sidoritem/ecologm,
        new /sidoritem/seva,
        new /sidoritem/berill,
        //new /sidoritem/psz9d,
        new /sidoritem/mercenary,
        //new /sidoritem/strazh,
        new /sidoritem/exoskelet,
        new /sidoritem/psz9md,
        new /sidoritem/firstaid/stalker,
        new /sidoritem/firstaid/army,
        new /sidoritem/firstaid/science,
        new /sidoritem/bint,
        new /sidoritem/antirad,
        new /sidoritem/dogtail,
        new /sidoritem/flesheye,
        new /sidoritem/boarleg,
        new /sidoritem/konserva,
        new /sidoritem/konserva/shproti,
        new /sidoritem/konserva/soup,
        new /sidoritem/konserva/bobi,
        new /sidoritem/konserva/govyadina,
        new /sidoritem/kolbasa,
        new /sidoritem/hleb,
        new /sidoritem/vodka,
        new /sidoritem/energetic,
        new /sidoritem/knife,
        new /sidoritem/meduza,
        new /sidoritem/stoneflower,
        new /sidoritem/nighstar,
        new /sidoritem/maminibusi,
        new /sidoritem/flash,
        new /sidoritem/moonlight,
        new /sidoritem/pushtishka,
        new /sidoritem/battery,
        new /sidoritem/droplet,
        new /sidoritem/fireball,
        new /sidoritem/crystal,
        new /sidoritem/guitar,
        new /sidoritem/geiger,
        new /sidoritem/shovel,
        new /sidoritem/b545,
        new /sidoritem/b545ap,
        new /sidoritem/m545,
        new /sidoritem/b9x18,
        new /sidoritem/b9x18P,
        new /sidoritem/m9x18,
        new /sidoritem/f9x18,
        new /sidoritem/b12x70,
        new /sidoritem/b12x70P,
        new /sidoritem/b12x70D,
        new /sidoritem/b9x19,
        new /sidoritem/b9x19P,
        new /sidoritem/p9x19,
        new /sidoritem/m9x19g,
        new /sidoritem/sc45,
        new /sidoritem/sp9x39vint,
        new /sidoritem/sp9x39val,
        new /sidoritem/sp9x39groza,
        new /sidoritem/flashlight,
        new /sidoritem/artifactbelt,
        new /sidoritem/radio,
        new /sidoritem/mathes,
        new /sidoritem/cigars,
        new /sidoritem/cigarsup)
