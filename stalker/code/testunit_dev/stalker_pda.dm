GLOBAL_LIST_EMPTY(KPKs)
GLOBAL_VAR_INIT(global_lentahtml, "")

/obj/item/stalker_pda
	name = "PDA"
	desc = "A portable device, used to communicate with other stalkers."
	icon = 'stalker/icons/device_new.dmi'
	icon_state = "kpk_off"
	item_state = "kpk"
	w_class = 1

	var/mode = 1
	var/show_title = 0
	var/switches = FEED_SOUND | FEED_IMAGES | RATING_IMAGES
	var/mainhtml = ""
	var/navbarhtml = ""
	var/ratinghtml =""
	var/list/access = list()

	//ПРОФИЛЬ
	var/mob/living/carbon/human/owner = null
	var/datum/data/record/profile = null
	var/registered_name = null
	var/sid = null
	var/rotation = "front"
	var/rus_faction_s = "Loners"
	var/rating = 0
	var/reputation = 0
	var/money = 0
	var/obj/item/photo/photo_owner_front = new()
	var/obj/item/photo/photo_owner_west = new()
	var/obj/item/photo/photo_owner_back = new()
	var/obj/item/photo/photo_owner_east = new()
	var/password = null
	var/hacked = 0
	var/rep_color_s = "#ffe100"
	var/rep_name_s = "Neutral"
	var/eng_rep_name_s = "Neutral"
	var/rus_rank_name_s = "Rookie"
	var/eng_rank_name_s = "Rookie"
	var/eng_faction_s = "Loners"
	var/degree = 0

	//ЛЕНТА
	var/lentahtml = ""
	var/last_lenta = 0
	var/lenta_id = 0

	var/last_faction_lenta = 0
	var/lenta_faction_id = 0

	var/msg_name = "message"
	var/max_length = 10
	slot_flags = ITEM_SLOT_ID

	//ФРАКЦИЯ
	var/last_invite = 0

	//РЕЙТИНГ
	var/sortBy = "rating"
	var/order = 1
	var/lastlogin = 0

	//ЭНЦИКЛОПЕДИЯ
	var/article_title = "Zone"
	var/article_text = "The Zone of Alienation is the 60 km wide area of exclusion that was set up around the Chernobyl NPP following the 1986 disaster and extended by the second Chernobyl disaster in 2006."
	var/article_img = "nodata.gif"
	var/article_img_width = 179
	var/article_img_height = 128

/datum/asset/simple/encyclopedia
	assets = list(
		//Фото для энциклопедии
		"zone"					= 'stalker/icons/images/zone.png',
		"backwater"				= 'stalker/icons/images/backwater.jpg',
		"nodata.gif"			= 'stalker/icons/images/nodata.gif'
	)

/datum/asset/simple/basics
	assets = list(
		"kpk_background.png"	= 'stalker/icons/images/kpk.png',
		"nodata.png"			= 'stalker/icons/images/nodata.png',
		"photo_0"				= 'stalker/icons/images/sidor.png'
		//Курсоры
	)

/datum/asset/simple/cursors
	assets = list(
		"cursor_normal.ani"		= 'stalker/html/cursors/arrow.ani',
		"cursor_red.ani"		= 'stalker/html/cursors/wait.ani',
		"cursor_green.ani"		= 'stalker/html/cursors/appstarting.ani',
		"cursor_busy.ani"		= 'stalker/html/cursors/busy.ani'
	)

/obj/item/stalker_pda/Initialize()
	. = ..()
	GLOB.KPKs += src

/obj/item/stalker_pda/Destroy()
	. = ..()
	if(src in GLOB.KPKs)
		GLOB.KPKs -= src
	return

/obj/item/stalker_pda/MouseDrop(atom/over_object)
	. = ..()
	var/mob/living/M = usr
	if(!istype(M) || M.incapacitated() || !Adjacent(M))
		return

	if(over_object == M)
		M.put_in_hands(src)

	else if(istype(over_object, /obj/screen/inventory/hand))
		var/obj/screen/inventory/hand/H = over_object
		M.putItemFromInventoryInHandIfPossible(src, H.held_index)

	add_fingerprint(M)

/obj/item/stalker_pda/attack_hand(mob/living/user)
	if(src.loc == user)
		attack_self(user)
	else
		..()

