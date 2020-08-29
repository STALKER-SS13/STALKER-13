
/*
	Client Colour Priority System By RemieRichards
	A System that gives finer control over which client.colour value to display on screen
	so that the "highest priority" one is always displayed as opposed to the default of
	"whichever was set last is displayed"
*/



/*
	Define subtypes of this datum
*/
/datum/client_colour
	var/colour = "" //Any client.color-valid value
	var/priority = 1 //Since only one client.color can be rendered on screen, we take the one with the highest priority value:
	//eg: "Bloody screen" > "goggles colour" as the former is much more important


/mob
	var/list/client_colours = list()

/mob/living/carbon
	var/datum/client_colour/psy_colour = null

/client/proc/colour_transition(var/list/colour_to = null, var/time = 10) //Call this with no parameters to reset to default.
	animate(src, color=colour_to, time=time, easing=SINE_EASING)

/*
	Adds an instance of colour_type to the mob's client_colours list
	colour_type - a typepath (subtyped from /datum/client_colour)
*/
/mob/proc/add_client_colour(colour_type)
	if(!ispath(colour_type, /datum/client_colour))
		return

	var/datum/client_colour/CC = new colour_type()
	client_colours |= CC
	sortTim(client_colours, /proc/cmp_clientcolour_priority)
	update_client_colour()


/*
	Removes an instance of colour_type from the mob's client_colours list
	colour_type - a typepath (subtyped from /datum/client_colour)
*/
/mob/proc/remove_client_colour(colour_type)
	if(!ispath(colour_type, /datum/client_colour))
		return

	for(var/cc in client_colours)
		var/datum/client_colour/CC = cc
		if(CC.type == colour_type)
			client_colours -= CC
			qdel(CC)
			break
	update_client_colour()


/*
	Resets the mob's client.color to null, and then sets it to the highest priority
	client_colour datum, if one exists
*/
/mob/proc/update_client_colour()
	if(!client)
		return
	if(!client_colours.len)
		return
	var/datum/client_colour/CC = client_colours[1]
	if(CC)
		client.colour_transition(CC.colour)
	else
		client.colour_transition()

/mob/proc/find_client_colour(colour_type)
	if(!ispath(colour_type, /datum/client_colour))
		return null

	for(var/cc in client_colours)
		var/datum/client_colour/CC = cc
		if(CC.type == colour_type)
			return CC
			break

/datum/client_colour/glass_colour
	priority = 0
	colour = "red"

/datum/client_colour/glass_colour/green
	colour = "#aaffaa"

/datum/client_colour/glass_colour/lightgreen
	colour = "#ccffcc"

/datum/client_colour/glass_colour/blue
	colour = "#aaaaff"

/datum/client_colour/glass_colour/lightblue
	colour = "#ccccff"

/datum/client_colour/glass_colour/yellow
	colour = "#ffff66"

/datum/client_colour/glass_colour/red
	colour = "#ffaaaa"

/datum/client_colour/glass_colour/darkred
	colour = "#bb5555"

/datum/client_colour/glass_colour/orange
	colour = "#ffbb99"

/datum/client_colour/glass_colour/lightorange
	colour = "#ffddaa"

/datum/client_colour/glass_colour/purple
	colour = "#ff99ff"

/datum/client_colour/glass_colour/gray
	colour = "#cccccc"

/datum/client_colour/blowout
	colour = list(rgb(255,0,0), rgb(125,125,0), rgb(125,0,125), rgb(0,0,0))
	priority = 2

/datum/client_colour/blowout2
	colour = list(rgb(255,0,0), rgb(77,150,0), rgb(77,0,150), rgb(0,0,0))
	priority = 3

/datum/client_colour/psy
	//colour = list(rgb(77,77,77), rgb(150,150,150), rgb(28,28,28), rgb(0,0,0))
	colour = list(\
	1, 0, 0,\
	1, 0, 0,\
	1, 0, 0\
	)
	priority = 4

/datum/client_colour/nvg
	colour = list(rgb(25,225,0), rgb(0,255,0), rgb(0,255,25), rgb(0,0,0))
	priority = 5

/datum/client_colour/nvg2
	colour = list(rgb(77,77,77), rgb(77,77,77), rgb(77,77,77), rgb(0,0,0))
	priority = 5

/datum/client_colour/correction
	colour = list(rgb(255,15,15), rgb(5,225,5), rgb(5,5,225), rgb(0,0,0))
	priority = 1

/datum/client_colour/retardation
	colour = list(rgb(125,55,125), rgb(55,155,55), rgb(55,55,255), rgb(0,0,0))
	priority = 2

/datum/client_colour/monochrome
	colour = list(rgb(77,77,77), rgb(150,150,150), rgb(28,28,28), rgb(0,0,0))
	priority = 6 //we can't see colors anyway!
