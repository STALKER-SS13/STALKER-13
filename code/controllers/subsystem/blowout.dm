/mob/living/carbon
	var/inshelter = 0
	var/inprivatezone = 0

/area/stalker/blowout/Entered(var/atom/movable/A)
	if(istype(A, /mob/living/carbon))
		var/mob/living/carbon/C = A
		CheckControl(C)
		if(SSblowout.isblowout && C.inshelter)
			if(C.client && (C.client.prefs.chat_toggles & CHAT_LANGUAGE))
				to_chat(C, "<big><span class='warning'>You leave the shelter.</span></big>")
			else
				to_chat(C, "<big><span class='warning'>You leave the shelter.</span></big>")
			C.overlay_fullscreen("blowjob", /obj/screen/fullscreen/color_vision/blowjob)
		C.inshelter = 0

/area/stalker/Entered(var/atom/movable/A)
	if(istype(A, /mob/living/carbon))
		var/mob/living/carbon/C = A
		CheckControl(C)
		if(SSblowout.isblowout && !C.inshelter)
			if(C.client && (C.client.prefs.chat_toggles & CHAT_LANGUAGE))
				to_chat(C, "<big><span class='notice'>You enter the shelter.</span></big>")
			else
				to_chat(C, "<big><span class='notice'>You enter the shelter.</span></big>")
			C.clear_fullscreen("blowjob")
		C.inshelter = 1

/area/proc/CheckControl(var/mob/living/carbon/C)
	if(!C.inprivatezone && controlled_by)
		if(C.client && (C.client.prefs.chat_toggles & CHAT_LANGUAGE))
			to_chat(C, "<big><span class='warning'>You enter the zone controlled by [controlled_by]. [controlled_by] can kill you on sight if you are not allied.</warning></big>")
		else
			to_chat(C, "<big><span class='warning'>You are entering an area controlled by the faction. [get_rus_faction(controlled_by)]. You are entering an area controlled by the faction..</warning></big>")

	if(controlled_by)
		C.inprivatezone = 1
	else
		C.inprivatezone = 0

SUBSYSTEM_DEF(blowout)
	name = "Blowouts"
	priority = 1
	runlevels = RUNLEVEL_GAME
	var/isblowout = 0
	var/blowout_count = 0
	var/blowoutphase = 0
	var/average_cooldown = 27000
	var/cooldownreal = 10000
	var/lasttime = 0
	var/starttime = 0
	var/cleaned = 0
	var/list/ambient = list('stalker/sound/blowout/blowout_amb_01.ogg', 'stalker/sound/blowout/blowout_amb_02.ogg',
						'stalker/sound/blowout/blowout_amb_03.ogg', 'stalker/sound/blowout/blowout_amb_04.ogg',
						'stalker/sound/blowout/blowout_amb_05.ogg', 'stalker/sound/blowout/blowout_amb_06.ogg',
						'stalker/sound/blowout/blowout_amb_07.ogg', 'stalker/sound/blowout/blowout_amb_08.ogg')

	var/list/rumble = list('stalker/sound/blowout/blowout_ambient_rumble_01.ogg', 'stalker/sound/blowout/blowout_ambient_rumble_02.ogg',
							'stalker/sound/blowout/blowout_ambient_rumble_03.ogg', 'stalker/sound/blowout/blowout_ambient_rumble_04.ogg')

	var/list/wave = list('stalker/sound/blowout/blowout_wave_01.ogg', 'stalker/sound/blowout/blowout_wave_02.ogg',
						'stalker/sound/blowout/blowout_wave_03.ogg')

	var/list/boom = list('stalker/sound/blowout/blowout_boom_01.ogg', 'stalker/sound/blowout/blowout_boom_02.ogg',
						'stalker/sound/blowout/blowout_boom_03.ogg')

	var/list/lightning = list('stalker/sound/blowout/blowout_lightning_01.ogg', 'stalker/sound/blowout/blowout_lightning_02.ogg',
								'stalker/sound/blowout/blowout_lightning_03.ogg', 'stalker/sound/blowout/blowout_lightning_04.ogg',
								'stalker/sound/blowout/blowout_lightning_05.ogg', 'stalker/sound/blowout/blowout_flare_01.ogg',
								'stalker/sound/blowout/blowout_flare_02.ogg', 'stalker/sound/blowout/blowout_flare_03.ogg',
								'stalker/sound/blowout/blowout_flare_04.ogg')

	var/list/wind = list('stalker/sound/blowout/blowout_wind_01.ogg', 'stalker/sound/blowout/blowout_wind_02.ogg',
							'stalker/sound/blowout/blowout_wind_03.ogg')