/obj/item/stalker_pda/attack_self(mob/user)
	if(!istype(user, /mob/living/carbon/human))
		return

	var/mob/living/carbon/human/H = user

	if(owner == H)
		if(!profile)
			owner = null
		else
			set_owner_info(profile)
			profile.fields["lastlogin"] = world.time

	icon_state = "kpk_on"
	H.set_machine(src)

	//user.set_machine(src)
	mainhtml ="<html> \
	\
	<style>\
	a:link {color: #607D8B;}\
	a:visited {color: #607D8B;}\
	a:active {color: #607D8B;}\
	a:hover {\
	background-color: #9E9E9E;\
	cursor: url('cursor_green.ani');\
	}\
	a {text-decoration: none;}\
	html {cursor: url('cursor_normal.ani');}\
	body {\
		background-image: url('kpk_background.png');\
		padding-top: 18px;\
		padding-left: 35px;\
	}\
	table {\
		background: #131416;\
		padding: 15px;\
		margin-bottom: 10px;\
		color: #afb2a1;\
	}\
	\
	#table-bottom1 {\
		background: #2e2e38;\
		padding-top: 5px;\
		padding-bottom: 5px;\
	}\
	#table-center1 {\
		position: relative;\
		background: #2e2e38;\
		padding-top: 5px;\
		padding-bottom: 5px;\
		bottom: 100px;\
	}\
	#table-center2 {\
		position: relative;\
		background: #2e2e38;\
		bottom: 0px;\
	}\
	#table-lenta {\
		background: #9E9E9E;\
	}\
	div.relative {\
		position: relative;\
		width: 250px;\
		height: 200px;\
		top: 70px;\
	}\
	\
	#lenta {\
		background: #2e2e38;\
		color: white;\
		padding: 5px;\
		width: 449px;\
		height: 228px;\
		overflow: auto;\
		border: 1px solid #ccc;\
		word-wrap: break-word;\
	}\
	p.lentamsg {\
		margin: 0px;\
		word-wrap: break-word;\
	}\
	#navbar {\
		overflow: hidden;\
		background-color: #099;\
		position: fixed;\
		top: 0;\
		width: 100%;\
		padding-top: 3px;\
		padding-bottom: 3px;\
		padding-left: 20px;\
	}\
	#navbar a {\
		float: left;\
		display: block;\
		color: #666;\
		text-align: center;\
		padding-right: 20px;\
		text-decoration: none;\
		font-size: 17px;\
	}\
	#navbar a:hover {\
		background-color: #ddd;\
		color: black;\
	}\
	#navbar a.active {\
		background-color: #4CAF50;\
		color: white;\
	}\
	#ratingimg {\
		vertical-align:middle;\
	}\
	.main {\
	}\
	.main img {\
		height: auto;\
	}\
	.button {\
		width: 300px;\
		height: 60px;\
	}\
	#encyclopedia_table {\
		background: #131416;\
		padding: 0px;\
		margin-bottom: 0px;\
		color: #afb2a1;\
		margin-left: 0px;\
	}\
	#encyclopedia_list {\
		background: #2e2e38;\
		color: #afb2a1;\
		padding: 5px;\
		width: 160px;\
		height: 228px;\
		overflow: auto;\
		border: 1px solid #ccc;\
		word-wrap: break-word;\
		margin-left: 3px;\
	}\
	#encyclopedia_list li{\
		list-style-type: none;\
		height: 0em;\
		margin-left : 0px;\
	}\
	#encyclopedia_list li ul{\
		visibility: hidden;\
		height: 0em;\
		margin-left : 0px;\
	}\
	#encyclopedia_list li ul li{\
		height: 0em;\
		margin-left : 0px;\
	}\
	#encyclopedia_info {\
		background: #2e2e38;\
		color: #afb2a1;\
		padding: 0px;\
		padding-left: 5px;\
		width: 273px;\
		height: 228px;\
		overflow: auto;\
		border: 1px solid #ccc;\
		word-wrap: break-word;\
		margin-right : 0px;\
	}\
	</style>"
	if (!owner || !password)
		mainhtml +="<body>\
		<table border=0 height=\"314\" width=\"455\">\
		<tr>\
		<td valign=\"top\" align=\"center\">\
		<div align=\"right\"><a href='byond://?src=\ref[src];choice=title'>\[-\]</a> <a href='byond://?src=\ref[src];choice=close'>\[X\]</a></div><br>\
		<div class=\"relative\" align=\"center\">"


		mainhtml += "ENTER THE PASSWORD"

		mainhtml +="\
		</div>\
		</td>\
		</tr>\
		<tr>\
		<td colspan=\"2\" align=\"center\" id=\"table-center1\" height=60>\
				| <a style=\"color:#c10000;\" href='byond://?src=\ref[src];choice=password_input'>_______________</a> |<br>\
		<div align=\"center\"></div>\
		</td>\
		</tr>"
	else

		if (user != owner && hacked == 0)
			mainhtml +="<body>\
			\
			<table border=0 height=\"314\" width=\"455\">\
			<tr>\
			<td align=\"left\" width=200>\
			<div style=\"overflow: hidden; height: 200px; width: 180px;\" ><img height=80 width=80 border=4 src=photo_front><img height=80 width=80 border=4 background src=photo_side></div>\
			</td>\
			<td valign=\"top\" align=\"left\">\
			 <div align=\"right\"><a href='byond://?src=\ref[src];choice=title'>\[-\]</a> <a href='byond://?src=\ref[src];choice=close'>\[X\]</a></div><br>"

			mainhtml +="\
			 <b>Name:</b> [owner.real_name]<br><br>\
			 <b>Faction:</b> [eng_faction_s]<br><br>\
			 <b>Rank:</b> [rating]<br><br>\
			 <b>Reputation:</b> <font color=\"[rep_color_s]\">[eng_rep_name_s]</font>"


			 mainhtml +="\
			 \
			</td>\
			</tr>\
			\
			<tr>\
			<td colspan=\"2\" align=\"center\" id=\"table-bottom1\" height=60>\
				| <a style=\"color:#c10000;\" href='byond://?src=\ref[src];choice=password_check'>WRONG PASSWORD!</a> |<br>\
			<div align=\"center\"></div>\
			</td>\
			</tr>"
		else
			switch(mode)

		//ПРОФИЛЬ

				if(1)
					navbarhtml ="| <a>Profile</a> | <a href='byond://?src=\ref[src];choice=3'>Rating</a> | <a href='byond://?src=\ref[src];choice=4'>Feed</a> |<br>"

					mainhtml +="\
					<body>\
					\
					<table border=0 height=\"314\" width=\"455\">\
						<tr>\
							<td valign=\"top\" align=\"left\">"
					mainhtml +="\
					<div align=\"right\"><a style=\"color:#c10000;\" align=\"center\" href='byond://?src=\ref[src];choice=load_cache'>\[LOAD CACHE\]</a><a style=\"color:#c10000;\" align=\"center\" href='byond://?src=\ref[src];choice=exit'>\[EXIT\]</a><a href='byond://?src=\ref[src];choice=title'>\[-\]</a> <a href='byond://?src=\ref[src];choice=close'>\[X\]</a></div>"

					mainhtml +="\
							</td>\
							</tr>\
							<tr valign=\"top\">\
							<td>\
								<table>\
									<tr>\
					<td style=\"text-align: center;\" valign=\"top\" align=\"left\" width=90 height=90>\
					<img style=\"margin-left: auto; margin-right: auto;\" height=80 width=80 border=4 src=photo_[rotation]>\
					<br>\
					</td>\
					<td>"
					mainhtml+="\
				<b>Name:</b> [owner.real_name]<br>\
				<b>Faction:</b> [eng_faction_s]<br>\
				<b>Rank:</b> [eng_rank_name_s] ([rating])<br>\
				<b>Reputation:</b> <font color=\"[rep_color_s]\">[eng_rep_name_s] ([reputation])</font><br>\
				<b>Balance:</b> [num2text(money, 8)] RU<br>"

					mainhtml +="\
					</td>\
					</tr>\
				</table>\
			</td>\
		</tr>"

		//ЭНЦИКЛОПЕДИЯ

				if(2)
					navbarhtml ="| <a href='byond://?src=\ref[src];choice=1'>Profile</a> | <a href='byond://?src=\ref[src];choice=3'>Rating</a> | <a href='byond://?src=\ref[src];choice=4'>Feed</a> |<br>"
					mainhtml +="\
					<body>\
						<table border=0 height=\"314\" width=\"455\">\
							<tr>\
								<td valign=\"top\" align=\"left\">\
									<div align=\"right\"><a href='byond://?src=\ref[src];choice=title'>\[-\]</a> <a href='byond://?src=\ref[src];choice=close'>\[X\]</a></div>\
								</td>\
							</tr>\
							<tr style=\"border: 0px;\" valign=\"top\" align=\"left\">\
								<td valign=\"top\" align=\"left\">\
									<table id=\"encyclopedia_table\" align=\"left\">\
										<tr align=\"left\">\
											<td align=\"left\">\
												<div id=\"encyclopedia_list\">\
													<h3 style=\"margin-top:0px;margin-bottom:0px\"><a href='byond://?src=\ref[src];choice=2;page=Zone'>Zone</a></h4>\
													<a style=\"margin-left:10px\" href='byond://?src=\ref[src];choice=2;page=Backwater'>Backwater</a><br>\
													<h3 style=\"margin-top:0px;margin-bottom:0px\"><a href='byond://?src=\ref[src];choice=2;page=Anomalies'>Anomalies</a></h4>\
													<a style=\"margin-left:10px\" href='byond://?src=\ref[src];choice=2;page=Electro'>Electro</a><br>\
													<a style=\"margin-left:10px\" href='byond://?src=\ref[src];choice=2;page=Vortex'>Vortex</a><br>\
													<a style=\"margin-left:10px\" href='byond://?src=\ref[src];choice=2;page=Whirligig'>Whirligig</a><br>\
													<a style=\"margin-left:10px\" href='byond://?src=\ref[src];choice=2;page=Burner'>Burner</a><br>\
													<a style=\"margin-left:10px\" href='byond://?src=\ref[src];choice=2;page=Fruit Punch'>Fruit Punch</a><br>\
													<a style=\"margin-left:10px\" href='byond://?src=\ref[src];choice=2;page=Burnt Fuzz'>Burnt Fuzz</a><br>\
													<a style=\"margin-left:10px\" href='byond://?src=\ref[src];choice=2;page=Radiation'>Radiation</a><br>\
													<h3 style=\"margin-top:0px;margin-bottom:0px\"><a href='byond://?src=\ref[src];choice=2;page=Mutants'>Mutants</a></h4>\
													<a style=\"margin-left:10px\" href='byond://?src=\ref[src];choice=2;page=Blind Dog'>Blind Dog</a><br>\
													<a style=\"margin-left:10px\" href='byond://?src=\ref[src];choice=2;page=Flesh'>Flesh</a><br>\
													<a style=\"margin-left:10px\" href='byond://?src=\ref[src];choice=2;page=Snork'>Snork</a><br>\
													<a style=\"margin-left:10px\" href='byond://?src=\ref[src];choice=2;page=Boar'>Boar</a><br>\
													<h3 style=\"margin-top:0px;margin-bottom:0px\"><a href='byond://?src=\ref[src];choice=2;page=Artifacts'>Artifacts</a></h4>\
												</div>\
											</td>\
											<td valign=\"top\">\
												<div id=\"encyclopedia_info\">\
													<h4 style=\"margin:0px\">[article_title]</h4><br>\
													<img style=\"width:[article_img_width];height:[article_img_height];margin-bottom:0px;margin-top:0px;margin-left:10px\" src=[article_img]><br>\
													<p style=\"margin-left:10px\">[article_text]</p>\
												</div>\
											</td>\
										</tr>\
									</table>\
								</td>\
							</tr>"

		//РЕЙТИНГ

				if(3)
					navbarhtml ="| <a href='byond://?src=\ref[src];choice=1'>Profile</a> | <a>Rating</a> | <a href='byond://?src=\ref[src];choice=4'>Feed</a> |<br>"

					mainhtml +="\
					<body>\
					\
					<table border=0 height=\"314\" width=\"455\">\
						<tr>\
							<td valign=\"top\" align=\"left\">\
								<div align=\"right\"><a style=\"color:#c10000;\" align=\"center\" href='byond://?src=\ref[src];choice=rating_images'>\[IMAGES\]</a><a href='byond://?src=\ref[src];choice=title'>\[-\]</a> <a href='byond://?src=\ref[src];choice=close'>\[X\]</a></div>"
					mainhtml +="\
					<div align = \"center\" > | <a href='byond://?src=\ref[src];choice=refresh_rating'>Refresh stalker list</a> | </div>"
					mainhtml +="\
							</td>\
						</tr>\
						<tr valign=\"top\">\
							<td>\
								<div id= \"lenta\">\
								[ratinghtml]\
								</div>\
							</td>\
						</tr>"

		//ЛЕНТА

				if(4)
					navbarhtml ="| <a href='byond://?src=\ref[src];choice=1'>Profile</a> | <a href='byond://?src=\ref[src];choice=3'>Rating</a> | <a>Feed</a> |<br>"

					mainhtml +="\
					<body>\
					\
					<table border=0 height=\"314\" width=\"455\">\
					<tr>\
					<td valign=\"top\" align=\"left\">\
					<div align=\"right\"><a style=\"color:#c10000;\" align=\"center\" href='byond://?src=\ref[src];choice=lenta_images'>\[IMAGES\]</a><a href='byond://?src=\ref[src];choice=title'>\[-\]</a> <a href='byond://?src=\ref[src];choice=close'>\[X\]</a></div>"
						mainhtml +="\
						<div align = \"center\" > | <a href='byond://?src=\ref[src];choice=lenta_add'>Send feed message</a> | <a href='byond://?src=\ref[src];choice=lenta_faction_add'>Send faction message</a> | <a href='byond://?src=\ref[src];choice=lenta_sound'>Turn on/off sound</a> |</div>"
					mainhtml +="\
					</td>\
					</tr>\
					<tr style=\"border: 0px;\" valign=\"top\">\
					<td style=\"border: 0px;\">\
					<div id=\"lenta\">"
					mainhtml +="[lentahtml]\
					</div>\
					</td>\
					</tr>"

		//КАРТА

				if(5)
					navbarhtml ="| <a href='byond://?src=\ref[src];choice=1'>Profile</a> | <a href='byond://?src=\ref[src];choice=3'>Rating</a> | <a href='byond://?src=\ref[src];choice=4'>Feed</a> |<br>"

					mainhtml +="\
					<body>\
					\
					<table border=0 height=\"314\" width=\"455\">\
					<tr>\
					<td valign=\"top\" align=\"left\">\
					<div align=\"right\">\
					<a href='byond://?src=\ref[src];choice=title'>\[-\]</a> <a href='byond://?src=\ref[src];choice=close'>\[X\]</a></div>\
					<div align = \"center\">\
					| <a href='byond://?src=\ref[src];choice=zoom' onclick=\"zoomin()\"> Zoom In</a> | \
					<a href='byond://?src=\ref[src];choice=zoom' onclick=\"zoomout()\"> Zoom Out</a> | \
					</div>\
					</td>\
					</tr>\
					<tr valign=\"top\">\
					<td>\
					<div id=\"lenta\">\
					<div class=\"main\">"
					if(user.z != 1)
						mainhtml += "<img id=\"map\" height=415 width=415 src=minimap_[user.z].png>"
					else
						mainhtml += "<img id=\"map\" height=415 width=415 src=nodata.png>"
					mainhtml +="\
					</div>\
					</div>\
					</td>\
					</tr>"

			mainhtml +="\
			<tr>\
				<td colspan=\"1\" align=\"center\" id=\"table-bottom1\" height=30>\
					[navbarhtml]\
					<div align=\"center\"></div>\
				</td>\
			</tr>"
	mainhtml +="\
	<table>\
	<script>\
	function toggleShowHide(id){\
		var d = document.getElementById(id);\
		d.style.visibility = (d.style.visibility == \"visible\") ? \"hidden\" : \"visible\";\
		d.style.height = (d.style.height == \"auto\") ? \"0em\" : \"auto\";\
	}\
	function zoomin(){\
		var myImg = document.getElementById(\"map\");\
		var currWidth = myImg.clientWidth;\
		if(currWidth >= 1015) return false;\
		else{\
			myImg.style.width = (currWidth + 200) + \"px\";\
		} \
	}\
	function zoomout(){\
		var myImg = document.getElementById(\"map\");\
		var currWidth = myImg.clientWidth;\
		if(currWidth <= 415) return false;\
		else{\
			myImg.style.width = (currWidth - 200) + \"px\";\
		}\
	}\
	</script>\
	</body>\
	\
	</html>"
	if(show_title)
		user << browse(mainhtml, "window=mainhtml;size=568x388;border=0;can_resize=0;can_close=0;can_minimize=0;titlebar=1")
	else
		user << browse(mainhtml, "window=mainhtml;size=568x388;border=0;can_resize=0;can_close=0;can_minimize=0;titlebar=0")

