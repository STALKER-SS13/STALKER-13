/mob/living/carbon/human/examine(mob/user) //User is the person being examined
//this is very slightly better than it was because you can use it more places. still can't do \his[src] though.
	var/t_on 	= ru_who(TRUE)
	var/t_ego 	= ru_ego()
	var/t_na 	= ru_na()
	var/t_a 	= ru_a()

	//var/obscure_name

	//if(isliving(user))
	//	var/mob/living/L = user
	//	if(L.has_trait(TRAIT_PROSOPAGNOSIA))
	//		obscure_name = TRUE

	var/msg = "<span class='info'>*---------*\n This is <EM>[name]</EM>!\n"

	var/list/obscured = check_obscured_slots()
	var/skipface = (wear_mask && (wear_mask.flags_inv & HIDEFACE)) || (head && (head.flags_inv & HIDEFACE))

	//uniform
	if(w_uniform && !(SLOT_W_UNIFORM in obscured))
		//accessory
		var/accessory_msg
		if(istype(w_uniform, /obj/item/clothing/under))
			var/obj/item/clothing/under/U = w_uniform
			if(U.attached_accessory)
				accessory_msg += " with [icon2html(U.attached_accessory, user)] \a [U.attached_accessory]"

		msg += "On[t_na] [w_uniform.get_examine_string(user)][accessory_msg].\n"
	//head
	if(head)
		msg += "In n[t_ego] on the head [head.get_examine_string(user)].\n"
	//suit/armor
	if(wear_suit)
		msg += "On n[t_na] [wear_suit.get_examine_string(user)].\n"
		//suit/armor storage
		if(s_store && !(SLOT_S_STORE in obscured))
			msg += "It has [s_store.get_examine_string(user)] attached to [t_ego] [wear_suit.name].\n"
	//back
	if(back)
		msg += "on their back [t_ego] [back.get_examine_string(user)].\n"

	//Hands
	for(var/obj/item/I in held_items)
		if(!(I.item_flags & ABSTRACT))
			msg += "[ru_ego(TRUE)] [get_held_index_name(get_held_index_of_item(I))] keeps [I.get_examine_string(user)].\n"

	GET_COMPONENT(FR, /datum/component/forensics)
	//gloves
	if(gloves && !(SLOT_GLOVES in obscured))
		msg += "on the hands of [t_ego] [gloves.get_examine_string(user)].\n"
	else if(FR && length(FR.blood_DNA))
		var/hand_number = get_num_arms(FALSE)
		if(hand_number)
			msg += "<span class='warning'>[ru_ego(TRUE)] hands [hand_number > 1 ? "and" : "a"] in blood!</span>\n"

	//handcuffed?

	//handcuffed?
	if(handcuffed)
		if(istype(handcuffed, /obj/item/restraints/handcuffs/cable))
			msg += "<span class='warning'>[t_on] [icon2html(handcuffed, user)] bound!</span>\n"
		else
			msg += "<span class='warning'>[t_on] [icon2html(handcuffed, user)] handcuffed!</span>\n"

	//belt
	if(belt)
		msg += "on the belt[t_ego] [belt.get_examine_string(user)].\n"

	//shoes
	if(shoes && !(SLOT_SHOES in obscured))
		msg += "they [t_ego] are wearing [shoes.get_examine_string(user)].\n"

	//mask
	if(wear_mask && !(SLOT_WEAR_MASK in obscured))
		msg += "[t_on] It has [wear_mask.get_examine_string(user)] on [t_ego] face.\n"

	if(wear_neck && !(SLOT_NECK in obscured))
		msg += "on the neck[t_ego] [wear_neck.get_examine_string(user)].\n"

	//eyes
	if(!(SLOT_GLASSES in obscured))
		if(glasses)
			msg += "On [t_na] [glasses.get_examine_string(user)].\n"
		else if(eye_color == BLOODCULT_EYE && iscultist(src) && has_trait(CULT_EYES))
			msg += "<span class='warning'><B>[ru_ego(TRUE)] the eyes are bright red and they burn!</B></span>\n"

	//ears
	if(ears && !(SLOT_EARS in obscured))
		msg += "On their ears[t_ego] [ears.get_examine_string(user)].\n"

	//ID
	if(wear_id)
		msg += "See also[t_ego] eat [wear_id.get_examine_string(user)].\n"

	//Status effects
	msg += status_effect_examines()

	//Jitters
	switch(jitteriness)
		if(300 to INFINITY)
			msg += "<span class='warning'><B>[t_on] beats in convulsions!</B></span>\n"
		if(200 to 300)
			msg += "<span class='warning'>[t_on] nervously twitching.</span>\n"
		if(100 to 200)
			msg += "<span class='warning'>[t_on] Trembling.</span>\n"

	var/appears_dead = 0
	if(stat == DEAD || (has_trait(TRAIT_FAKEDEATH)))
		appears_dead = 1
		if(suiciding)
			msg += "<span class='warning'>[t_on] looks like a suicidal person... it can't be saved.</span>\n"
		if(hellbound)
			msg += "<span class='warning'>[ru_ego(TRUE)] the soul looks detached from [t_ego] Body. Resuscitation is useless.</span>\n"
		msg += "<span class='deadsay'>[t_on] does not react to what is happening around; no signs of life"
		if(getorgan(/obj/item/organ/brain))
			if(!key && !get_ghost(FALSE, TRUE))
				msg += " и [t_ego] the soul is gone"
		msg += "...</span>\n"

	if(get_bodypart(BODY_ZONE_HEAD) && !getorgan(/obj/item/organ/brain))
		msg += "<span class='deadsay'>It seems that[t_ego] no brain...</span>\n"

	var/temp = getBruteLoss() //no need to calculate each of these twice

	msg += "<span class='warning'>"

	var/list/missing = list(BODY_ZONE_HEAD, BODY_ZONE_CHEST, BODY_ZONE_L_ARM, BODY_ZONE_R_ARM, BODY_ZONE_L_LEG, BODY_ZONE_R_LEG)
	var/list/disabled = list()
	for(var/X in bodyparts)
		var/obj/item/bodypart/BP = X
		if(BP.disabled)
			disabled += BP
		missing -= BP.body_zone
		for(var/obj/item/I in BP.embedded_objects)
			msg += "<B>In n[t_ego] Stuck \a [icon2html(I, user)] [I] в [BP.name]!</B>\n"

	for(var/X in disabled)
		var/obj/item/bodypart/BP = X
		var/damage_text
		if(!(BP.get_damage(include_stamina = FALSE) >= BP.max_damage)) //Stamina is disabling the limb
			damage_text = "sluggish and lifeless"
		else
			damage_text = (BP.brute_dam >= BP.burn_dam) ? BP.heavy_brute_msg : BP.heavy_burn_msg
		msg += "<B>[t_ego] [BP.name] [damage_text]!</B>\n"

	//stores missing limbs
	var/l_limbs_missing = 0
	var/r_limbs_missing = 0
	for(var/t in missing)
		if(t==BODY_ZONE_HEAD)
			msg += "<span class='deadsay'><B>[ru_ego(TRUE)] [parse_zone(t)] Missing!</B><span class='warning'>\n"
			continue
		if(t == BODY_ZONE_L_ARM || t == BODY_ZONE_L_LEG)
			l_limbs_missing++
		else if(t == BODY_ZONE_R_ARM || t == BODY_ZONE_R_LEG)
			r_limbs_missing++

		msg += "<B>[ru_ego(TRUE)] [parse_zone(t)] Missing!</B>\n"

	if(l_limbs_missing >= 2 && r_limbs_missing == 0)
		msg += "[t_on] stands on the right side.\n"
	else if(l_limbs_missing == 0 && r_limbs_missing >= 2)
		msg += "[t_on] stands on the left side.\n"
	else if(l_limbs_missing >= 2 && r_limbs_missing >= 2)
		msg += "[t_on] looks like a cutlet.\n"

	if(!(user == src && src.hal_screwyhud == SCREWYHUD_HEALTHY)) //fake healthy
		if(temp)
			if(temp < 25)
				msg += "[t_on] has minor bruises.\n"
			else if(temp < 50)
				msg += "[t_on] <b>heavily</b> Wounded[t_a]!\n"
			else
				msg += "<B>[t_on] mortally wounded[t_a]!</B>\n"

		temp = getFireLoss()
		if(temp)
			if(temp < 25)
				msg += "[t_on] a little burned[t_a].\n"
			else if (temp < 50)
				msg += "[t_on] Has <b>Serious</b> Burns!\n"
			else
				msg += "<B>[t_on] has fatal burns!</B>\n"

		temp = getCloneLoss()
		if(temp)
			if(temp < 25)
				msg += "[t_on] minor genetic damage.\n"
			else if(temp < 50)
				msg += "[t_on] <b>Strong</b> genetic damage!\n"
			else
				msg += "<b>[t_on] fatal genetic damage!</b>\n"


	if(fire_stacks > 0)
		msg += "[t_on] in some ways fuel.\n"
	if(fire_stacks < 0)
		msg += "[t_on] looks wet.\n"


	if(pulledby && pulledby.grab_state)
		msg += "[t_on] held by grip [pulledby].\n"

	if(nutrition < NUTRITION_LEVEL_STARVING - 50)
		msg += "[t_on]looks deadly exhausted.\n"
	else if(nutrition >= NUTRITION_LEVEL_FAT)
		if(user.nutrition < NUTRITION_LEVEL_STARVING - 50)
			msg += "[t_on] looks like a fat pig. Very tasty pig.\n"
		else
			msg += "[t_on] looks pretty tight.\n"
	switch(disgust)
		if(DISGUST_LEVEL_GROSS to DISGUST_LEVEL_VERYGROSS)
			msg += "[t_on] looks a bit dirty.\n"
		if(DISGUST_LEVEL_VERYGROSS to DISGUST_LEVEL_DISGUSTED)
			msg += "[t_on] looks very dirty.\n"
		if(DISGUST_LEVEL_DISGUSTED to INFINITY)
			msg += "[t_on] looks disgustingly gluttonous.\n"

	if(blood_volume < BLOOD_VOLUME_SAFE)
		msg += "[ru_ego(TRUE)] the skin is pale.\n"

	if(bleedsuppress)
		msg += "[t_on] bandaged[t_a].\n"
	else if(bleed_rate)
		if(reagents.has_reagent("heparin"))
			msg += "<b>[t_on] bleeding profusely!</b>\n"
		else
			msg += "<B>[t_on] bleeding!</B>\n"

	if(reagents.has_reagent("teslium"))
		msg += "[t_on] emits a gentle blue glow!\n"

	if(islist(stun_absorption))
		for(var/i in stun_absorption)
			if(stun_absorption[i]["end_time"] > world.time && stun_absorption[i]["examine_message"])
				msg += "[t_on] [stun_absorption[i]["examine_message"]]\n"

	if(drunkenness && !skipface && !appears_dead) //Drunkenness
		switch(drunkenness)
			if(11 to 21)
				msg += "[t_on] a little drunk[t_a].\n"
			if(21.01 to 41) //.01s are used in case drunkenness ends up to be a small decimal
				msg += "[t_on] Drunk[t_a].\n"
			if(41.01 to 51)
				msg += "[t_on] quite drunk [t_a] and the smell of alcohol is felt from n[t_ego].\n"
			if(51.01 to 61)
				msg += "Very drunk [t_a] and from n[t_ego] carries burnout.\n"
			if(61.01 to 91)
				msg += "[t_on] in the insoles.\n"
			if(91.01 to INFINITY)
				msg += "[t_on] in the gov!\n"

	msg += "</span>"

	if(!appears_dead)
		if(stat == UNCONSCIOUS)
			msg += "[t_on] does not react to what is happening around.\n"
		else
			if(has_trait(TRAIT_DUMB))
				msg += "[t_on] has a silly expression on his face.\n"
			if(InCritical())
				msg += "[t_on] barely conscious.\n"
		if(getorgan(/obj/item/organ/brain))
			if(!key)
				msg += "<span class='deadsay'>[t_on] total catatonic. The stress of living in deep space has greatly affected the [t_ego]. Recovery is unlikely.</span>\n"
			else if(!client)
				msg += "[t_on] has an empty, absent-minded look and seems completely unresponsive to anything. [t_on] may come out of this soon.\n"

		if(digitalcamo)
			msg += "[t_on] moves his body in an unnatural and obviously inhuman manner.\n"

	msg += common_trait_examine()

	var/traitstring = get_trait_string()
	if(ishuman(user))
		var/mob/living/carbon/human/H = user
		var/obj/item/organ/cyberimp/eyes/hud/CIH = H.getorgan(/obj/item/organ/cyberimp/eyes/hud)
		if(istype(H.glasses, /obj/item/clothing/glasses/hud) || CIH)
			var/perpname = get_face_name(get_id_name(""))
			if(perpname)
				var/datum/data/record/R = find_record("name", perpname, GLOB.data_core.general)
				if(R)
					msg += "<span class='deptradio'>Title:</span> [R.fields["rank"]]<br>"
					msg += "<a href='?src=[REF(src)];hud=1;photo_front=1'>\[Front photo\]</a> "
					msg += "<a href='?src=[REF(src)];hud=1;photo_side=1'>\[Side photo\]</a><br>"
				if(istype(H.glasses, /obj/item/clothing/glasses/hud/health) || istype(CIH, /obj/item/organ/cyberimp/eyes/hud/medical))
					var/cyberimp_detect
					for(var/obj/item/organ/cyberimp/CI in internal_organs)
						if(CI.status == ORGAN_ROBOTIC && !CI.syndicate_implant)
							cyberimp_detect += "[name] Modified [CI.name].<br>"
					if(cyberimp_detect)
						msg += "Cybernetic modifications detected:<br>"
						msg += cyberimp_detect
					if(R)
						var/health_r = R.fields["p_stat"]
						msg += "<a href='?src=[REF(src)];hud=m;p_stat=1'>\[[health_r]\]</a>"
						health_r = R.fields["m_stat"]
						msg += "<a href='?src=[REF(src)];hud=m;m_stat=1'>\[[health_r]\]</a><br>"
					R = find_record("name", perpname, GLOB.data_core.medical)
					if(R)
						msg += "<a href='?src=[REF(src)];hud=m;evaluation=1'>\[Medical evaluation\]</a><br>"
					if(traitstring)
						msg += "<span class='info'>Identified physiological signs:<br></span>"
						msg += "<span class='info'>[traitstring]</span><br>"



				if(istype(H.glasses, /obj/item/clothing/glasses/hud/security) || istype(CIH, /obj/item/organ/cyberimp/eyes/hud/security))
					if(!user.stat && user != src)
					//|| !user.canmove || user.restrained()) Fluff: Sechuds have eye-tracking technology and sets 'arrest' to people that the wearer looks and blinks at.
						var/criminal = "None"

						R = find_record("name", perpname, GLOB.data_core.security)
						if(R)
							criminal = R.fields["criminal"]

						msg += "<span class='deptradio'>Status:</span> <a href='?src=[REF(src)];hud=s;status=1'>\[[criminal]\]</a>\n"
						msg += "<span class='deptradio'>Notes:</span> <a href='?src=[REF(src)];hud=s;view=1'>\[View\]</a> "
						msg += "<a href='?src=[REF(src)];hud=s;add_crime=1'>\[Add crime\]</a> "
						msg += "<a href='?src=[REF(src)];hud=s;view_comment=1'>\[View comment log\]</a> "
						msg += "<a href='?src=[REF(src)];hud=s;add_comment=1'>\[Add comment\]</a>\n"

		if(istype(H.wear_id, /obj/item/stalker_pda))
			if(istype(src.wear_id, /obj/item/stalker_pda))
				var/obj/item/stalker_pda/KPK = H.wear_id
				var/datum/data/record/R = find_record("sid", src.sid, GLOB.data_core.stalkers)
				var/datum/data/record/R_H = find_record("sid", H.sid, GLOB.data_core.stalkers)
				if(KPK.hacked == 1 || H == KPK.owner)
					if(R && R_H)

						var/rep 			= get_rep_name(R.fields["reputation"])
						var/eng_rep 		= get_eng_rep_name(R.fields["reputation"])
						var/font_color 		= get_rep_color(R.fields["reputation"])

						var/rus_rank_name_s = get_rus_rank_name(R.fields["rating"])
						var/eng_rank_name_s = get_eng_rank_name(R.fields["rating"])

						var/eng_faction_s 	= R.fields["faction_s"]
						var/faction_s		= get_rus_faction(eng_faction_s) //russian_html2text

						if(user.client && (user.client.prefs.chat_toggles & CHAT_LANGUAGE))
							msg += "\nFaction: [eng_faction_s]\n"
							msg += "Reputation: <font color=\"[font_color]\">[eng_rep]</font><a href='?src=\ref[src];KPK=1;addition_rep=1'><font color=\"green\">\[+\]</font></a><a href='?src=\ref[src];KPK=1;subtraction_rep=1'><font color=\"red\">\[-\]</font></a>\n"
							msg += "Rating: [eng_rank_name_s]\n\n"
							msg += "<a href='?src=\ref[src];KPK=1;money_transfer=1'>Commit money transfer</a>\n"
						else
							msg += "\nGroup: [faction_s]\n"
							msg += "Reputation: <font color=\"[font_color]\">[rep]</font><a href='?src=\ref[src];KPK=1;addition_rep=1'><font color=\"green\">\[+\]</font></a><a href='?src=\ref[src];KPK=1;subtraction_rep=1'><font color=\"red\">\[-\]</font></a>\n"
							msg += "Rating: [rus_rank_name_s]\n\n"
							msg += "<a href='?src=\ref[src];KPK=1;money_transfer=1'>Make a money transfer</a>\n"
				else
					msg += "\n<span class='warning'>NO ACCESS!</span>\n"

	else if(isobserver(user) && traitstring)
		msg += "<span class='info'><b>Features:</b> [traitstring]</span><br>"
	msg += "*---------*</span>"

	to_chat(user, msg)
	return msg

/mob/living/proc/status_effect_examines(pronoun_replacement) //You can include this in any mob's examine() to show the examine texts of status effects!
	var/list/dat = list()
	if(!pronoun_replacement)
		pronoun_replacement = p_they(TRUE)
	for(var/V in status_effects)
		var/datum/status_effect/E = V
		if(E.examine_text)
			var/new_text = replacetext(E.examine_text, "SUBJECTPRONOUN", pronoun_replacement)
			new_text = replacetext(new_text, "[pronoun_replacement] ", "[pronoun_replacement] [p_are()]") //To make sure something become "They are" or "She is", not "They are" and "She are"
			dat += "[new_text]\n" //dat.Join("\n") doesn't work here, for some reason
	if(dat.len)
		return dat.Join()