/datum/controller/subsystem/blowout/fire()
	if(world.time <= lasttime + cooldownreal)
		return

	if(!isblowout)
		StartBlowout()
		return

	if(starttime)
///////III STAGE OF BLOWOUT///////////////////////////////////////////////////////
		if(BLOWOUT_DURATION_STAGE_III + starttime < world.time && cleaned)
			AfterBlowout()
			return

		ProcessBlowout()

///////II STAGE OF BLOWOUT////////////////////////////////////////////////////////
		if((BLOWOUT_DURATION_STAGE_II + starttime) < world.time)
			if(blowoutphase == 2)
				StopBlowout()
				BlowoutDealDamage()
			if(MC_TICK_CHECK)
				return
			BlowoutGib()
			if(MC_TICK_CHECK)
				return
			BlowoutClean()
			if(MC_TICK_CHECK)
				return
			if(!(locate(/mob/living) in GLOB.dead_mob_list)) //!ACs.len &&
				cleaned = 1
			return
///////I STAGE OF BLOWOUT/////////////////////////////////////////////////////////
		if((BLOWOUT_DURATION_STAGE_I + starttime) < world.time)
			if(blowoutphase == 1)
				PreStopBlowout()
			return

/datum/controller/subsystem/blowout/proc/StartBlowout()
	isblowout = 1
	blowoutphase = 1
	starttime = world.time

	//SSnightcycle.updateLight("BLOWOUT")

	add_lenta_message(null, "0", "Sidorovich", "Loners", "ATTENTION STALKERS! Blowout is coming! Look for the nearest hideout!")
	world << sound('stalker/sound/blowout/blowout_begin_02.ogg', wait = 0, channel = 201, volume = 50)
	world << sound('stalker/sound/blowout/blowout_siren.ogg', wait = 0, channel = 202, volume = 60)

	for(var/mob/living/carbon/C in GLOB.player_list)
		if(!C.inshelter)
			to_chat(C, "<big><span class='warning'>You urgently need to look for shelter, the emission will begin soon!</span></big>")
			C.overlay_fullscreen("blowjob", /obj/screen/fullscreen/color_vision/blowjob)
		else
			to_chat(C, "<big><span class='notice'>You are in cover, you should stay in here until the emission is over.</span></big>")
			C.clear_fullscreen("blowjob")

/datum/controller/subsystem/blowout/proc/PreStopBlowout()
	blowoutphase = 2
	world << sound('stalker/sound/blowout/blowout_particle_wave.ogg', wait = 0, channel = 201, volume = 70)

/datum/controller/subsystem/blowout/proc/BlowoutClean()
	for(var/obj/item/ammo_casing/AC in ACs)
		ACs -= AC
		qdel(AC)
		if(MC_TICK_CHECK)
			return

/datum/controller/subsystem/blowout/proc/BlowoutGib()
	for(var/mob/living/L in GLOB.dead_mob_list)
		L.gib()
		if(MC_TICK_CHECK)
			return
		CHECK_TICK

/datum/controller/subsystem/blowout/proc/BlowoutDealDamage()
	for(var/mob/living/carbon/human/H)
		H.clear_fullscreen("blowjob")
		if(!H.inshelter)
			H.apply_damage(200, PSY)
		CHECK_TICK

