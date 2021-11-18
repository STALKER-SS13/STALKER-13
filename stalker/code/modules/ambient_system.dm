/client
	var/sound/ambient/music			= null		//Музыка
	var/sound/ambient/music_juke	= null		//Музыка из джукбокса
	var/sound/ambient/environment	= null		//Случайные короткие звуки длительностью не более 12 секунд
	var/sound/ambient/background	= null		//Залупленный звук
	var/sound/ambient/psy			= null		//Пси-звук
	var/sound/ambient/campfire		= null		//Звук от костра - campfire.dm

/area/stalker/blowout
	//var/ambient_environment_cooldown		= 666	//in case you want to override this

/sound/ambient
	var/last_time = 0
	var/real_cooldown = 0
	var/transition = 0

/mob/proc/handle_sounds()
	if(!src.client)
		return 0

	if(!src.loc)
		return 0

	var/area/A = get_area(src)

	if(client.music && !client.music.transition && (!A.ambient_music || (client.music_juke && client.music_juke.volume > 0)))
		client.music.Transition(src)
		client.music = null

	if(client.background && !client.background.transition && !(client.background.file in A.ambient_background))

		client.background.Transition(src)
		client.background = null

	if(client.psy && client.psy.volume > 10)
		return 1

	if(!client.music || (!client.music.transition && (world.time >= client.music.last_time + client.music.real_cooldown)))

		if(A.ambient_music && (!client.music_juke || (client.music_juke && client.music_juke.volume <= 0)))

			if(client.music)
				client.music.Transition(src)

			client.music = new/sound/ambient(file = safepick(A.ambient_music))
			////////////////////////
			client.music.real_cooldown = rand(A.ambient_music_cooldown * 0.8, A.ambient_music_cooldown * 1.4)
			client.music.last_time = world.time
			////////////////////////
			client.music.Set_Sound(AMBIENT_MUSIC_CHANNEL, 10, 0, -1)
			src << client.music

	//dont play nice environmental ambience in a blowout
	if(SSblowout.isblowout)
		return 1

	if(!client.environment || (world.time >= client.environment.last_time + client.environment.real_cooldown))

		var/list/environment_ambience

		if(SSnightcycle.is_daylight())
			environment_ambience = A.ambient_environment
		else
			if(A.ambient_environment_night && A.ambient_environment_night.len > 0)
				environment_ambience = A.ambient_environment_night
			else
				environment_ambience = A.ambient_environment

		if(environment_ambience != null && environment_ambience.len > 0)
			client.environment = new/sound/ambient(file = safepick(environment_ambience))

			////////////////////////
			client.environment.last_time = world.time
			client.environment.real_cooldown = rand(A.ambient_environment_cooldown * 0.3, A.ambient_environment_cooldown * 1.5)
			////////////////////////
			client.environment.Set_Sound(AMBIENT_ENVIRONMENT_CHANNEL, rand(25, 60), rand(-100, 100), A.environment)
			src << client.environment

	if(!client.background || (!client.background.transition && (world.time >= client.background.last_time + client.background.real_cooldown)))

		if(A.ambient_background)
			var/file = safepick(A.ambient_background)
			client.background = new/sound/ambient(file)
			client.background.real_cooldown = A.ambient_background[file]
			if(!isnum(client.background.real_cooldown))
				message_admins("Error: ambient background sfx \'[file]\' for \type[A] has no cooldown set, defaulting to 100...")
				client.background.real_cooldown = 100
				A.ambient_background[file] = 100

		if(client.background)
			////////////////////////
			client.background.last_time = world.time
			////////////////////////
			client.background.Set_Sound(AMBIENT_BACKGROUND_CHANNEL, 35, 0, A.environment)
			src << client.background

	return 1

/mob/living/carbon/human/handle_sounds()
	if(!..())
		return

	if(src.psyloss >= 25 && (!client.psy || (world.time >= client.psy.last_time + client.psy.real_cooldown)))
		client.psy = new/sound/ambient(file = 'stalker/sound/ambience/psy_amb.ogg')
		////////////////////////
		client.psy.last_time = world.time
		client.psy.real_cooldown = 110
		////////////////////////
		client.psy.Set_Sound(AMBIENT_PSY_CHANNEL, 60*(psyloss/200), 0, -1)
		src << client.psy


/sound/ambient/proc/Transition(var/mob/M, var/new_volume = 0)
	transition = 1
	status = SOUND_STREAM | SOUND_UPDATE
	//animate(src, volume = new_volume, time = 2.5, loop = 1)
	while(volume > 0)
		volume = max(volume - 2, 0)
		M << src
		/////////
		sleep(2.5)
		/////////
	//status = SOUND_PAUSED
	status = SOUND_STREAM
	transition = 0

/sound/proc/Set_Sound(var/channel_, var/volume_, var/pan_ , var/environment_)
	status = SOUND_STREAM
	repeat = 0
	wait = 0
	channel = channel_
	volume = volume_
	frequency = 0
	pan = pan_
	environment = environment_
	priority = 250