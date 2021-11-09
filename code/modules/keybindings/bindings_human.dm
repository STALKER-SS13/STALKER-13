/mob/living/carbon/human/key_down(_key, client/user)
	if(client.keys_held["Shift"])
		switch(_key)

			if("V")
				if(get_active_held_item() != null)
					get_active_held_item().shiftv(src)

			if("E") // Put held thing in belt or take out most recent thing from belt
				var/obj/item/thing = get_active_held_item()
				var/obj/item/equipped_belt = get_item_by_slot(SLOT_BELT)
				if(!equipped_belt) // We also let you equip a belt like this
					if(!thing)
						to_chat(user, "<span class='notice'>У вас нет пояса.</span>")
						return
					if(equip_to_slot_if_possible(thing, SLOT_BELT))
						update_inv_hands()
					return
				if(!SEND_SIGNAL(equipped_belt, COMSIG_CONTAINS_STORAGE)) // not a storage item
					if(!thing)
						equipped_belt.attack_hand(src)
					else
						to_chat(user, "<span class='notice'>You find nothing inside.</span>")
					return
				if(thing) // put thing in belt
					if(!SEND_SIGNAL(equipped_belt, COMSIG_TRY_STORAGE_INSERT, thing, user.mob))
						to_chat(user, "<span class='notice'>There is no room left inside.</span>")
					return
				if(!equipped_belt.contents.len) // nothing to take out
					to_chat(user, "<span class='notice'>Your belt is empty.</span>")
					return
				var/obj/item/stored = equipped_belt.contents[equipped_belt.contents.len]
				if(!stored || stored.on_found(src))
					return
				stored.attack_hand(src) // take out thing from belt
				return

			if("B") // Put held thing in backpack or take out most recent thing from backpack
				var/obj/item/thing = get_active_held_item()
				var/obj/item/equipped_back = get_item_by_slot(SLOT_BACK)
				if(!equipped_back) // We also let you equip a backpack like this
					if(!thing)
						to_chat(user, "<span class='notice'>You don't have a backpack.</span>")
						return
					if(equip_to_slot_if_possible(thing, SLOT_BACK))
						update_inv_hands()
					return
				if(!SEND_SIGNAL(equipped_back, COMSIG_CONTAINS_STORAGE)) // not a storage item
					if(!thing)
						equipped_back.attack_hand(src)
					else
						to_chat(user, "<span class='notice'>There is no room left inside.</span>")
					return
				if(thing) // put thing in backpack
					if(!SEND_SIGNAL(equipped_back, COMSIG_TRY_STORAGE_INSERT, thing, user.mob))
						to_chat(user, "<span class='notice'>There is no room left inside.</span>")
					return
				if(!equipped_back.contents.len) // nothing to take out
					to_chat(user, "<span class='notice'>Your backpack is empty.</span>")
					return
				var/obj/item/stored = equipped_back.contents[equipped_back.contents.len]
				if(!stored || stored.on_found(src))
					return
				stored.attack_hand(src) // take out thing from backpack
				return
	return ..()