/datum/controller/subsystem/blowout/proc/StopBlowout()

	if(blowoutphase == 2)

		world << sound('stalker/sound/blowout/blowout_impact_02.ogg', wait = 0, channel = 201, volume = 70)
		world << sound('stalker/sound/blowout/blowout_outro.ogg', wait = 0, channel = 202, volume = 70)

	blowoutphase = 3

	for(var/obj/item/artifact/A)

		if(A.invisibility > 30)

			CHECK_TICK

	for(var/obj/anomaly/An in GLOB.anomalies)

		An.SpawnArtifact()
		CHECK_TICK

	for(var/datum/job/J in SSjob.occupations)

		J.total_positions = initial(J.total_positions)
		CHECK_TICK

	for(var/obj/machinery/stalker/sidorpoint/SP in GLOB.cps)

		SP.SendJobTotalPositions()
		CHECK_TICK

	for(var/obj/structure/stalker/cacheable/C in world)

		C.internal_cache = null
		C.cache_chance = rand(7, 12)
		C.RefreshContents()
		CHECK_TICK

/datum/controller/subsystem/blowout/proc/AfterBlowout()

	cooldownreal = rand(average_cooldown * 0.7, average_cooldown * 1.3)
	isblowout = 0
	lasttime = world.time
	starttime = 0
	cleaned = 0

	//SSnightcycle.updateLight("DAYTIME")

	world << sound(null, wait = 0, channel = 19, volume = 70)
	world << sound(null, wait = 0, channel = 20, volume = 70)
	world << sound(null, wait = 0, channel = 21, volume = 70)
	world << sound(null, wait = 0, channel = 22, volume = 70)
	world << sound(null, wait = 0, channel = 23, volume = 70)
	world << sound(null, wait = 0, channel = 24, volume = 70)

	/////////////////////////////////////
	////Deleting old stalker profiles////
	//for(var/datum/data/record/sk in data_core.stalkers)
	//	if(sk.fields["lastlogin"] + 27000 < world.time)
	//		data_core.stalkers -= sk
	/////////////////////////////////////

	//Очистка ленты
	global_lentahtml = ""
	for(var/obj/item/stalker_pda/KPK in GLOB.KPKs)
		KPK.lentahtml = ""

	blowout_count++
	add_lenta_message(null, "0", "Sidorovich", "Loners", "The emmission is over! You can safely leave the shelter.")

	for(var/datum/data/record/sk in GLOB.data_core.stalkers)
		if(sk.fields["reputation"] <= VERYBAD)
			var/name_ = sk.fields["name"]
			var/rep_ = sk.fields["reputation"]
			add_lenta_message(null, "0", "Sidorovich", "Loners", "For PDA [name_] get [GetCostBasedOnReputation(rep_)] roubles.")
	add_lenta_message(null, "0", "Sidorovich", "Loners", "Search, kill and sell the PDAs of stalkers with bad reputations!")


/datum/controller/subsystem/blowout/proc/ProcessBlowout()
	if(isblowout)
		for(var/mob/living/carbon/human/H)
			if(istype(get_area(H), /area/stalker/blowout))
				switch(blowoutphase)
					if(1)
						shake_camera(H, 1, 1)
					if(2)
						shake_camera(H, 2, 1)
					if(3)
						shake_camera(H, 10, 1)

	if(prob(20))
		var/a = pick(SSblowout.ambient)
		world << sound(a, wait = 1, channel = 19, volume = 70)

	if(prob(30))
		var/a = pick(SSblowout.wave)
		world << sound(a, wait = 1, channel = 20, volume = 70)

	if(prob(20))
		var/a = pick(SSblowout.wind)
		world << sound(a, wait = 1, channel = 21, volume = 70)

	if(prob(30))
		var/a = pick(SSblowout.rumble)
		world << sound(a, wait = 1, channel = 22, volume = 70)

	if(prob(50))
		var/a = pick(SSblowout.boom)
		world << sound(a, wait = 1, channel = 23, volume = 70)

	if(prob(50))
		var/a = pick(SSblowout.lightning)
		world << sound(a, wait = 1, channel = 24, volume = 70)
