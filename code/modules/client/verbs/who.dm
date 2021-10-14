/client/verb/who()
	set name = "Who"
	set category = "OOC"

	var/msg = "<table border='0' width='380'>"

	msg += "<tr><td>CKEY</td><td>Registration Date </td><td>Delay</td></tr>"

	var/list/Lines = list()

	if(holder)
		if (check_rights(R_ADMIN,0) && isobserver(src.mob))//If they have +ADMIN and are a ghost they can see players IC names and statuses.
			var/mob/dead/observer/G = src.mob
			if(!G.started_as_observer)//If you aghost to do this, KorPhaeron will deadmin you in your sleep.
				log_admin("[key_name(usr)] checked advanced who in-round")
			for(var/client/C in GLOB.clients)
				var/entry = "<tr><td>[C.key]"
				if(C.holder && C.holder.fakekey)
					entry += " <i>(how [C.holder.fakekey])</i>"
				if (isnewplayer(C.mob))
					entry += " - <font color='darkgray'><b>Lobby/b></font>"
				else
					entry += " - Plays for [C.mob.real_name]"
					entry += "[ADMIN_QUE(C.mob)]"
					switch(C.mob.stat)
						if(UNCONSCIOUS)
							entry += " - <font color='darkgray'><b>Unconscious</b></font>"
						if(DEAD)
							if(isobserver(C.mob))
								var/mob/dead/observer/O = C.mob
								if(O.started_as_observer)
									entry += " - <font color='gray'>Observer</font>"
								else
									entry += " - <font color='black'><b>Dead</b></font>"
							else
								entry += " - <font color='black'><b>Dead</b></font>"
					if(is_special_character(C.mob))
						entry += " - <b><font color='red'>!ANTAGONIST!</font></b>"
				entry += "</td><td>[C.account_join_date]</td>"
				entry += "<td>[round(C.avgping, 1)]</td></tr>"
				Lines += entry
		else//If they don't have +ADMIN, only show hidden admins
			for(var/client/C in GLOB.clients)
				var/entry = "<tr><td>[C.key]</td>"
				if(C.holder && C.holder.fakekey)
					entry += " <i>(how [C.holder.fakekey])</i>"
				entry += "<td>[C.account_join_date]</td>"
				entry += "<td>[round(C.avgping, 1)]</td></tr>"
				Lines += entry
	else
		for(var/client/C in GLOB.clients)
			if(C.holder && C.holder.fakekey)
				Lines += "<tr><td>[C.holder.fakekey]</td><td>[C.account_join_date]</td><td>[round(C.avgping, 1)]</td></tr>"
			else
				Lines += "<tr><td>[C.key]</td><td>[C.account_join_date]</td><td>[round(C.avgping, 1)]</td></tr>"

	for(var/line in sortList(Lines))
		msg += "[line]"

	msg += "<tr><td>Total: [length(Lines)]</td></tr></table>"
	var/datum/browser/popup
	popup = new(src, "who", "WHO?", 400, 600)
	popup.set_content(msg)
	popup.open(FALSE)
	//to_chat(src, msg)

/client/verb/adminwho()
	set category = "Admin"
	set name = "Adminwho"
	set hidden = 1

	var/msg = "<b>Cancellations:</b>\n"
	if(holder)
		for(var/client/C in GLOB.admins)
			msg += "\t[C] is a [C.holder.rank]"

			if(C.holder.fakekey)
				msg += " <i>(as [C.holder.fakekey])</i>"

			if(isobserver(C.mob))
				msg += " - Observing"
			else if(isnewplayer(C.mob))
				msg += " - Lobby"
			else
				msg += " - Playing"

			if(C.is_afk())
				msg += " (AFK)"
			msg += "\n"
	//else
	//	for(var/client/C in GLOB.admins)
	//		if(C.is_afk())
	//			continue //Don't show afk admins to adminwho
	//		if(!C.holder.fakekey)
	//			msg += "\t[C] is a [C.holder.rank]\n"
	//	msg += "<span class='info'>Adminhelps are also sent to IRC. If no admins are available in game adminhelp anyways and an admin on IRC will see it and respond.</span>"
	to_chat(src, msg)