/obj/item/stalker_pda/Topic(href, href_list)
	..()

	//var/mob/living/U = usr
	var/mob/living/carbon/human/H = usr
	if(!usr.canUseTopic(src))
		hacked = 0
		H.unset_machine()
		H << browse(null, "window=mainhtml")
		return
	//add_fingerprint(H)
	//get_asset_datum(/datum/asset/simple/basics).send(H)

	switch(href_list["choice"])
		if("title")
			if(show_title)
				H << browse(mainhtml, "window=mainhtml;size=568x388;border=0;can_resize=0;can_close=0;can_minimize=0;titlebar=0")
				show_title = 0
			else
				H << browse(mainhtml, "window=mainhtml;size=568x388;border=0;can_resize=0;can_close=0;can_minimize=0;titlebar=1")
				show_title = 1

		if("close")
			icon_state = "kpk_off"
			H.unset_machine()
			hacked = 0
			H << browse(null, "window=mainhtml")
			return

		if("password_input")
			var/t = message_input(H, "password", 10)

			if(!t)
				to_chat(H, "<span class='warning'>You entered no password.</span>")
				return

			var/datum/data/record/sk = find_record("sid", H.sid, GLOB.data_core.stalkers)

			if(!sk) //если человек не зарегистрирован в сети сталкеров
				password = t
				var/pass = password

				GLOB.data_core.manifest_inject(H)

				registered_name = H.real_name
				owner = H
				sid = H.sid
				lentahtml = GLOB.global_lentahtml

				//var/image = GLOB.data_core.fields["photo_front"]
				//var/obj/item/photo/owner_photo_front = new()

				//owner_photo_front.picture.picture_image = icon(image, dir = SOUTH)

				to_chat(H, "<B>KPK password</B>: <span class='danger'>\"[pass]\"</span>")
				H.mind.store_memory("<b>KPK password</b>: \"[pass]\"")
				GLOB.KPKs += src
				GLOB.KPK_mobs += H

				profile = find_record("sid", H.sid, GLOB.data_core.stalkers)

				profile.fields["pass"] = pass
