/obj/structure/stalker/tree
	name = "tree"
	icon = 'stalker/icons/derevya.dmi'
	icon_state = "derevo1"
	density = 0
	opacity = 0
	layer = 9

/obj/structure/stalker/tree/New()
	icon_state = "derevo[rand(1, 5)]"

/*
/obj/structure/stalker/tree/topol
	icon_state = "topol"

/obj/structure/stalker/tree/bereza1
	icon_state = "bereza1"

/obj/structure/stalker/tree/bereza2
	icon_state = "bereza2"

/obj/structure/stalker/tree/el1
	icon_state = "el1"

/obj/structure/stalker/tree/el2
	icon_state = "el2"
*/

/obj/structure/stalker/tree/leafless/
	name = "dead tree"
	icon = 'stalker/icons/derevya.dmi'
	icon_state = "derevo1l"
	density = 0
	opacity = 0
	layer = 9

/obj/structure/stalker/tree/leafless/New()
	icon_state = "derevo[rand(1, 5)]l"

/*
/obj/structure/stalker/tree/leafless/derevo2
	icon_state = "derevo2ll"

/obj/structure/stalker/tree/leafless/derevo3
	icon_state = "derevo3ll"

/obj/structure/stalker/tree/leafless/bereza1
	icon_state = "bereza1ll"

/obj/structure/stalker/tree/leafless/bereza2
	icon_state = "bereza2ll"
*/

/obj/structure/stalker/tree/leaflessred/
	name = "dead tree"
	icon = 'stalker/icons/derevya.dmi'
	icon_state = "derevored1l"
	density = 0
	opacity = 1
	layer = 9

/obj/structure/stalker/tree/leaflessred/New()
	icon_state = "derevored[rand(1, 5)]l"