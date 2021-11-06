/datum/mood_event/high
	mood_change = 6
	description = "<span class='nicegreen'>Holy shit! This stuff hits the spot!</span>\n"

/datum/mood_event/smoked
	description = "<span class='nicegreen'>That was a nice smoke I had..</span>\n"
	mood_change = 2
	timeout = 3600

/datum/mood_event/wrong_brand
	description = "<span class='warning'>I don't like that brand of cigarettes, I guess a cigarette is a cigarette.</span>\n"
	mood_change = -2
	timeout = 3600

/datum/mood_event/overdose
	mood_change = -8
	timeout = 3000

/datum/mood_event/overdose/add_effects(drug_name)
	description = "<span class='warning'>I may have took a bit too much of that [drug_name]... I don't feel so good!</span>\n"

/datum/mood_event/withdrawal_light
	mood_change = -2

/datum/mood_event/withdrawal_light/add_effects(drug_name)
	description = "<span class='warning'>I'm coming down off my high, do I have any more [drug_name]?</span>\n"

/datum/mood_event/withdrawal_medium
	mood_change = -5

/datum/mood_event/withdrawal_medium/add_effects(drug_name)
	description = "<span class='warning'>I got to prioritize getting [drug_name] before anything else. I've overcome worse, this should be easy!</span>\n"

/datum/mood_event/withdrawal_severe
	mood_change = -8

/datum/mood_event/withdrawal_severe/add_effects(drug_name)
	description = "<span class='boldwarning'>I got to do something to get [drug_name], where the fuck is it!? I'm sick and tired of this, I just wanna imbibe!</span>\n"

/datum/mood_event/withdrawal_critical
	mood_change = -10

/datum/mood_event/withdrawal_critical/add_effects(drug_name)
	description = "<span class='boldwarning'>[drug_name]! [drug_name]! [drug_name]! This is a fate worse than death, where is some fucking [drug_name]? AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA!!!</span>\n"

/datum/mood_event/happiness_drug
	description = "<span class='nicegreen'>I can't feel anything and I never want this to end. I am my whole self, and I am content in my existence.</span>\n"
	mood_change = 50

/datum/mood_event/happiness_drug_good_od
	description = "<span class='nicegreen'>YES! YES!! YES!!!</span>\n"
	mood_change = 100
	timeout = 300
	special_screen_obj = "mood_happiness_good"

/datum/mood_event/happiness_drug_bad_od
	description = "<span class='boldwarning'>NO! NO!! NO!!!</span>\n"
	mood_change = -100
	timeout = 300
	special_screen_obj = "mood_happiness_bad"