/*
				if(H.job == "Old Stalker" || H.job == "Duty Soldier" || H.job == "Monolith Soldier" || H.job == "Freedom Soldier")
					profile.fields["rating"] = 3000
				else if(H.job == "Duty Lieutenant" || H.job == "Monolith Hegumen" || H.job == "Freedom Lieutenant")
					profile.fields["rating"] = 5000
*/
				set_owner_info(profile)
			else //Если человек зарегистрирован в сети сталкеров
				if(sk && sk.fields["pass"] != t)
					to_chat(H, "<span class='warning'>Wrong password.</span>")
					return

				password = t
				//var/datum/job/J = SSjob.GetJob(H.job)
				//access = J.get_access()

				registered_name = H.real_name
				eng_faction_s = sk.fields["faction"]
				rating = sk.fields["rating"]
				owner = H
				sid = H.sid
				if(!lentahtml)
					lentahtml = GLOB.global_lentahtml

				//var/image = GLOB.data_core.get_id_photo(H)

				//var/obj/item/photo/owner_photo_front = new()

				//owner_photo_front.picture.picture_image = icon(image, dir = SOUTH)

				GLOB.KPKs += src

				profile = sk
				set_owner_info(profile)

				for(var/obj/item/stalker_pda/KPK in GLOB.KPKs)
					if((KPK != src) && (KPK.owner == src.owner))
						KPK.registered_name = null
						KPK.eng_faction_s = null
						KPK.rus_faction_s = null
						KPK.rating = null
						KPK.owner = null
						KPK.money = 0
						KPK.photo_owner_front = null
						KPK.photo_owner_west = null
						KPK.photo_owner_east = null
						KPK.photo_owner_back = null
						KPK.hacked = 0
						KPK.password = null
						KPK.profile = null

						GLOB.KPKs -= KPK

		if("load_cache")
			//get_asset_datum(/datum/asset/simple/basics).send(H)

		if("exit")
			registered_name = null
			eng_faction_s = null
			rus_faction_s = null
			rating = null
			owner = null
			money = 0
			photo_owner_front = null
			photo_owner_west = null
			photo_owner_east = null
			photo_owner_back = null
			hacked = 0
			password = null
			profile = null

			GLOB.KPKs -= src

		if("password_check")
			var/t = message_input(H, "password", 10)
			if(t == password)
				//hacked = 1
				hacked = 0
				to_chat(H, "<span class='warning'>You are not the PDA owner.</span>")
			else
				to_chat(H, "<span class='warning'>Wrong password.</span>")

		if("rotate")
			switch(rotation)
				if ("front")
					rotation = "west"
				if("west")
					rotation = "back"
				if("back")
					rotation = "east"
				if("east")
					rotation = "front"

		if("make_avatar")
			make_avatar(H)
			set_owner_photo()

		if("lenta_add")
			var/t = message_input(H, "message", 250)
			if(!t)
				to_chat(H, "<span class='warning'>Type a message!</span>")
			else
				if ( !(last_lenta && world.time < last_lenta + LENTA_MESSAGE_COOLDOWN) )
					last_lenta = world.time

					add_lenta_message(src, sid, owner.real_name, eng_faction_s, t)

				else
					to_chat(H, "<span class='warning'>You can't send messages in next [round((LENTA_MESSAGE_COOLDOWN + last_lenta - world.time)/10)] sec.</span>")

		if("lenta_faction_add")
			var/t = message_input(H, "message", 500)
			if(!t)
				to_chat(H, "<span class='warning'>Type a message!</span>")
			else
				if ( !(last_faction_lenta && world.time < last_faction_lenta + LENTA_FACTION_MESSAGE_COOLDOWN) )
					last_faction_lenta = world.time
					add_faction_lenta_message(src, sid, owner.real_name, eng_faction_s, t)

				else
					to_chat(H, "<span class='warning'>You can't send messages in next [round((LENTA_FACTION_MESSAGE_COOLDOWN + last_faction_lenta - world.time)/10)] sec.</span>")

		if("lenta_sound")
			if(switches & FEED_SOUND)
				switches &= ~FEED_SOUND
				to_chat(H, "<span class='notice'>Feed sound turned off.</span>")
			else
				switches |= FEED_SOUND
				to_chat(H, "<span class='notice'>Feed sound turned on.</span>")

		if("lenta_images")
			if(switches & FEED_IMAGES)
				switches &= ~FEED_IMAGES
				to_chat(H, "<span class='notice'>Stalker avatars in the feed now will not be downloaded.</span>")
			else
				switches |= FEED_IMAGES
				to_chat(H, "<span class='notice'>Stalker avatars in the feed now will be downloaded.</span>")

		if("rating_images")
			if(switches & RATING_IMAGES)
				switches &= ~RATING_IMAGES
				to_chat(H, "<span class='notice'>Stalker avatars in the rating now will not be downloaded.</span>")
			else
				switches |= RATING_IMAGES
				to_chat(H, "<span class='notice'>Stalker avatars in the rating now will be downloaded.</span>")

		if("refresh_rating")
			ratinghtml = ""
			if(GLOB.data_core.stalkers.len)
				refresh_rating(H)

		if("zoom")
			return

		if("1")			//ПРОФИЛЬ
			set_owner_info(profile)
			set_owner_photo()
			mode = 1

		if("2")			//ЭНЦИКЛОПЕДИЯ
			mode = 2
			get_asset_datum(/datum/asset/simple/encyclopedia).send(H)
			if(href_list["page"])
				if(H.client.prefs.chat_toggles & CHAT_LANGUAGE)
					switch(href_list["page"])
						if("Zone")
							article_title = "Zone"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = "The Zone of Alienation is the 60 km wide area of exclusion that was set up around the Chernobyl NPP following the 1986 disaster and extended by the second Chernobyl disaster in 2006."

						if("Backwater")
							article_title = "Backwater"
							article_img = "backwater"
							article_img_width = 200
							article_img_height = 125
							article_text = "Backwater, also called Zaton, is mainly set in a swampy area, with a few industrial factories scattered around it and derelict, grounded boats, some dating back before the incident. From the outlying structures and sizable number of grounded boats and tankers around, Backwater appears to have been drained of its water sometime after the Chernobyl incident, most likely to contain the radiation contamination in the water. A free bar for Stalkers is run by Beard, in the wreck of a tanker – the Skadovsk."

						if("Anomalies")
							article_title = "Anomalies"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = "After the second Chernobyl disaster, the Zone was littered with spots where the laws of nature and physics had been corrupted. These small oddities are called anomalies. They are hazardous, often deadly, towards human beings and other creatures as they can deliver electric shocks or burn, corrode and distort physical objects. Most anomalies produce visible air or light distortions, so their extent can be determined by throwing anything that is made of metal, like bolts, to trigger them. The anomalies seem to emit a powerful magnetic field, so it is logical to assume that the anomalies are triggered by anything made of metal that enters the magnetic field. Because vertebrate life on earth has iron-based blood, those creatures with enough body mass are capable of triggering the anomalies."

						if("Electro")
							article_title = "Electro"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = "An anomalous formation, roughly 10 meters in diameter, accumulating large quantities of static electricity. When triggered, the anomaly bursts into a storm of arcing electricity nearly always lethal to all living beings. Easily recognizable by the blue gas it emits, along with the endless arcing of small bolts of electricity in the vicinity, the Electro holds no distinction for what crosses its event horizon, be it a human, a mutants or an inanimate object, and discharges as soon as anything gets too close."

						if("Vortex")
							article_title = "Vortex"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = "An anomaly of presumably gravitational nature. When triggered, the tremendous power of the Vortex drags everything within the radius 10-15 meters towards the center. Victims drawn into the core have little to no chance of survival: their bodies are quickly constricted into a tight lump, only to be blown up in a powerful discharge of energy a moment later. In some cases, they may levitate in air with agony, and soon their entire systems are shredded into mere skeletal and flesh parts."

						if("Whirligig")
							article_title = "Whirligig"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = "A common and dangerous anomaly, which snatches its victims up in the air and spins them at a breakneck speed. The exact nature of the Whirligig remains unknown. The anomaly can be recognized by a light whirlwind of dust above and by body fragments scattered in the vicinity. Victims caught on its outer rim, far enough from the maximum effect zone at the center, can escape the Whirligig with relatively minor injuries."

						if("Burner")
							article_title = "Burner"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = "The Burner can be a bit difficult to see, even in daylight, as it's only revealed by a faint heat haze. If the anomaly is triggered by either a living being or an object such as a metal bolt, it shoots out a tall pillar of flame in the air, burning everything in its vicinity. Though somewhat rare, the Burner anomaly is often found in clusters. Some clusters also emit extreme high ambient temperature, which hurts anything in their vicinity. Burners can emit temperatures as low as 100 degrees Celsius, up to several thousand, hot enough to crack concrete and melt metal, which explains why some Burners appear in areas that have massive cracks and severe damaged soil, while other sites are untouched."

						if("Fruit Punch")
							article_title = "Fruit Punch"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = "The Fruit Punch is a puddle of lambent green liquid that is easily visible in almost any environment due to its bright glow and distinctive hissing and bubbling noises. On contact with creatures or objects such as bolts, a Fruit Punch lights up brightly and emits a sharp hissing sound. It is extremely corrosive, damaging creatures and objects on contact. Any matter left in a Fruit Punch will eventually dissolve, hinting at the anomaly's corrosive nature and spelling doom for any protective suit."

						if("Burnt Fuzz")
							article_title = "Burnt Fuzz"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = "This anomaly is usually found outdoors. It resembles moss or vines, hanging down like curtains from its growing spot. Reacts to rapidly approaching living beings by discharging a cloud of projectiles severely injuring uncovered or lightly protected skin upon contact. Does not react to slowly moving targets. Burnt Fuzz is generally considered the least dangerous anomaly in the Zone since it can be easily spotted and avoided."

						if("Radiation")
							article_title = "Radiation"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = "Pockets of ionizing radiation, or simply radiation for short (areas where the ambient radiation count exceeds 50 mR per hour) can be found all over the Zone. In the outside areas, radiation tends to be dominant in wide, open spaces and on piles of scrap (such as the dirt or scrap piles in Garbage. Also cars, tractors and anything mechanical). Radiation in itself doesn't form artifacts. When you have accumulated enough radiation, you'll start to lose health; although radiation will decrease by itself (albeit very slowly) when you're outside of a radioactive area, it's often a good idea to use either Vodka, antirads, or a first aid kit to speed up the process."

						if("Mutants")
							article_title = "Mutants"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = "Mutants are animals or humans who have been warped by the Zone, changing both their physical appearance and behavior, usually making them more aggressive."

						if("Blind Dog")
							article_title = "Blind Dog"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = "Several generations of the dog species have lived and died since the catastrophe. Each was more affected by the Zone than the previous one. Rapid mutation lead to a vast improvement in previously peripheral abilities, frequently at the expense of primary ones. The most notable biological change was the loss of sight, paired with an uncanny development of smell. As it turned out, blind pups survived in the Zone as well as normal ones, if not better. As a result, the common dog quickly became extinct in the Zone, giving way to a new breed – that of blind dogs. The animals instinctively identify and avoid anomalies, radiation, and other invisible dangers that plague the Zone. Like their wild ancestors – the wolves – blind dogs hunt in packs. An encounter with a large group of these animals can be dangerous even to an experienced and well-armed stalker."

						if("Flesh")
							article_title = "Flesh"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = "Like many other living creatures, domestic pigs in The Zone underwent serious mutations following the second Chernobyl disaster, affecting genes responsible for their metabolism. This eventually caused the animal's phenotype to change significantly."

						if("Snork")
							article_title = "Snork"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = "The Snork is a horrifically mutated human soldier or Stalker, still wearing tattered remains of his uniform, boots and a GP-4 gas mask with cracked eyepieces, and a flailing hose. Exposure to radiation and anomalies in the wake of the second Chernobyl disaster has destroyed the human mind, leaving a feral, vicious beast psyche and a twisted body in its place, creating a dangerous predator."

						if("Boar")
							article_title = "Boar"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = "Mutagenic processes engineered by radiation and anomalies have played a significant part in shaping these mammals: they have lost all fur in a few places and grown long, bristly fur in others. The animal's hooves have changed in shape and become sharper, acquiring a resemblance to claws. Also, their pupils have become colorless, while both pigmentation disorders and deep wrinkles have appeared on their bald heads. They have also grown an extra pair of tusks which are easily recognized."

						if("Artifacts")
							article_title = "Artifacts"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = "Artifacts are items that have been changed by the conditions in the Zone. Most artifacts have strange and useful characteristics. For example, when kept close to the body, some artifacts create a protective field that increases its user's resilience to damage. Others may increase the user's stamina or protect against fire, etc. Artifacts are also valuable scientific study material and outside corporations would pay a hefty price to obtain one of these artifacts from the zone."

						if("Artifacts")
							article_title = "Artifacts"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = ""

						if("Artifacts")
							article_title = "Artifacts"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = ""

						if("Artifacts")
							article_title = "Artifacts"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = ""

						if("Artifacts")
							article_title = "Artifacts"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = ""

						if("Artifacts")
							article_title = "Artifacts"
							article_img = "nodata.gif"
							article_img_width = 179
							article_img_height = 128
							article_text = ""






		if("3")			//РЕЙТИНГ
			if(GLOB.data_core.stalkers.len)
				refresh_rating(H)
			mode = 3

		if("4")			//ЛЕНТА
			if(switches & FEED_IMAGES)
				for(var/datum/data/record/R in GLOB.data_core.stalkers)
					if(R.fields["lastlogin"] + RATING_REMOVE_TIMER > world.time)
						continue
					var/sid_p = R.fields["sid"]
					var/obj/item/photo/P1 = R.fields["photo_front"]
					H << browse_rsc(P1.picture.picture_image, "photo_[sid_p]")
			mode = 4

		/*if("5")			//КАРТА
			SSminimap.sendMinimaps(H)
			mode = 5*/

	if(href_list["invite"])

		var/sid_ = text2num(href_list["invite"])
		var/datum/job/J = SSjob.GetJob(get_job_title(eng_faction_s))

		if(!J)
			return

		if((J.current_positions >= J.total_positions) && J.total_positions != -1)
			return

		if(last_invite + LEADER_INVITE_COOLDOWN > world.time)
			return

		last_invite = world.time
		for(var/obj/item/stalker_pda/KPK_invited in GLOB.KPKs)
			if(KPK_invited.sid == sid_)
				show_lenta_message(src, KPK_invited, sid, owner.real_name, eng_faction_s, "You have been invited to [eng_faction_s] faction. Check feed for more info.")
				add_local_lenta_message(src, KPK_invited, sid, owner.real_name, eng_faction_s,"You have been invited to [eng_faction_s] faction. <a style=\"color:#c10000;\" href='byond://?src=\ref[KPK_invited];changefaction=[J.title]'>\[Accept invitation\]</a>")

	if(href_list["remove"])

		var/sid_ = text2num(href_list["remove"])
		var/datum/job/J = SSjob.GetJob(get_job_title(eng_faction_s))

		var/datum/data/record/sk_removed = find_record("sid", sid_, GLOB.data_core.stalkers)
		if(!sk_removed)
			return

		SSjob.AssignRole(owner, "Loner", 1)
		sk_removed.fields["faction_s"] = "Loners"
		J.current_positions--

		for(var/obj/item/stalker_pda/KPK_removed in GLOB.KPKs)
			if(KPK_removed.sid == sid_)
				show_lenta_message(src, KPK_removed, sid, owner.real_name, eng_faction_s, "You have been kicked out of [eng_faction_s] faction.")
				add_local_lenta_message(src, KPK_removed, sid, owner.real_name, eng_faction_s,"You have been kicked out of [eng_faction_s] faction.")

				KPK_removed.set_owner_info(KPK_removed.profile)

	if(href_list["changefaction"])

		var/new_eng_faction_s =  SSjob.GetJob(href_list["changefaction"]).faction_s
		var/confirm = alert(H, "Do you want to change your faction from [eng_faction_s] to [new_eng_faction_s]?", "PDA", "Yes", "No")
		if(confirm == "Yes")
			var/datum/job/J =  SSjob.GetJob(href_list["changefaction"])

			if(!J)
				return

			if((J.current_positions >= J.total_positions) && J.total_positions != -1)
				return

			SSjob.AssignRole(owner, href_list["changefaction"], 1)

			profile.fields["faction_s"] = J.faction_s
			set_owner_info(profile)

	//usr.set_machine(src)
	updateSelfDialog()
	return

