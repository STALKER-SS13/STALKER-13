//Many thanks to Occulus-Server for the code

/area

	var/narrate //A text-based description of what this area is for.
	var/list/blurbed_stated_to = list() //This list of names is here to make sure we don't state our descriptive blurb to a person more than once.



/area/proc/do_area_blurb(var/mob/living/L)
	if(!narrate)
		return
/*
	if(L.client.prefs.toggles &! CHAT_SEE_AREA_BLURBS)  I would've left this active but figuring how to create a preference in the new system turned too painful - Cryleve
		return
*/

	if(!(L.ckey in blurbed_stated_to))
		blurbed_stated_to += L.ckey
		to_chat(L,("[narrate]"))


/************
OKAY SO HERE'S HOW THIS WORKS
We have an area. When someone enters the area, it checks if this person has the preference enabled and if they haven't been in that area before. If both are false, it throws up a description.
The var is 'narrate'.
/area/eris/crew_quarters/bar
	name = "\improper Bar"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR
	narrate = "Reflective blue floors give the illusion of neon and glamour. The smell of alcohol is strong on the air. " < This is the important line.
ty ilu - bear
*/



/////////////
//Backwater//
/////////////


/area/stalker/blowout/outdoor/backwater
	narrate = "You hear crickets chirping in the murky swamps covered in old ships, home to anomalies, mutants, and bandits alike. Careful, you're not alone out here..."

