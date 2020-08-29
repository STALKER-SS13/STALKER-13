#define ROOF_FADE_TIME 10

proc
	ceil(num)
		. = round(num)
		if(.<num)
			.++

client
	var
		list/hide_rooves = list()

roof_hider
	var/tmp
		client/owner
		area/area
		list/images
		fade_time
	proc
		Hide()
			if(!images)
				//if the images list doesn't exist, create images for each subarea
				var/image/i
				images = list()
				for(var/area/a in area.subareas)
					//create a blank image
					i = image(null,a)
					i.overlays = a.overlays
					//make them non-interactable to the mouse
					i.mouse_opacity = 0
					//make the image hide the default appearance of their subarea
					i.override = 1
					//add the image to the images list
					images += i
				var/stime = world.time + world.tick_lag
				fade_time = stime
				owner.images.Add(images)
				//add the images to the client's images list to show them
				owner.hide_rooves[area] = src
				spawn(world.tick_lag)
					if(fade_time==stime)
						for(var/image/j in images)
							animate(j,alpha=0,time=ROOF_FADE_TIME)
			else
				//if the image list exists, we need to fade in based on the current
				//alpha of the images in the list
				var/oldtime = max(min(world.time - fade_time,ROOF_FADE_TIME),0)
				var/startalpha = 0 + 255*oldtime/ROOF_FADE_TIME
				var/duration = startalpha/255*ROOF_FADE_TIME
				fade_time = world.time
				//perform the fade animation
				for(var/image/j in images)
					//stop the old animation
					j.alpha = startalpha
					animate(j,alpha=0,time=duration)
		Show()
			//fade out based on the current alpha of the images in the list
			var/oldtime = max(min(world.time - fade_time,ROOF_FADE_TIME),0)
			var/startalpha = 255 - 255*oldtime/ROOF_FADE_TIME
			var/duration = (255-startalpha)/255*ROOF_FADE_TIME
			//if the duration is longer than one tick, perform the animation
			if(duration>=world.tick_lag)
				//loop through the images and perform the fade
				var/stime = world.time+world.tick_lag
				fade_time = stime
				for(var/image/j in images)
					animate(j)
					j.alpha = startalpha
				spawn(world.tick_lag)
					for(var/image/j in images)
						animate(j,alpha=255,time=duration)
				//make sure the fade animation is done
				spawn(ceil(duration))
					//if the fade animation finished, remove all the images
					if(fade_time==stime)
						owner.images.Remove(images)
						owner.hide_rooves.Remove(area)
						//set the images' locs to null to make sure they get garbage collected
						for(var/image/j in images)
							j.loc = null
			else
				//otherwise, we just straight up remove all of the images
				owner.images.Remove(images)
				owner.hide_rooves.Remove(area)
				//set the images' locs to null to make sure they get garbage collected
				for(var/image/j in images)
					j.loc = null

	New(Area,Owner)
		area = Area
		owner = Owner