/obj/item/stalker_pda/proc/message_input(mob/living/U = usr, msg_name, max_length)
	var/t = sanitize(stripped_input(U, "Please enter the [msg_name]", name, null, max_length), 1)
	if (!t)
		return
	if (!in_range(src, U) && loc != U)
		return
	if(!U.canUseTopic(src))
		return
	return t

/proc/add_lenta_message(var/obj/item/stalker_pda/KPK_owner, var/sid_owner, var/name_owner, var/faction_owner, msg, selfsound = 0)
	var/factioncolor 	= get_faction_color(faction_owner)
	var/faction_title = faction_owner
	if(KPK_owner && KPK_owner.profile && KPK_owner.profile.fields["degree"] >= 1)
		faction_title += " - leader"

	var/t = "<table style=\"margin-top: 0px; margin-bottom: 5px; border: 0px; background: #2e2e38;\">\
		<tr style=\"border: 0px solid black;\">\
		<td style=\"border: 0px solid black; vertical-align: top; background: #2e2e38;\" width=32 height=32>\
		<img id=\"ratingbox\" style=\"background: #2e2e38; border: 1px solid black;\" height=32 width=32 src=photo_[sid_owner]>\
		</td>\
		\
		<td width=386 height=32 align=\"top\" style=\"background: #131416; border: 0px; text-align:left; vertical-align: top;\">\
		\
		<p class=\"lentamsg\"><b><font color = \"[factioncolor]\">[name_owner]\[[faction_title]\]</font></b>:<br><font color = \"#afb2a1\">[msg]</font></p>\
		\
		</td>\
		\
		</tr>\
		</table>"

	GLOB.global_lentahtml = t + GLOB.global_lentahtml
	for(var/obj/item/stalker_pda/KPK in GLOB.KPKs)
		KPK.lentahtml = t + KPK.lentahtml
		show_lenta_message(KPK_owner, KPK, sid_owner, name_owner, faction_owner, msg)

	show_dead_lenta_message(KPK_owner, name_owner, faction_owner, msg, isfactionchat = 0)
	//var/eng_faction_s 	= faction_owner//get_eng_faction(faction_owner)

