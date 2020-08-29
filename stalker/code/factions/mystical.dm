/*

/client/proc/karma_panel_new()
	set category = "Black Stalker"
	set name = "Karma Panel"

	if(mob.job != "Black Stalker")
		return

	var/dat = "<html><head><title>Black Stalker Karma Panel</title></head><body>"
	dat += {"
			<style>
			  tr
			  {
			    border: solid black 1px;
			  }

			  tr > td
			  {
			    border: solid black 1px;
			    height: 40px;
			  }
			</style>
			"}

	for(var/mob/living/carbon/human/H in sortmobs())
		if(H.stat != DEAD && H.karma && H.ckey)
			dat += {"
					<table class="container">
					  <tr>
					    <td colspan="2">[html_encode(H.real_name)]</td>
					    <td colspan="2">[html_encode(H.ckey)]</td>
					    <td colspan="2">[html_encode(H.karma)]</td>
					    <td><a href="?src=\ref[mob];teleport=\ref[H]" class="col-xs-3 btn btn-danger">Явитьс&#1103;</a></td>
					  </tr>
					</div>
			"}

	dat += "</body></html>"
	usr << browse(dat, "window=players;size=600x480")

/mob/living/carbon/human/Topic(href, href_list)
	if(job == "Black Stalker" && href_list["teleport"])
		var/mob/living/carbon/M = locate(href_list["teleport"])
		src.invisibility = 30
		src.loc = M.loc
		M.pulse_image("blackstalker", 200, 5)
		M << 'sound/stalker/mystic/scary/scary1.ogg'

/datum/job/mystical

/datum/job/mystical/blackstalker
	title = "Black Stalker"
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = ""
	selection_color = "#000000"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	outfit = /datum/outfit/job/blackstalker

/datum/outfit/job/blackstalker
	name = "Black Stalker"

/datum/outfit/job/blackstalker/pre_equip(mob/living/carbon/human/H)
	H.client.verbs += /client/proc/karma_panel_new
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kozhanka/banditka
	ears = null
	id = /obj/item/weapon/storage/wallet/stalker
	belt = /obj/item/weapon/kitchen/knife/tourist
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = /obj/item/clothing/mask/balaclava
	back = /obj/item/weapon/storage/backpack/stalker
	backpack_contents = list(/obj/item/stack/spacecash/c1000 = 1, /obj/item/ammo_box/magazine/stalker/m9x18pm = 2)
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/stack/medical/gauze/bint,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)
	r_pocket = /obj/item/weapon/gun/projectile/automatic/pistol/pm

*/