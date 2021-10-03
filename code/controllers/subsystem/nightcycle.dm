/*  6:00 AM 	- 	21600
	6:45 AM 	- 	24300
	11:45 AM 	- 	42300
	4:45 PM 	- 	60300
	9:45 PM 	- 	78300
	10:30 PM 	- 	81000 */
#define CYCLE_SUNRISE 	216000
#define CYCLE_MORNING 	243000
#define CYCLE_DAYTIME 	423000
#define CYCLE_AFTERNOON 603000
#define CYCLE_SUNSET 	783000
#define CYCLE_NIGHTTIME 810000

SUBSYSTEM_DEF(nightcycle)
	name = "Day/Night Cycle"
	wait = 50
	runlevels = RUNLEVEL_LOBBY|RUNLEVEL_SETUP|RUNLEVEL_GAME
	//var/flags = 0			//see MC.dm in __DEFINES Most flags must be set on world start to take full effect. (You can also restart the mc to force them to process again
	can_fire = TRUE
	//var/list/timeBrackets = list("SUNRISE" = , "MORNING" = , "DAYTIME" = , "EVENING" = , "" = ,)
	var/currentTime
	var/sunColour
	var/sunPower = 0.75
	var/sunRange = 3
	//var/currentColumn
	var/working = 3
	var/preparing = TRUE
	var/list/OT
	var/list/BT
	//var/doColumns //number of columns to do at a time

/datum/controller/subsystem/nightcycle/fire(resumed = FALSE)
	if (preparing)
		collectTurfs()
	//if (working)
	//	doWork()
	//	return
	if (nextBracket())
		working = 1
		//currentColumn = 1


/datum/controller/subsystem/nightcycle/proc/nextBracket()
	var/Time = station_time()
	var/newTime

	switch (Time)
		if (CYCLE_SUNRISE 	to CYCLE_MORNING - 1)
			newTime = "SUNRISE"
		if (CYCLE_MORNING 	to CYCLE_DAYTIME 	- 1)
			newTime = "MORNING"
		if (CYCLE_DAYTIME 	to CYCLE_AFTERNOON	- 1)
			newTime = "DAYTIME"
		if (CYCLE_AFTERNOON to CYCLE_SUNSET 	- 1)
			newTime = "AFTERNOON"
		if (CYCLE_SUNSET 	to CYCLE_NIGHTTIME - 1)
			newTime = "SUNSET"
		else
			newTime = "NIGHTTIME"

	if (newTime != currentTime)
		currentTime = newTime
		updateLight(currentTime)
		. = TRUE

/datum/controller/subsystem/nightcycle/proc/collectTurfs()
	OT = get_area_turfs(/area/stalker/blowout/outdoor, 2, subtypes = TRUE)
	BT = get_area_turfs(/area/stalker/blowout/buildings, 2, subtypes = TRUE)
	preparing = FALSE

/datum/controller/subsystem/nightcycle/proc/updateLight(newTime)
	switch (newTime)
		if ("SUNRISE")
			to_chat(world, "<b>6:00</b> - Dawn")
			sunColour = "#ddd1b3"
			//sunPower = 0.3
		if ("MORNING")
			to_chat(world, "<b>6:45</b> - Morning comes")
			sunColour = "#ddd2e6"
			//sunPower = 0.5
		if ("DAYTIME")
			to_chat(world, "<b>11:45</b> - The day is coming")
			sunColour = "#dddddd"
			//sunPower = 0.75
		if ("AFTERNOON")
			to_chat(world, "<b>15:45</b> - Dusk")
			sunColour = "#ddd2e6"
			//sunPower = 0.5
		if ("SUNSET")
			to_chat(world, "<b>21:45</b> - Sunset")
			sunColour = "#ddaaaa"
			//sunPower = 0.3
		if("NIGHTTIME")
			to_chat(world, "<b>22:30</b> - The night is coming")
			sunColour = "#00111a"
			//sunPower = 0.15
		if("BLOWOUT")
			sunColour = "#ff3333"

	if (SSblowout.isblowout)
		sunColour = "#ff3333"

	for(var/turf/open/stalker/T in OT)
		T.set_light(sunRange, sunPower, sunColour)
	for(var/turf/open/stalker/T in BT)
		T.set_light(sunPower - 0.4, sunRange - 2, sunColour)
	return

#undef CYCLE_SUNRISE
#undef CYCLE_MORNING
#undef CYCLE_DAYTIME
#undef CYCLE_AFTERNOON
#undef CYCLE_SUNSET
#undef CYCLE_NIGHTTIME