/proc/add_local_lenta_message(var/obj/item/stalker_pda/KPK_owner, var/obj/item/stalker_pda/KPK_guest, var/sid_owner, var/name_owner, var/faction_owner, msg)
	var/factioncolor 	= get_faction_color(faction_owner)
	var/faction_title = faction_owner
	if(KPK_owner && KPK_owner.profile && KPK_owner.profile.fields["degree"] >= 1)
		faction_title += " - leader"
	KPK_guest.lentahtml = "<table style=\"margin-top: 0px; margin-bottom: 5px; border: 0px; background: #2e2e38;\">\
	<tr style=\"border: 0px solid black;\">\
	<td style=\"border: 0px solid black; vertical-align: top; background: #2e2e38;\" width=32 height=32>\
	<img id=\"ratingbox\" style=\"background: #2e2e38; border: 1px solid black;\" height=32 width=32 src=photo_[sid_owner]>\
	</td>\
	\
	<td width=386 height=32 align=\"top\" style=\"background: #131416; border: 0px; text-align:left; vertical-align: top;\">\
	\
	<p class=\"lentamsg\"><b><font color = \"[factioncolor]\">[name_owner]\[[faction_title]\]</font></b>:<br><font color = \"#afb2a1\">[msg]</font></p>\
	\
	</td>\
	\
	</tr>\
	</table>" + KPK_guest.lentahtml
	show_lenta_message(KPK_owner, KPK_guest, sid_owner, name_owner, faction_owner, msg)

/proc/add_faction_lenta_message(var/obj/item/stalker_pda/KPK_owner, var/sid_owner, var/name_owner, var/faction_owner, msg, selfsound = 0)
	var/factioncolor 	= get_faction_color(faction_owner)
	var/faction_title = faction_owner
	if(KPK_owner && KPK_owner.profile && KPK_owner.profile.fields["degree"] >= 1)
		faction_title += " - leader"
	for(var/obj/item/stalker_pda/KPK in GLOB.KPKs)
		if(KPK_owner.eng_faction_s != KPK.eng_faction_s)
			continue
		KPK.lentahtml = "<table style=\"margin-top: 0px; margin-bottom: 5px; border: 0px; background: #2e2e38;\">\
		<tr style=\"border: 0px solid black;\">\
		<td style=\"border: 0px solid black; vertical-align: top; background: #2e2e38;\" width=32 height=32>\
		<img id=\"ratingbox\" style=\"background: #2e2e38; border: 1px solid black;\" height=32 width=32 src=photo_[sid_owner]>\
		</td>\
		\
		<td width=386 height=32 align=\"top\" style=\"background: #131416; border: 0px; text-align:left; vertical-align: top;\">\
		\
		<p class=\"lentamsg\"><b><font color = \"[factioncolor]\">[name_owner]\[[faction_title]\](faction chat)</font></b>:<br><font color = \"#afb2a1\">[msg]</font></p>\
		\
		</td>\
		\
		</tr>\
		</table>" + KPK.lentahtml
		show_lenta_message(KPK_owner, KPK, sid_owner, name_owner, faction_owner, msg, isfactionchat = 1)
	show_dead_lenta_message(KPK_owner, name_owner, faction_owner, msg, isfactionchat = 1)
	//var/eng_faction_s 	= faction_owner//get_eng_faction(faction_owner)

