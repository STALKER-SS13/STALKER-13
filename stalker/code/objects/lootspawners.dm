///////////////////////////////////////////////Одноразовый лутспавнер////////////////////////////////////////////////////////////////////////////////
/obj/effect/spawner/lootdrop/khabar_low
	name = "khabar loot spawner"
	lootdoubles = 1
	lootcount = 5

	loot = list(
				/obj/item/reagent_containers/hypospray/medipen/stalker/antirad = 20,
				/obj/item/storage/firstaid/stalker/civillian = 20,
				/obj/item/gun/ballistic/automatic/pistol/pm = 5,
				/obj/item/gun/ballistic/automatic/pistol/fort12 = 5,
				/obj/item/gun/ballistic/automatic/pistol/pb1s = 5,
				/obj/item/gun/ballistic/automatic/mp5 = 1,
				/obj/item/gun/ballistic/shotgun/bm16/sawnoff = 4,
				/obj/item/gun/ballistic/shotgun/bm16 = 3,
				/obj/item/ammo_box/stalker/b9x18 = 10,
				/obj/item/ammo_box/stalker/b9x18P = 10,
				/obj/item/ammo_box/stalker/b12x70 = 10,
				/obj/item/ammo_box/stalker/b12x70P = 10,
				/obj/item/ammo_box/stalker/b12x70D = 10,
				/obj/item/ammo_box/stalker/b9x19 = 10,
				/obj/item/ammo_box/stalker/b9x19P = 10,
				/obj/item/clothing/suit/hooded/kombez/mercenary = 1,
				/obj/item/clothing/suit/hooded/kombez/kombez_bandit = 1,
				/obj/item/clothing/suit/army = 1,
				/obj/item/clothing/suit/hooded/kozhanka/banditka/coat = 2,
				/obj/item/clothing/suit/hooded/kozhanka/banditka/coat/brown = 2,
				/obj/item/clothing/mask/gas/stalker = 4,
				/obj/item/reagent_containers/food/snacks/stalker/tomaty = 18,
				/obj/item/reagent_containers/food/snacks/stalker/stew = 18,
				/obj/item/detector/blink = 4,
				/obj/nothing = 10
				)

/obj/effect/spawner/lootdrop/khabar_medium
	name = "khabar loot spawner"
	lootdoubles = 1
	lootcount = 4

	loot = list(
				/obj/structure/closet/crate/stalker/blue = 1,
				/obj/nothing = 11
				)

/obj/effect/spawner/lootdrop/khabar_high
	name = "khabar loot spawner"
	lootdoubles = 1
	lootcount = 3

	loot = list(
				/obj/structure/closet/crate/stalker/blue = 1,
				/obj/nothing = 11
				)

///////////////////////////////////////////////Лутспавнер с кулдауном и бесконечным сроком работы////////////////////////////////////////////////////

/obj/effect/spawner/lootdrop/stalker
	name = "stalker lootspawner"
	invisibility = 101
	lootcount = 2
	var/max_spawned = 3
	var/radius = 10 //Радиус разброса лута
	var/cooldown = 10000 //Кол-во минут * 1000 кд шитспавна
	var/list/spawned_loot = new()
	loot = list(/obj/item/stack/medical/gauze/bint = 75,
				/obj/item/trash/can = 25)

/obj/effect/spawner/lootdrop/stalker/weapon
	lootcount = 1
	loot = list(/obj/item/gun/ballistic/automatic/pistol/pm = 85,
				/obj/item/trash/can = 15)
/*
/obj/effect/spawner/lootdrop/stalker/New()
	SpawnLoot()

/obj/effect/spawner/lootdrop/stalker/proc/SpawnLoot(enable_cooldown = 1)
	if(!loot || !loot.len)
		return

	for(var/k = 0, k < lootcount, k++)

		if(!loot.len)
			return

		var/lootspawn = pickweight(loot)

		if(!lootspawn || lootspawn == /obj/nothing)
			continue

		spawned_loot.Add(lootspawn)

		var/turf/T = get_turf(src)
		var/obj/O = new lootspawn(T)

		RandomMove(O)
	////////////////////////////////////////////
	sleep(rand(cooldown, cooldown + cooldown/2))
	////////////////////////////////////////////
	SpawnLoot()
	return
*/
/obj/effect/spawner/lootdrop/stalker/proc/CanSpawn()
	var/count = 0

	for(var/I in spawned_loot)

		var/obj/O = I

		if(!(O.loc in range(7, src)))
			count++
		else
			spawned_loot.Remove(I)

	return CLAMP(lootcount - count, 0, lootcount)


/obj/effect/spawner/lootdrop/stalker/proc/RandomMove(spawned)
	if(spawned)
		var/turf/T = get_turf(src)
		var/obj/O = spawned
		var/new_x = T.x + rand(-radius, radius)
		var/new_y = T.y + rand(-radius, radius)
		O.Move(new_x, new_y, T.z)

	return spawned

/obj/effect/spawner/lootdrop/stalker/weapon/pistols
	name = "stalker pistols"
	loot = list(/obj/item/gun/ballistic/automatic/pistol/pm = 25,
				/obj/item/gun/ballistic/automatic/pistol/pb1s = 15,
				/obj/item/gun/ballistic/automatic/pistol/fort12 = 10,
				/obj/item/gun/ballistic/automatic/pistol/usp_match = 5,
				/obj/item/gun/ballistic/automatic/pistol/sip = 5,
				/obj/item/gun/ballistic/automatic/pistol/cora = 5,
				/obj/item/gun/ballistic/automatic/pistol/marta = 5,
				/obj/nothing = 30)

