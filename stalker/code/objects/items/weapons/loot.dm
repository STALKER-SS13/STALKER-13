/obj/item/stalker/loot
	icon = 'stalker/icons/loot.dmi'

/obj/item/stalker/loot/dog_tail
	name = "dog tail"
	desc = "The resistance of the mutant dog's skin to electricity and chemical agents has long been the subject of scientific attention. Since the animal's tail is almost completely free of fat tissue, it is especially suited for lab experimentation."
	icon_state = "pes"

/obj/item/stalker/loot/flesh_eye
	name = "flesh eye"
	desc = "The mutated, swollen eye of the Flesh acquired a number of strange characteristics, the most useful of which is the ability to regenerate the lens. The specifics of the process are unknown, although such discovery would most certainly revolutionize modern medicine. You can play your part in scientific development by selling Flesh eyes to scientists for their experiments."
	icon_state = "plot"

/obj/item/stalker/loot/boar_leg
	name = "boar hoof"
	desc = "The hoof of a wild boar is used by scientists for manufacturing of some medicines, the most widespread of which are anti radiation drugs."
	icon_state = "kaban"

/obj/item/stalker/loot/snork_leg
	name = "snork leg"
	desc = "Snork feet contain a huge number of highly elastic tendons. This explains the beast's ability to make those unbelievably long jumps."
	icon_state = "snork_leg"

/obj/item/stalker/loot/pseudo_tail
	name = "pseudodog tail"
	desc = "The resistance of the skin of mutated dogs to chemical and electrical effects has long attracted the attention of scientists. Due to the lack of fat deposits, the tails of dogs are most suitable for laboratory research."
	icon_state = "psevdopes"

/obj/item/stalker/loot/bloodsucker
	name = "bloodsucker tendrils"
	desc = "Bloodsucker's tentacles contain a special gland used for secreting an enzyme that dissolves the victim's skin and at the same time prevents blood from clotting. If scientists can determine the structure of the enzyme, it will help make a breakthrough in medicine. "
	icon_state = "bloodsucker"


/obj/item/stalker/loot/controller_brain
	name = "controller brain"
	desc = "A brain. You can feel the psy-waves unconfortably pushing into your thoughts when you hold it."
	icon_state = "controller_brain"

/obj/item/micro_sd
	name = "micro SD"
	desc = "An encrypted simple tiny micro SD drive with a fixed amount of cryptocurrency, used by traders to perform trades."
	icon = 'stalker/icons/quest.dmi'
	icon_state = "microsd"
	w_class = WEIGHT_CLASS_TINY
	item_flags = NOBLUDGEON

/obj/item/micro_sd/attack(mob/target, mob/user)
	if(target == user) //You can't go around smacking people with crystals to find out if they have an uplink or not.
		for(var/obj/item/implant/uplink/I in target)
			if(I && I.imp_in)
				GET_COMPONENT_FROM(hidden_uplink, /datum/component/uplink, I)
				if(hidden_uplink)
					hidden_uplink.telecrystals += 40 //~80k? ~100k? I dunno rn.
					qdel(src)
					to_chat(user, "<span class='notice'>You press [src] onto yourself and charge your hidden uplink.</span>")
	else
		return ..()

/obj/item/micro_sd/afterattack(obj/item/I, mob/user, proximity)
	. = ..()
	if(istype(I, /obj/item/cartridge/virus/frame))
		var/obj/item/cartridge/virus/frame/cart = I
		if(!cart.charges)
			to_chat(user, "<span class='notice'>[cart] is out of charges, it's refusing to accept [src].</span>")
			return
		cart.telecrystals += 40
		qdel(src)
		to_chat(user, "<span class='notice'>You slot [src] into [cart].  The next time it's used, it will also give telecrystals.</span>")

	// Meat for cooking after this soon.