/proc/show_lenta_message(var/obj/item/stalker_pda/KPK_owner, var/obj/item/stalker_pda/KPK, var/sid_owner, var/name_owner, var/faction_owner, msg, selfsound = 0, var/isfactionchat = 0)

	var/mob/living/carbon/C = null

	if(KPK.loc && isliving(KPK.loc))
		C = KPK.loc

	if(!C || C.stat == UNCONSCIOUS)
		return

	var/factioncolor	= get_faction_color(faction_owner)
	//var/eng_faction_s 	= get_eng_faction(faction_owner)

	if(KPK_owner && KPK_owner.profile && KPK_owner.profile.fields["degree"] >= 1)
		faction_owner += " - leader"

	if(isfactionchat)
		to_chat(C, "<p style=\"margin-top: 0px; margin-bottom: 0px;\">\icon[KPK]<b style=\"margin-top: 0px; margin-bottom: 0px;\"><font style=\"margin-top: 0px; margin-bottom: 0px;\" color=\"[factioncolor]\">[name_owner]\[[faction_owner]\](faction chat):</font></b><br><font color=\"#006699\"> \"[msg]\"</font></p>")
	else
		to_chat(C, "<p style=\"margin-top: 0px; margin-bottom: 0px;\">\icon[KPK]<b style=\"margin-top: 0px; margin-bottom: 0px;\"><font style=\"margin-top: 0px; margin-bottom: 0px;\" color=\"[factioncolor]\">[name_owner]\[[faction_owner]\]:</font></b><br><font color=\"#006699\"> \"[msg]\"</font></p>")

	if(KPK_owner)
		if((KPK != KPK_owner || selfsound) && KPK.switches & FEED_SOUND)
			C << sound('stalker/sound/pda/sms.ogg', volume = 30)
	else
		if(KPK.switches & FEED_SOUND)
			C << sound('stalker/sound/pda/sms.ogg', volume = 30)

/proc/show_dead_lenta_message(var/obj/item/stalker_pda/KPK_owner, var/name_owner, var/faction_owner, var/msg, var/isfactionchat = 0)
	var/factioncolor	= get_faction_color(faction_owner)
	if(isfactionchat)
		msg = "<p style=\"margin-top: 0px; margin-bottom: 0px;\">\icon[KPK_owner]<b style=\"margin-top: 0px; margin-bottom: 0px;\"><font style=\"margin-top: 0px; margin-bottom: 0px;\" color=\"[factioncolor]\">[name_owner]\[[faction_owner]\](faction chat):</font></b><br><font color=\"#006699\"> \"[msg]\"</font></p>"
	else
		msg = "<p style=\"margin-top: 0px; margin-bottom: 0px;\">\icon[KPK_owner]<b style=\"margin-top: 0px; margin-bottom: 0px;\"><font style=\"margin-top: 0px; margin-bottom: 0px;\" color=\"[factioncolor]\">[name_owner]\[[faction_owner]\]:</font></b><br><font color=\"#006699\"> \"[msg]\"</font></p>"

	for(var/mob/M in GLOB.player_list)

		var/adminoverride = 0

		if(M.client && M.client.holder && (M.client.prefs.chat_toggles & CHAT_DEAD))
			adminoverride = 1

		if(istype(M, /mob/dead/new_player) && !adminoverride)
			continue

		if(M.stat != DEAD && !adminoverride)
			continue

		if(istype(M, /mob/dead/observer))
			if(KPK_owner && KPK_owner.loc)
				to_chat(M, "<a href=?src=\ref[M];follow=\ref[KPK_owner.loc]>(F)</a> [msg]")
			else
				to_chat(M, "<a href=?src=\ref[M];follow=\ref[KPK_owner]>(F)</a> [msg]")
		else
			to_chat(M, "[msg]")


/obj/item/stalker_pda/proc/refresh_rating(var/mob/living/carbon/human/H)
	var/count = 0
	ratinghtml = ""

	for(var/datum/data/record/R in sortRecordNum(GLOB.data_core.stalkers, "rating", -1))
		if(R.fields["lastlogin"] + 12000 < world.time)
			continue

		var/sid_p = R.fields["sid"]
		if(switches & RATING_IMAGES)
			var/obj/item/photo/P1 = R.fields["photo_front"]
			H << browse_rsc(P1.picture.picture_image, "photo_[sid_p]")
		var/n = R.fields["name"]
		var/r = R.fields["rating"]

		var/eng_f = R.fields["faction_s"]

		var/rep_color = get_rep_color(R.fields["reputation"])
		var/eng_rep = get_eng_rep_name(R.fields["reputation"])

		var/eng_rank_name = get_eng_rank_name(r)

		count++

		ratinghtml += "<table style=\"margin-top: 0px; margin-bottom: 5px;\">\
				<tr style=\"border: 1px solid black;\">\
				\
				<td width=64 height=64 align=\"top\">\
				<img id=\"ratingbox\" height=64 width=64 src=photo_[sid_p]>\
				</td>\
				\
				<td height=64 width=354 align=\"top\" style=\"text-align:left;vertical-align: top;\">\
				\
				<b>\[[count]\]</b> [n] ([eng_f])"
		//Faction menu
		if(degree >= 1)
			if(!R.fields["degree"])
				if(eng_faction_s == eng_f)
					ratinghtml += "<a style=\"color:#c10000;\" href='byond://?src=\ref[src];remove=[sid_p]'>\[kick out\]</a>"
				else
					ratinghtml += "<a style=\"color:#7ac100;\" href='byond://?src=\ref[src];invite=[sid_p]'>\[invite\]</a>"
			else
				ratinghtml += "<b>\[LEADER\]</b>"
		//////////////
		ratinghtml +="<br><b>Rating</b> [eng_rank_name] ([r])<br>\
				<b>Reputation:</b> <font color=\"[rep_color]\">[eng_rep]</font><br>\
				\
				</td>\
				\
				</tr>\
				</table>"

	return ratinghtml

/obj/item/stalker_pda/proc/make_avatar(var/mob/living/carbon/human/H)
	var/datum/outfit/avatar = new /datum/outfit

	if(H.w_uniform)
		avatar.uniform 		= H.w_uniform.type
	if(H.wear_suit)
		avatar.suit 		= H.wear_suit.type
	if(H.back)
		avatar.back			= H.back.type
	if(H.belt)
		avatar.belt 		= H.belt.type
	if(H.gloves)
		avatar.gloves		= H.gloves.type
	if(H.shoes)
		avatar.shoes		= H.shoes.type
	if(H.head)
		avatar.head			= H.head.type
	if(H.wear_mask)
		avatar.mask			= H.wear_mask.type
	if(H.glasses)
		avatar.glasses		= H.glasses.type
	if(H.s_store)
		avatar.suit_store	= H.s_store.type
	/*if(H.r_hand && !istype(H.r_hand ,/obj/item/stalker_pda))
		avatar.r_hand		= H.r_hand.type
	if(H.l_hand && !istype(H.l_hand ,/obj/item/stalker_pda))
		avatar.l_hand		= H.l_hand.type*/

	if(avatar.uniform == null || avatar.shoes == null)
		to_chat(H, "<span class='warning'>You should wear some clothes before taking a picture!</span>")
	else
		var/image = get_avatar(H, avatar)

		var/obj/item/photo/photo_owner_front = new()

		photo_owner_front.picture.picture_image = icon(image, dir = SOUTH)

		for(var/datum/data/record/sk in GLOB.data_core.stalkers)
			if(H.sid == sk.fields["sid"])
				sk.fields["photo_front"]	= photo_owner_front
				return

