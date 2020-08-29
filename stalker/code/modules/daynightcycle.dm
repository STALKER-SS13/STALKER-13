
var/list/DNClist = list("#DEDF64", "#999999", "#777777", "#521C07", "#050505","#303030")

var/global/currentDncStage = 1

var/dncColor = "#DEDF64"

var/dncTime = 3000
											//#FFFFFF - светлый день
var/dncIterationInterval = 0.001			//#999999 - облачный день
											//#777777 - очень облачный день
var/dncStartup = 1							//#DEDF64 - утро 1
											//#FFC966 - утро 2 пооранжевее
var/dncIncrementing = 1						//#521C07 - вечер 1
											//#2E0F04 - вечер 2 темнее
var/list/dncTurfs = list()					//#050505 - ночь

/proc/SetDncInterval(interval)
	dncIterationInterval = interval

/proc/DayNightCycle(hard = 0)

	if(dncIncrementing)
		currentDncStage += 1
	else
		currentDncStage -= 1

	if(currentDncStage > 6)
		currentDncStage = 0
		dncIncrementing = 1
		DayNightCycle()
		return
	else if(currentDncStage < 1)
		currentDncStage = 0
		dncIncrementing = 1
		DayNightCycle()
		return

	if(hard)
		DncUpdateHard()
	else
		DncUpdateAsync()

/proc/DncIterate(iteration)
	if(iteration <= dncTurfs.len)
		var/diff = dncTurfs.len - iteration
		if(diff > 5)
			var/turf/T = dncTurfs[iteration]
			T.set_light(2, 1, dncColor)
			T = dncTurfs[iteration + 1]
			T.set_light(2, 1, dncColor)
			T = dncTurfs[iteration + 2]
			T.set_light(2, 1, dncColor)
			T = dncTurfs[iteration + 3]
			T.set_light(2, 1, dncColor)
			T = dncTurfs[iteration + 4]
			T.set_light(2, 1, dncColor)
			spawn(dncIterationInterval)
				DncIterate(iteration + 5)
		else
			var/turf/T = dncTurfs[iteration]
			T.set_light(2, 1, dncColor)
			for(var/i = 0, diff - i, i++)
				T = dncTurfs[iteration + i]
				T.set_light(2, 1, dncColor)
			DayNightCycle()
	else
		DayNightCycle()

/proc/DncUpdateAsync()
	dncColor = DNClist[currentDncStage]
	if(!dncTurfs.len)
		for(var/area/stalker/blowout/outdoor/A in GLOB.sortedAreas)
			//var/area/awaymission/snowdin/E = A
			for(var/turf/T in A.contents)
				dncTurfs.Add(T)
	DncIterate(1)

/proc/DncUpdateHard()
	dncColor = DNClist[currentDncStage]
	for(var/turf/T in dncTurfs)
		T.set_light(2, 1, dncColor)
	DayNightCycle()
