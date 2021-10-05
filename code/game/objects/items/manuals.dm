/*********************MANUALS (BOOKS)***********************/

//Oh god what the fuck I am not good at computer
/obj/item/book/manual
	icon = 'icons/obj/library.dmi'
	due_date = 0 // Game time in 1/10th seconds
	unique = TRUE   // FALSE - Normal book, TRUE - Should not be treated as normal book, unable to be copied, unable to be modified

/obj/item/book/manual/hydroponics_pod_people
	name = "The Human Harvest - From seed to market"
	icon_state ="bookHydroponicsPodPeople"
	author = "Farmer John" // Whoever wrote the paper or book, can be changed by pen or PC. It is not automatically assigned.
	title = "The Human Harvest - From seed to market"
	//book contents below
	dat = {"<html>
				<head>
				<style>
				h1 {font-size: 18px; margin: 15px 0px 5px;}
				h2 {font-size: 15px; margin: 15px 0px 5px;}
				li {margin: 2px 0px 2px 15px;}
				ul {list-style: none; margin: 5px; padding: 0px;}
				ol {margin: 5px; padding: 0px 15px;}
				</style>
				</head>
				<body>
				<h3>Growing Humans</h3>

				Why would you want to grow humans? Well I'm expecting most readers to be in the slave trade, but a few might actually
				want to revive fallen comrades. Growing pod people is easy, but prone to disaster.
				<p>
				<ol>
				<li>Find a dead person who is in need of cloning. </li>
				<li>Take a blood sample with a syringe. </li>
				<li>Inject a seed pack with the blood sample. </li>
				<li>Plant the seeds. </li>
				<li>Tend to the plants water and nutrition levels until it is time to harvest the cloned human.</li>
				</ol>
				<p>
				It really is that easy! Good luck!

				</body>
				</html>
				"}

/obj/item/book/manual/ripley_build_and_repair
	name = "APLU \"Ripley\" Construction and Operation Manual"
	icon_state ="book"
	author = "Weyland-Yutani Corp"
	title = "APLU \"Ripley\" Construction and Operation Manual"
	dat = {"<html>
				<head>
				<style>
				h1 {font-size: 18px; margin: 15px 0px 5px;}
				h2 {font-size: 15px; margin: 15px 0px 5px;}
				li {margin: 2px 0px 2px 15px;}
				ul {list-style: none; margin: 5px; padding: 0px;}
				ol {margin: 5px; padding: 0px 15px;}
				</style>
				</head>
				<body>
				<center>
				<b style='font-size: 12px;'>Weyland-Yutani - Building Better Worlds</b>
				<h1>Autonomous Power Loader Unit \"Ripley\"</h1>
				</center>
				<h2>Specifications:</h2>
				<ul>
				<li><b>Class:</b> Autonomous Power Loader</li>
				<li><b>Scope:</b> Logistics and Construction</li>
				<li><b>Weight:</b> 820kg (without operator and with empty cargo compartment)</li>
				<li><b>Height:</b> 2.5m</li>
				<li><b>Width:</b> 1.8m</li>
				<li><b>Top speed:</b> 5km/hour</li>
				<li><b>Operation in vacuum/hostile environment:</b> Possible</b>
				<li><b>Airtank Volume:</b> 500liters</li>
				<li><b>Devices:</b>
					<ul>
					<li>Hydraulic Clamp</li>
					<li>High-speed Drill</li>
					</ul>
				</li>
				<li><b>Propulsion Device:</b> Powercell-powered electro-hydraulic system.</li>
				<li><b>Powercell capacity:</b> Varies.</li>
				</ul>

				<h2>Construction:</h2>
				<ol>
				<li>Connect all exosuit parts to the chassis frame</li>
				<li>Connect all hydraulic fittings and tighten them up with a wrench</li>
				<li>Adjust the servohydraulics with a screwdriver</li>
				<li>Wire the chassis. (Cable is not included.)</li>
				<li>Use the wirecutters to remove the excess cable if needed.</li>
				<li>Install the central control module (Not included. Use supplied datadisk to create one).</li>
				<li>Secure the mainboard with a screwdriver.</li>
				<li>Install the peripherals control module (Not included. Use supplied datadisk to create one).</li>
				<li>Secure the peripherals control module with a screwdriver</li>
				<li>Install the internal armor plating (Not included due to Nanotrasen regulations. Can be made using 5 metal sheets.)</li>
				<li>Secure the internal armor plating with a wrench</li>
				<li>Weld the internal armor plating to the chassis</li>
				<li>Install the external reinforced armor plating (Not included due to Nanotrasen regulations. Can be made using 5 reinforced metal sheets.)</li>
				<li>Secure the external reinforced armor plating with a wrench</li>
				<li>Weld the external reinforced armor plating to the chassis</li>
				<li></li>
				<li>Additional Information:</li>
				<li>The firefighting variation is made in a similar fashion.</li>
				<li>A firesuit must be connected to the Firefighter chassis for heat shielding.</li>
				<li>Internal armor is plasteel for additional strength.</li>
				<li>External armor must be installed in 2 parts, totaling 10 sheets.</li>
				<li>Completed mech is more resiliant against fire, and is a bit more durable overall</li>
				<li>Nanotrasen is determined to the safety of its <s>investments</s> employees.</li>
				</ol>
				</body>
				</html>

				<h2>Operation</h2>
				Please consult the Nanotrasen compendium "Robotics for Dummies".
			"}

/obj/item/book/manual/chef_recipes
	name = "Chef Recipes"
	icon_state = "cooked_book"
	author = "Lord Frenrir Cageth"
	title = "Chef Recipes"
	dat = {"<html>
				<head>
				<style>
				h1 {font-size: 18px; margin: 15px 0px 5px;}
				h2 {font-size: 15px; margin: 15px 0px 5px;}
				li {margin: 2px 0px 2px 15px;}
				ul {list-style: none; margin: 5px; padding: 0px;}
				ol {margin: 5px; padding: 0px 15px;}
				</style>
				</head>
				<body>

				<h1>Food for Dummies</h1>
				Here is a guide on basic food recipes and also how to not poison your customers accidentally.


				<h2>Basic ingredients preparation:</h2>

				<b>Dough:</b> 10u water + 15u flour for simple dough.<br>
				15u egg yolk + 15u flour + 5u sugar for cake batter.<br>
				Doughs can be transformed by using a knife and rolling pin.<br>
				All doughs can be microwaved.<br>
				<b>Bowl:</b> Add water to it for soup preparation.<br>
				<b>Meat:</b> Microwave it, process it, slice it into microwavable cutlets with your knife, or use it raw.<br>
				<b>Cheese:</b> Add 5u universal enzyme (catalyst) to milk and soy milk to prepare cheese (sliceable) and tofu.<br>
				<b>Rice:</b> Mix 10u rice with 10u water in a bowl then microwave it.

				<h2>Custom food:</h2>
				Add ingredients to a base item to prepare a custom meal.<br>
				The bases are:<br>
				- bun (burger)<br>
				- breadslices(sandwich)<br>
				- plain bread<br>
				- plain pie<br>
				- vanilla cake<br>
				- empty bowl (salad)<br>
				- bowl with 10u water (soup)<br>
				- boiled spaghetti<br>
				- pizza bread<br>
				- metal rod (kebab)

				<h2>Table Craft:</h2>
				Put ingredients on table, then click and drag the table onto yourself to see what recipes you can prepare.

				<h2>Microwave:</h2>
				Use it to cook or boil food ingredients (meats, doughs, egg, spaghetti, donkpocket, etc...).
				It can cook multiple items at once.

				<h2>Processor:</h2>
				Use it to process certain ingredients (meat into faggot, doughslice into spaghetti, potato into fries,etc...)

				<h2>Gibber:</h2>
				Stuff an animal in it to grind it into meat.

				<h2>Meat spike:</h2>
				Stick an animal on it then begin collecting its meat.


				<h2>Example recipes:</h2>
				<b>Vanilla Cake</b>: Microwave cake batter.<br>
				<b>Burger:</b> 1 bun + 1 meat steak<br>
				<b>Bread:</b> Microwave dough.<br>
				<b>Waffles:</b> 2 pastry base<br>
				<b>Popcorn:</b> Microwave corn.<br>
				<b>Meat Steak:</b> Microwave meat.<br>
				<b>Meat Pie:</b> 1 plain pie + 1u black pepper + 1u salt + 2 meat cutlets<br>
				<b>Boiled Spagetti:</b> Microwave spaghetti.<br>
				<b>Donuts:</b> 1u sugar + 1 pastry base<br>
				<b>Fries:</b> Process potato.

				<h2>Sharing your food:</h2>
				You can put your meals on your kitchen counter or load them in the snack vending machines.
				</body>
				</html>
			"}

/obj/item/book/manual/nuclear
	name = "Fission Mailed: Nuclear Sabotage 101"
	icon_state ="bookNuclear"
	author = "Syndicate"
	title = "Fission Mailed: Nuclear Sabotage 101"
	dat = {"<html>
			Nuclear Explosives 101:<br>
			Hello and thank you for choosing the Syndicate for your nuclear information needs.<br>
			Today's crash course will deal with the operation of a Fusion Class Nanotrasen made Nuclear Device.<br>
			First and foremost, DO NOT TOUCH ANYTHING UNTIL THE BOMB IS IN PLACE.<br>
			Pressing any button on the compacted bomb will cause it to extend and bolt itself into place.<br>
			If this is done to unbolt it one must completely log in which at this time may not be possible.<br>
			To make the nuclear device functional:<br>
			<li>Place the nuclear device in the designated detonation zone.</li>
			<li>Extend and anchor the nuclear device from its interface.</li>
			<li>Insert the nuclear authorisation disk into slot.</li>
			<li>Type numeric authorisation code into the keypad. This should have been provided. Note: If you make a mistake press R to reset the device.
			<li>Press the E button to log onto the device.</li>
			You now have activated the device. To deactivate the buttons at anytime for example when you've already prepped the bomb for detonation	remove the auth disk OR press the R on the keypad.<br>
			Now the bomb CAN ONLY be detonated using the timer. Manual detonation is not an option.<br>
			Note: Nanotrasen is a pain in the neck.<br>
			Toggle off the SAFETY.<br>
			Note: You wouldn't believe how many Syndicate Operatives with doctorates have forgotten this step.<br>
			So use the - - and + + to set a det time between 5 seconds and 10 minutes.<br>
			Then press the timer toggle button to start the countdown.<br>
			Now remove the auth. disk so that the buttons deactivate.<br>
			Note: THE BOMB IS STILL SET AND WILL DETONATE<br>
			Now before you remove the disk if you need to move the bomb you can:<br>
			Toggle off the anchor, move it, and re-anchor.<br><br>
			Good luck. Remember the order:<br>
			<b>Disk, Code, Safety, Timer, Disk, RUN!</b><br>
			Intelligence Analysts believe that normal Nanotrasen procedure is for the Captain to secure the nuclear authorisation disk.<br>
			Good luck!
			</html>"}

// Wiki books that are linked to the configured wiki link.

// A book that links to the wiki
/obj/item/book/manual/wiki
	var/page_link = ""
	window_size = "970x710"

/obj/item/book/manual/wiki/attack_self()
	if(!dat)
		initialize_wikibook()
	return ..()

/obj/item/book/manual/wiki/proc/initialize_wikibook()
	var/wikiurl = CONFIG_GET(string/wikiurl)
	if(wikiurl)
		dat = {"

			<html><head>
			<style>
				iframe {
					display: none;
				}
			</style>
			</head>
			<body>
			<script type="text/javascript">
				function pageloaded(myframe) {
					document.getElementById("loading").style.display = "none";
					myframe.style.display = "inline";
    			}
			</script>
			<p id='loading'>You start skimming through the manual...</p>
			<iframe width='100%' height='97%' onload="pageloaded(this)" src="[wikiurl]/[page_link]?printable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
			</body>

			</html>

			"}

/obj/item/book/manual/wiki/chemistry
	name = "Chemistry Textbook"
	icon_state ="chemistrybook"
	author = "Nanotrasen"
	title = "Chemistry Textbook"
	page_link = "Guide_to_chemistry"

/obj/item/book/manual/wiki/engineering_construction
	name = "Station Repairs and Construction"
	icon_state ="bookEngineering"
	author = "Engineering Encyclopedia"
	title = "Station Repairs and Construction"
	page_link = "Guide_to_construction"

/obj/item/book/manual/wiki/engineering_guide
	name = "Engineering Textbook"
	icon_state ="bookEngineering2"
	author = "Engineering Encyclopedia"
	title = "Engineering Textbook"
	page_link = "Guide_to_engineering"

/obj/item/book/manual/wiki/engineering_singulo_tesla
	name = "Singularity and Tesla for Dummies"
	icon_state ="bookEngineeringSingularitySafety"
	author = "Engineering Encyclopedia"
	title = "Singularity and Tesla for Dummies"
	page_link = "Singularity_and_Tesla_engines"

/obj/item/book/manual/wiki/security_space_law
	name = "Space Law"
	desc = "A set of Nanotrasen guidelines for keeping law and order on their space stations."
	icon_state = "bookSpaceLaw"
	author = "Nanotrasen"
	title = "Space Law"
	page_link = "Space_Law"

/obj/item/book/manual/wiki/security_space_law/suicide_act(mob/living/user)
	user.visible_message("<span class='suicide'>[user] pretends to read \the [src] intently... then promptly dies of laughter!</span>")
	return OXYLOSS

/obj/item/book/manual/wiki/infections
	name = "Infections - Making your own pandemic!"
	icon_state = "bookInfections"
	author = "Infections Encyclopedia"
	title = "Infections - Making your own pandemic!"
	page_link = "Infections"

/obj/item/book/manual/wiki/telescience
	name = "Teleportation Science - Bluespace for dummies!"
	icon_state = "book7"
	author = "University of Bluespace"
	title = "Teleportation Science - Bluespace for dummies!"
	page_link = "Guide_to_telescience"

/obj/item/book/manual/wiki/engineering_hacking
	name = "Hacking"
	icon_state ="bookHacking"
	author = "Engineering Encyclopedia"
	title = "Hacking"
	page_link = "Hacking"

/obj/item/book/manual/wiki/detective
	name = "The Film Noir: Proper Procedures for Investigations"
	icon_state ="bookDetective"
	author = "Nanotrasen"
	title = "The Film Noir: Proper Procedures for Investigations"
	page_link = "Detective"

/obj/item/book/manual/wiki/barman_recipes
	name = "Barman Recipes: Mixing Drinks and Changing Lives"
	icon_state = "barbook"
	author = "Sir John Rose"
	title = "Barman Recipes: Mixing Drinks and Changing Lives"
	page_link = "Guide_to_food_and_drinks"

/obj/item/book/manual/wiki/robotics_cyborgs
	name = "Robotics for Dummies"
	icon_state = "borgbook"
	author = "XISC"
	title = "Robotics for Dummies"
	page_link = "Guide_to_robotics"

/obj/item/book/manual/wiki/research_and_development
	name = "Research and Development 101"
	icon_state = "rdbook"
	author = "Dr. L. Ight"
	title = "Research and Development 101"
	page_link = "Guide_to_Research_and_Development"

/obj/item/book/manual/wiki/experimentor
	name = "Mentoring your Experiments"
	icon_state = "rdbook"
	author = "Dr. H.P. Kritz"
	title = "Mentoring your Experiments"
	page_link = "Experimentor"

/obj/item/book/manual/wiki/medical_cloning
	name = "Cloning techniques of the 26th century"
	icon_state ="bookCloning"
	author = "Medical Journal, volume 3"
	title = "Cloning techniques of the 26th century"
	page_link = "Guide_to_genetics#Cloning"

/obj/item/book/manual/wiki/cooking_to_serve_man
	name = "To Serve Man"
	desc = "It's a cookbook!"
	icon_state ="cooked_book"
	author = "the Kanamitan Empire"
	title = "To Serve Man"
	page_link = "Guide_to_food_and_drinks"

/obj/item/book/manual/wiki/tcomms
	name = "Subspace Telecommunications And You"
	icon_state = "book3"
	author = "Engineering Encyclopedia"
	title = "Subspace Telecommunications And You"
	page_link = "Guide_to_Telecommunications"

/obj/item/book/manual/wiki/atmospherics
	name = "Lexica Atmosia"
	icon_state = "book5"
	author = "the City-state of Atmosia"
	title = "Lexica Atmosia"
	page_link = "Guide_to_Atmospherics"

/obj/item/book/manual/wiki/medicine
	name = "Medical Space Compendium, Volume 638"
	icon_state = "book8"
	author = "Medical Journal"
	title = "Medical Space Compendium, Volume 638"
	page_link = "Guide_to_medicine"

/obj/item/book/manual/wiki/surgery
	name = "Brain Surgery for Dummies"
	icon_state = "book4"
	author = "Dr. F. Fran"
	title = "Brain Surgery for Dummies"
	page_link = "Surgery"

/obj/item/book/manual/wiki/grenades
	name = "DIY Chemical Grenades"
	icon_state = "book2"
	author = "W. Powell"
	title = "DIY Chemical Grenades"
	page_link = "Grenade"

/obj/item/book/manual/wiki/toxins
	name = "Toxins or: How I Learned to Stop Worrying and Love the Maxcap"
	icon_state = "book6"
	author = "Cuban Pete"
	title = "Toxins or: How I Learned to Stop Worrying and Love the Maxcap"
	page_link = "Guide_to_toxins"

/obj/item/book/manual/wiki/toxins/suicide_act(mob/user)
	var/mob/living/carbon/human/H = user
	user.visible_message("<span class='suicide'>[user] starts dancing to the Rhumba Beat! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	playsound(loc, 'sound/effects/spray.ogg', 10, 1, -3)
	if (!QDELETED(H))
		H.emote("spin")
		sleep(20)
		for(var/obj/item/W in H)
			H.dropItemToGround(W)
			if(prob(50))
				step(W, pick(GLOB.alldirs))
		H.add_trait(TRAIT_DISFIGURED, TRAIT_GENERIC)
		H.bleed_rate = 5
		H.gib_animation()
		sleep(3)
		H.adjustBruteLoss(1000) //to make the body super-bloody
		H.spawn_gibs()
		H.spill_organs()
		H.spread_bodyparts()
	return (BRUTELOSS)

/obj/item/book/manual/solaris
	name = "Solaris"
	icon_state ="book_Solaris"
	author = "Stanislaw Lem"		 // Who wrote the thing, can be changed by pen or PC. It is not automatically assigned
	title = "Solaris"
	desc = "An old tattered book left in the zone. This one has a picture of a brain with orbiting planetary bodies."
	dat = {"<html>
				<head>
				<style>
				h1 {font-size: 18px; margin: 15px 0px 5px;}
				h2 {font-size: 15px; margin: 15px 0px 5px;}
				li {margin: 2px 0px 2px 15px;}
				ul {list-style: none; margin: 5px; padding: 0px;}
				ol {margin: 5px; padding: 0px 15px;}
				</style>
				</head>
				<body>

				<h3>Chapter One: Newcomer</h3>

<p>At nineteen hundred hours ships time I climbed down the metal ladder past the bays on either side into the capsule. Inside, there was just enough room to raise my elbows. After I attached the end of the cables into the port jutting from the side of the capsule, my space suit filled with air and from that point on I couldnt make the slightest movement. I stood, or rather hung suspended, in a bed of air, all of one piece with my metal shell.<p>


<p>Raising my eyes through the convex porthole I could see the walls of the bay and higher up, leaning in, Moddards face. It quickly disappeared and everything went dark as the heavy protective cone was put in place from above. I heard the eight-times-repeated whirr of the electric motors tightening the screws. Then the hiss of air entering the shock absorbers. My eyes were getting using to the dark. I could already make out the pale green shape of the only gauge.
</p>

<p>'Ready, Kelvin?' I heard in my headset.</p>

<p>'Ready, Moddard.' I replied.</p>

<p>'Dont worry about a thing. The Station'll bring you in,' he said. 'Bon voyage!'</p>

<p>Before I could answer, there was a rasping sound overhead and the capsule shook. I tensed my muscles instinctively, but nothing else happened.</p>

<p>'When do I take off?' I asked, hearing a rustling noise like fine grains of sand falling on a diaphragm.
</p>

<p>'You're already in flight, Kelvin. Be well!' came Moddard's voice in my ear. Before I believed it, a broad gap opened up in front of my face, through which I could see stars. </p>

<p>I tried in vain to spot Alpha Aquarii, towards which the Prometheus was now headed. The sky in this part of the Galaxy meant nothing to me; I didn't know a single constellation, and all I saw through the porthole was glittering dust. I waited for the stars to start smoking. I didn't get to see it. They merely began to fade and disappear, dissolving against a reddening background. I realized I was in the upper strata of the atmosphere. </p>

<p>Stiff in my cocoon of pneumatic cushions, all I could do was look straight ahead. There was still no horizon. I flew on, not feeling any movement, but slowly and insidiously my body grew hotter and hotter. Outside there arose a soft penetrating twitter like the sound of metal against wet glass. If it weren't for the numbers flashing on the gauge I wouldn't have been aware of the speed of my descent. The stars were gone. The porthole was filled with a ruddy-colored brightness. I could hear the heavy beat of my own pulse. My face burned; on my neck I felt cold blowing from the air conditioning. I regretted not having managed to see the Prometheus, it must have been out of sight by the time the porthole automatically opened.</p>

<p>The capsule shuddered once and twice, vibrated in a disagreeable way; the shaking passed through all the layers of insulation and cushions and entered deep into my body. The green face of the gauge grew hazy. I stared at it without being afraid. I hadn't come all this way only to perish at my destination.</p>

<p>'Come in, Solaris Station,' I said. 'Solaris Station. Solaris Station! You need to do something. I think I'm destabilizing. Solaris Station, this is newcomer. Over.'</p>

<p>And once again I'd missed the crucial moment when the planet came into view. It extended vast and flat; from the size of the streaks on its surface I could tell I was still a long way off. Or rather, a long way up, since I'd already passed that intangible boundary where distance from a celestial body becomes altitude. I was descending. Still descending. I could feel it now, even when I closed my eyes. I opened them at once, because I wanted to see as much as possible.</p>

<p>I waited out a minute or so of silence then called again. I received no response this time either. Crackling volleys of static repeated in my headphones, against the background of a hum so deep and low it seemed to be the voice of the planet itself. The orange sky in the spy hole covered over with a film. The glass darkened; I flinched involuntarily, insofar as the pneumatic swathes permitted it. Then, a moment later, I realized these were clouds. A whole host of them moved abruptly upwards as if blown. I was still flying, now in sunlight, now in shadow, because the capsule was turning on its vertical axis and the huge, swollen-looking face of the sun was passing smoothly across my eyes, appearing on the left and setting on the right. All at once, through the crackle and the hum, a distant voice began talking right in my ear:</p>

<p>'Solaris Station to newcomer, Solaris Station to newcomer. A-OK. Newcomer is under control of the Station. Solaris Station to newcomer, prepare for docking at zero hour. Attention, commencing countdown. Two hundred fifty, two hundred forty-nine, two hundred forty-eight…”</p>

<p>The individual words were separated by split-second mewing noises that showed it was not a human talking. That was strange, to say the least. Usually, every living soul would run to the docking bay when someone new was arriving, especially someone directly from Earth. I didn't have time to think about it, however, because the huge circle that the sun had been turning around me stood on end along with the plain towards which I was dropping. </p>

<p>After this movement there came another in the opposite direction; I was rocking like the bob of a huge pendulum, fighting back dizziness. Against the expanse of the planet rising vertically like a wall, striped with dirty lilac-colored and blackish streaks, I spotted a fine checkerboard of white and green dots that marked the location of the Station. At the same time, something detached with a snap from the exterior of the capsule—the long necklace of an annular parachute, which flapped abruptly. In this noise there was something unutterably terrestrial—after so many months, the first real sound of wind.
</p>

<p>Everything began to happen very quickly. Up till now I'd only known that I was falling. Now I could see it. The white-and-green checkerboard was getting rapidly bigger. I could already see it was painted on an elongated, whale-shaped hull glistening silver, with the needles of radio antennas protruding from its sides, and rows of darker window openings; this metal colossus wasn't resting on the surface of the planet but was suspended above it, its shadow moving across an inky background in the form of an elliptical patch of even more intense blackness. </p>

<p>Simultaneously I noticed the violet-flushed furrows of the ocean, which betrayed a faint motion; the clouds suddenly rose high up, their edges marked with dazzling crimson, the sky between them grew distant and flat, dull orange in color, and everything became blurred: I'd entered a spin. Before I could utter a word, a brief impact returned the capsule to a horizontal position, and the ocean, glittering with a mercuric light to the very limits of the horizon, appeared in the spy hole. The droning cords and rings of the parachute suddenly detached and flew off over the waves, carried by the wind; the capsule rocked softly with that particular slowed-down motion characteristic of an artificial force field, and moved downward. </p>

<p>The last thing I was able to see were latticework flight catapults and the grids of two radio telescope dishes that looked to be several stories high. Something immobilized the capsule with a terrifying noise of steel striking firmly against steel. Something opened up beneath me, and the metal shell in which I'd been rigidly encased ended its hundred-and-ten mile journey with a prolonged wheezing sigh.</p>

<p>Solaris Station. Zero and zero. Docking complete. Over and out,' came the lifeless voice of the control mechanism. With both hands (I could sense a vague pressure on my chest, and my innards felt like an irksome burden) I took hold of the grips directly opposite my shoulders and disconnected the cables. A green sign reading EARTH came on, and the side of the capsule opened. The pneumatic berth pushed me gently in the back, so that in order not to stumble I had to take a step forward.
</p>

<p>With a soft hiss like a resigned sigh the air left the coils of the space suit. I was free.</p>

<p>I stood beneath a silver funnel high as a nave. Bundles of colored pipes led down the walls, disappearing into circular wells. I turned around. The ventilation shafts were roaring, drawing in what was left of the poisonous atmosphere of the planet that had gotten in during the docking. The cigar of the capsule, empty as a burst cocoon, stood in a concavity set into a steel platform. Its external plating had been scorched to a dirty brown color. I walked down the short ramp. Beyond it, a layer of rough plastic had been welded to the metal deck. It had worn away in places from the wheels of the mobile rocket jacks. The air conditioning compressors suddenly went off and there was complete silence. </p>

<p>I looked around somewhat helplessly; I'd expected someone to appear, but nobody had come. There was nothing but a glowing neon arrow indicating a soundless moving walkway. I stepped onto it. The ceiling of the hangar curved down in an elegant parabola that became the tube of a corridor. In its alcoves there were heaps of pressurized gas cylinders, containers, annular parachutes, crates, all in disorderly piles, any old how. </p>

<p>That made me think, too. The walkway ended at a point where the corridor widened into a circular space. Here there was an even bigger jumble. Under a mound of metal canisters an oily fluid had leaked and formed a puddle. A strong, unpleasant odor filled the air. Boot prints marked clearly in the sticky substance led in different directions. Among the cans lay rolls of white telegraph tape, torn papers, and trash, all of which looked as if it had been swept out of the cabins. And there was another illuminated sign directing me to the middle door. It led to a corridor so narrow that two people could barely have passed one another. </p>

<p>Light came from high-placed windows with biconvex panes directed at the sky. There was another door, painted with a green-and-white checkerboard. It was ajar. I entered. The semi-spherical cabin had one large panoramic window in which the mist-covered sky was aglow. Down below, the blackish hills of the waves moved soundlessly. There were numerous open cabinets around the walls. They were filled with technical instruments, books, glasses with a dried residue at the bottom, dust-covered thermos flasks. Around the dirty floor there were five or six mechanical tables on wheels, and among them several armchairs that were deflated and sagging. Only one was blown up, its backrest leaning to the rear. In it sat a small, scrawny man with a sunburned face. The skin was peeling from his nose and cheekbones. I knew who he was. It was Snaut, Gibarian's second-in-command, a cybernetician. </p>

<p>In his time he'd published a number of highly original articles in the Journal of Solaristics. I'd never met him in person before. He was wearing a mesh shirt, tufts of gray hair on his flat chest poking through, and once white linen pants with multiple pockets like a mechanic's, stained at the knees and burned from reagents. He was holding a plastic bulb of the kind used to drink out of on ships that lack artificial gravity. He looked at me as if he'd been dazzled by a blinding light. The bulb fell from his fingers as they unclenched, and bounced a couple of times on the floor like a ball. A splash of clear liquid spilled from it. The blood drained slowly from his face. I was too taken aback to say anything, and this wordless scene continued until in some mysterious way his fear was transferred to me. I took a step forward. He shrank into his armchair.</p>

<p>'Snaut,' I whispered. He winced as if he'd been struck. Staring at me with inexpressible aversion, he said hoarsely:</p>

<p>'I don't know you, I don't know you, what do you want ?'</p>

<p>The spilled liquid evaporated quickly. I caught the smell of alcohol. Was he drinking? Drunk? But why was he so afraid? I was still standing in the middle of the cabin. My knees were wobbly, and my ears felt like they'd been stopped up with cotton wool. The pressure of the floor beneath my feet still didn't seem entirely reliable. Outside the convex window the ocean was moving evenly. Snaut kept his bloodshot eyes on me. The fear was leaving his face, but the unutterable disgust remained.</p>

<p>'What's wrong with you?' I asked in a murmur. 'Are you sick?'</p>

<p>'You're concerned... ,' he said in a hollow voice. 'Aha. So you're going to be concerned? But why about me? I don't know you.'</p>

<p>'Where's Gibarian?' I asked. For a moment he held his breath, his eyes glassed over, something lit up in them and went out again.</p>

<p>'Gib... Gibar... no! no!!'</p>

<p>He shook with soundless, idiotic laughter, then abruptly fell silent.
</p>

<p>'You've come to see Gibarian... ?' he said almost calmly. 'Gibarian? What do you mean to do with him?'
</p>

<p>He was looking at me as if all at once I'd ceased to be a threat to him; in his words, and even more in their tone, there was something hateful and offensive</p>

<p>'What are you talking about,' I stammered, feeling dazed. 'Where is he?'</p>

<p>He was stunned.</p>

<p>'You don't know... ?'
</p>

<p>He's drunk, I thought to myself. Drunk to the point of unconsciousness. I was growing increasingly angry. I really ought to have left, but I ran out of patience.</p>

<p>'Get a grip on yourself!' I roared. 'How am I supposed to know when I just flew in a moment ago! What's the matter with you, Snaut!!'</p>

<p>His jaw dropped. Once again he held his breath for a second, but in a different way, and a sudden glint appeared in his eye. He gripped the armrests of the chair with trembling hands and stood up with difficulty, his joints cracking.
</p>

<p>'What?' he said, almost soberly. 'You flew in? From where?'</p>

<p>'From Earth,' I replied, furious. 'Maybe you've heard of it? Though it doesn't look that way!'</p>

<p>'From Ear... Good grief... So you're... Kelvin?!'</p>

<p>'That's right. Why are you looking at me that way? What's strange about that?'</p>

<p>'Nothing,' he said, blinking rapidly. 'Nothing.'</p>

<p>He wiped his forehead.</p>

<p>'Kelvin, I'm sorry, it's nothing, you know, just the surprise. I wasn't expecting you.'</p>

<p>'What do you mean, you weren't expecting me? You were informed months ago, and Moddard telegraphed today, from the Prometheus...'</p>

<p>'Right. Right... No doubt. It's just that here, as you can see, there's a certain amount of... confusion.'</p>

<p>'No kidding,' I retorted drily. 'It's hard not to notice.'</p>

<p>Snaut walked around me as if he wanted to check out the look of my space suit, which was the most ordinary kind, with its harness of pipes and cables on the chest. He gave a series of coughs. He rubbed his bony nose.</p>

<p>'Maybe you'd like to take a shower... ? It'll do you good. It's the blue door across the way.'</p>

<p>'Thanks. I know the layout of the Station.'</p>

<p>'Are you hungry maybe... ?'</p>

<p>'No. Where's Gibarian?'</p>

<p>He went up to the window as if he hadn't heard my question. With his back turned he looked much older. His close-cut hair was gray; the back of his neck, burned by the sun, was crisscrossed with wrinkles deep as cuts. Outside the window the crests of the waves glistened, rising and falling so slowly it seemed as if the ocean was congealing. Looking down there I had the impression the Station was moving imperceptibly sideways, as if it were slipping off an invisible base.</p>

<p>Then it returned to equilibrium and tipped lazily in the other direction. But it was probably an illusion. Stretches of slimy foam the color of bone were gathering in the troughs between the waves. For a split second I felt a twinge of nausea in the pit of my stomach. The cold orderliness of the Prometheus now seemed to me something precious and irrevocably lost.</p>

<p>'Listen,' Snaut said unexpectedly. 'For the moment it's just me...' He turned around and rubbed his hands nervously. 'You'll have to be content with my company. For now. Call me Rat. You only know me from photographs, but it doesn't matter, everyone uses that name. Nothing to be done about it, I'm afraid. Besides, when you have parents with such cosmic aspirations as mine, even Rat starts to sound OK...'
</p>

<p>'Where's Gibarian?' I asked again insistently. He blinked.</p>

<p>'I'm sorry I greeted you like that. It's... not entirely my fault. I'd completely forgotten, there's been a lot going on here, you know...'
</p>

<p>'All right,' I replied. 'Never mind that. So what's with Gibarian? Is he not on the Station? Did he fly somewhere?'</p>

<p>'No,' came the answer. He looked into the corner of the cabin, which was hidden behind a pile of coiled cables. 'He didn't fly anywhere. And he's not going to. Precisely because of that... among other things...'</p>

<p>'What?' I asked. My ears were still blocked and I had the feeling I wasn't hearing right. 'What's that supposed to mean? Where is he?'</p>

<p>'Come on, you know,' he said in a completely different tone of voice. He looked me in the eye so coldly it gave me gooseflesh. He may have been drunk, but he knew what he was saying.</p>

<p>'Surely he's not... ?'</p>

<p>'Yes.'</p>

<p>'An accident?'</p>

<p>He nodded. He wasn't just confirming, he was also sanctioning my reaction.</p>

<p>'When?'</p>

<p>'Today, at dawn.'</p>

<p>Strange to relate, I didn't feel shock. This entire short exchange of monosyllabic question and answer rather calmed me by its matter-of-factness. I felt I now understood his previously unaccountable behavior.</p>

<p>'How?'</p>

<p>'Go get changed, settle in and come back here in, let's say, an hour.'</p>

<p>I hesitated a moment.</p>

<p>'Fine.'</p>

<p>'Wait,' he said, as I was turning to the door. He gave me a peculiar look. I could see that what he wanted to say stuck in his throat.</p>

<p>'There were three of us and now, with you, there are three again. Do you know Sartorius?'</p>

<p>'Like I know you, from pictures.'</p>

<p>'He's in the lab upstairs. I doubt he'll come out before nightfall, but... in any case you'll recognize him. If you should see anyone else, you understand, not me or Sartorius, you understand, then...'</p>

<p>'Then what?'</p>

<p>I wasn't sure if I was dreaming. Against the background of the black waves glinting bloodily in the low sun, he sat back in the armchair, his head drooping as before, and stared to the side, at the reels of cable.</p>

<p>'Then... don't do anything.'</p>

<p>'Who might I see? A ghost?' I exclaimed.</p>

<p>'I get it. You think I've gone crazy. No. I haven't gone crazy. I don't know any other way to tell you... for the moment. Besides... maybe nothing'll happen. In any case, remember. You've been warned.'</p>

<p>'About what?! What are you on about?'</p>

<p>'Stay calm,' he persisted. 'Act as if... Be prepared for anything. That's impossible, I know. But try anyhow. It's the only way. I don't know any other.'
</p>

<p>'But WHAT am I going to see!!' I almost shouted. I barely kept myself from grabbing him by the shoulders and giving him a good shake as he sat there staring into the corner, with his tired sunburned face, every word he uttered costing a visible effort.
</p>

<p>'I don't know. In a certain sense it depends on you.'
</p>

<p>'Hallucinations?'
</p>

<p>'No. It's... real. Don't... attack. Remember.'
</p>

<p>'What are you talking about?' I said in a voice not my own.</p>

<p>'We're not on Earth.'</p>

<p>'Polytheria? But they don't look anything like humans!' I burst out. I didn't know what to do to make him snap out of his trance, in which he seemed to be reading something so senseless it chilled the blood in his veins.
</p>

<p>'That's exactly why it's so terrible,' he said quietly. 'Remember: be on your guard!'
</p>

<p>'What happened to Gibarian?'</p>

<p>He didn't answer.</p>

<p>'What's Sartorius doing?'</p>

<p>'Come back in an hour.'</p>

<p>I turned and left. As I opened the door I looked at him one more time. He sat with his face in his hands, small, shrunken, in stained pants. It was only now that I noticed he had dried blood on the knuckles of both hands.</p>

				</body>
				</html>"}


/obj/item/book/manual/allquietonthewesternfront
	name = "All Quiet on the Western Front"
	icon_state ="book_AllQuietOnTheWesternFront"
	author = "Erich Maria Remarque"		 // Who wrote the thing, can be changed by pen or PC. It is not automatically assigned
	title = "All Quiet on the Western Front"
	desc = "An old tattered book left in the zone. This one features a close up of a soldiers face, with two soldiers arming a machine gun on the left."
	dat = {"<html>
				<head>
				<style>
				h1 {font-size: 18px; margin: 15px 0px 5px;}
				h2 {font-size: 15px; margin: 15px 0px 5px;}
				li {margin: 2px 0px 2px 15px;}
				ul {list-style: none; margin: 5px; padding: 0px;}
				ol {margin: 5px; padding: 0px 15px;}
				</style>
				</head>
				<body>
				<h3>All Quiet on the Western Front</h3>

				<h4>ONE</h4>

<p>We are at rest five miles behind the front. Yesterday we were relieved, and now our bellies are
full of beef and haricot beans. We are satisfied and at peace. Each man has another mess-tin full
for the evening; and, what is more, there is a double ration of sausage and bread. That puts a man
in fine trim. We have not had such luck as this for a long time. The cook with his carroty head is
begging us to eat; he beckons with his ladle to every one that passes, and spoons him out a great
dollop. He does not see how he can empty his stew-pot in time for coffee. Tjaden and Muller have
produced two washbasins and had them filled up to the brim as a reserve. In Tjaden this is
voracity, in Muller it is foresight. Where Tjaden puts it all is a mystery, for he is and always will be
as thin as a rake. What's more important still is the issue of a double ration of smokes. Ten cigars,
twenty cigarettes, and two quids of chew per man; now that is decent. I have exchanged my
chewing tobacco with Katczinsky for his cigarettes, which means I have forty altogether. That's
enough for a day</p>

<p>It is true we have no right to this windfall. The Prussian is not so generous. We have only a
miscalculation to thank for it.
</p>

<p>Fourteen days ago we had to go up and relieve the front line. It was fairly quiet on our sector, so
the quartermaster who remained in the rear had requisitioned the usual quantity of rations and
provided for the full company of one hundred and fifty men. But on the last day an astonishing
number of English heavies opened up on us with high-explosive, drumming ceaselessly on our
position, so that we suffered severely and came back only eighty strong.</p>

<p>Last night we moved back and settled down to get a good sleep for once: Katczinsky is right
when he says it would not be such a bad war if only one could get a little more sleep. In the line
we have had next to none, and fourteen days is a long time at one stretch.</p>

<p>It was noon before the first of us crawled out of our quarters. Half an hour later every man had
his mess-tin and we gathered at the cookhouse, which smelt greasy and nourishing. At the head
of the queue of course were the hungriest--little Albert Kropp, the clearest thinker among us and
therefore only a lance-corporal; Muller, who still carries his school textbooks with him, dreams of
examinations, and during a bombardment mutters propositions in physics; Leer, who wears a full
beard and has a preference for the girls from officers' brothels. He swears that they are obliged by
an army order to wear silk chemises and to bathe before entertaining guests of the rank of
captain and upwards. And as the fourth, myself, Paul Baumer. And four are nineteen years of
age, and all four joined up from the same class as volunteers for the war.
</p>

<p>Close behind us were our friends: Tjaden, a skinny locksmith of our own age, the biggest eater of
the company. He sits down to eat as thin as a grasshopper and gets up as big as a bug in the
family way; Haie Westhus, of the same age, a peat-digger, who can easily hold a ration-loaf in his
hand and say: Guess what I've got in my fist; then Detering, a peasant, who thinks of nothing but
his farm-yard and his wife; and finally Stanislaus Katczinsky, the leader of our group, shrewd,
cunning, and hard-bitten, forty years of age, with a face of the soil, blue eyes, bent shoulders, and
a remarkable nose for dirty weather, good food, and soft jobs</p>

<p>Our gang formed the head of the queue before the cook-house. We were growing impatient, for
the cook paid no attention to us.</p>

<p>Finally Katczinsky called to him: "Say, Heinrich, open up the soup-kitchen. Anyone can see the
beans are done."
</p>

<p>He shook his head sleepily: "You must all be there first." Tjaden grinned: "We are all here."</p>

<p>The sergeant-cook still took no notice. "That may do for you," he said. "But where are the
others?"</p>

<p>"They won't be fed by you to-day. They're either in the dressing-station or pushing up daisies."</p>

<p>The cook was quite disconcerted as the facts dawned on him. He was staggered. "And I have
cooked for one hundred and fifty men--"</p>

<p>Kropp poked him in the ribs. "Then for once we'll have enough. Come on, begin!"</p>

<p>Suddenly a vision came over Tjaden. His sharp, mousy features began to shine, his eyes grew
small with cunning, his jaws twitched, and he whispered hoarsely: "Man! then you've got bread
for one hundred and fifty men too, eh?"</p>

<p>The sergeant-cook nodded absent-minded, and bewildered.</p>

<p>Tjaden seized him by the tunic. "And sausage?"</p>

<p>Ginger nodded again.</p>

<p>Tjaden's chaps quivered. "Tobacco too?"</p>

<p>"Yes, everything."</p>

<p>Tjaden beamed: "What a bean-feast! That's all for us! Each man gets--wait a bit--yes, practically
two issues."
</p>

<p>Then Ginger stirred himself and said: "That won't do."
</p>

<p>We got excited and began to crowd around.
</p>

<p>"Why won't that do, you old carrot?" demanded Katczinsky.</p>

<p>"Eighty men can't have what is meant for a hundred and fifty</p>

<p>"We'll soon show you," growled Muller.</p>

<p>"I don't care about the stew, but I can only issue rations for eighty men," persisted Ginger.</p>

<p>Katczinsky got angry. "You might be generous for once. You haven't drawn food for eighty men.
You've drawn it for the Second Company. Good. Let's have it then. We are the Second Company."
We began to jostle the fellow. No one felt kindly toward him, for it was his fault that the food
often came up to us in the line too late and cold. Under shellfire he wouldn't bring his kitchen up
near enough, so that our soup-carriers had to go much farther than those of the other companies.
Now Bulcke of the First Company is a much better fellow. He is as fat as a hamster in winter, but
he trundles his pots when it comes to that right up to the very front-line.</p>

<p>We were in just the right mood, and there would certainly have been a dust-up if our company
commander had not appeared. He informed himself of the dispute, and only remarked: "Yes, we
did have heavy losses yesterday."</p>

<p>He glanced into the dixie. "The beans look good." Ginger nodded. "Cooked with meat and fat."
The lieutenant looked at us. He knew what we were thinking. And he knew many other things too,
because he came to the company as a non-com, and was promoted from the ranks. He lifted the
lid from the dixie again and sniffed. Then passing on he said: "Bring me a plate full. Serve out all
the rations. We can do with them."</p>

<p>Ginger looked sheepish as Tjaden danced round him.
</p>

<p>"It doesn't cost you anything! Anyone would think the quartermaster's store belonged to him!
And now get on with it, you old blubber-sticker, and don't you miscount either."</p>

<p>"You be hanged!" spat out Ginger. When things get beyond him he throws up the sponge
altogether; he just goes to pieces. And as if to show that all things were equal to him, of his own
free will he issued in addition half a pound of synthetic honey to each man.
</p>

<p>To-day is wonderfully good. The mail has come, and almost every man has a few letters and
papers. We stroll over to the meadow behind the billets. Kropp has the round lid of a margarine
tub under his arm.</p>

<p>On the right side of the meadow a large common latrine has been built, a roofed and durable
construction. But that is for recruits who as yet have not learned how to make the most of
whatever comes their way. We want something better. Scattered about everywhere there are
separate, individual boxes for the same purpose. They are square, neat boxes with wooden sides
all round, and have unimpeachably satisfactory seats. On the sides are hand grips enabling one to
shift them about.</p>

<p>We move three together in a ring and sit down comfortably. And it will be two hours before we
get up again.</p>

<p>I well remembered how embarrassed we were as recruits in barracks when we had to use the
general latrine. There were no doors and twenty men sat side by side as in a railway carriage, so
that they could be reviewed all at one glance, for soldiers must always be under supervision.</p>

<p>Since then we have learned better than to be shy about such trifling immodesties. In time things
far worse than that came easy to us.</p>

<p>Here in the open air though, the business is entirely a pleasure. I no longer understand why we
should always have shied at these things before. They are, in fact, just as natural as eating and
drinking. We might perhaps have paid no particular attention to them had they not figured so
large in our experience, nor been such novelties to our minds--to the old hands they had long
been a mere matter of course.</p>

<p>The soldier is on friendlier terms than other men with his stomach and intestines. Threequarters of his vocabulary is derived from these regions, and they give an intimate flavour to
expressions of his greatest joy as well as of his deepest indignation. It is impossible to express
oneself in any other way so clearly and pithily. Our families and our teachers will be shocked
when we go home, but here it is the universal language.
</p>

<p>Enforced publicity has in our eyes restored the character of complete innocence to all these
things. More than that, they are so much a matter of course that their comfortable performance
is fully as much enjoyed as the playing of a safe top running flush. Not for nothing was the word
"latrine-rumour" invented; these places are the regimental gossip-shops and common-rooms.</p>

<p>We feel ourselves for the time being better off than in any palatial white-tiled "convenience."
There it can only be hygienic; here it is beautiful.
</p>

<p>These are wonderfully care-free hours. Over us is the blue sky. On the horizon float the bright
yellow, sunlit observation-balloons, and the many little white clouds of the anti-aircraft shells.
Often they rise in a sheaf as they follow after an airman. We hear the muffled rumble of the front
only as very distant thunder, bumble-bees droning by quite drown it. Around us stretches the
flowery meadow. The grasses sway their tall spears; the white butterflies flutter around and float
on the soft warm wind of the late summer. We read letters and newspapers and smoke. We take
off our caps and lay them down beside us. The wind plays with our hair; it plays with our words
and thoughts. The three boxes stand in the midst of the glowing, red field-poppies.</p>

<p>We set the lid of the margarine tub on our knees and so have a good table for a game of skat.
Kropp has the cards with him. After every ouverte we have a round of nap. One could sit
like this for ever.</p>

<p>The notes of an accordion float across from the billets. Often we lay aside the cards and look
about us. One of us will say: "Well, boys...." Or "It was a near thing that time...." And for a
moment we fall silent. There is in each of us a feeling of constraint. We are all sensible of it; it
needs no words to communicate it. It might easily have happened that we should not be sitting
here on our boxes to-day; it came damn near to that. And so everything is new and brave, red
poppies and good food, cigarettes and summer breeze.
</p>

<p>Kropp asks: "Anyone seen Kemmerich lately?"
</p>

<p>"He's up at St. Joseph's," I tell him.</p>

<p>Muller explains that he has a flesh wound in his thigh; a good blighty.
</p>

<p>We decide to go and see him this afternoon</p>

<p>Kropp pulls out a letter. "Kantorek sends you all his best wishes."
</p>

<p>We laugh. Muller throws his cigarette away and says: "I wish he was here."</p>

<p>Kantorek had been our schoolmaster, a stern little man in a grey tailcoat, with a face like a shrew
mouse. He was about the same size as Corporal Himmelstoss, the "terror of Klosterberg." It is very
queer that the unhappiness of the world is so often brought on by small men. They are so much
more energetic and uncompromising than the big fellows. I have always taken good care to keep
out of sections with small company commanders. They are mostly confounded little martinets.</p>

<p>During drill-time Kantorek gave us long lectures until the whole of our class went, under his
shepherding, to the District Commandant and volunteered. I can see him now, as he used to glare
at us through his spectacles and say in a moving voice: "Won't you join up, Comrades?"
</p>

<p>These teachers always carry their feelings ready in their waistcoat pockets, and trot them out by
the hour. But we didn't think of that then.</p>

<p>There was, indeed, one of us who hesitated and did not want to fall into line. That was Joseph
Behm, a plump, homely fellow. But he did allow himself to be persuaded, otherwise he would
have been ostracised. And perhaps more of us thought as he did, but no one could very well stand
out, because at that time even one's parents were ready with the word "coward"; no one had the
vaguest idea what we were in for. The wisest were just the poor and simple people. They knew
the war to be a misfortune, whereas those who were better off, and should have been able to see
more clearly what the consequences would be, were beside themselves with joy.</p>

<p>Katczinsky said that was a result of their upbringing. It made them stupid. And what Kat said, he
had thought about</p>

<p>Strange to say, Behm was one of the first to fall. He got hit in the eye during an attack, and we
left him lying for dead. We couldn't bring him with us, because we had to come back helterskelter. In the afternoon suddenly we heard him call, and saw him crawling about in No Man's
Land. He had only been knocked unconscious. Because he could not see, and was mad with pain,
he failed to keep under cover, and so was shot down before anyone could go and fetch him in.</p>

<p>Naturally we couldn't blame Kantorek for this. Where would the world be if one brought every
man to book? There were thousands of Kantoreks, all of whom were convinced that they were
acting for the best--in a way that cost them nothing.
</p>

<p>And that is why they let us down so badly.
</p>

<p>For us lads of eighteen they ought to have been mediators and guides to the world of maturity,
the world of work, of duty, of culture, of progress--to the future. We often made fun of them and
played jokes on them, but in our hearts we trusted them. The idea of authority, which they
represented, was associated in our minds with a greater insight and a more humane wisdom. But
the first death we saw shattered this belief. We had to recognise that our generation was more to
be trusted than theirs.</p>

<p>They surpassed us only in phrases and in cleverness. The first bombardment showed us our
mistake, and under it the world as they had taught it to us broke in pieces.
</p>

<p>While they continued to write and talk, we saw the wounded and dying. While they taught that
duty to one's country is the greatest thing, we already knew that death-throes are stronger. But
for all that we were no mutineers, no deserters, no cowards--they were very free with all these
expressions. We loved our country as much as they; we went courageously into every action; but
also we distinguished the false from true, we had suddenly learned to see. And we saw that there
was nothing of their world left. We were all at once terribly alone; and alone we must see it
through.</p>

<p>Before going over to see Kemmerich we pack up his things: he will need them on the way back.
</p>

<p>In the dressing station there is great activity: it reeks as ever of carbolic, pus, and sweat. We are
accustomed to a good deal in the billets, but this makes us feel faint. We ask for Kemmerich. He
lies in a large room and receives us with feeble expressions of joy and helpless agitation. While he
was unconscious someone had stolen his watch.</p>

<p>Muller shakes his head: "I always told you that nobody should carry as good a watch as that."
</p>

<p>Muller is rather crude and tactless, otherwise he would hold his tongue, for anybody can see
that Kemmerich will never come out of this place again. Whether he finds his watch or not will
make no difference, at the most one will only be able to send it to his people.</p>

<p>"How goes it, Franz?" asks Kropp.</p>

<p>Kemmerich's head sinks.</p>

<p>"Not so bad... but I have such a damned pain in my foot."</p>

<p>We look at his bed covering. His leg lies under a wire basket. The bed covering arches over it. I
kick Muller on the shin, for he is just about to tell Kemmerich what the orderlies told us outside:
that Kemmerich has lost his foot. The leg is amputated. He looks ghastly, yellow and wan. In his
face there are already the strained lines that we know so well, we have seen them now hundreds
of times. They are not so much lines as marks. Under the skin the life no longer pulses, it has
already pressed out the boundaries of the body. Death is working through from within. It already
has command in the eyes. Here lies our comrade, Kemmerich, who a little while ago was roasting
horse flesh with us and squatting in the shell-holes. He it is still and yet it is not he any longer. His
features have become uncertain and faint, like a photographic plate from which two pictures have
been taken. Even his voice sounds like ashes.
</p>

<p>I think of the time when we went away. His mother, a good plump matron, brought him to the
station. She wept continually, her face was bloated and swollen. Kemmerich felt embarrassed, for
she was the least composed of all; she simply dissolved into fat and water. Then she caught sight
of me and took hold of my arm again and again, and implored me to look after Franz out there.
Indeed he did have a face like a child, and such frail bones that after four weeks' pack-carrying he
already had flat feet. But how can a man look after anyone in the field!</p>

<p>"Now you will soon be going home," says Kropp. "You would have had to wait at least three or
four months for your leave."</p>

<p>Kemmerich nods. I cannot bear to look at his hands, they are like wax. Under the nails is the dirt
of the trenches, it shows through blue-black like poison. It strikes me that these nails will continue
to grow like lean fantastic cellar-plants long after Kemmerich breathes no more. I see the picture
before me. They twist themselves into corkscrews and grow and grow, and with them the hair on
the decaying skull, just like grass in a good soil, just like grass, how can it be possible-- Muller
leans over. "We have brought your things, Franz."</p>

<p>Kemmerich signs with his hands. "Put them under the bed."
</p>

<p>Muller does so. Kemmerich starts on again about the watch. How can one calm him without
making him suspicious?
</p>

<p>Muller reappears with a pair of airman's boots. They are fine English boots of soft, yellow
leather which reach to the knees and lace up all the way--they are things to be coveted.</p>

<p>Muller is delighted at the sight of them. He matches their soles against his own clumsy boots
and says: "Will you be taking them with you then, Franz?"</p>

<p>We all three have the same thought; even if he should get better, he would be able to use only
one--they are no use to him. But as things are now it is a pity that they should stay here; the
orderlies will of course grab them as soon as he is dead, "Won't you leave them with us?" Muller
repeats.
</p>

<p>Kemmerich doesn't want to. They are his most prized possessions.</p>

<p>"Well, we could exchange," suggests Muller again. "Out here one can make some use of them."
Still Kemmerich is not to be moved.</p>

<p>I tread on Muller's foot; reluctantly he puts the fine boots back again under the bed.</p>

<p>We talk a little more and then take our leave.</p>

<p>"Cheerio, Franz."
</p>

<p>I promise him to come back in the morning. Muller talks of doing so, too. He is thinking of the
lace-up boots and means to be on the spot.</p>

<p>Kemmerich groans. He is feverish. We get hold of an orderly outside and ask him to give
Kemmerich a dose of morphia.</p>

<p>He refuses. "If we were to give morphia to everyone we would have to have tubs full--"
</p>

<p>"You only attend to officers properly," says Kropp viciously.
</p>

<p>I hastily intervene and give him a cigarette. He takes it.</p>

<p>"Are you usually allowed to give it, then?" I ask him.</p>

<p>He is annoyed. "If you don't think so, then why do you ask?"
</p>

<p>I press a few more cigarettes into his hand. "Do us the favour--"
</p>

<p>"Well, all right," he says.</p>

<p>Kropp goes in with him. He doesn't trust him and wants to see. We wait outside.</p>

<p>Muller returns to the subject of the boots. "They would fit me perfectly. In these boots I get
blister after blister. Do you think he will last till tomorrow after drill? If he passes out in the night,
we know where the boots--"
</p>

<p>Kropp returns. "Do you think--?" he asks</p>

<p>Done for," says Muller emphatically.</p>

<p>We go back to the huts. I think of the letter that I must write tomorrow to Kemmerich's mother.
I am freezing. I could do with a tot of rum. Muller pulls up some grass and chews it. Suddenly little
Kropp throws his cigarette away, stamps on it savagely, and looking around him with a broken
and distracted face, stammers "Damned shit, the damned shit!"
</p>

<p>We walk on for a long time. Kropp has calmed himself; we understand, he saw red; out here
every man gets like that sometime.</p>

<p>"What has Kantorek written to you?" Muller asks him.</p>

<p>He laughs. "We are the Iron Youth."</p>

<p>We all three smile bitterly. Kropp rails: he is glad that he can speak.</p>

<p>Yes, that's the way they think, these hundred thousand Kantoreks! Iron Youth. Youth! We are
none of us more than twenty years old. But young? Youth? That is long ago. We are old folk.</p>


				</body>
				</html>
				"}

/obj/item/book/manual/crimeandpunishment
	name = "Crime and Punishment"
	icon_state ="book_CrimeAndPunishment"
	author = "Fyodor Dostoevsky"
	title = "Crime and Punishment"
	desc = "An old tattered book left in the zone. This one has a picture of an axe being poised to strike!"
	dat = {"<html>
				<head>
				<style>
				h1 {font-size: 18px; margin: 15px 0px 5px;}
				h2 {font-size: 15px; margin: 15px 0px 5px;}
				li {margin: 2px 0px 2px 15px;}
				ul {list-style: none; margin: 5px; padding: 0px;}
				ol {margin: 5px; padding: 0px 15px;}
				</style>
				</head>
				<body>
				<h3>Crime and Punishment</h3>

				<h4>Chapter One</h4>

<p>On an exceptionally hot evening early in July a young man came out of
the garret in which he lodged in S. Place and walked slowly, as though
in hesitation, towards K. bridge.</p>

<p>He had successfully avoided meeting his landlady on the staircase. His
garret was under the roof of a high, five-storied house and was more
like a cupboard than a room. The landlady who provided him with
garret, dinners, and attendance, lived on the floor below, and every
time he went out he was obliged to pass her kitchen, the door of which
invariably stood open. And each time he passed, the young man had a
sick, frightened feeling, which made him scowl and feel ashamed. He
was hopelessly in debt to his landlady, and was afraid of meeting her.</p>

<p>This was not because he was cowardly and abject, quite the contrary;
but for some time past he had been in an overstrained irritable
condition, verging on hypochondria. He had become so completely
absorbed in himself, and isolated from his fellows that he dreaded
meeting, not only his landlady, but anyone at all. He was crushed by
poverty, but the anxieties of his position had of late ceased to weigh
upon him. He had given up attending to matters of practical
importance; he had lost all desire to do so. Nothing that any landlady
could do had a real terror for him. But to be stopped on the stairs,
to be forced to listen to her trivial, irrelevant gossip, to pestering
demands for payment, threats and complaints, and to rack his brains
for excuses, to prevaricate, to lie--no, rather than that, he would
creep down the stairs like a cat and slip out unseen.</p>

<p>This evening, however, on coming out into the street, he became
acutely aware of his fears.</p>

<p>"I want to attempt a thing ...like that... and am frightened by these
trifles," he thought, with an odd smile. "Hm . . . yes, all is in a
man's hands and he lets it all slip from cowardice, that's an axiom.
It would be interesting to know what it is men are most afraid of.
Taking a new step, uttering a new word is what they fear most. . . .
But I am talking too much. It's because I chatter that I do nothing.
Or perhaps it is that I chatter because I do nothing. I've learned to
chatter this last month, lying for days together in my den thinking
. . . of Jack the Giant-killer. Why am I going there now? Am I capable
of /that/? Is /that/ serious? It is not serious at all. It's simply a
fantasy to amuse myself; a plaything! Yes, maybe it is a plaything."</p>

<p>The heat in the street was terrible: and the airlessness, the bustle
and the plaster, scaffolding, bricks, and dust all about him, and that
special Petersburg stench, so familiar to all who are unable to get
out of town in summer--all worked painfully upon the young man's
already overwrought nerves. The insufferable stench from the pot-
houses, which are particularly numerous in that part of the town, and
the drunken men whom he met continually, although it was a working
day, completed the revolting misery of the picture. An expression of
the profoundest disgust gleamed for a moment in the young man's
refined face. He was, by the way, exceptionally handsome, above the
average in height, slim, well-built, with beautiful dark eyes and dark
brown hair. Soon he sank into deep thought, or more accurately
speaking into a complete blankness of mind; he walked along not
observing what was about him and not caring to observe it. From time
to time, he would mutter something, from the habit of talking to
himself, to which he had just confessed. At these moments he would
become conscious that his ideas were sometimes in a tangle and that he
was very weak; for two days he had scarcely tasted food.</p>

<p>He was so badly dressed that even a man accustomed to shabbiness would
have been ashamed to be seen in the street in such rags. In that
quarter of the town, however, scarcely any shortcoming in dress would
have created surprise. Owing to the proximity of the Hay Market, the
number of establishments of bad character, the preponderance of the
trading and working class population crowded in these streets and
alleys in the heart of Petersburg, types so various were to be seen in
the streets that no figure, however queer, would have caused surprise.
But there was such accumulated bitterness and contempt in the young
man's heart, that, in spite of all the fastidiousness of youth, he
minded his rags least of all in the street. It was a different matter
when he met with acquaintances or with former fellow students, whom,
indeed, he disliked meeting at any time. And yet when a drunken man
who, for some unknown reason, was being taken somewhere in a huge
waggon dragged by a heavy dray horse, suddenly shouted at him as he
drove past: "Hey there, German hatter" bawling at the top of his voice
and pointing at him--the young man stopped suddenly and clutched
tremulously at his hat. It was a tall round hat from Zimmerman's, but
completely worn out, rusty with age, all torn and bespattered,
brimless and bent on one side in a most unseemly fashion. Not shame,
however, but quite another feeling akin to terror had overtaken him.</p>

<p>"I knew it," he muttered in confusion, "I thought so! That's the worst
of all! Why, a stupid thing like this, the most trivial detail might
spoil the whole plan. Yes, my hat is too noticeable. . . . It looks
absurd and that makes it noticeable. . . . With my rags I ought to
wear a cap, any sort of old pancake, but not this grotesque thing.
Nobody wears such a hat, it would be noticed a mile off, it would be
remembered. . . . What matters is that people would remember it, and
that would give them a clue. For this business one should be as little
conspicuous as possible. . . . Trifles, trifles are what matter! Why,
it's just such trifles that always ruin everything. . . ."</p>

<p>He had not far to go; he knew indeed how many steps it was from the
gate of his lodging house: exactly seven hundred and thirty. He had
counted them once when he had been lost in dreams. At the time he had
put no faith in those dreams and was only tantalising himself by their
hideous but daring recklessness. Now, a month later, he had begun to
look upon them differently, and, in spite of the monologues in which
he jeered at his own impotence and indecision, he had involuntarily
come to regard this "hideous" dream as an exploit to be attempted,
although he still did not realise this himself. He was positively
going now for a "rehearsal" of his project, and at every step his
excitement grew more and more violent.</p>

<p>With a sinking heart and a nervous tremor, he went up to a huge house
which on one side looked on to the canal, and on the other into the
street. This house was let out in tiny tenements and was inhabited by
working people of all kinds--tailors, locksmiths, cooks, Germans of
sorts, girls picking up a living as best they could, petty clerks,
etc. There was a continual coming and going through the two gates and
in the two courtyards of the house. Three or four door-keepers were
employed on the building. The young man was very glad to meet none of
them, and at once slipped unnoticed through the door on the right, and
up the staircase. It was a back staircase, dark and narrow, but he was
familiar with it already, and knew his way, and he liked all these
surroundings: in such darkness even the most inquisitive eyes were not
to be dreaded.</p>

<p>"If I am so scared now, what would it be if it somehow came to pass
that I were really going to do it?" he could not help asking himself
as he reached the fourth storey. There his progress was barred by some
porters who were engaged in moving furniture out of a flat. He knew
that the flat had been occupied by a German clerk in the civil
service, and his family. This German was moving out then, and so the
fourth floor on this staircase would be untenanted except by the old
woman. "That's a good thing anyway," he thought to himself, as he rang
the bell of the old woman's flat. The bell gave a faint tinkle as
though it were made of tin and not of copper. The little flats in such
houses always have bells that ring like that. He had forgotten the
note of that bell, and now its peculiar tinkle seemed to remind him of
something and to bring it clearly before him. . . . He started, his
nerves were terribly overstrained by now. In a little while, the door
was opened a tiny crack: the old woman eyed her visitor with evident
distrust through the crack, and nothing could be seen but her little
eyes, glittering in the darkness. But, seeing a number of people on
the landing, she grew bolder, and opened the door wide. The young man
stepped into the dark entry, which was partitioned off from the tiny
kitchen. The old woman stood facing him in silence and looking
inquiringly at him. She was a diminutive, withered up old woman of
sixty, with sharp malignant eyes and a sharp little nose. Her
colourless, somewhat grizzled hair was thickly smeared with oil, and
she wore no kerchief over it. Round her thin long neck, which looked
like a hen's leg, was knotted some sort of flannel rag, and, in spite
of the heat, there hung flapping on her shoulders, a mangy fur cape,
yellow with age. The old woman coughed and groaned at every instant.
The young man must have looked at her with a rather peculiar
expression, for a gleam of mistrust came into her eyes again.</p>

<p>"Raskolnikov, a student, I came here a month ago," the young man made
haste to mutter, with a half bow, remembering that he ought to be more
polite.</p>

<p>"I remember, my good sir, I remember quite well your coming here," the
old woman said distinctly, still keeping her inquiring eyes on his
face.</p>

<p>"And here . . . I am again on the same errand," Raskolnikov continued,
a little disconcerted and surprised at the old woman's mistrust.
"Perhaps she is always like that though, only I did not notice it the
other time," he thought with an uneasy feeling.</p>

<p>The old woman paused, as though hesitating; then stepped on one side,
and pointing to the door of the room, she said, letting her visitor
pass in front of her:</p>

<p>"Step in, my good sir."</p>

<p>The little room into which the young man walked, with yellow paper on
the walls, geraniums and muslin curtains in the windows, was brightly
lighted up at that moment by the setting sun.</p>

<p>"So the sun will shine like this /then/ too!" flashed as it were by
chance through Raskolnikov's mind, and with a rapid glance he scanned
everything in the room, trying as far as possible to notice and
remember its arrangement. But there was nothing special in the room.
The furniture, all very old and of yellow wood, consisted of a sofa
with a huge bent wooden back, an oval table in front of the sofa, a
dressing-table with a looking-glass fixed on it between the windows,
chairs along the walls and two or three half-penny prints in yellow
frames, representing German damsels with birds in their hands--that
was all. In the corner a light was burning before a small ikon.
Everything was very clean; the floor and the furniture were brightly
polished; everything shone.</p>

<p>"Lizaveta's work," thought the young man. There was not a speck of
dust to be seen in the whole flat.</p>

<p>"It's in the houses of spiteful old widows that one finds such
cleanliness," Raskolnikov thought again, and he stole a curious glance
at the cotton curtain over the door leading into another tiny room, in
which stood the old woman's bed and chest of drawers and into which he
had never looked before. These two rooms made up the whole flat.</p>

<p>"What do you want?" the old woman said severely, coming into the room
and, as before, standing in front of him so as to look him straight in
the face.</p>

<p>"I've brought something to pawn here," and he drew out of his pocket
an old-fashioned flat silver watch, on the back of which was engraved
a globe; the chain was of steel.</p>

<p>"But the time is up for your last pledge. The month was up the day
before yesterday."</p>

<p>"I will bring you the interest for another month; wait a little."</p>

<p>"But that's for me to do as I please, my good sir, to wait or to sell
your pledge at once."</p>

<p>"How much will you give me for the watch, Alyona Ivanovna?"</p>

<p>"You come with such trifles, my good sir, it's scarcely worth
anything. I gave you two roubles last time for your ring and one could
buy it quite new at a jeweler's for a rouble and a half."</p>

<p>"Give me four roubles for it, I shall redeem it, it was my father's. I
shall be getting some money soon."</p>

<p>"A rouble and a half, and interest in advance, if you like!"</p>

<p>"A rouble and a half!" cried the young man.</p>

<p>"Please yourself"--and the old woman handed him back the watch. The
young man took it, and was so angry that he was on the point of going
away; but checked himself at once, remembering that there was nowhere
else he could go, and that he had had another object also in coming.</p>

<p>"Hand it over," he said roughly.</p>

<p>The old woman fumbled in her pocket for her keys, and disappeared
behind the curtain into the other room. The young man, left standing
alone in the middle of the room, listened inquisitively, thinking. He
could hear her unlocking the chest of drawers.</p>

<p>"It must be the top drawer," he reflected. "So she carries the keys in
a pocket on the right. All in one bunch on a steel ring. . . . And
there's one key there, three times as big as all the others, with deep
notches; that can't be the key of the chest of drawers . . . then
there must be some other chest or strong-box . . . that's worth
knowing. Strong-boxes always have keys like that . . . but how
degrading it all is."</p>

<p>The old woman came back.</p>

<p>"Here, sir: as we say ten copecks the rouble a month, so I must take
fifteen copecks from a rouble and a half for the month in advance. But
for the two roubles I lent you before, you owe me now twenty copecks
on the same reckoning in advance. That makes thirty-five copecks
altogether. So I must give you a rouble and fifteen copecks for the
watch. Here it is."</p>

<p>"What! only a rouble and fifteen copecks now!"</p>

<p>"Just so."</p>

<p>The young man did not dispute it and took the money. He looked at the
old woman, and was in no hurry to get away, as though there was still
something he wanted to say or to do, but he did not himself quite know
what.</p>

<p>"I may be bringing you something else in a day or two, Alyona Ivanovna
--a valuable thing--silver--a cigarette-box, as soon as I get it back
from a friend . . ." he broke off in confusion.</p>

<p>"Well, we will talk about it then, sir."</p>

<p>"Good-bye--are you always at home alone, your sister is not here with
you?" He asked her as casually as possible as he went out into the
passage.</p>

<p>"What business is she of yours, my good sir?"</p>

<p>"Oh, nothing particular, I simply asked. You are too quick. . . .
Good-day, Alyona Ivanovna."</p>

<p>Raskolnikov went out in complete confusion. This confusion became more
and more intense. As he went down the stairs, he even stopped short,
two or three times, as though suddenly struck by some thought. When he
was in the street he cried out, "Oh, God, how loathsome it all is! and
can I, can I possibly. . . . No, it's nonsense, it's rubbish!" he
added resolutely. "And how could such an atrocious thing come into my
head? What filthy things my heart is capable of. Yes, filthy above
all, disgusting, loathsome, loathsome!--and for a whole month I've
been. . . ." But no words, no exclamations, could express his
agitation. The feeling of intense repulsion, which had begun to
oppress and torture his heart while he was on his way to the old
woman, had by now reached such a pitch and had taken such a definite
form that he did not know what to do with himself to escape from his
wretchedness. He walked along the pavement like a drunken man,
regardless of the passers-by, and jostling against them, and only came
to his senses when he was in the next street. Looking round, he
noticed that he was standing close to a tavern which was entered by
steps leading from the pavement to the basement. At that instant two
drunken men came out at the door, and abusing and supporting one
another, they mounted the steps. Without stopping to think,
Raskolnikov went down the steps at once. Till that moment he had never
been into a tavern, but now he felt giddy and was tormented by a
burning thirst. He longed for a drink of cold beer, and attributed his
sudden weakness to the want of food. He sat down at a sticky little
table in a dark and dirty corner; ordered some beer, and eagerly drank
off the first glassful. At once he felt easier; and his thoughts
became clear.</p>

<p>"All that's nonsense," he said hopefully, "and there is nothing in it
all to worry about! It's simply physical derangement. Just a glass of
beer, a piece of dry bread--and in one moment the brain is stronger,
the mind is clearer and the will is firm! Phew, how utterly petty it
all is!"</p>

<p>But in spite of this scornful reflection, he was by now looking
cheerful as though he were suddenly set free from a terrible burden:
and he gazed round in a friendly way at the people in the room. But
even at that moment he had a dim foreboding that this happier frame of
mind was also not normal.</p>

<p>There were few people at the time in the tavern. Besides the two
drunken men he had met on the steps, a group consisting of about five
men and a girl with a concertina had gone out at the same time. Their
departure left the room quiet and rather empty. The persons still in
the tavern were a man who appeared to be an artisan, drunk, but not
extremely so, sitting before a pot of beer, and his companion, a huge,
stout man with a grey beard, in a short full-skirted coat. He was very
drunk: and had dropped asleep on the bench; every now and then, he
began as though in his sleep, cracking his fingers, with his arms wide
apart and the upper part of his body bounding about on the bench,
while he hummed some meaningless refrain, trying to recall some such
lines as these:</p>

<p>"His wife a year he fondly loved</p>
<p>His wife a--a year he--fondly loved."</p>

<p>Or suddenly waking up again:</p>

<p> "Walking along the crowded row</p>
<p>He met the one he used to know."</p>

<p>But no one shared his enjoyment: his silent companion looked with
positive hostility and mistrust at all these manifestations. There was
another man in the room who looked somewhat like a retired government
clerk. He was sitting apart, now and then sipping from his pot and
looking round at the company. He, too, appeared to be in some
agitation.</p>

				</body>
				</html>
				"}

/obj/item/book/manual/roadsidepicnic
	name = "Roadside Picnic"
	icon_state ="book_RoadsidePicnic"
	author = "Boris Strugatsky"		 // Who wrote the thing, can be changed by pen or PC. It is not automatically assigned
	title = "Roadside Picnic"
	desc = "An old tattered book left in the zone. This one has a picture of a man with his arms out towards a sphere in an urban environment.."
	dat = {"<html>
				<head>
				<style>
				h1 {font-size: 18px; margin: 15px 0px 5px;}
				h2 {font-size: 15px; margin: 15px 0px 5px;}
				li {margin: 2px 0px 2px 15px;}
				ul {list-style: none; margin: 5px; padding: 0px;}
				ol {margin: 5px; padding: 0px 15px;}
				</style>
				</head>
				<body>

				<h3>Roadside Picnic</h3>

				<h4>One</h4>

<p>REDRICK SCHUHRAT, 23 YEARS OLD, SINGLE, LABORATORY ASSISTANT IN THE HARMONT BRANCH OF THE INTERNATIONAL INSTITUTE OF EXTRATERRESTRIAL CULTURES.</p>

<p>The other day, we're standing in the repository; it's evening already, nothing left to do but dump the lab suits, then I can head down to the Borscht for my daily dose of booze. I'm relaxing, leaning on the wall, my work all done and a cigarette at the ready, dying for a smoke- I haven't smoked for two hours- while he keeps fiddling with his treasures. One safe is loaded, locked, and sealed shut, and he's loading yet another one- taking the empties from our transporter, inspecting each one from every angle (and they are heavy bastards, by the way, fourteen pounds each), and, grunting slightly, carefully depositing them on the shelf.</p>

<p> He's been struggling with these empties for ages, and all, in my opinion, with no benefit to humanity or himself. In his place, I would have bailed a long time ago and gotten another job with the same pay. Although on the other hand, if you think about it, an empty really is a puzzling and even a mysterious thing. I've handled them lots of times myself, but every time I see one- I can't help it, I'm still amazed. It's just these two copper disks the size of a saucer, a quarter inch thick, about eighteen inches apart, and not a thing between the two. I mean, nothing whatsoever, zip, nada, zilch. You can stick your hand between them- maybe even your head, if the thing has unhinged you enough- nothing but empty space, thin air. And despite this, there must be something there, a force field of some sort, because so far no one's managed to push these disks together, or pull them apart either.</p>

<p>No, friends, it's hard to describe this thing if you haven't seen one. It looks much too simple, especially when you finally convince yourself that your eyes aren't playing tricks on you. It's like describing a glass to someone or, God forbid, a wineglass: you just wiggle your fingers in the air and curse in utter frustration. All right, we'll assume that you got it, and if you didn't, pick up a copy of the Institute's Reports...they have articles about these empties in every issue, complete with pictures.
</p>

<p> Anyway, Kirill's been struggling with these empties for almost a year now. I've worked for him from the very beginning, but I still don't get what he wants with them, and to be honest, I haven't tried too hard to find out. Let him first figure it out for himself, sort it all out, then maybe I'll have a listen. But so far, one thing is clear to me: he's absolutely determined to dismantle an empty, dissolve it in acid, crush it under a press, or melt it in an oven. And then he'll finally get it, he'll be covered in glory, and the entire scientific world will simply shudder in pleasure. But for now, as far as I know, he's nowhere near this goal. He hasn't yet accomplished anything at all, except that he's exhausted himself, turned gray and quiet, and his eyes have become like a sick dog's-they even water. If it were someone else, I'd get him totally wasted, take him to a great girl to loosen him up a bit, then the next morning I'd feed him more booze, take him to more girls, and by the end of the week he'd be A-OK-good as new and ready to go. Except this sort of therapy wouldn't work on Kirill. There's no point in even suggesting it; he's not the type.</p>

<p>So, as I said, we're standing in the repository, I'm looking at him, the way he's gotten, how his eyes have sunk in, and I feel sorrier for him than I can say. And then I decide. Except I don't really decide- it's like the words tumble out themselves.</p>

<p>"Listen," I say, "Kirill..."</p>

<p>He's standing there, holding up the last empty, and looking like he wants to crawl right inside it.</p>

<p>"Listen," I say, "Kirill. What if you had a full empty, huh?"</p>

<p>"A full empty?" he repeats, knitting his brows like I'm speaking Greek.</p>

<p>"Yeah," I say. "It's your hydromagnetic trap, what's it called? Object seventy-seven B. Only with some shit inside, blue stuff."
</p>

<p>I can tell- I'm starting to get through. He looks up at me, squints, and there in his eyes, behind the dog tears, appears a glimmer of intelligence, as he himself loves to put it. "Wait, wait," he says. "A full one? The same thing, except full?"
</p>

<p>"Yes, exactly."</p>

<p> "Where?"</p>

<p>My Kirill's cured. Good as new and ready to go. "Let's go have a smoke," I say.</p>

<p> He promptly stuffs the empty into the safe, slams the door, gives the lock three and a half turns, and comes back with me to the lab. For an empty empty, Ernest would give four hundred bucks in cash, and I could bleed the bastard dry for a full one; but believe it or not, that doesn't even cross my mind, because in my hands Kirill has come to life again-he's buzzing with energy, almost bursting into song, bounding down the stairs four at a time, not letting a guy light his cigarette. Anyway, I tell him everything: what it looks like and where it is and how to best get at it. He immediately takes out a map, finds this garage, puts his finger on it, gives me a long look, and, of course, immediately figures me out, but then that isn't so hard ...</p>

<p> "You devil, Red!" he says, smiling at me. "Well, let's get this over with. We'll go first thing tomorrow morning. I'll request a hoverboot and a pass at nine, and by ten we'll be off. All right?"
</p>

<p>  "All right," I say. "And who else will we take?"
</p>

<p>"What do we need another guy for?"
</p>

<p>"No way," I say. "This is no picnic. What if something happens to you? It's the Zone. Gotta follow the rules."</p>

<p> He gives a short laugh and shrugs. "Up to you. You know better."
</p>

<p>No shit! Of course, that was him being generous: Who needs another guy, we'll go by ourselves, we'll keep the whole thing dark, and no one will suspect a thing. Except I know that the guys from the Institute don't go into the Zone in pairs. They have an unwritten rule around here: two guys do all the work while the third one watches, and when they ask later, he vouches there was no funny business.</p>

<p>"If it were up to me, I'd take Austin," Kirill says. "But you probably don't want him. Or would he do?"</p>

<p>"No," I say. "Anyone but him. You'll take Austin another time." Austin isn't a bad guy, he's got the right mix of courage and cowardice, but I think he's already doomed. You can't explain this to Kirill, but I know these things: the man has decided he's got the Zone completely figured out, and so he'll soon screw up and kick the bucket. And he can go right ahead. But not with me around.</p>

<p> "All right, all right," says Kirill. "How about Tender?" Tender is his second lab assistant. He isn't a bad guy, a calm sort.
</p>

<p>  "He's a bit old," I say. "And he has kids ..."</p>

<p> "That's OK. He's been in the Zone already."</p>

<p>"Fine," I say. "Let it be Tender."
</p>

<p>Anyway, he stays there poring over the map while I race straight to the Borscht, because my stomach is growling and my throat is parched.</p>

<p>The next day I get to work at nine, as usual, and show my ID. The guard on duty is the beefy sergeant I pummeled last year when he made a drunken pass at Guta. "Hey," he says. "They're looking all over the Institute for you, Red-"</p>

<p>I interrupt him politely. "I'm not 'Red' to you," I say. "Don't you try to pal around with me, you Swedish ape."</p>

<p>"For God's sake, Red!" he says in astonishment. "But they all call you that!"</p>

<p>I'm anxious about going into the Zone and cold sober to boot. I grab him by the shoulder belt and tell him exactly what he is and just how his mother conceived him. He spits on the floor, returns my ID, and continues without any more pleasantries.</p>

<p>"Redrick Schuhart," he says, "you are ordered to immediately report to the chief of security, Captain Herzog."</p>

<p>"There you go," I say. "Much better. Keep plugging away, Sergeant-you'll make lieutenant yet."</p>

<p>Meantime, I'm shitting my pants. What could Captain Herzog want from me during work hours? Well, off I go to report. He has an office on the third floor, a very nice office, complete with bars on the windows like a police station. Willy himself is sitting behind his desk, puffing on his pipe and typing some gibberish on his typewriter. Over in the corner, some sergeant is rummaging through a metal cabinet-must be a new guy; I've never met him. We have more of these sergeants at the Institute than they have at division headquarters, all of them hale, hearty, and rosy cheeked. They don't need to go into the Zone and don't give a damn about world affairs.</p>

<p>"Hello," I say. "You requested my presence?"</p>

<p>Willy looks at me like I'm not there, pushes away his typewriter, puts an enormous file in front of him, and starts flipping through it. "Redrick Schuhart?" he says.</p>

<p>"That's my name," I answer, feeling an urge to burst into nervous laughter.</p>

<p>"How long have you worked at the Institute?"</p>

<p>"Two years, going on the third."</p>

<p>"Your family?"</p>

<p>"I'm all alone," I say. "An orphan."</p>

<p>Then he turns to the sergeant and orders him sternly, "Sergeant Lummer, go to the archives and bring back case 150." The sergeant salutes him and beats it. Willy slams the file shut and asks me gloomily, "Starting up your old tricks again, are you?"</p>

<p>"What old tricks?"</p>

<p> "You know damn well what old tricks. We've received information on you again."</p>

<p>Aha, I think. "And who was the source?"</p>

<p>He scowls and bangs his pipe on the ashtray in annoyance. "That's none of your business," he says. "I'm warning you as an old friend: give up this nonsense, give it up for good. If they catch you a second time, you won't walk away with six months. And they'll kick you out of the Institute once and for all, understand?"</p>

<p>"I understand," I say. "That much I understand. What I don't understand is what son of a bitch squealed on me ..."</p>

<p>But he's staring through me again, puffing on his empty pipe, and flipping merrily through his file. That, then, signals the return of Sergeant Lummer with case 150. "Thank you, Schuhart," says Captain Willy Herzog, nicknamed the Hog. "That's all that I needed to know. You are free to go."</p>

<p>Well, I go to the locker room, change into my lab suit, and light up, the entire time trying to figure out: where are they getting the dirt? If it's from the Institute, then it's all lies, no one here knows a damn thing about me and never could. And if it's from the police ... again, what could they know about except my old sins? Maybe the Vulture got nabbed; that bastard, to save his sorry ass, would rat on his own mother. But even the Vulture doesn't have a thing on me nowadays. I think and think, can't think of a thing, and decide not to give a damn. The last time I went into the Zone at night was three months ago; the swag is mostly gone, and the money is mostly spent. They didn't catch me then, and like hell they'll catch me now. I'm slippery.</p>

<p>But then, as I'm heading upstairs, it hits me, and I'm so stunned that I go back down to the locker room, sit down, and light up again. It turns out I can't go into the Zone today. And tomorrow I can't, and the day after tomorrow. It turns out the cops again have me on their radar, they haven't forgotten about me, and even if they have, someone has very kindly reminded them. And it doesn't even matter now who it was. No stalker, unless he's completely nuts, will go anywhere near the Zone when he knows he's being watched. Right now, I ought to be burrowing into some deep dark corner. Zone? What Zone? I haven't set foot there in months, I don't even go there using my pass! What are you harassing an honest lab assistant for?
</p>

<p> I think all this through and even feel a bit of relief that I don't need to go into the Zone today. Except how am I going to break it to Kirill?
</p>

<p> I tell him straight out. "I'm not going into the Zone. Your orders?"</p>

<p>At first, of course, he just gawks at me. Eventually, something seems to click. He takes me by the elbow, leads me to his office, sits me down at his table, and perches on the windowsill nearby. We light up. Silence. Then he asks me cautiously, "Red, did something happen?"</p>

<p>Now what am I supposed to tell him? "No," I say, "nothing happened. Well, I blew twenty bucks last night playing poker-that Noonan sure knows how to play, the bastard."</p>

<p>"Hold on," he says. "What, you mean you just changed your mind?"</p>

<p> I almost groan from the tension. "I can't," I say through my teeth. "I can't, you get it? Herzog just called me to his office."</p>

<p>He goes limp. Again misery is stamped on his face, and again his eyes look like a sick poodle's. He takes a ragged breath, lights a new cigarette with the remains of the old one, and says quietly, "Believe me, Red, I didn't breathe a word to anyone."</p>

<p>"Stop it," I say. "Who's talking about you?"</p>

<p>"I haven't even told Tender yet. I got a pass for him, but I haven't even asked him whether he'd come or not ..."</p>

<p>I keep smoking in silence. Ye gods, the man just doesn't understand.
</p>

<p> "What did Herzog say to you, anyway?"</p>

<p> "Oh, not much," I say. "Someone squealed on me, that's all."</p>

<p>He gives me a funny look, hops off the windowsill, and starts walking back and forth. He's pacing around his office while I sit there, blowing smoke rings and keeping my trap shut. I feel sorry for him, of course, and really this is rotten luck: a great cure I found for the guy's depression. And who's to blame here? I am, that's who. I tempted a child with candy, except the candy's in a jar, out of reach on the top shelf ... He stops pacing, comes up to me, and, looking somewhere off to the side, asks awkwardly, "Listen, Red, how much would it cost-a full empty?"</p>

<p>I don't get it at first, thinking he wants to buy one somewhere else, except good luck finding another one-it might be the only one in the world, and besides, he wouldn't have enough money. Where would a Russian scientist get that much cash? Then I feel like I've been slapped: does the bastard think I'm pulling this stunt for the dough? For God's sake, I think, asshole, what do you take me for? I even open my mouth, ready to shower him with curses. And I stop. Because, actually, what else could he take me for? A stalker's a stalker, the money is all that matters to him, he gambles his life for the money. So it follows that yesterday I threw out the line, and today I'm working the bait, jacking up the price.</p>

<p>These thoughts shock me speechless. Meanwhile, he keeps staring at me intently, and in his eyes I don't see contempt-only a kind of compassion. And so I explain it to him calmly. "No one has ever gone to the garage with a pass," I say. "They haven't even laid the route to it yet, you know that. So here we are coming back, and your Tender starts bragging how we made straight for the garage, took what we needed, and returned immediately. As if we went to the warehouse. And it will be perfectly obvious," I say, "that we knew what we were coming for. That means that someone was guiding us. And which one of us three it was-that's a real tough one. You understand how this looks for me?"</p>

<p> I finish my little speech, and we silently look each other in the eye. Then he suddenly claps his hands, rubs them together, and cheerfully announces, "Well, of course, no means no. I understand you, Red, so I can't judge you. I'll go myself. I'll manage, with luck. Not my first time."</p>

<p>He spreads the map on the windowsill, leans on his hands, hunches over it, and all his good cheer evaporates before my eyes. I hear him mumble, "Three hundred and ninety feet ... or even four hundred ... and a bit more in the garage. No, I won't take Tender. What do you think, Red, maybe I shouldn't take Tender? He has two kids, after all ..."</p>

<p>They won't let you out on your own," I say.</p>

<p>"Don't worry, they will," he says, still mumbling. "I know all the sergeants ... and all the lieutenants. I don't like those trucks! Thirteen years they've stood in the open air, and they still look brand-new ... Twenty steps away, the gasoline tanker is rusted through, but they look fresh from the assembly line. Oh, that Zone!"</p>

<p>He lifts his gaze from the map and stares out the window. And I stare out the window, too. There, beyond the thick leaded glass, is our Zone-right there, almost within reach, tiny and toylike from the thirteenth floor ...</p>

<p>If you take a quick look at it, everything seems OK. The sun shines there just like it's supposed to, and it seems as if nothing's changed, as if everything's the same as thirteen years ago. My old man, rest his soul, could take a look and see nothing out of place, might only wonder why there isn't smoke coming from the factories-Is there a strike on? Yellow ore in conical mounds, blast furnaces gleaming in the sun, rails, rails, and more rails, on the rails a locomotive ... In short, the typical industrial landscape. Except there's no one around: no one living, no one dead. Ah, and there's the garage: a long gray tube, the gates wide open, and trucks standing next to it on the lot. Thirteen years they've stood, and nothing's happened to them. Kirill got that right-he has a good head on his shoulders. God help you if you ever pass between those vehicles, you must always go around ... There's a useful crack in the pavement there, if it hasn't filled with brambles. Four hundred feet-where's he measuring that from? Oh! Must be from the last marker. Right, can't be more than that from there. These eggheads are making progress after all ... Look, they've laid a route all the way to the dump, and a clever route at that! There it is, the ditch where the Slug kicked the bucket, all of six feet away from their route. And Knuckles kept telling the Slug, "You idiot, stay away from those ditches or there will be nothing left to bury!" A real prophecy that was-nothing left to bury indeed. That's the Zone for you: come back with swag, a miracle; come back alive, success; come back with a patrol bullet in your ass, good luck; and everything else--that's fate.</p>

<p>I take a look at Kirill and see that he's watching me out of the corner of his eye. And the look on his face makes me do another one-eighty. Screw them, I think, let them all rot in hell, what can those toads do to me after all?</p>

<p>He doesn't need to say a thing, but he does. "Laboratory Assistant Schuhart," he says. "From official-I emphasize 'official'-sources I have received information suggesting that the inspection of the garage may be of great value to world science. I propose we inspect the garage. A bonus paycheck is guaranteed." And he's grinning from ear to ear.</p>

<p>"What official sources?" I ask, grinning like an idiot myself.</p>

<p>"These are confidential sources," he answers. "But I am authorized to tell you." Here he stops grinning and frowns. "Say, from Dr. Douglas."</p>

<p> "Ah," I say, "from Dr. Douglas. And which Dr. Douglas is that?"</p>

<p> "Sam Douglas," he says drily. "He perished last year."</p>

<p>My skin crawls. For God's sake! Who talks about these things before setting out? These eggheads never have a grain of sense ... I jab my cigarette butt into the ashtray. "Fine. Where's your Tender? How long do we have to wait for him?"</p>

<p>Anyway, we drop the topic. Kirill calls PPS and orders us a hoverboot while I take a look at their map. It's not bad at all-made from a highly magnified aerial photograph. You can even make out the ridges on the tire lying next to the garage gates. If we stalkers had maps like this ... then again, much good it'd do at night, when you're showing your ass to
the stars and can't see your own two hands.
</p>

<p>And here Tender shows up. Red in the face, puffing and panting. His daughter got sick, he had to go fetch the doctor. He apologizes for being late. Well, we hand him quite the gift-a trip to the Zone. At first he almost forgets to puff and pant, the poor guy.</p>

<p>"What do you mean, the Zone?" he says. "Why me?" However, when he hears about the double bonus and that Red Schuhart is coming too, he calms down and starts breathing again.</p>

<p>Anyway, we go down to the "boudoir," Kirill rushes off to get the passes, we show the passes to yet another sergeant, and this sergeant gives each of us a specsuit. Now these really are handy. Dye a specsuit any color other than the original red, and any stalker would put down five hundred for it without batting an eyelash. I've long since vowed to figure out a way to swipe one from the Institute. At first glance, it's nothing special, looks like a diving suit, with a helmet to match and a large visor at the front. Maybe it's not quite like a diving suit, actually, more like a space suit. It's light, comfortable, not too tight, and you don't sweat in it from the heat. You can go right through a fire in this thing, and no gas will penetrate it. It's even bulletproof, they say. Of course, fire, toxic gas, and bullets-these are only Earth perils. The Zone doesn't have those; in the Zone you have other worries. Anyhow, truth be told, even in their specsuits people drop like flies. On the other hand, without them it'd probably be even worse. These suits are completely safe from the burning fuzz, for example. And from Satan's blossom and its spit ... All right.</p>

<p>We pull on our specsuits, I pour some nuts and bolts from a bag into my hip pocket, and we plod across the Institute yard toward the Zone entrance. That's how they always do it around here, so that everyone can see: There they go, the heroes of science, to lay themselves down on the altar to mankind, knowledge, and the Holy Spirit, amen. And sure enough, sympathetic mugs poke out of every window all the way up to the fifteenth floor; hankies waving good-bye and an orchestra are the only things missing.
</p>

<p>"Keep your head high," I tell Tender. "Suck in your gut, soldier! A grateful humanity won't forget you!"</p>

<p>He gives me a look, and I see that he's in no mood for jokes. He's right-this is no joke. But when you're leaving for the Zone, it's one of two things: you start bawling, or you crack jokes-and I'm sure as hell not crying. I take a look at Kirill. He's holding up OK, only mouthing something silently, as if praying.</p>

<p>"Praying?" I ask. "Pray, pray! The farther into the Zone, the closer to heaven."</p>

<p>"What?" he says.</p>

<p>"Pray!" I yell. "Stalkers cut in line at the gates of heaven!"</p>

<p>And he suddenly smiles and pats me on the back, as if to say, Nothing will happen as long as you are with me, and if it does, well, we only die once. God, he's a funny guy.</p>

<p>We hand our passes over to the last sergeant-this time, for a change of pace, he happens to be a lieutenant; I know him, his pop sells cemetery fencing in Rexopolis-and there's the hoverboot waiting for us, the guys from PPS have flown it over and left it at the checkpoint. Everyone is gathered already: the ambulance and the firefighters and our valiant guards, the fearless rescuers-a bunch of overfed slackers with their helicopter. I wish to God I'd never set eyes on them!</p>

<p>We climb into the boot. Kirill takes the controls and looks at me. "Well, Red," he says, "your orders?"
</p>

<p>I slowly lower the specsuit zipper on my chest, pull out a flask, take a long sip, screw the lid back on, and put the flask back. I can't do without this. God knows how many times I've been in the Zone, but without it-no way, can't do it. They're both looking at me and waiting.</p>

<p>"All right," I say. "I'm not offering you any, since this is our first time going in together, and I don't know how the stuff affects you. Here is how we'll do things. Everything I say will be carried out immediately and unconditionally. If someone hesitates or starts asking questions, I'll hit whatever is in reach, my apologies in advance. For example, say I order you, Mr. Tender, to walk on your hands. And at that very moment, you, Mr. Tender, must stick your fat ass up in the air and do as you are told. And if you don't do as you are told, you may never see your sick daughter again. Got it? But I'll take care that you do see her."</p>

<p>"Just don't forget to give the orders, Red," croaks Tender, who is completely red, sweating already and smacking his lips. "I'll walk on my teeth, never mind my hands. I'm no novice."</p>

<p>"You are both novices to me," I say, "and I won't forget the orders, don't you worry. Oh, just in case, do you know how to drive a boot?"</p>

<p>"He knows how," says Kirill. "He's good at it."</p>

<p>"Glad to hear," I say. "Then we're off. Lower your visors! Low speed along the marked route, altitude nine feet! At the twenty-seventh marker, stop."</p>

<p>Kirill lifts the boot to nine feet and puts it in low gear while I discreetly turn my head and blow over my left shoulder for luck. Looking back, I see our guards, the rescuers, are clambering into their helicopter, the firefighters are standing up in respect, the lieutenant at the door of the checkpoint is saluting us, the idiot, and above them all-an immense banner, already faded: WELCOME TO EARTH, DEAR ALIENS! Tender made a move to wave them all good-bye, but I gave him a sharp nudge in the ribs to knock the ceremonies out of him. I'll show you how to bid farewell, you fat-assed fool!</p>

<p>We're off.</p>

<p>To the right of us is the Institute, to the left the Plague Quarter, and we're gliding from marker to marker down the middle of the street. Lord, it's been a while since anyone's walked or driven here. The pavement's all cracked, grass has grown through the crevices, but here at least it's still our human grass. On the sidewalk to the left, the black brambles begin, and from this we see how well the Zone sets itself apart: the black thicket along the road looks almost mowed. No, these aliens must have been decent guys. They left a hell of a mess, of course, but at least they put clear bounds on their crap. Even the burning fuzz doesn't make it over to our side, though you'd think the wind would carry it around all four directions.
</p>

<p>The houses in the Plague Quarter are peeling and lifeless, but the windows are mostly intact, only so dirty that they look opaque. Now at night when you crawl by, you can see the glow inside, as if alcohol were burning in bluish tongues. That's the hell slime radiating from the basement. But mostly it looks like an ordinary neighborhood, with ordinary houses, nothing special about it except that there are no people around. By the way, in this brick building over here lived our math teacher, the Comma. He was a pain in the ass and a loser, his second wife left him right before the Visit, and his daughter had a cataract in one eye-I remember we used to tease her to tears. During the initial panic, he ran in nothing but underwear all the way to the bridge, like his neighbors-ran for four miles nonstop. After that he got a bad case of the plague, which peeled his skin and nails right off. Almost everyone who lived here got the plague. A few died, but mostly old folks, and not all of them either. I, for one, think it wasn't the plague that did them in but sheer terror.</p>

<p>Now in those three neighborhoods over there, people went blind. That's what people call them nowadays: the First Blind Quarter, the Second Blind Quarter ... They didn't go completely blind but rather got something resembling night blindness. Strangely, they say they weren't blinded by a flash of light, though it's said there were some bright flashes, but by an awful noise. It thundered so loudly, they say, that they instantly went blind. Doctors tell them: That's impossible, you can't be remembering right! No, they insist, there was loud thunder, from which they went blind. And by the way, no one else heard any thunder at all ...</p>

<p>Yeah, it looks like nothing happened here. That glass kiosk over there doesn't have a single scratch on it. And look at that stroller near the gates-even the linen in it looks clean. Only the TV antennas give the place away-they're overgrown with wispy hairs. Our eggheads have long been hankering after these antennas: they'd like to know, you see, what this hair is-we don't have it anywhere else, only in the Plague Quarter and only on the antennas. But most important, it's right here, beneath our very own windows. Last year, they got an idea, lowered an anchor from a helicopter, and hooked a clump of hair. They gave it a pull-suddenly, a psssst! We looked down and saw that the antenna was smoking, the anchor was smoking, even the cable itself was smoking, and not just smoking but hissing poisonously, like a rattlesnake. Well, the pilot, never mind that he was a lieutenant, quickly figured out what's what, dumped the cable, and hightailed it out of there. There it is, their cable, hanging down almost to the ground and covered with hair ...</p>

<p>We glide slowly to the end of the street, at the bend. Kirill looks at me: Should I turn? I wave him on: Go in lowest gear. Our boot turns and drifts in lowest gear over the last few feet of human land. The sidewalk's getting closer and closer, there's the shadow of the boot inching over the brambles ... Here's the Zone! And instantly a chill runs down my spine. I feel it every time, but I still don't know whether it's the Zone greeting me or a stalker's nerves acting up. Every time I figure I'll go back and ask others if they feel it too, and every time I forget.
</p>

<p>All right, so we're drifting peacefully above the abandoned gardens, the motor under our feet is humming steadily and calmly-it doesn't care, nothing can hurt it. And here my Tender cracks. We don't even make it to the first marker before he starts babbling. You know, the way novices babble in the Zone: his teeth are chattering, his heart is galloping, he's out of it, and though embarrassed he can't get a grip. I think this is like diarrhea for them; they can't help it, the words just keep pouring out. And the things they'll talk about! They'll rave about the scenery, or they'll philosophize about the aliens, or they might even go on about something totally irrelevant. Like our Tender here: he's started in on his new suit and now just can't shut up about it. How much it cost and the fine wool it's made of and how the tailor changed the buttons for him ...
</p>

<p>"Be quiet," I say.</p>

<p>He gives me a sad look, smacks his lips, and goes on again, now about the silk he needed for the lining. Meanwhile, the gardens are ending, we're already above the clay wasteland that used to be the town dump, and I notice a breeze. There was no wind a moment ago, but suddenly there's a breeze, dust clouds are swirling, and I think I hear something.</p>

<p>"Quiet, asshole," I tell Tender.</p>

<p>  No, he just can't shut up. Now he's going on about the horsehair. All right, no help for it, then.</p>

<p>"Stop," I tell Kirill.</p>

<p>He stops immediately. Quick reaction-good man. I take Tender by the shoulder, turn him toward me, and smack him hard on his visor. He slams nose first into the glass, poor guy, closes his eyes, and shuts up. And as soon as he quiets down, I hear: crack-crack-crack ... crack-crack-crack ... Kirill is looking at me, jaws clenched, teeth bared. I hold up my hand. Don't move, for God's sake, please don't move. But he also hears the crackling and, like any novice, feels the need to immediately do something.
</p>

<p>"Go back?" he whispers.</p>

<p>I desperately shake my head and wave my fist right in his visor-Cut that out. For God's sake! You never know which way to look with these novices-at the Zone or at them ... And here my mind goes blank. Over the pile of ancient trash, over the colorful rags and broken glass, drifts a tremor, a vibration, just like the hot air above a tin roof at noon; it floats over the mound and continues, cuts across our path right beside a marker, lingers over the road, waits for half a second-or am I just imagining that?-and slithers into the field, over the bushes, over the rotten fences, toward the old car graveyard.
</p>

<p>Damn these eggheads, a great job they did: ran their road down here amid the junk! And I'm a smart one myself-what on Earth was I thinking while mooning over their stupid map?</p>

<p>"Go on at low speed," I tell Kirill.</p>

<p>"What was that?"</p>

<p>"God knows! It came and went, thank God. And shut up, please. Right now, you aren't a person, got it? Right now, you are a machine, my steering wheel, a lever ..."</p>

<p>Damn these eggheads, a great job they did: ran their road down here amid the junk! And I'm a smart one myself-what on Earth was I thinking while mooning over their stupid map?</p>

<p>"Go on at low speed," I tell Kirill.</p>

<p>"What was that?"</p>

<p>"God knows! It came and went, thank God. And shut up, please. Right now, you aren't a person, got it? Right now, you are a machine, my steering wheel, a lever ..."</p>

<p> At this point I realize that I might be getting a case of verbal diarrhea myself.</p>

<p>"That's it," I say. "Not another word."</p>

<p>Damn, I need a drink! What I'd give to take out my flask, unscrew the lid, slowly, deliberately put it to my mouth, and tilt my head back, so it could pour right in ... Then swirl the liquor around and take another swig ... I tell you, these specsuits are a piece of shit. I've lived for years without a specsuit, Lord knows, and plan to live for many more, but not having a drink at a time like this! Ah, well, enough of that.</p>

<p>The wind seems to have died down and there are no suspicious noises; all we hear is the engine humming steadily and sleepily. Meanwhile the sun is shining, the heat is pressing down ... There's a haze above the garage. Everything seems fine, the markers are floating by us one by one. Tender's silent, Kirill's silent-they are learning, the novices. Don't worry, guys, even in the Zone you can breathe if you know how. Ah, and here's the twenty-seventh marker-a metal pole with a red "27" on it. Kirill looks at me, I nod at him, and our boot stops.</p>

<p>The fun and games are over. Now the most important thing is to stay completely calm. We're in no hurry, there's no wind, and the visibility is good. Over there's the ditch where the Slug kicked the bucket-you can make out something colorful in there, maybe some clothes of his. He was a lousy guy, rest his soul, greedy, stupid, and dirty; that's the only kind that get mixed up with the Vulture, those the Vulture Burbridge spots a mile away and gets his claws into. Although, to be fair, the Zone doesn't give a damn who the good guys and the bad guys are, and it turns out we gotta thank you, Slug: you were an idiot, and no one even remembers your real name, but you did show us smarter folks where not to go ... OK. The best thing, of course, would be to get to the pavement. The pavement's flat, you can see everything, and I know that crevice in it. Except I don't like those mounds. If we head straight to the pavement, we have to pass right between them. There they stand, smirking and waiting for us. No, I'm not going between the two of you. That's the stalker's second commandment: it has to be clear for a hundred paces either to your left or to your right. Now what we could do is go over the left mound ... Although I have no idea what's behind it. According to the map there's nothing there, but who trusts maps?
</p>

<p> "Listen, Red," whispers Kirill. "Let's jump, eh? Fifty feet up and then right back down, and there we'll be at the garage, eh?"</p>

<p>"Quiet, you," I say. "Just leave me alone right now."
</p>

<p>Up, he says. And what if something gets you at that height? They won't even be able to find the pieces. Or maybe there's a bug trap around here-never mind the pieces, there will be nothing left at all. These risk takers really get me: he doesn't like waiting, you see, so let's jump ... In any case, it's clear how to get to the mound, and we'll figure the rest out from there. I slip my hand into my pocket and pull out a handful of nuts and bolts. I put them on the palm of my hand, show them to Kirill, and say, "Remember the story of Hansel and Gretel? Read it in school? Well, here we'll have that in reverse. Look!"

</p>

<p> And I throw the first nut. It flies a short way, like I intended, and lands about twenty-five feet away. The nut goes fine</p>

<p>  "Did you see that?" I ask.</p>

<p>  "So?" he says.</p>

<p>  "Don't 'so' me. I'm asking you, did you see that?"</p>

<p>  "Yeah, I did."</p>

<p>  "Now, take our boot over to that nut at low speed and stop six feet in front of it. Got it?"</p>

<p>  "Got it. You looking for graviconcentrates?"</p>

<p>  "Never you mind what I'm looking for. Give me a second, I want to throw another one. Watch where it falls, then don't take your eyes off it."</p>

<p>
  I throw another nut. Naturally, this one also goes fine and lands just ahead of the first one.</p>

<p>"Go ahead," I say.</p>

<p>He starts the boot. His face has become completely calm; you can see he's figured everything out. They are all like that, the eggheads. The most important thing for them is to come up with a name. Until he comes up with one, you feel really sorry for him, he looks so lost. But when he finds a label like "graviconcentrate," he thinks he's figured it all out and perks right up.</p>

<p>We pass the first nut, then the second and third. Tender keeps sighing, shifting from one foot to the other and yawning nervously with a slight whimper-he's suffering, the poor guy. It's all right, this will probably do him good. He'll take ten pounds off today, this is better than any diet ... I throw the fourth nut. It doesn't go quite right. I can't explain it, but I feel it in my gut-something's off. I immediately grab Kirill's hand.</p>

<p>  "Stop," I say. "Don't move an inch."</p>

<p>I take the fifth nut and throw it farther and higher. There it is, the bug trap! The nut goes up all right and starts going down fine, but halfway down it looks like someone tugged it off to the side, pulling it so hard that it goes right into the clay and disappears.</p>

<p> "Ever see that?" I whisper.</p>

<p>"Only in the movies," he says, straining forward so far he almost falls off the boot. "Throw one more, eh?"</p>

<p> Jesus. One more! As if one would be enough. Lord, these scientists! Anyway, I throw out eight more nuts, until I figure out the shape of the trap. To be honest, I could have managed with seven, but I throw one especially for him, right into the center, so he can properly admire his graviconcentrate. It smashes into the clay as if it were a ten-pound weight instead of a nut, then goes right out of sight, leaving only a hole in the ground. He even grunts with pleasure.</p>

<p> "All right," I say. "We've had our fun, but that's enough. Look over here. I'm throwing one out to show the way, don't take your eyes off it."</p>

<p>Anyway, we go around the bug trap and climb to the top of the mound. It's a puny little mound, I've never even noticed it until today. Right ... OK, so we're hanging above the mound, the pavement is a stone's throw away, at most twenty paces from here. Everything's visible-you can make out every blade of grass, every little crack in the ground. It ought to be smooth sailing from here. Just throw the nut and get on with it. I can't throw the nut.</p>

<p>I don't understand what's happening to me, but I just can't force myself to throw it.</p>

<p>"What is it?" says Kirill. "Why did we stop here?"</p>

<p> "Wait," I say. "Just be quiet, for God's sake."</p>

<p>All right, I think, now I'll throw the nut, nothing to it, we'll glide right by, won't disturb a single blade of grass-half a minute, and there's the pavement ... And suddenly I break into an awful sweat! Some even gets into my eyes, and I know right then I won't be throwing a nut that direction. To our left-sure, as many as you like. That route is longer, and the stones over there look suspicious, but it'll have to do; I just can't throw a nut in front of us. And so I throw one to our left. Kirill doesn't say a thing, just turns the boot, drives it over to the nut, and only then looks at me. I must look pretty bad, since he immediately looks away.</p>

<p>"Don't worry," I say. "You can't always take the straight path." And I throw the last nut onto the pavement.</p>

<p>Things get easier now. I find my crack in the pavement, which still looks good, isn't overgrown with weeds, and hasn't changed color; I feel happy just looking at it. And it takes us all the way to the gates of the garage better than any markers.

 </p>

<p>I order Kirill to take us down to five feet, and I lie on my stomach and peer into the open gates. At first, I can't see a thing, just darkness, but then my eyes adjust, and I see that the garage seems unchanged. The dump truck is standing over the pit, just like before-in great shape, without any rust holes or spots-and the stuff on the floor around it also looks the same; that's probably because there isn't much hell slime in the pit, and it hasn't splashed out since my last visit. Only one thing worries me: something silver is sparkling at the back of the garage, near the canisters. That wasn't there before. Well, all right, let it sparkle; we aren't going back because of that! It's not even sparkling in an unusual way, just a tiny bit, mildly and almost gently ... I get up, dust myself off, and look around. Ah, and here are the trucks parked on the lot, really just like new; since I've last been here, they've gotten even newer, while the gasoline tanker, poor thing, is now completely rusted through and about to fall apart. And there's the tire lying beside the gates, that you can see on their map ...</p>

<p>I don't like the look of that tire. There's something wrong with its shadow. The sun is at our backs, but the shadow is stretching toward us. Oh well, it's far away from us. Anyway, everything's fine; we'll manage. But still, what could be sparkling there? Or am I imagining things? Now, the thing to do would be to light up, sit down quietly, and think it through-what's that silver stuff above the canisters, why isn't it also beside them? Why is that tire's shadow like that? The Vulture Burbridge was telling us something about the shadows, which sounded strange but harmless ... The shadows do funny things around here. But what about that silver stuff? It looks just like a cobweb. What sort of spider could have left it behind? I've yet to see a single bug in the Zone. And the worst thing is that my empty is lying right there, two steps away from the canisters. I should have just taken it last time, then I'd have nothing to worry about. But the damn thing is full, so it's heavy-I could have managed to lift it, but to drag it on my back, at night, crawling on all fours ... Yeah, if you've never carried an empty, go ahead and try: it's like lugging twenty pounds of water without a bucket. Well, should I go in? I guess I should. A drink would sure help ...</p>

<p>  I turn to Tender and say, "Kirill and I are going into the garage now. Stay here with the boot. Don't touch the controls without my permission, no matter what happens, even if the ground below you catches fire. If you chicken out, I'll find you in the afterlife."</p>

<p>He nods at me seriously: Don't worry, I won't chicken out. His nose looks like a plum-I really gave it to him. I carefully lower the emergency ropes, take one more look at the silver stuff, wave at Kirill, and start to climb down. I stand on the pavement, waiting for him to go down the other rope. "Take it slow," I say. "Don't rush. Don't raise dust."</p>

<p>We're standing on the pavement, the boot is swaying next to us, the ropes are wriggling under our feet. Tender is sticking his head over the railings, looking at us with despair in his eyes. We have to go in. I tell Kirill, "Walk two steps behind me, keep your eyes on my back, and stay alert."</p>

<p>And I go in. I stop in the doorway and look around. Damn, it sure is easier to work during the day! I remember how I lay in this same doorway. It was pitch black, the hell slime was shooting tongues of flame up from the pit, blue ones, like burning alcohol, and the most frustrating thing was that the damn flames didn't even give off light but only made the garage seem darker. And now it's a breeze. My eyes have gotten used to the gloom, I can see everything, even the dust in the darkest corners. And there really is something sparkling there, silver threads are stretching from the canisters to the floor-looks just like a cobweb. It might in fact be a cobweb, but better to stay away from it.</p>

<p>And here I screw up. I should have Kirill walk next to me, wait until his eyes get used to the dark, and show him this cobweb, point right at it. But I'm used to working alone-my eyes adjust to the light, and I don't think about Kirill.</p>

<p>I step inside and head straight for the canisters. I squat by the empty; there aren't any cobwebs stuck to it. I take one end of it</p>

<p>"All right, grab hold," I say, "and don't drop it-it's heavy."</p>

<p>I look up at him, and my heart leaps into my throat-I can't say a word. I want to yell Stop, don't move! and can't. And there probably isn't enough time, anyway, it all happens so fast: Kirill steps over the empty, turns around, and his back goes right into the silver stuff. The only thing I can do is close my eyes. I feel weak all over, can't hear a thing-just the sound of the cobweb tearing. With a faint crackle, like a regular cobweb, except louder, of course. I'm crouching there with my eyes closed, can't feel my hands or my feet, then Kirill says, "Well, are we picking it up?"</p>

<p>"Let's do it," I say.</p>

<p>We pick up the empty and, walking sideways, carry it to the exit. The damn thing is heavy-it's hard to carry even for the two of us. We go out into the sun and stop near the boot. Tender is reaching his paws toward us already.</p>

<p> "All right," says Kirill, "one, two-"</p>

<p>"No," I say, "wait. Put it down first."</p>

<p>We put it down.</p>

... it appears the rest of the chapter was ripped out...


				</body>
				</html>
				"}


/obj/item/book/manual/metro2033
	name = "Metro 2033"
	icon_state ="book_Metro2033"
	author = "Dmitry Glukhovsky"		 // Who wrote the thing, can be changed by pen or PC. It is not automatically assigned
	title = "Metro 2033"
	desc = "An old tattered book left in the zone. This one looks to have a person in a gas mask on it."
//big pile of shit below.

	dat = {"<html>
				<head>
				<style>
				h1 {font-size: 18px; margin: 15px 0px 5px;}
				h2 {font-size: 15px; margin: 15px 0px 5px;}
				li {margin: 2px 0px 2px 15px;}
				ul {list-style: none; margin: 5px; padding: 0px;}
				ol {margin: 5px; padding: 0px 15px;}
				</style>
				</head>
				<body>

				<h1>Metro 2033</h1>

				<h2>The End of the Earth</h2>

				<p> 'Who's there? Artyom - go have a look!'</p>

				<p> Artyom rose reluctantly from his seat by the fire and, shifting the machine gun from his back to his chest, headed towards the darkness. He stood right at the edge of the lighted area and then, as loudly and threateningly as he could, he clicked the slide on his gun and shouted gruffly, 'Stop! Password!'</p>

				<p>He could hear quick, staccato footsteps in the darkness where moments ago he'd heard a strange rustle and hollow-sounding murmurings. Someone was retreating into the depths of the tunnel, frightened away by Artyom's gruff voice and the rattling of his weapon. Artyom hurriedly returned to the fire and flung an answer at Pyotr Andreevich:</p>

				<p>'Nope, no one came forward. No response, they just ran off.'</p>

				<p>'You idiot! You were clearly told. If they don't respond, then shoot immediately! How do you know who that was? Maybe the dark ones are getting closer!'</p>

				<p>'No . . . I don't think they were people . . . The sounds were really strange . . . And the footsteps weren't human either. What? You think I don't know what human footsteps sound like? And anyway, when have the dark ones ever run off like that? You know it yourself, Pyotr Andreevich. Lately they've been lunging forward without hesitation. They attacked a patrol with nothing but their bare hands, marching straight into machine-gun fire. But this thing, it ran off straight away . . . Like some kind of scared animal.'</p>

				<p>'All right, Artyom! You're too smart for your own good. But you've got instructions - so follow them, don't think about it. Maybe it was a scout. And now it knows how few of us are here, and how much ammunition they'd need . . . They might just wipe us out here and now for fun. Put a knife to our throat, and butcher the entire station, just like at Polezhaevskaya - and all just because you didn't get rid of that rat . . . Watch it! Next time I'll make you run after them into the tunnel!'</p>

				<p>It made Artyom shudder to imagine the tunnel beyond the seven-hundredth metre. It was horrifying just to think about it. No one had the guts to go beyond the seven-hundredth metre to the north. Patrols had made it to the five-hundredth, and having illuminated the boundary post with the spotlight on the trolley and convinced themselves that no scum had crossed it, they hastily returned. Even the scouts - big guys, former marines - would stop at the six hundred and eightieth metre. They'd turn their burning cigarettes into their cupped palms and stand stock-still, clinging to their night-vision instruments. And then, they'd slowly, quietly head back, without taking their eyes off the tunnel, and never turning their backs to it.</p>

				<p>They were now on patrol at the four hundred and fiftieth metre, fifty metres from the boundary post. The boundary was checked once a day and today's inspection had been completed several hours ago. Now their post was the outermost and, since the last check, the beasts that the last patrol might have scared off would have certainly begun to crawl closer once again. They were drawn to the flame, to people . . .</p>

				<p>Artyom settled back down into his seat and asked, 'So what actually happened at Polezhaevskaya?'</p>

				<p>Although he already knew this blood-curdling story (from the traders at the station), he had an urge to hear it again, like a child who feels an irrepressible urge to hear scary stories about headless mutants and dark ones who kidnap young children.</p>

				<p> 'At Polezhaevskaya? What, you didn't hear about it? It was a strange story. Strange and frightening. First their scouts began disappearing. Went off into the tunnels and didn't come back. Granted, their scouts are completely green, nothing like ours, but then again, their station's smaller, a lot less people live there . . . well, used to live there. So anyway, their scouts start disappearing. One detachment leaves - and vanishes. At first they thought something was holding them up - up there the tunnel twists and turns just like it does here . . .' Artyom felt ill at ease when he heard these words. 'And neither the patrols, nor those at the station could see anything, no matter how much light they threw at it. No one appeared - for half an hour, then for an hour, then two. They wondered where the scouts could have gone - they were only going one kilometre in. They weren't allowed to go any further and anyway, they aren't total idiots . . . Long story short, they couldn't wait to find out. They sent reinforcements who searched and searched, and shouted and shouted - but it was all in vain. The patrol was gone. The scouts had vanished. And it wasn't just that no one had seen what had happened to them. The worst part was that they hadn't heard a sound . . . not a sound. There was no trace of them whatsoever.'</p>

				<p>Artyom was already beginning to regret that he had asked Pyotr Andreevich to recount the story of Polezhaevskaya. Pyotr Andreevich was either better informed, or was embellishing the story somewhat; but in any case, he was telling details of the sort that the traders couldn't have dreamed, despite being masters and true enthusiasts of story-telling. The story's details sent a chill over Artyom's skin, and he became uncomfortable even sitting next to the fire. Any rustlings from the tunnel, even the most innocent, were now exciting his imagination.</p>

				<p> 'So, there you have it. They hadn't heard any gunfire so they decided that the scouts had simply left them - maybe they were dissatisfied with something,
and had decided to run. So, to hell with them. If it's an easy life they want, if they want to run around with all kinds of riff-raff, then let them run around to their hearts' content. It was simpler to see it that way. Easier. But a week later, yet another scout team disappeared. And they weren't supposed to go any further than half a kilometre from the station. And again, the same old story. Not a sound, not a trace. Like they'd vanished into thin air. So then they started getting worried back at the station. Now they had a real mess on their hands - two squadrons had disappeared within a week. They'd have to do something about it. Meaning, they'd have to take measures. Well, they set up a cordon at the three-hundredth metre. They dragged sandbags to the cordon, set up machine guns and a spotlight - according to the rules of fortification. They sent a runner to Begovaya - they'd established a confederation with Begovaya and 1905 Street. Initially, October Field had also been included, but then something had happened, no one knows exactly what - some kind of accident. Conditions there had become unliveable, and everyone had fled.
</p>

				<p>'Anyway, then they sent a runner to Begovaya, to warn them that, as they said, trouble was afoot, and to ask for help, should anything happen. The first runner had only just made it to Begovaya - and the people there were still considering their answer - when a second runner arrived at Begovaya, lathered in sweat, and said that their reinforced cordon had perished to a man, without firing a single shot. Every last one of them had been slaughtered. And it was as if they'd been butchered in their sleep - that's what was scary! But they wouldn't have fallen asleep, not after the scare they'd had, not to mention the orders and instructions. At this point, the people at Begovaya understood that if they did nothing, the same story would begin in their neck of the woods as well. They equipped a strike force of veterans, about a hundred men, machine guns, and grenade launchers. Of course, that all took a bit of time, about a day and a half, but all the same, they dispatched the group to go and help. And when the group entered Polezhaevskaya, there wasn't a living soul to be seen. There weren't even bodies - just blood everywhere. There you go. And who knows who the hell did it. I, for one, don't believe that humans are capable of such a thing.'</p>

				<p>'And what happened to Begovaya?' Artyom's voice sounded unusual, unlike him.</p>

				<p>'Nothing happened to them. They saw what the deal was, and exploded the tunnel that led to Polezhaevskaya. I hear forty metres' worth of tunnel is collapsed; there's no digging through it without special machinery, and even with machinery, I bet you wouldn't get very far . . . And where are you going to find that kind of machinery, anyway? Our machinery rotted away fifteen years ago already . . .'</p>

				<p>Pyotr Andreevich fell silent, gazing into the fire. Artyom gave a loud cough and said,</p>

				<p>'Yeah . . . I should've shot the thing, of course . . . I was an idiot.'</p>

				<p>A shout came from the south, from the direction of the station:</p>

				<p>'Hey there, at the four-hundredth metre! Everything OK there?'</p>

				<p>Pyotr Andreevich folded his hands into the shape of a megaphone and shouted in reply:</p>

				<p>'Come closer! We've got a situation here!'</p>

				<p>Three figures approached in the tunnel, from the station, their flashlights shining - probably patrol members from the three-hundredth metre. Stepping into the light of the fire, they put out their flashlights and sat down.</p>

				<p>'Hi there, Pyotr! So it's you here. And I'm thinking to myself - who'd they send off to the edge of the earth today?' said the senior patrolman, smiling and shaking a cigarette from his pack.</p>

				<p>'Listen, Andryukha! One of my guys saw someone up here. But he didn't get to shoot . . . It hid in the tunnel. He says it didn't look human.'</p>

				<p>'Didn't look human? What did it look like, then?' Andrey turned to Artyom.</p>

				<p>'I didn't even see it . . . I just asked for the password, and it ran right off, heading north. But the footsteps weren't human - they were light, and very quick, as if it had four legs instead of two . . .'</p>

				<p>'Or three!' winked Andrey, making a scary face.</p>

				<p>Artyom choked, remembering the stories about the three-legged people from the Filevskaya line where some of the stations went up to the surface, and the tunnel didn't run very deep at all, so they had almost no protection from the radiation. There were three-legged things, two-headed things and all kinds of weird shit crawling all over the metro from those parts.</p>

				<p>Andrey took a drag of his cigarette and said to his men, 'All right, guys, since we're already here why don't we sit down for a while? If any three-legged things crawl up on these guys again, we'll lend a hand. Hey, Artyom! Got a kettle?'</p>

				<p>Pyotr Andreevich got up and poured some water from a canister into a beat-up, soot-covered kettle, and hung it over the flame. In a few minutes, the kettle began to whistle as it came to a boil. The sound, so domestic and comforting, made Artyom feel warmer and calmer. He looked around at the men who were sitting at the fire: all of them strong dependable people, hardened by the challenging life they led here. You could trust men like these; you could count on them. Their station always had the reputation for being the most successful along the entire line - and that was all thanks to the men gathered here, and to others like them. They were all connected to each other with warm, almost brotherly bonds.</p>

				<p>Artyom was just over twenty years old and had come into the world when life was still up there, on the surface. He wasn't as thin and pale as the others who'd been born in the metro, who wouldn't dare go up to the surface for fear of radiation and the searing rays of the sun, which are so ruinous for underground dwellers. True, even Artyom, as far as he could remember, had been on the surface only once, and then it was only for a moment - the background radiation there had been so bad that anyone who got a bit too curious would be completely fried within a couple of hours, before he'd even managed to enjoy a good stroll, and see his fill of the bizarre world that lay on the surface.</p>

				<p>He didn't remember his father at all. His mother had been with him until he was five years old. They lived at Timiryazevskaya. Things had been good, and life had gone smoothly and peacefully, until Timiryazevskaya fell victim to a rat infestation.</p>

				<p>One day, huge, grey, wet rats poured from one of the tunnels on the dark side of the station without any warning. It was a tunnel that plunged off to the side, a disregarded branch of the primary northern leg, which descended to great depths, only to become lost in the complex network of hundreds of corridors - freezing, stinking labyrinths of horror. The tunnel stretched into the kingdom of rats, where even the most hopeless adventurer wouldn't dare to go. Even a wanderer who was lost and couldn't find his way using underground maps and paths, would stop at this threshold, sensing instinctively the black and sinister danger emerging from it, and would have rushed away from the gaping crevasse of that entrance as though from the gates of a plague-infested city.</p>

				<p>No one bothered the rats. No one descended into their dominions. No one dared to violate their borders.</p>

				<p>They came to the people.</p>

				<p>Many people perished that day, when a living torrent of gigantic rats - bigger than had ever been seen at either the stations or in the tunnels - had flooded through the cordons and the station, burying all of its defenders and its population, muffling their dying screams with the mass of its bodies. Consuming everything in their path - the living, the dead, and their own fallen comrades - the rats tore ahead, further and further, blindly, inexorably, propelled by a force beyond human comprehension.</p>

				<p>Only a few men remained alive. No women, no old men or children - none of the people who would normally have been saved first, but rather five healthy men who had managed to keep ahead of the death-wreaking torrent. And the only reason they'd outrun it was because they'd happened to be standing near a trolley, on watch in the southern tunnel. Hearing the shouts from the station, one of them sprinted to see what had happened. Timiryazevskaya was already perishing when he caught sight of it as he entered the station. At the station's
entrance, he understood what had happened from the first rivulets of rats seeping onto the platform and he was about to turn back, knowing that he couldn't possibly help those who were defending the station, when suddenly his hand was seized from behind. He turned around and a woman, her face contorted with horror, pulling insistently at his sleeve, shouted, in an effort to overcome the many-voiced choir of despair, 'Save him, soldier! Have mercy!'
</p>

				<p>He saw that she was handing him a child's hand, a small, chubby hand, and he grabbed the hand without even thinking that he was saving someone's life. And, pulling the child behind him and then picking him up and tucking him under his arm, he raced off with the frontrunner rats in a race with death - forward through the tunnel, where the trolley was waiting with his fellow patrolmen. He started to shout at them from afar, from a distance of fifty metres or so, telling them to start up the trolley. Their trolley was motorized, the only one of its kind in the surrounding ten stations, and it was only because of it that they were able to outrun the rats. The patrolmen raced forward, and flew through the abandoned station of Dmitrovskaya at full speed, where a few hermits had sought shelter, just managing to shout to them: 'Run! Rats!' (Without realizing that there was no chance of the hermits saving themselves.) As they approached the cordons of Savyolovskaya (with whom, thank God, they had peaceful arrangements), they slowed down so they wouldn't be fired at. They would have been taken for raiders at such high speed. And they shouted at the top of their lungs to the guards, 'Rats! The rats are coming!' They were prepared to keep running right through Savyolovskaya, and further along the line, prepared to beg to be let through, as long as there was somewhere further to go, as long as the grey lava hadn't inundated the entire metro.</p>

				<p>Jesus. One more! As if one would be enough. Lord, these scientists! Anyway, I throw out eight more nuts, until I figure out the shape of the trap. To be honest, I could have managed with seven, but I throw one especially for him, right into the center, so he can properly admire his graviconcentrate. It smashes into the clay as iBut luckily, there was something at Savyolovskaya that would save them, the station and perhaps the entire Serpukhovsko-Timiryazevskaya branch. They were nearly at the station, soaked in sweat, shouting at the Savyolovskaya guards about their narrow escape from death. Meanwhile, the guards at the post were quickly pulling the cover off of some kind of impressive-looking piece of kit.</p>

				<p>It was a flame-thrower, assembled by the local craftsmen from spare parts - homemade, but incredibly powerful. When the first ranks of rats became visible, gathering force, and you could hear the rustling and the scratching of a thousand rats' paws from the darkness, the guards fired up the flame-thrower. And they didn't turn it off until the fuel was spent. A howling orange flame filled the tunnel for tens of metres and burned the rats, burned them all, without stopping, for ten, fifteen, twenty minutes. The tunnel was filled with the repulsive stench of burnt flesh and the wild screeching of rats. And behind the guards of Savyolovskaya, who had become heroes and had earned fame along the entire metro line, the trolley came to a stop, cooling down. On it were the five men who had fled from Timiryazevskaya station, and there was one more - the child they had saved. A boy. Artyom.</p>

				<p>The rats retreated. Their blind will had been broken by one of the last inventions of human military genius. Humans had always been better at killing than any other living thing.</p>

				<p>The rats flowed backwards and returned to their enormous kingdom, whose true dimensions were known to no one. All of these labyrinths, lying at incredible depth, were so mysterious and, it seemed, completely useless for the functioning of the metro. It was hard to believe, despite the assurances of various persons of authority on the matter, that all of this was built by ordinary metro-builders.</p>

				<p>One such person of authority had once worked as a conductor's assistant on an electric train in the old days. There were hardly any of his kind left and they were greatly valued, because at first they had proven to be the only ones who could find their way around. And they didn't give in to fear the moment they found themselves outside the comfortable and safe capsules of the train, in the dark tunnels of the Moscow metro, in these stone bowels of the great metropolis. Everyone at the station treated the conductor's assistant with respect, and taught their children to do the same; it was for that reason, probably, that Artyom had remembered him, remembered him all his life: a thin, haggard man, emaciated by the long years of work underground who wore a threadbare and faded metro employee uniform that had long ago lost its chic but that he donned with the same pride a retired admiral would feel when putting on his parade uniform. Even Artyom, still just a kid at that time, had seen a certain dignity and power in the sickly figure of the conductor's assistant . . .</p>

				<p>Of course he did. For all those who survived, the employees of the metro were like local guides to scientific expeditions in the jungles. They were religiously believed, they were depended upon completely, and the survival of everyone else depended on their knowledge and skill. Many of them became the heads of stations when the united system of government disintegrated, and the metro was transformed from a complex object of civil defence, a huge fallout shelter, into a multitude of stations unconnected by a single power, and was plunged into chaos and anarchy. The stations became independent and self-sufficient, distinctive dwarf states, with their own ideologies and regimes, their own leaders and armies. They warred against each other, they joined to form federations and confederations. They became metropolitan centres of rising empire one day, only to be subjugated and colonized the next, by their erstwhile friends or slaves. They formed short-term unions against a common threat, only to fall at each other's throats again with renewed energy the moment that threat had passed. They scrapped over everything with total abandon: over living spaces, over food - over the plantings of albuminous yeast, the crops of mushrooms that didn't require any sunlight, the chicken coops and pig-farms, where pale subterranean pigs and emaciated chicks were raised on colourless underground mushrooms. They fought, of course, over water - that is, over filters. Barbarians, who didn't know how to repair filtration systems that had fallen into disuse, and were dying from water that was poisoned by radiation, threw themselves with animal rage upon the bastions of civilized life, at the stations where the dynamo-machines and small home-made hydroelectric stations functioned correctly, where filters were repaired and cleaned regularly, where, tended by the caring female hands, the damp ground was punctuated with the little white caps of champignons, and well-fed pigs grunted in their pens.</p>

				<p>They were driven forward, in their endless and desperate onslaught, by an instinct for self-preservation, and by that eternal revolutionary principle: conquer and divide. The defenders of successful stations, organized into battle-ready divisions by former military professionals, stood up to the assaults of vandals, to the very last drop of their blood. They went on to launch counter-attacks and won back every metre of the inter-station tunnels with a fight. The stations amassed their military power in order to answer any incursions with punitive expeditions; in order to push their civilized neighbours from territory that was important for sustaining life, if they hadn't managed to attain these agreements by peaceful means; and in order to offer resistance to the crap that was climbing out of every hole and tunnel. These were strange, freakish, and dangerous creatures, the likes of which might well have brought Darwin himself to despair with their obvious lack of conformity to the laws of evolutionary development. As much as these beasts might differ from the animals humans were used to, and whether they had been reborn under the invisible and ruinous rays of sunlight, turned from inoffensive representatives of urban fauna into the spawn of hell, or whether they had always dwelled in the depths, only now to be disturbed by man - still, they were an evident part of life on earth. Disfigured, perverted - but a part of life here all the same. And they remained subject to that very same driving impulse known to every organic thing on this planet.</p>

				<p>Survive. Survive at any cost.
</p>

				<p>Artyom accepted a white, enamelled cup, in which some of their homemade station tea was splashing around. Of course, it wasn't really tea at all, but an infusion of dried mushrooms and other additives. Real tea was a rarity. They rationed it and drank it only at major holidays, and it fetched a price dozens of times higher than the price of the mushroom infusion. Nevertheless, they liked their own station brew and were even proud enough of it to call it 'tea.' It's true that strangers would spit it out at first, since they weren't used to its taste; but soon they got used to it. And the fame of their tea spread beyond the bounds of their station - even the traders came to get it, one by one, risking life and limb, and soon after their tea made it down the whole metro line - even the Hanseatic League had started to become interested in it and great caravans of the magical infusion rolled towards VDNKh. Cash started to flow. And wherever there was money, there were weapons, there was firewood and there were vitamins. And there was life. Ever since they started making the very same tea at VDNKh, the station had begun to grow strong; people from the nearby stations moved to the station and stretches of track were laid to the station; prosperity had come. They were also very proud of their pigs at VDNKh, and legend had it that it was precisely from this station that the pigs had entered the metro: back at the very beginning of things when certain daredevils had made their way to the 'pig-breeding pavilion' at the Exhibition and managed to herd the animals back down to the station.</p>

				<p>'Listen, Artyom - how are things going with Sukhoi?' asked Andrey, drinking his tea with small, cautious sips and blowing on it carefully.</p>

				<p>'With Uncle Sasha? Everything's fine. He came back a little while ago from a hike down the line with some of our people. An expedition. As you probably know.'</p>

				<p>Andrey was about fifteen years older than Artyom. Generally speaking, he was a scout, and rarely stood at a watch nearer than the four hundred and fiftieth metre, and then only as a cordon commander. And here they'd posted him at the three-hundredth metre, with good cover, but all the s
ame, he felt the urge to head deeper, and made use of any pretext, any false alarm, to get closer to the darkness, closer to the secret. He loved the tunnel and knew its branches very well but, at the station, he felt uncomfortable among the farmers, the workers, the businessmen and the administration - he felt unneeded, perhaps. He couldn't bring himself to hoe the earth for mushrooms, or, even worse, stuff the fat pigs at the station's farms with mushrooms, standing up to his knees in manure. And he couldn't be a trader either - he'd been unable to stand traders from the day he was born. He had always been a soldier, a warrior, and he believed with all his soul that this was the only occupation worthy of a man. He was proud that he had done nothing his entire life but defend the stinking farmers, the fussy traders, the administrators who were business-like to a fault, and the women and children. Women were attracted to his arrogant strength, to his total confidence in himself, to his sense of calm in relation to himself and those around him (because he was always capable of defending them). Women promised him love, they promised him comfort, but he could only feel comfortable beyond the fiftieth metre, beyond the turning point, where the station lights were hidden. And the women didn't follow him. Why not?
</p>

				<p>Now he'd warmed up nicely as a result of the tea, and he removed his old black beret and wiped his moustache, damp from the steam, with his sleeve. Then he began to question Artyom eagerly for news and rumours from the south, brought by the last expedition, by Artyom's stepfather - by the very man who, nineteen years ago had torn Artyom from the rats at Timiryazevskaya, unable to abandon a child, and had raised him.</p>

				<p>'I myself might know a thing or two, but I'll listen with pleasure, even for a second time. What - do you mind?' insisted Andrey.</p>

				<p>He didn't have to spend any time persuading him: Artyom himself enjoyed recalling and retelling his stepfather's stories - after all, everyone would listen to them, their mouths agape.</p>

				<p>'Well, you probably know where they went . . .' began Artyom.</p>

				<p> 'I know they went south. They're so top-secret, those “hikers” of yours,' laughed Andrey. 'They are special missions of the administration, you know!' he winked at one of his people.</p>

				<p>'Come on, there wasn't anything secret about it,' Artyom waved his hand dismissively. 'The expedition was for reconnaissance, the collection of information . . . Reliable information. Because you can't believe strangers, the traders who wag their tongues at us at the station - they could be traders or they could be provocateurs, spreading misinformation.'</p>

				<p>'You can never trust traders,' grumbled Andrey. 'They're out for their own good. How are you supposed to know whether to trust one - one day he'll sell your tea to the Hansa, and the next he'll sell you and your entrails to someone else. They may well be collecting information here, among us. To be honest, I don't particularly trust ours either.'</p>

				<p>'Well, you're wrong to go after our own, Andrey Arkadych. Our guys are all OK. I know almost all of them myself. They're people, just like people anywhere. They love money, too. They want to live better than others do, they're striving towards something,' said Artyom, attempting to defend the local traders.</p>

				<p>'There it is. That's exactly what I'm talking about. They love money. They want to live better than everyone else does. And who knows what they do when they go off into the tunnel? Can you tell me with certainty that at the very next station they aren't recruited by agents? Can you - or not?'</p>

				<p>'Which agents? Whose agents did our traders submit to?'</p>

				<p>'Here's what I'll say, Artyom. You're still young, and there's a lot you don't know. You should listen to your elders - pay attention, and you'll stick around a bit longer.'</p>

				<p>'Someone has to do their work! If it weren't for the traders, we'd be sitting here without military supplies, with Berdan rifles, and we'd be tossing salt at the dark ones and drinking our tea,' said Artyom, not backing down.</p>

				<p>'All right, all right, we've got an economist in our midst . . . Simmer down now. You'd do better to tell us what Sukhoi saw there. What's going on there with the neighbours? At Alekseevskaya? At Rizhskaya?'</p>

				<p>'At Alekseevskaya? Nothing new. They're growing mushrooms. And what is Alekseevskaya anyway? A farmyard, that's all . . . So they say.' Then Artyom lowered his voice in light of the secrecy of the information he was about to give: 'They want to join us. And Rizhskaya isn't against it either. They're facing growing pressure over there from the south. There's a sombre mood - everyone's whispering about some sort of threat, everyone's afraid of something, but of what, nobody knows. It's either that there's some sort of new empire at the far end of the line, or that they're afraid of the Hansa, thinking they might want to expand, or it's something else altogether. And all of these barnyards are starting to cuddle up to us. Rizhskaya and Alekseevskaya both.'</p>

				<p>'But what do they want, in concrete terms? What are they offering? ' asked Andrey.</p>

				<p>'They want to create a federation with us that has a common defence system, to strengthen the borders on both ends, to establish constant illumination inside the inter-station tunnels, to organize a police force, to plug up the side tunnels and corridors, to launch transport trolleys, to lay a telephone cable, to designate any available space for mushroom-growing . . . They want a common economy - to work, and to help each other, should it prove necessary.'</p>

				<p>'And where were they when we needed them? Where were they when there was vermin crawling at us from the Botanical Gardens, from Medvedkov? When the dark ones were attacking us, where were they?' growled Andrey.</p>

				<p>'Don't jinx us, Andrey, be careful!' interceded Pyotr Andreevich. 'There aren't any dark ones here for the time being, and all's well. It wasn't us who defeated them. Something happened that was of their own doing, it was something among themselves, and now they've quietened down. They might be saving up their strength for now. So a union won't hurt us. All the more so, if we unify with our neighbours. It'll be to their benefit, and for our good as well.'</p>

				<p>'And we'll have freedom, and equality, and brotherhood!' said Andrey ironically, counting on his fingers.</p>

				<p>'What, you don't want to listen?' asked Artyom, offended.</p>

				<p>'No, go ahead, Artyom, continue,' said Andrey. 'We'll have it out with Pyotr later. This is a long-standing argument between us.'</p>

				<p>'All right then. And, they say that their chief supposedly agrees. Doesn't have any fundamental objections. It's just necessary to consider the details. Soon there'll be an assembly. And then, a referendum.'</p>

				<p>'What do you mean, a referendum? If the people say yes, then it's a yes. If they say no, then the people didn't think hard enough. Let the people think again,' quipped Andrey.
</p>

				<p>'Well, Artyom, and what's going on beyond Rizhskaya?' asked Pyotr Andreevich, not paying attention to Andrey.

</p>

				<p>'What's next? Prospect Mir station. Well, and it makes sense that it's Prospect Mir. That's the boundary of the Hanseatic League. My stepfather says that everything's still the same between the Hansa and the Reds - they've kept the peace. No one there gives a thought to the war anymore,' said Artyom.

</p>

				<p>'The Hanseatic League' was the name of the 'Concord of Ring Line Stations.' These stations were located at the intersection of all the other lines, and, therefore of all the trade routes. The lines were linked to one another by tunnels, which became a meeting place for businessmen from all over the metro. These businessmen grew rich with fantastic speed, and soon, knowing that their wealth was arousing the envy of too many, they decided to join forces. The official name was too unwieldy though, and among the people, the Concord was nicknamed the 'Hansa' (someone had once accurately compared them to the union of trade cities in Medieval Germany). The short word was catchy, and it stuck. At the beginning, the Hansa consisted of only a few stations; the Concord only came together gradually. The part of the Ring from Kievskaya to Prospect Mir, what's called the Northern Arc,
and that included Kurskaya, Taganskaya and Oktyabrskaya. Then Paveletskaya and Dobrynskaya joined in and formed another Arc, the Southern Arc. But the biggest problem and the biggest hindrance to uniting the Northern and Southern Arcs was the Sokol Line.
</p>

				<p>The thing was, Artyom's stepfather told him, the Sokol line was always sort of special. When you glance at the map, your attention is immediately drawn to it. First of all, it's a straight line, straight as an arrow. Secondly, it was marked in bright red on metro maps. And its station names contributed too: Krasnoselskaya, Krasne Vorota, Komsomolskaya, Biblioteka imena Lenina and Leninskie Gori. And whether it was because of these names or because of something else, the line would draw to itself everyone who was nostalgic for the glorious Soviet past. The idea of a resurrection of the Soviet state took easily there. At first, just one station returned to communist ideals and a socialist form of rule, and then the one next to it, and then people from the tunnel on the other side caught wind of this optimistic revolution and chucked out their administration and so on and so on. The veterans who were still alive, former Komsomol men and Party officials, permanent members of the proletariat - they all came together at the revolutionary stations. They founded a committee, responsible for the dissemination of this new revolution and its communist idea throughout the metro system, under the almost Lenin-era name of 'Interstational.' It prepared divisions of professional revolutionaries and propagandists and sent them to enemy stations. In general, little blood was spilt since the starving inhabitants of the Sokol line were thirsting for the restoration of justice, for which, as far as they understood, apart from unjustified egalitarianism, there was no other option. So the whole branch, having flared up at one end, was soon engulfed by the crimson flames of revolution. The stations returned to their old, Soviet names: Chistye Prudy became Kirovskaya again; Lubyanka became Dzerzhinskaya; Okhotnyi Ryad became Prospect Marx. The stations with neutral names were renamed with something more ideologically clear: Sportivnaya became Kommunisticheskaya; Sokolniki became Stalinskaya; Preobrazhenskaya Ploshchhad where it all began, became Znamya Revolutsya. And the line itself, once Sokol, was now called by most the 'Red Line' - it was usual in the old days for Muscovites to call their metro lines by their colours on the map anyway, but now the line was officially called the 'Red Line.'
</p>

				<p>But it didn't go any further.</p>

				<p>When the Red Line had formed itself and had ideas about spreading itself through the metro, patience quickly wore thin at other stations. Too many people remembered the Soviet era. Too many people saw the agitators that were sent by the Interstational throughout the metro as a tumour that was metastasising, threatening to kill the whole organism. And as much as the agitators and propagandists promised electricity for the whole metro, that by joining with the Soviet powers they would experience real communism (it was unlikely that this had come from any actual slogan of Lenin's - it was so exploitative), people beyond their boundaries weren't tempted. The Interstational sloganeers were caught and thrown back to their Soviet territory. Then the Red leadership decided that it was time to act more resolutely: if the rest of the metro wouldn't take up the merry revolution flame then they needed to be lit from underneath. Neighbouring stations, worried about the strengthening communist propaganda, also came to the same conclusion. Historical experience demonstrates well that there isn't a better way of injecting communist bacilli into an area than with a bayonet.</p>

				<p>The coalition of anti-communist stations, directed by the Hansa, broke the Red Line and wanting to close the Ring circle took up the call. The Reds, of course, didn't expect the organized resistance and overestimated their own strength. The easy victory they had anticipated couldn't even be seen in their distant future. The war turned out to be long and bloody, wearing on and on - meanwhile, the population of the metro wasn't all that large . . . It went on for almost a year and a half and mostly consisted of battles for position involving guerrilla excursions and diversions, the barricading of tunnels, the execution of prisoners, and several other atrocities committed by either side. All sorts of things happened: Army operations, encirclement, the breaking of encirclement, various feats, there were commanders, heroes and traitors. But the main feature of this war was that neither of belligerent parties could shift the front line any considerable distance.</p>

				<p>Sometimes, it seemed that one side was gaining an edge, would take over an adjacent station, but their opponent resisted, mobilized additional forces - and the scales were tipped to the other side.</p>

				<p>But the war exhausted resources. The war eliminated the best people. The war was generally exhausting. And those that survived grew tired of it. The revolutionary government had subtly replaced their initial problems with more modest ones. In the beginning, they strove for the distribution of socialist power and communistic ideas throughout the underground but now the Reds only wanted to have control over what they saw as the inner sanctum: the station called Revolution Square. Firstly, because of its name and secondly because it was closer than the any other station in the metro to the Red Square and to the Kremlin, the towers of which were still adorned with ruby stars if you believed the brave men who were so ideologically strong that they broke the surface just to look at them. But, of course, there at the surface, near the Kremlin, right in the centre of the Red Square was the Mausoleum. Whether Lenin's body was still there or not, no one knew, but that didn't really matter. For the many years of the Soviet era, the mausoleum had ceased to be a tomb and had become its own shrine, a sacred symbol of the continuity of power.</p>

				<p>Great leaders of the past started their parades there. Current leaders aspired to it. Also, they say that from the offices of the Revolution Square station there are secret passages to the covert laboratories of the mausoleum, which lead directly to the coffin itself.</p>

				<p>The Reds still had Prospect Marx, formerly Okhotnyi Ryad, which was fortified and had become a base from which attacks on Revolution Square were launched. More than one crusade was blessed by the revolutionary leadership and sent to liberate this station and its tomb. But its defenders also understood what meaning it held for the Reds and they stood to the last. Revolution Square had turned into an unapproachable fortress. The most severe and bloody fights took place at the approach to the station. The biggest number of people was killed there. There were plenty of heroics, those that faced bullets with their chests, and brave men who tied grenades to themselves to blow themselves up together with an enemy artillery point, and those that used forbidden flame-throwers against people . . . Everything was in vain. They recaptured the station for a day but didn't manage to fortify it, and they were defeated, retreating the next day when the coalition came back with a counterattack.
</p>

				<p>Exactly the same thing was happening at Lenin Library. That was the Reds' fort and the coalition forces repeatedly tried to seize it from them. The station had huge strategic value because they could split the Red Line in two parts there, and then they would have a direct passage to the three other lines with which the Red Line doesn't intersect anywhere else. It was the only place. It was like a lymph gland, infected with the Red plague, which would then be spread across the whole organism. And, to prevent this, they had to take the Lenin Library, had to take it at any cost.
</p>

				<p>But as unsuccessful as the Reds' attempts were to take Revolution Square, the efforts of the coalition to squeeze them out of Lenin Library were equally fruitless. Meanwhile, people were tiring of the fight. Desertion was already rife, and there were incidents of fraternization when soldiers from both sides laid down their arms upon confrontation . . . But, unlike the First World War, the Reds didn't gain an advantage. Their revolutionary fuse fizzled out quietly. The coalition didn't fare much better: dissatisfied with the fact that they had to constantly tremble for their lives, people picked themselves up and went off in whole family groups from the central stations to the outer stations. The Hansa emptied and weakened. The war had badly affected trade; traders found other ways around the system, and the important trading routes because empty and quiet . . .</p>

				<p>The politicians, who were supported by fewer and fewer soldiers, had to urgently find a way to end the war, before the guns turned against them. So, under the strictest of secret conditions and at a necessarily neutral station, the leaders from enemy sides met: the Hansa president, Loginov, and the head of the Arbat Confederation, Kolpakov.</p>

				<p>They quickly signed a peace agreement. The parties exchanged stations. The Red Line received the dilapidated Revolution Square but conceded the Lenin Library to the Arbat Confederation. It wasn't an easy step for either to make. The confederation lost one of its parts along with its influence over the north-west. The Red Line became punctuated since there was now a station in the middle of it that didn't belong to it and cut it in half. Despite the fact that both parties guaranteed each other the right to free transit through their former territories, that sort of situation couldn't help but upset the Reds . . . But what the coalition was proposing was too tempting. And the Red Line didn't resist. The Hansa gained more of an advantage from the agreement, of course, because they could now close the Ring, removing the final obstacles to their prosperity.</p>

				<p>They agreed to observe the status quo, and an interdiction about conducting propaganda and subversive activities in the territory of their former opponent. Everyone was satisfied. And now, when the cannons and the politicians had gone silent, it was the turn of the propagandists to explain to the masses that their own side had managed an outstanding diplomatic feat and, in essence, had won the war.</p>

				<p>Years have passed since that memorable day when the peace agreement was signed. It was observed by both parties too - the Hansa found in the Red Line a favourable economic partner and the latter left behind its aggressive intentions: comrade Moskvin, the secretary general of Communist party of the Moscow Underground in the name of V.I.Lenin, dialectically proved the possibility of constructing communism in one separate metro line. The old enmity was forgotten.</p>

				<p>Artyom remembered this lesson in recent history well, just as he strived to remember everything his stepfather told him.</p>

				<p>'It's good that the slaughter came to an end,' Pyotr Andreevich said. 'It was impossible to go anywhere near the Ring for a year and a half: there were cordons everywhere, and they would
check your documents a hundred times. I had dealings there at the time and there was no way to get through apart from past the Hansa. And they stopped me right at Prospect Mir. They almost put me up against a wall.'
</p>

				<p> 'And? You've never told us about this, Pyotr . . . How did it work out?' Andrey was interested.
</p>

				<p>Artyom slouched slightly, seeing that the story-teller's flashlight had been passed from his hands. But this promised to be interested so he didn't bother to butt in.</p>

				<p>'Well . . . It was very simple. They took me for a Red spy. So, I'm coming out of the tunnel at Prospect Mir, on our line. And Prospect is also under the Hansa. It's an annexe, so to speak. Well, things aren't so strict there yet - they've got a market there, a trading zone. As you know, it's the same everywhere with the Hansa: the stations on the Ring itself form something like their home territory. And the transfer passages from the Ring stations are like radials - and they've put customs and passport controls there . . .'</p>

				<p>'Come on, we all know that, what are you lecturing us for . . . Tell us instead what happened to you there!' Andrey interrupted him.
</p>

				<p>'Passport controls,' repeated Pyotr Andreevich, sternly drawing his eyebrows together, determined to make a point. 'At the radial stations, they have markets, bazaars . . . Foreigners are allowed there. But you can't cross the border - no way. I got out at Prospect Mir, I had half a kilo of tea with me . . . I needed some ammunition for my rifle. I thought I'd make a trade. Well, turns out they're under martial law. They won't let go of any military supplies. I ask one person, then another - they all make excuses, and sidle away from me. Only one whispered to me: “What ammunition, you moron . . . Get the hell out of here, and quick - they've probably already informed on you.” I thanked him and headed quietly back into the tunnel. And right at the exit, a patrol stops me, and whistles ring out from the station, and still another detachment is running towards us. They ask for my documents. I give them my passport, with our station's stamp. They look at it carefully and ask, “And where's your pass?” I answer, surprised, “What pass?” It turns out that to get to the station, you're obliged to get a pass: near the tunnel exit there's a little table, and they have an office there. They check identification and issue a pass when necessary. They're up to their ears in bureaucracy, the rats . . .</p>

				<p>  'How I made it past that table, I don't know . . . Why didn't the blockheads stop me? And now I'm the one who has to explain myself to the patrol. So this muscle-head stands there with his shaved skull and his camouflage and says, He slipped past! He snuck past! He crept past!” He flips further through my passport, and sees the Sokol stamp there. I lived there earlier, at Sokol . . . He sees this stamp, and his eyes all but filled with blood. Like a bull seeing red. He jerked his gun from his shoulder and roars, “Hands above your head, you scum!” His level of training was immediately apparent. He grabs me by the scruff of my neck and drags me across the entire station, to the pass point in the transfer passage, to his superior. And he says, threateningly, “Just you wait, all I need is to get permission from command - and you'll be against the wall, spy.” I was about to be sick. So I try to justify myself, I say, “What kind of a spy am I? I'm a businessman! I brought some tea from VDNKh.” And he replies that he'll stuff my mouth full of tea and ram it in with the barrel of his gun. I can see that I'm not very convincing, and that, if his brass gives their approval, he'll lead me off to the two-hundredth metre, put my face to the pipes, and shoot me full of holes, in accordance with the laws of war. Things weren't turning out too well, I thought . . . We approached the pass point, and this muscle-head of mine went to discuss the best place to shoot me. I looked at his boss, and it was as if a burden fell from my shoulders: it was Pashka Fedotov, my former classmate - we'd remained friends even after school, and then we'd lost track of each other . . .'
</p>

				<p>'Well fuck! You scared the hell out of me! And I already thought you were done for, that they'd killed you,' inserted Andrey venomously, and all of the men who were gathered tightly around the campfire at the four hundred and fiftieth metre burst into friendly laughter.</p>

				<p> Even Pyotr Andreevich himself, first glancing angrily at Andrey, couldn't restrain himself and smiled. Laughter sounded along the tunnel, giving birth, somewhere in its depths, to a distorted echo, a sinister screech that sounded unlike anything . . . And everyone gradually fell silent upon hearing it.</p>

				<p>From the depths of the tunnel, form the north, the suspicious sounds were rather distinct now: there were rustlings and light rhythmic steps.</p>

				<p>Andrey, of course, was the first to hear them. He went silent instantly and waved a hand to signal the others to be quiet too, and he picked up his machine gun from the ground and jumped up from where he was sitting.</p>

				<p>Slowly undoing his safety catch and loading a cartridge, his back to the wall, he silently moved from the fireside into the tunnel. Artyom got up too - he was curious to see who he had missed the last time but Andrey turned back and frowned at him angrily. He stopped at the border of the darkness, put his gun to his shoulder and lay down flat shouting, 'Give me some light!'</p>

				<p>One of his guys, holding a powerful accumulator flashlight, which had been assembled from old car headlights, turned it on, and the bright beam ripped through the darkness. Snatched from the darkness, a fuzzy silhouette appeared on the floor for a second. It was something small, something not really scary looking, something which rushed back to the north.</p>

				<p>Artyom couldn't restrain himself and he cried out:</p>

				<p>'Shoot! It's getting away!'</p>

				<p>But for some reason Andrey did not shoot. Pyotr Andreevich got up too, keeping his machine gun at the ready, and shouted:
</p>

				<p> 'Andryukha! You still alive?'</p>

				<p>The guys sitting at the fire whispered in agitation, hearing the lock of Andrey's gun slide back. Finally Andrey appeared in the light of the flashlight, dusting off his jacket.</p>

				<p>'Yes, I'm alive, I'm alive!' he said, laughing.</p>

				<p>'Why you snorting?' Pyotr Andreevich asked him suspiciously.</p>

				<p>'It had three feet! And two heads. Mutants! The dark ones are here! They'll cut our throats! Shoot, or they'll get away! Must have been a lot of them! Must have!' Andrey continued to laugh.</p>

				<p>'Why didn't you shoot? Fine, my young man might not have but he's young, didn't get it. But why did you mess it up? You're not new to this, after all. You know what happened at Polezhaevskaya?' asked Pyotr Andreevich angrily when Andrey had returned to the fire.</p>

				<p>'Yes I've heard about Polezhaevskaya a dozen times!' Andrey waved him away. - 'It was a dog! A puppy, not even a dog . . . It's already the second time it's tried to get close to the fire, towards the heat and the light. And you almost took him out and now you're asking me why I'm being too considerate. Knackers!'</p>

				<p>'How was I supposed to know it was a dog?' Artyom had taken offence. 'It gave out such sounds . . . And then, a week ago they were talking about seeing a rat the size of a pig.'</p>

				<p>'You believe in fairy tales! Wait a second and I'll bring you your rat!' Andrey said, throwing his machine gun over his shoulder and walking off into the darkness.</p>

				<p>A minute later, they heard a fine whistle from the darkness. And then a voice called out, affectionately, coaxingly:</p>

				<p>'Come here, come here little one, don't be afraid!'</p>

				<p>He spent a long time convincing it, about ten minutes, calling it and whistling to it and then finally his figure appeared again in the twilight.</p>

				<p>He returned to the fire and smiled triumphantly as he opened his jacket. A puppy fell out onto the ground, shivering, piteous, wet and intolerably dirty, with matted fur of an indistinct colour, and black eyes full of horror, and flattened ears.</p>

				<p>Once on the ground, he immediately tried to get away but Andrey's firm hand grabbed it and held it in place. Petting it on its head, he removed his jacket and covered the little dog.</p>

				<p>'The puppy needs to be warmed up,' he explained.
</p>

				<p>'Come on, Andrey, it's a fleabag!' Pyotr Andreevich tried to bring Andrey to his senses. 'And he might even have worms. And generally you might pick up an infection and spread it through the station . . .'</p>

				<p>'OK, Pyotr, that's enough, stop whining. Just look at it!' And he pulled back the flaps of his jacket showing Pyotr the muzzle of the puppy that was still shivering either out of fear or cold. 'Look at its eyes - those eyes could never lie!'</p>

				<p>Pyotr Andreevich looked at the puppy sceptically. They were frightened eyes but they were undoubtedly honest. Pyotr Andreevich thawed a bit.</p>

				<p>'All right . . . You nature-lover . . . Wait, I'll find something for him to chew on,' he muttered and started to look in his rucksack.</p>

				<p>'Have a look, have a look. You never know, maybe something useful will grow from it - a German Shepherd for example,' Andrey said and moved the jacket containing the puppy closer to the fire.</p>

				<p>'But where could a puppy come from to get here? There aren't any people in that direction. Only dark ones. Do the dark ones keep dogs?' one of Andrey's men, a thin man with tousled hair who hadn't said anything until now asked as he looked suspiciously at the puppy who had dozed off in the heat.</p>

				<p>'You're right, of course, Kirill,' Andrey answered seriously. 'The dark ones don't keep pets as far as I know.'</p>

				<p>'Well how do they live then? What do they eat, anyway?' asked another man, scratching his unshaven jaw with a light, electric crackling sound.</p>

				<p>He was tall and obviously battle-hardened, broad-shouldered and thickset, with a completely shaven head. He was dressed in a long and well-sewn leather cloak, which, in this day and age, was a rarity.</p>

				<p>'What do they eat? They say they eat all kinds of junk. They eat carrion. They eat rats. They eat humans. They're not picky, you know,' answered Andrey, contorting his face in disgust.</p>

				<p>'Cannibals?' asked the man with the shaved head, without a shadow of surprise - and it sounded as though he'd come across cannibals before.</p>

				<p>'Cannibals . . . They're not even human. They're undead. Who knows what the hell they are! It's good they don't have weapons, so we're able to fend them off. For the time being. Pyotr! Remember, six months ago we managed to take one of them captive?'</p>

				<p>'I remember,' spoke up Pyotr Andreevich. 'He sat in our lock-up for two weeks, wouldn't drink our water, didn't touch our food, and then croaked.'</p>

				<p>'You didn't interrogate him?' asked the man.</p>

				<p>'He didn't understand a word we said, in our language. They'd speak plain Russian to him, and he'd keep quiet. He kept quiet the entire time. Like his mouth was full of water. They'd beat him too, and he said nothing. And they'd give him something to eat, and he'd say nothing. He'd just growl every once in a while. And he howled so loudly just before he died that the whole station woke up . . .'</p>

				<p>'So how'd the dog get here anyway?' Kirill reminded them.</p>

				<p>'Who the hell knows how it got here . . . Maybe it ran away from them. Maybe they wanted to eat it. It's about two kilometres to here. Couldn't a dog have run here from there? Maybe it belongs to someone. Maybe someone was coming from the north and fell on the dark ones. And the little dog managed to get away. Doesn't matter anyway how she got here. Look at her yourself. Does she look like a monster? Like a mutant? No, she's a little puppy dog, nothing special. And she's drawn to people - that means she's used to us. Otherwise why would she have tried three times to get close to the fire?'</p>

				<p>Kirill went silent, thinking through the argument. Pyotr Andreevich filled up the kettle with water from the canister, and asked: 'Anyone want more tea? Let's have a final cup, soon it'll be time for us to be relieved.'</p>

				<p>'Tea - now you're talking! Let's have some,' Andrey said. The others became animated at the idea as well.</p>

				<p>The kettle came to a boil. Pyotr Andreevich poured another cup for those who wanted it, and made a request:</p>

				<p>'You guys . . . There's no point in talking about the dark ones. The last time we were sitting like this and talking about them, they crawled up. Other guys have told me that the very same thing happened to them. Maybe it's just a coincidence, I'm not superstitious - but what if it's not? What if they can sense it? Our shift's almost over already, what do we need these shenanigans for at the last minute?'</p>

				<p>'OK, that's enough, man, don't chicken out on us! We'll get there in the end!' said Andrey, trying to cheer up Artyom but not really succeeding in convincing him.</p>

				<p>The mere thought of the dark ones sent an unpleasant shiver through everyone, including Andrey, although he tried to hide it. He didn't fear humans of any kind: not bandits, not cutthroat anarchists, not soldiers of the Red Army. But the undead disgusted him, and it wasn't that he was afraid of them, but that he couldn't stay calm when he thought about them or indeed any other danger.</p>

				<p>Everyone fell quiet. A heavy, oppressive silence came over the men grouped around the fire. The knobbly logs in the fire were crackling, and to the north, a muted, deep-chested croaking sound in the tunnel could be heard from time to time in the distance, as if the Moscow metro were the giant intestine of some unknown monster. And these sounds were really terrifying.</p>

				</body>
				</html>
			"}

/obj/item/book/manual/theprophetpain
	name = "The Prophet: Pain"
	icon_state = "book_TheProphet"
	author = "Khalil Gibran"
	title = "The Prophet: Pain"
	desc = "An old tattered book left in the zone. This one has a picture of a mans face on it."
	dat = {"<html>
		<head>
		<style>
		h1 {font-size: 18px; margin: 15px 0px 5px;}
		h2 {font-size: 15px; margin: 15px 0px 5px;}
		li {margin: 2px 0px 2px 15px;}
		ul {list-style: none; margin: 5px; padding: 0px;}
		ol {margin: 5px; padding: 0px 15px;}
		</style>
		</head>
		<body>
				<h1>The Prophet</h1>

				<h2>Pain</h2>
<p>And a woman spoke, saying, "Tell us of Pain."</p>

				<p>And he said:</p>

				<p>Your pain is the breaking of the shell that encloses your understanding.

</p>

				<p>Even as the stone of the fruit must break, that its heart may stand in the sun, so must you know pain.</p>

				<p>And could you keep your heart in wonder at the daily miracles of your life, your pain would not seem less wondrous than your joy;</p>

				<p>And you would accept the seasons of your heart, even as you have always accepted the seasons that pass over your fields.</p>

				<p>And you would watch with serenity through the winters of your grief.</p>

				<p>Much of your pain is self-chosen.</p>

				<p>It is the bitter potion by which the physician within you heals your sick self.</p>

				<p>Therefore trust the physician, and drink his remedy in silence and tranquillity:</p>

				<p>For his hand, though heavy and hard, is guided by the tender hand of the Unseen,</p>

				<p>And the cup he brings, though it burn your lips, has been fashioned of the clay which the Potter has moistened with His own sacred tears.</p>

		</body>
	</html>
	"}

/obj/item/book/manual/theprophetfriendship
	name = "The Prophet: Friendship"
	icon_state = "book_TheProphet"
	author = "Khalil Gibran"
	title = "The Prophet: Friendship"
	desc = "An old tattered book left in the zone. This one has a picture of a mans face on it."
	dat = {"<html>
				<head>
				<style>
				h1 {font-size: 18px; margin: 15px 0px 5px;}
				h2 {font-size: 15px; margin: 15px 0px 5px;}
				li {margin: 2px 0px 2px 15px;}
				ul {list-style: none; margin: 5px; padding: 0px;}
				ol {margin: 5px; padding: 0px 15px;}
				</style>
				</head>
				<body>

				<h1>The Prophet</h1>

				<h2>Friendship</h2>

<p>And a youth said, "Speak to us of Friendship."</p>

				<p>Your friend is your needs answered.</p>

				<p>He is your field which you sow with love and reap with thanksgiving.</p>

				<p>And he is your board and your fireside.</p>

				<p>For you come to him with your hunger, and you seek him for peace.</p>

				<p>When your friend speaks his mind you fear not the "nay" in your own mind, nor do you withhold the "ay."</p>

				<p>And when he is silent your heart ceases not to listen to his heart;</p>

				<p>For without words, in friendship, all thoughts, all desires, all expectations are born and shared, with joy that is unacclaimed.</p>

				<p>When you part from your friend, you grieve not;</p>

				<p>For that which you love most in him may be clearer in his absence, as the mountain to the climber is clearer from the plain.</p>

				<p>And let there be no purpose in friendship save the deepening of the spirit.</p>

				<p>For love that seeks aught but the disclosure of its own mystery is not love but a net cast forth: and only the unprofitable is caught.</p>

				<p>And let your best be for your friend.</p>

				<p>If he must know the ebb of your tide, let him know its flood also.</p>

				<p>For what is your friend that you should seek him with hours to kill?</p>

				<p>Seek him always with hours to live.</p>

				<p>For it is his to fill your need, but not your emptiness.</p>

				<p>And in the sweetness of friendship let there be laughter, and sharing of pleasures.</p>

				<p>For in the dew of little things the heart finds its morning and is refreshed.</p>

								</body>
				</html>
			"}


/obj/item/book/manual/theprophetdeath
	name = "The Prophet: Death"
	icon_state = "book_TheProphet"
	author = "Khalil Gibran"
	title = "The Prophet: Death"
	desc = "An old tattered book left in the zone. This one has a picture of a mans face on it."
	dat = {"<html>
				<head>
				<style>
				h1 {font-size: 21px; margin: 15px 0px 5px;}
				h2 {font-size: 18px; margin: 15px 0px 5px;}
        h3 {font-size: 15px; margin: 15px 0px 5px;}
				li {margin: 2px 0px 2px 15px;}
				ul {list-style: none; margin: 5px; padding: 0px;}
				ol {margin: 5px; padding: 0px 15px;}
				</style>
				</head>
				<body>

				<h1>The Prophet</h1>

				<h2>Death</h2>

<p>Then Almitra spoke, saying, "We would ask now of Death."</p>

				<p>  And he said:</p>

				<p>You would know the secret of death.</p>

				<p>But how shall you find it unless you seek it in the heart of life?</p>

				<p>The owl whose night-bound eyes are blind unto the day cannot unveil the mystery of light.</p>

				<p>If you would indeed behold the spirit of death, open your heart wide unto the body of life.</p>

				<p>For life and death are one, even as the river and the sea are one.</p>

				<p>In the depth of your hopes and desires lies your silent knowledge of the beyond;</p>

				<p>And like seeds dreaming beneath the snow your heart dreams of spring.</p>

				<p>Trust the dreams, for in them is hidden the gate to eternity.</p>

				<p> Your fear of death is but the trembling of the shepherd when he stands before the king whose hand is to be laid upon him in honour.</p>

				<p>Is the shepherd not joyful beneath his trembling, that he shall wear the mark of the king?</p>

				<p>Yet is he not more mindful of his trembling?</p>

				<p>For what is it to die but to stand naked in the wind and to melt into the sun?</p>

				<p> And what is it to cease breathing, but to free the breath from its restless tides, that it may rise and expand and seek God unencumbered?</p>

				<p>Only when you drink from the river of silence shall you indeed sing.</p>

				<p>And when you have reached the mountain top, then you shall begin to climb.</p>

				<p>And when the earth shall claim your limbs, then shall you truly dance.</p>

        </body>
		</html>
		"}
