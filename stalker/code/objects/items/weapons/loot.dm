/obj/item/stalker/loot
	icon = 'stalker/icons/loot.dmi'

/obj/item/stalker/loot/mutantparts
	name = "mutant parts"

/obj/item/stalker/loot/mutantparts/dog_tail
	name = "dog tail"
	desc = "The resistance of the mutant dog's skin to electricity and chemical agents has long been the subject of scientific attention. Since the animal's tail is almost completely free of fat tissue, it is especially suited for lab experimentation."
	icon_state = "pes"
	grind_results = list("carbon" = 10, "unknownsubstance" = 5, "nutriment" = 10, "blood" = 10)

/obj/item/stalker/loot/mutantparts/rat_tail
	name = "rat tail"
	desc = "This is a rat tail... whether or not it will be any use will be up to the scientist to find out."
	icon_state = "rattail"
	grind_results = list("carbon" = 5, "unknownsubstance" = 2.5, "nutriment" = 5, "blood" = 5)

/obj/item/stalker/loot/mutantparts/flesh_eye
	name = "flesh eye"
	desc = "The mutated, swollen eye of the Flesh acquired a number of strange characteristics, the most useful of which is the ability to regenerate the lens. The specifics of the process are unknown, although such discovery would most certainly revolutionize modern medicine. You can play your part in scientific development by selling Flesh eyes to scientists for their experiments."
	icon_state = "plot"
	grind_results = list("carbon" = 5, "unknownsubstancetwo" = 5, "nutriment" = 10, "blood" = 10)

/obj/item/stalker/loot/mutantparts/boar_leg
	name = "boar hoof"
	desc = "The hoof of a wild boar is used by scientists for manufacturing of some medicines, the most widespread of which are anti radiation drugs."
	icon_state = "boar"
	grind_results = list("carbon" = 5, "unknownsubstancetwo" = 5, "nutriment" = 10, "blood" = 10)

/obj/item/stalker/loot/mutantparts/snork_leg
	name = "snork leg"
	desc = "Snork feet contain a huge number of highly elastic tendons. This explains the beast's ability to make those unbelievably long jumps."
	icon_state = "snork_leg"
	grind_results = list("carbon" = 10, "unknownsubstancefour" = 5, "nutriment" = 10, "blood" = 10)

/obj/item/stalker/loot/mutantparts/pseudo_tail
	name = "pseudodog tail"
	desc = "The resistance of the skin of mutated dogs to chemical and electrical effects has long attracted the attention of scientists. Due to the lack of fat deposits, the tails of dogs are most suitable for laboratory research."
	icon_state = "psevdopes"
	grind_results = list("carbon" = 10, "unknownsubstance" = 5, "nutriment" = 10, "blood" = 10)

/obj/item/stalker/loot/mutantparts/bloodsucker
	name = "bloodsucker tendrils"
	desc = "Bloodsucker's tentacles contain a special gland used for secreting an enzyme that dissolves the victim's skin and at the same time prevents blood from clotting. If scientists can determine the structure of the enzyme, it will help make a breakthrough in medicine. "
	icon_state = "bloodsucker"
	grind_results = list("carbon" = 10, "unknownsubstancefour" = 7.5, "nutriment" = 10, "blood" = 10)

/obj/item/stalker/loot/mutantparts/controller_brain
	name = "controller brain"
	desc = "A brain. You can feel the psy-waves unconfortably pushing into your thoughts when you hold it."
	icon_state = "controller_brain"
	grind_results = list("carbon" = 10, "unknownsubstancefour" = 7.5, "nutriment" = 10, "blood" = 10)

/obj/item/stalker/loot/mutantparts/poltergeist_skin
	name = "poltergeist flesh"
	desc = "A chunk of flesh taken from a Poltergeist. It seems to be very slightly moving on its own, somehow."
	icon_state = "myaso"
	grind_results = list("carbon" = 5, "unknownsubstancethree" = 7.5, "nutriment" = 5, "blood" = 5, "slimejelly" = 5)

	/// Raw Meat ///

/obj/item/reagent_containers/food/snacks/meat/slab/mutantmeat
	name = "mutant meat"
	desc = "Stringy, gamey meat from a mutant."
	icon_state = "mutantmeat"
	grind_results = list("carbon" = 10, "unknownsubstance" = 5, "nutriment" = 10, "blood" = 10)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/mutant
	slice_path = /obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant
	tastes = list("meat" = 1)
	foodtype = MEAT | RAW
	dried_type = /obj/item/reagent_containers/food/snacks/sosjerky/mutant
	bitesize = 3
	list_reagents = list("nutriment" = 3, "cooking_oil" = 2) //Meat has fats that a food processor can process into cooking oil

/obj/item/reagent_containers/food/snacks/meat/slab/mutantmeat/dog_meat
	name = "dog meat"
	desc = "Stringy, gamey meat from a mutant dog."
	icon_state = "mutantmeat"
	grind_results = list("carbon" = 10, "unknownsubstance" = 5, "nutriment" = 10, "blood" = 10)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/mutant/dog
	slice_path = /obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant/dog
	tastes = list("meat" = 1)
	foodtype = MEAT | RAW
	bitesize = 3