/obj/item/stalker_pda/proc/get_avatar(var/mob/living/carbon/human/H, var/datum/outfit/avatar)
	var/datum/preferences/P = H.client.prefs
	return get_flat_human_icon(null, avatar, P)

/obj/item/stalker_pda/proc/set_owner_info(var/datum/data/record/sk)
	var/obj/item/photo/P1 = sk.fields["photo_front"]

	usr << browse_rsc(P1.picture.picture_image, "photo_front")

	eng_faction_s		= sk.fields["faction_s"]
	rus_faction_s 		= get_rus_faction(eng_faction_s)

	rating			= sk.fields["rating"]
	money			= sk.fields["money"]
	reputation		= sk.fields["reputation"]

	rep_name_s 		= get_rep_name(sk.fields["reputation"])
	eng_rep_name_s 	= get_eng_rep_name(sk.fields["reputation"])
	rep_color_s 	= get_rep_color(sk.fields["reputation"])

	rus_rank_name_s 	= get_rus_rank_name(sk.fields["rating"])
	eng_rank_name_s	= get_eng_rank_name(sk.fields["rating"])

	degree = sk.fields["degree"]

/obj/item/stalker_pda/proc/set_owner_photo()
	var/obj/item/photo/P1 = profile.fields["photo_front"]

	usr << browse_rsc(P1.picture.picture_image, "photo_front")

/proc/get_rus_rank_name(var/rating)
	var/rus_rank_name_s = "Rookie"
	switch(rating)
		if(ZONE_LEGEND to INFINITY)
			rus_rank_name_s = "Legend"
		if(EXPERT to ZONE_LEGEND)
			rus_rank_name_s = "Expert"
		if(VETERAN to EXPERT)
			rus_rank_name_s = "Veteran"
		if(EXPERIENCED to VETERAN)
			rus_rank_name_s = "Experienced"
		if(ROOKIE to EXPERT)
			rus_rank_name_s = "Rookie"
	return rus_rank_name_s

/proc/get_eng_rank_name(var/rating)
	var/eng_rank_name_s = "Rookie"
	switch(rating)
		if(ZONE_LEGEND to INFINITY)
			eng_rank_name_s = "Legend"
		if(EXPERT to ZONE_LEGEND)
			eng_rank_name_s = "Expert"
		if(VETERAN to EXPERT)
			eng_rank_name_s = "Veteran"
		if(EXPERIENCED to VETERAN)
			eng_rank_name_s = "Experienced"
		if(ROOKIE to EXPERIENCED)
			eng_rank_name_s = "Rookie"
	return eng_rank_name_s

/proc/get_rus_faction(var/eng_faction_s)
	var/faction_s = "Loners"
	switch(eng_faction_s)
		if("Bandits")
			faction_s = "Bandits"
		if("Mercenaries")
			faction_s = "Mercenaries"
		if("Duty")
			faction_s = "Duty"
		if("Traders")
			faction_s = "Traders"
		if("Freedom")
			faction_s = "Freedom"
		if("Monolith")
			faction_s = "Monolith"
		if("State Security Service")
			faction_s = "State Security Service"
		if("Clear Sky")
			faction_s = "Clear Sky"
		if("Renegades")
			faction_s = "Renegades"
		if("Ecologists")
			faction_s = "Ecologists"
	return faction_s

/proc/get_faction_color(var/eng_faction_s)
	var/factioncolor = "#ff7733"
	switch(eng_faction_s)
		if("Bandits")
			factioncolor = "#8c8c8c"
		if("Loners")
			factioncolor = "#ff7733"
		if("Mercenaries")
			factioncolor = "#3399ff"
		if("Duty")
			factioncolor = "#ff4d4d"
		if("Freedom")
			factioncolor = "#6cba3f"
		if("Monolith")
			factioncolor = "#7c26d3"
		if("Renegades")
			factioncolor = "#bbae6a"
		if("Clear Sky")
			factioncolor = "#64B2F7"
		if("Ecologists")
			factioncolor = "#601919"
		if("State Security Service")
			factioncolor = "#2E8B57"
	return factioncolor

/proc/get_rep_name(var/rep)
	var/rep_name_s = "Neutral"

	switch(rep)
		if(AMAZING to INFINITY)
			rep_name_s = "Amazing"
		if(VERYGOOD to AMAZING)
			rep_name_s = "Very Good"
		if(GOOD to VERYGOOD)
			rep_name_s = "Good"
		if(BAD to GOOD)
			rep_name_s = "Neutral"
		if(VERYBAD to BAD)
			rep_name_s = "Bad"
		if(DISGUSTING to VERYBAD)
			rep_name_s = "Very Bad"
		if(-INFINITY to DISGUSTING)
			rep_name_s = "Disgusting"

	return rep_name_s

/proc/get_eng_rep_name(var/rep)
	var/eng_rep_name_s = "Neutral"

	switch(rep)
		if(AMAZING to INFINITY)
			eng_rep_name_s = "Amazing"
		if(VERYGOOD to AMAZING)
			eng_rep_name_s = "Very Good"
		if(GOOD to VERYGOOD)
			eng_rep_name_s = "Good"
		if(BAD to GOOD)
			eng_rep_name_s = "Neutral"
		if(VERYBAD to BAD)
			eng_rep_name_s = "Bad"
		if(DISGUSTING to VERYBAD)
			eng_rep_name_s = "Very Bad"
		if(-INFINITY to DISGUSTING)
			eng_rep_name_s = "Disgusting"

	return eng_rep_name_s

/proc/get_rep_color(var/rep)
	var/rep_color_s = "#ffe100"
	switch(rep)
		if(AMAZING to INFINITY)
			rep_color_s = "#00abdb" //#00abdb
		if(VERYGOOD to AMAZING)
			rep_color_s = "#b6ff38" //#6ddb00
		if(GOOD to VERYGOOD)
			rep_color_s = "#daff21" //#b6db00
		if(BAD to GOOD)
			rep_color_s = "#ffe100" //#ffb200
		if(VERYBAD to BAD)
			rep_color_s = "#ff6b3a" //#db5700
		if(DISGUSTING to VERYBAD)
			rep_color_s = "#db2b00"
		if(-INFINITY to DISGUSTING)
			rep_color_s = "#7c0000" //#7c0000
	return rep_color_s

/proc/get_job_title(var/faction_s)
	switch(faction_s)
		if("Bandits")
			return "Bandit"
		if("Mercenaries")
			return "Mercenary"
		if("Duty")
			return "Duty"
		if("Traders")
			return "Trader"
		if("Freedom")
			return "Freedom"
		if("Monolith")
			return "Monolith"
		if("State Security Service")
			return "Military"
		if("Clear Sky")
			return "Clear Sky"
		if("Renegades")
			return "Renegade"
		if("Ecologists")
			return "Ecologist"
		else
			return "Loner"
