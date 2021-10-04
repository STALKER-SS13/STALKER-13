//Speech verbs.
/mob/verb/say_typing_indicator()
	set name = "Say"
	set hidden = FALSE
	set category = "IC"
	display_typing_indicator()
	var/message = input(usr, "", "say") as text|null
	// If they don't type anything just drop the message.
	clear_typing_indicator()		// clear it immediately!
	if(!length(message))
		return
	return say_verb(message)

/mob/verb/say_verb(message as text)
	set name = "say_noindicator"
	set hidden = TRUE
	set category = "IC"
	if(!length(message)) //If a null message somehow makes it through to this verb.
		return
	if(GLOB.say_disabled)	//This is here to try to identify lag problems
		to_chat(usr, "<span class='danger'>Speech is currently admin-disableed.</span>")
		return
	set_typing_indicator(FALSE)
	if(message)
		say(capitalize(message))

/mob/verb/whisper_verb(message as text)
	set name = "Whisper"
	set category = "IC"
	if(GLOB.say_disabled)	//This is here to try to identify lag problems
		to_chat(usr, "<span class='danger'>Шепот отключен, приятного дня.</span>")
		return
	whisper(capitalize(message))

/mob/proc/whisper(message, datum/language/language=null)
	say(message, language) //only living mobs actually whisper, everything else just talks

/mob/verb/me_typing_indicator()
	set name = "Me"
	set hidden = FALSE
	set category = "IC"
	display_typing_indicator()
	var/message = input(usr, "", "me") as message|null
	// If they don't type anything just drop the message.
	clear_typing_indicator()		// clear it immediately!
	if(!length(message))
		return
	return me_verb(message)

/mob/verb/me_verb(message as text)
	set name = "me_noindicator"
	set hidden = TRUE
	set category = "IC"

	if(GLOB.say_disabled)	//This is here to try to identify lag problems
		to_chat(usr, "<span class='danger'>Эмоуты отключены, приятного дня.</span>")
		return

	message = trim(copytext(sanitize(message), 1, MAX_MESSAGE_LEN))
	var/ckeyname = "[usr.ckey]/[usr.name]"
	webhook_send_me(ckeyname, message)
	usr.emote("me",1,message,TRUE)

/mob/proc/say_dead(var/message)
	var/name = real_name
	var/alt_name = ""

	if(GLOB.say_disabled)	//This is here to try to identify lag problems
		to_chat(usr, "<span class='danger'>Дедчат отключен, приятного дня.</span>")
		return

	var/jb = is_banned_from(ckey, "OOC")
	if(QDELETED(src))
		return

	if(jb)
		to_chat(src, "<span class='danger'>Вам запретили общаться в дедчате.</span>")
		return



	if (src.client)
		if(src.client.prefs.muted & MUTE_DEADCHAT)
			to_chat(src, "<span class='danger'>Вы не можете говорить в дедчате (мут).</span>")
			return

		if(src.client.handle_spam_prevention(message,MUTE_DEADCHAT))
			return

	var/mob/dead/observer/O = src
	if(isobserver(src) && O.deadchat_name)
		name = "[O.deadchat_name]"
	else
		if(mind && mind.name)
			name = "[mind.name]"
		else
			name = real_name
		if(name != real_name)
			alt_name = " (умер как [real_name])"

	var/K

	if(key)
		K = src.key

	message = capitalize(message)
	var/spanned = src.say_quote(message, get_spans())
	var/rendered = "<span class='game deadsay'><span class='prefix'>ПРИЗРАК:</span> <span class='name'>[name]</span>[alt_name] <span class='message'>[emoji_parse(spanned)]</span></span>"
	log_talk(message, LOG_SAY, tag="DEAD")
	deadchat_broadcast(rendered, follow_target = src, speaker_key = K)

/mob/proc/check_emote(message)
	if(copytext(message, 1, 2) == "*")
		emote(copytext(message, 2), intentional = TRUE)
		return 1

/mob/proc/hivecheck()
	return 0

/mob/proc/lingcheck()
	return LINGHIVE_NONE

/mob/proc/get_message_mode(message)
	var/key = copytext(message, 1, 2)
	if(key == "#")
		return MODE_WHISPER
	else if(key == ";")
		return MODE_HEADSET
	else if(length(message) > 2 && (key in GLOB.department_radio_prefixes))
		var/key_symbol = lowertext(copytext(message, 2, 3))
		return GLOB.department_radio_keys[key_symbol]