/obj/effect/spawner/lootdrop/stalker/weapon/rifles_and_shotguns
	name = "stalker rifles_and_shotguns"
	loot = list(/obj/item/gun/ballistic/shotgun/bm16 = 25,
				/obj/item/gun/ballistic/automatic/ak74 = 25,
				/obj/item/gun/ballistic/automatic/aksu74 = 35,
				/obj/item/gun/ballistic/automatic/tpc301 = 10,
				/obj/nothing = 50)

/obj/effect/spawner/lootdrop/stalker/weapon/smgs
	name = "stalker smgs"
	loot = list(/obj/item/gun/ballistic/automatic/mp5 = 30,
				/obj/item/gun/ballistic/automatic/aksu74 = 20,
				/obj/nothing = 60)

/obj/effect/spawner/lootdrop/stalker/medicine
	name = "stalker medicine"
	lootcount = 1
	loot = list(/obj/item/storage/firstaid/stalker/civillian = 30,
				/obj/item/storage/firstaid/stalker/military = 15,
				/obj/item/storage/firstaid/stalker/scientific = 5,
				/obj/nothing = 60)

/obj/effect/spawner/lootdrop/stalker/food
	name = "stalker food"
	lootcount = 1
	loot = list(/obj/item/reagent_containers/food/snacks/stalker/baton = 50,
				/obj/item/reagent_containers/food/snacks/stalker/kolbasa = 30,
				/obj/item/reagent_containers/food/snacks/stalker/konserva = 20)


/obj/effect/spawner/lootdrop/stalker/gravy
	name = "stalker gravity"
	radius = 3
	lootcount = 1
	cooldown = 4500
	loot = list(/obj/item/artifact/meduza = 12,
				/obj/item/artifact/stoneflower = 6,
				/obj/item/artifact/nightstar = 3,
				/obj/item/artifact/maminibusi = 1,
				/obj/nothing = 80)

/obj/effect/spawner/lootdrop/stalker/electra
	name = "stalker electra"
	radius = 3
	lootcount = 1
	cooldown =4500
	loot = list(/obj/item/artifact/flash = 12,
				/obj/item/artifact/moonlight = 6,
				/obj/item/artifact/battery = 1,
				/obj/item/artifact/pustishka = 1,
				/obj/nothing = 80)

/obj/effect/spawner/lootdrop/stalker/fire
	name = "stalker fire"
	radius = 3
	lootcount = 1
	cooldown = 4500
	loot = list(/obj/item/artifact/droplet = 13,
				/obj/item/artifact/fireball = 6,
				/obj/item/artifact/crystal = 3,
				/obj/nothing = 80)

/obj/nothing
	name = "nothing"
	invisibility = 101
/*
obj/nothing/New()
	qdel(src)
*/

/obj/effect/spawner/lootdrop/stalker/pornmag
	name = "porn mags"
	lootcount = 1
	max_spawned = 1
	loot = list(/obj/item/trash/pornmagazine = 30,
				/obj/item/trash/pornmagazine/two = 30,
				/obj/item/trash/pornmagazine/three = 30,
				/obj/item/trash/pornmagazine/four = 30,
				/obj/item/trash/pornmagazine/five = 30,
				/obj/nothing = 70)

/obj/effect/spawner/lootdrop/stalker/junk
	name = "junk items"
	lootcount = 1
	max_spawned = 1
	loot = list(/obj/item/trash/paintcan = 20,
				/obj/item/trash/teapot = 20,
				/obj/item/trash/pincers = 10,
				/obj/item/trash/carkey = 20,
				/obj/item/trash/crossnecklace = 15,
				/obj/item/trash/oldvials = 5,
				/obj/item/trash/steelwire = 10,
				/obj/item/trash/steelwire1 = 10,
				/obj/item/trash/wire = 10,
				/obj/item/trash/duct_tape = 10,
				/obj/item/trash/oldcircuitboard = 15,
				/obj/item/trash/oldcircuitboard0 = 15,
				/obj/item/c_tube = 25,
				/obj/item/newspaper = 20,
				/obj/item/trash/oldchembottle = 5,
				/obj/nothing = 80)

/obj/effect/spawner/lootdrop/stalker/flasks
	name = "flasks"
	lootcount = 1
	max_spawned = 1
	loot = list(/obj/item/reagent_containers/food/drinks/flask/cylinder = 10,
				/obj/item/reagent_containers/food/drinks/flask/face = 10,
				/obj/item/reagent_containers/food/drinks/flask/russian = 10,
				/obj/item/reagent_containers/food/drinks/flask = 10,
				/obj/item/reagent_containers/food/drinks/flask/commie = 5,
				/obj/nothing = 80)

/obj/effect/spawner/lootdrop/stalker/books
	name = "books"
	lootcount = 1
	max_spawned = 1
	loot = list(/obj/item/book/manual/allquietonthewesternfront = 10,
				/obj/item/book/manual/roadsidepicnic = 10,
				/obj/item/book/manual/solaris = 10,
				/obj/item/book/manual/metro2033 = 10,
				/obj/item/book/manual/crimeandpunishment = 10,
				/obj/item/book/manual/theprophetpain = 10,
				/obj/item/book/manual/theprophetdeath = 10,
				/obj/item/book/manual/theprophetfriendship = 10,
				/obj/nothing = 80)