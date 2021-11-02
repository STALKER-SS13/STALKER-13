/obj/machinery/button/door/keypad
	name = "door keypad"
	desc = "A door remote control keypad."
	icon = 'stalker/icons/buttons.dmi'
	icon_state = "doorctrl"
	normaldoorcontrol = 0
	specialfunctions = OPEN // Bitflag, see assembly file
	var/keypadhtml = ""
	var/correctcode = "909"
	var/keycode = "908"
	layer = ABOVE_OBJ_LAYER

/obj/machinery/button/door/keypad/New(loc, ndir = 0, built = 0)
	correctcode = "[rand(11111,99999)]"
	all_faction_keypads += src
	..()

/obj/machinery/button/door/keypad/faction
	var/list/allowed_jobs = list()

/obj/machinery/button/door/keypad/proc/GetCode()
	return correctcode

/obj/machinery/button/door/keypad/proc/AddButtons()
	if(correctcode == keycode)
		keypadhtml += "<p><a href='byond://?src=\ref[src];choice=setup'>\[ Change \]</a>	\
		<a href='byond://?src=\ref[src];choice=pulse'>\[ Use \]</a></p>"
		playsound(loc, 'sound/machines/defib_success.ogg', 30, 1)

	playsound(loc, 'sound/items/megaphone.ogg', 30, 1)
	return

/obj/machinery/button/door/keypad/proc/ShowKeypad(var/mob/living/U)
	keypadhtml = "<html>\
	<body><br>"
	if(keycode == "")
		keypadhtml += "<div align=center><table border=0><tr><td>\[ <b>Enter your password</b> \]</td></tr></table><hr color=FF9900>"
	else
		keypadhtml += "<div align=center><table border=0><tr><td>[keycode]</td></tr></table><hr color=FF9900>\
	<form>"

	AddButtons()

	keypadhtml += "<p><a href='byond://?src=\ref[src];choice=1'>1</a>	\
	<a href='byond://?src=\ref[src];choice=2'>2</a>	\
	<a href='byond://?src=\ref[src];choice=3'>3</a></p>	\
	<p><a href='byond://?src=\ref[src];choice=4'>4</a>	\
	<a href='byond://?src=\ref[src];choice=5'>5</a>	\
	<a href='byond://?src=\ref[src];choice=6'>6</a></p>	\
	<p><a href='byond://?src=\ref[src];choice=7'>7</a>	\
	<a href='byond://?src=\ref[src];choice=8'>8</<a href>	\
	<a href='byond://?src=\ref[src];choice=9'>9</a></p>	\
	<p><a href='byond://?src=\ref[src];choice=C'>C</a>	\
	<a href='byond://?src=\ref[src];choice=0'>0</a>	\
	<a href='byond://?src=\ref[src];choice=R'>R</a></p>	\
	</form>\
	</div>\
	</body>\
	\
	</html>"

//	user << browse(keypadhtml, "window=keypadhtml;size=118x200;border=1;can_resize=1;can_close=1;can_minimize=1;titlebar=1")
	var/datum/browser/keypad = new(U, "keypadhtml", "Keypad v0.34", 180, 305)
	keypad.set_content(keypadhtml)
	keypad.set_title_image(U.browse_rsc_icon(src.icon, src.icon_state))
	keypad.open()
	return

/obj/machinery/button/door/keypad/attack_hand(mob/user)
	//if(!initialized)
	//	setup_device()
	src.add_fingerprint(user)

	if((stat & (NOPOWER|BROKEN)))
		return

	//if(device && device.cooldown)
	//	return

	if(!allowed(user))
		user << "<span class='danger'>Access Denied</span>"
		flick("[skin]-denied", src)
		return

	icon_state = "[skin]1"

	ShowKeypad(user)
	return

/obj/machinery/button/door/keypad/proc/UpdateKeypad(var/mob/living/U)
//	U << browse(null, "window=keypadhtml")
	ShowKeypad(U)
	return


/obj/machinery/button/door/keypad/proc/ChangeCode(var/tempCode as num)
	do
		tempCode = text2num(input("Choose a new code-number for keypad.", "New Keypad Code", tempCode))
	while(!isnum(tempCode))

	if(isnum(tempCode) && tempCode != null)
		correctcode = num2text(tempCode)
	return

/obj/machinery/button/door/keypad/Topic(href, href_list)
	var/mob/living/U = usr

	switch(href_list["choice"])
		if("1")
			keycode = "[keycode]" + "1"

		if("2")
			keycode = "[keycode]" + "2"

		if("3")
			keycode = "[keycode]" + "3"

		if("4")
			keycode = "[keycode]" + "4"

		if("5")
			keycode = "[keycode]" + "5"

		if("6")
			keycode = "[keycode]" + "6"

		if("7")
			keycode = "[keycode]" + "7"

		if("8")
			keycode = "[keycode]" + "8"

		if("9")
			keycode = "[keycode]" + "9"

		if("C")
			U << "<b>	Nothing happens.</b>"

		if("0")
			keycode = "[keycode]" + "0"

		if("R")
			keycode = ""

		if("setup")
			if(keycode == correctcode)
				if(device)
					ChangeCode()

		if("pulse")
			if(keycode == correctcode)
				if(device)
					device.pulsed()

	UpdateKeypad(usr)

	return