/obj/item/reagent_containers/food/snacks/meat/slab/mutantmeat/rat_meat
	name = "rat meat"
	desc = "This is rat meat... It does not appear to be too appetizing as it is."
	icon_state = "mutantmeat"
	grind_results = list("carbon" = 5, "unknownsubstance" = 2.5, "nutriment" = 5, "blood" = 5)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/mutant/rat
	slice_path = /obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant/rat
	tastes = list("meat" = 1)
	foodtype = MEAT | RAW
	bitesize = 3

/obj/item/reagent_containers/food/snacks/meat/slab/mutantmeat/flesh_meat
	name = "flesh meat"
	desc = "Meat from a flesh; it has a strong rotten and putrescent odor."
	icon_state = "mutantmeat"
	grind_results = list("carbon" = 5, "unknownsubstancetwo" = 5, "nutriment" = 10, "blood" = 10)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/mutant/flesh
	slice_path = /obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant/flesh
	tastes = list("meat" = 1)
	foodtype = MEAT | RAW
	bitesize = 3

/obj/item/reagent_containers/food/snacks/meat/slab/mutantmeat/boar_meat
	name = "boar meat"
	desc = "The meat of a wild mutated boar; it seems thick and hard to bend."
	icon_state = "mutantmeat"
	grind_results = list("carbon" = 5, "unknownsubstancetwo" = 5, "nutriment" = 10, "blood" = 10)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/mutant/boar
	slice_path = /obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant/boar
	tastes = list("meat" = 1)
	foodtype = MEAT | RAW
	bitesize = 3

/obj/item/reagent_containers/food/snacks/meat/slab/mutantmeat/snork_meat
	name = "snork meat"
	desc = "Snork meat, it is extremely lean and tough."
	icon_state = "mutantmeat"
	grind_results = list("carbon" = 10, "unknownsubstancefour" = 5, "nutriment" = 10, "blood" = 10)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/mutant/snork
	slice_path = /obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant/snork
	tastes = list("meat" = 1)
	foodtype = MEAT | RAW
	bitesize = 3

/obj/item/reagent_containers/food/snacks/meat/slab/mutantmeat/pseudo_meat
	name = "pseudodog meat"
	desc = "Stringy, gamey meat from a pseudodog."
	icon_state = "mutantmeat"
	grind_results = list("carbon" = 10, "unknownsubstance" = 5, "nutriment" = 10, "blood" = 10)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/mutant/pseudo
	slice_path = /obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant/pseudo
	tastes = list("meat" = 1)
	foodtype = MEAT | RAW
	bitesize = 3

/obj/item/reagent_containers/food/snacks/meat/slab/mutantmeat/bloodsucker_meat
	name = "bloodsucker meat"
	desc = "Bloodsucker meat, it smells putrescent and seems to twitch every once and a while."
	icon_state = "mutantmeat"
	grind_results = list("carbon" = 10, "unknownsubstancefour" = 7.5, "nutriment" = 10, "blood" = 10)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/mutant/bloodsucker
	slice_path = /obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant/bloodsucker
	tastes = list("meat" = 1)
	foodtype = MEAT | RAW
	bitesize = 3

/obj/item/reagent_containers/food/snacks/meat/slab/mutantmeat/controller_meat
	name = "controller meat"
	desc = "Mutant meat from a controller. You can feel pulsating coming from this sticky slab of flesh."
	icon_state = "mutantmeat"
	grind_results = list("carbon" = 10, "unknownsubstancefour" = 7.5, "nutriment" = 10, "blood" = 10)
	cooked_type = /obj/item/reagent_containers/food/snacks/meat/steak/mutant/controller
	slice_path = /obj/item/reagent_containers/food/snacks/meat/rawcutlet/mutant/controller
	tastes = list("meat" = 1)
	foodtype = MEAT | RAW
	bitesize = 3

	/// Cooked Meat ///

/obj/item/reagent_containers/food/snacks/meat/steak/mutant
	name = "cooked mutant meat"
	desc = "Stringy, gamey meat from a mutant."
	icon_state = "mutantmeatcooked"
	trash = null

/obj/item/reagent_containers/food/snacks/meat/steak/mutant/dog
	name = "cooked dog meat"
	desc = "Stringy, gamey meat from a mutant dog."

/obj/item/reagent_containers/food/snacks/meat/steak/mutant/rat
	name = "cooked rat meat"
	desc = "This is rat meat... It does not appear to be too appetizing as it is."

/obj/item/reagent_containers/food/snacks/meat/steak/mutant/flesh
	name = "cooked flesh meat"
	desc = "Meat from a flesh; it has a strong rotten and putrescent odor."

/obj/item/reagent_containers/food/snacks/meat/steak/mutant/boar
	name = "cooked boar meat"
	desc = "The meat of a wild mutated boar; it seems thick and hard to bend."

/obj/item/reagent_containers/food/snacks/meat/steak/mutant/snork
	name = "cooked snork meat"
	desc = "Snork meat, it is extremely lean and tough."

/obj/item/reagent_containers/food/snacks/meat/steak/mutant/pseudo
	name = "cooked pseudodog meat"
	desc = "Stringy, gamey meat from a pseudodog."

/obj/item/reagent_containers/food/snacks/meat/steak/mutant/bloodsucker
	name = "cooked bloodsucker meat"
	desc = "Bloodsucker meat, it smells putrescent and seems to twitch every once and a while."

/obj/item/reagent_containers/food/snacks/meat/steak/mutant/controller
	name = "cooked controller meat"
	desc = "Mutant meat from a controller. You can feel pulsating coming from this sticky slab of flesh."
