var/list/vipRooms = list()
var/list/vipEnters = list()

/obj/vip_enter
	var/roomtype = "bar"
	var/list/allowed = list()

/obj/vip_enter/New()
	vipEnters.Add(src)
	allowed = StalkerDonate.donaters

/obj/vip_enter/Crossed(atom/movable/A)
	var/mob/M = A
	if(!M || GetDonateAmount(M.ckey) < 100)
		return
	for(var/obj/vip_exit/R in vipRooms)
		if(R.roomtype == roomtype)
			A.loc = R.loc



/proc/GetDonaters()
	StalkerDonate.Update()
	if(StalkerDonate)
		world << "StalkerDonate: OK"
	if(StalkerDonate.donaters)
		world << "StalkerDonate: OK"
	world << StalkerDonate.donaters
	world << "Complete!"
	return StalkerDonate.donaters

/obj/vip_exit
	var/roomtype = "bar"

/obj/vip_exit/New()
	vipRooms.Add(src)

/obj/vip_exit/Crossed(atom/movable/A)
	var/mob/M = A
	if(!M || GetDonateAmount(M.ckey) < 100)
		return
	for(var/obj/vip_enter/R in vipEnters)
		if(R.roomtype == roomtype)
			A.loc = R.loc