area
	var
		area/root_area
		list/subareas
	proc
		Subdivide()
			//if there is a root area set, we need to perform the root's subdivide operation.
			if(root_area)
				return root_area.Subdivide()
			else
				//create a new area instance of the same type as this area
				var/area/a = new src.type()
				//set its root to this area
				a.root_area = src
				//if we don't already have a subarea list, create it and add the new area, otherwise, just add the new area
				if(!subareas)
					subareas = list(a)
				else
					subareas += a
				return a

		getContents()
			if(root_area)
				return root_area.getContents()
			var/list/l = src.contents.Copy()
			if(subareas)
				for(var/area/a in subareas)
					l.Add(a.contents)
			return l

		isSame(area/a)
			if(a.type!=src.type) return 0
			if(a==src) return 1
			if(a.root_area==src||src.root_area==a) return 1
			return 0

		HideRoof(client/client)
			if(subareas)
				var/roof_hider/hider = client.hide_rooves[src]
				if(!hider)
					hider = new(src,client)
					client.hide_rooves[src] = hider
				hider.Hide()

		ShowRoof(client/client)
			if(subareas)
				var/roof_hider/hider = client.hide_rooves[src]
				if(hider)
					hider.Show()

	Enter(atom/movable/O, atom/oldloc)
		if(root_area)
			return root_area.Enter(O,oldloc)
		return ..()

	Exit(atom/movable/O, atom/newloc)
		if(root_area)
			return root_area.Enter(O,newloc)
		return ..()

	Entered(atom/movable/O, atom/oldloc)
		if(root_area)
			return root_area.Entered(O,oldloc)
		//this will only be run if this area is the root area
		if(oldloc)
			//if the movable is moving here from elsewhere
			//get the old turf the player was associated with
			var/turf/t = locate(oldloc.x,oldloc.y,oldloc.z)
			//if the turf exists
			if(t && isSame(t.loc))
				//if the old area's root area is this object, don't trigger Entered() behavior.
				//return 0 even though it's not necessary. We can use this for expanded behavior later.
				return 0
		//provided the movable is coming from an area that's not a subdivision of this one:
		if(istype(O,/mob))
			var/mob/m = O
			if(m.client)
				HideRoof(m.client)
		return ..()

	Exited(atom/movable/O, atom/newloc)
		if(root_area)
			return root_area.Exited(O,newloc)
		//this will only be run if this area is the root area
		if(newloc)
			//if the movable is leaving to another location
			//get the new turf the player will be moving toward
			var/turf/t = locate(newloc.x,newloc.y,newloc.z)
			//if the turf exists
			if(t && isSame(t.loc))
				//if the new area's root area is this object, don't trigger Exited() behavior.
				//return 0 even though it's not necessary. We can use this for expanded behavior later.
				return 0
		//provided the movable is going to an area that's not a subdivision of this one:
		if(istype(O,/mob))
			var/mob/m = O
			if(m.client)
				ShowRoof(m.client)
		return ..()

world
	New()
		..()
		//construct the rooves after the map loads
		construct_rooves()
		//set initialized to true to indicate that the map has already finished loading
		initialized = TRUE

var
	initialized = FALSE
	//these are temporary lists. They should be null after world initialization
	list/__building_rooves = list()
	list/__unique_rooves = list()

roof
	parent_type = /obj

	New()
		//roof objects should only be used on the map
		if(isturf(src.loc))
			//roof objects should not be created at runtime
			if(!initialized)
				//get the base roof object from the building list
				var/roof/base_roof = __building_rooves[src.loc]
				if(base_roof)
					//if the base roof object exists, add this roof's appearance to its overlays and set location to null, triggering garbage collection
					base_roof.overlays += src
					src.loc = null
				else
					//if the base roof object doesn't exist, add this object's appearance to its own overlays then store it in the building list by location
					overlays += src
					__building_rooves[src.loc] = src
			else
				//if it's after the map has been initialized, just set this object to location null to trigger garbage collection
				src.loc = null
		else
			//if we're not in a turf, set our loc to null, hopefully triggering garbage collection.
			src.loc = null

proc
	construct_rooves()
		var/roof/roof
		var/area/area
		var/area/subarea
		var/refid
		var/list/subtypes
		//loop through all the objects in the temporary building rooves list
		for(var/turf/turf in __building_rooves)
			//get the roof object reference from the base turf
			roof = __building_rooves[turf]
			//get the current area the roof object is in
			area = turf.loc
			//get the overlay list reference of the roof object
			refid = "\ref[roof.overlays]"
			//the unique rooves list stores a temporary association of areas with their particular unique roof overlays
			subtypes = __unique_rooves[area]
			//if this area doesn't have a subdivision yet
			if(!subtypes)
				//create the subdivision list and fill it with the current unique overlay reference
				subarea = area.Subdivide()
				subarea.overlays = roof.overlays
				//set up the storage list
				subtypes = list()
				subtypes[refid] = subarea
				__unique_rooves[area] = subtypes
			else
				//otherwise, make certain that this unique overlay list isn't in use yet.
				subarea = subtypes[refid]
				if(!subarea)
					//if it's not, we create a new area subdivision
					subarea = area.Subdivide()
					subarea.overlays = roof.overlays
					subtypes[refid] = subarea
			subarea.contents += turf
			//remember to trigger garbage collection for all roof objects, removing them from the world
			roof.loc = null
		//empty the temporary lists as they are no longer needed.
		__unique_rooves = null
		__building_rooves = null