#define SKADOVSK_LOCKDOWN_TIMER				2400
#define CLEANABLE_CLEAN_DELAY				5000

///////////////JOB
#define UNIFORMPICK (pick(/obj/item/clothing/under/color/switer, /obj/item/clothing/under/color/switer/dark, /obj/item/clothing/under/color/switer/lolg, /obj/item/clothing/under/color/switer/tracksuit))
#define SHOESPICK_TOURIST (pick(/obj/item/clothing/shoes/sneakers/black, /obj/item/clothing/shoes/sneakers/brown, /obj/item/clothing/shoes/sandal, /obj/item/clothing/shoes/laceup))

///////////////РЕЙТИНГ
#define ZONE_LEGEND							40000
#define EXPERT								20000
#define VETERAN								10000
#define EXPERIENCED							8000
#define ROOKIE								0

///////////////РЕПУТАЦИЯ
#define AMAZING								3000
#define VERYGOOD							2500
#define GOOD								1750
#define NEUTRAL								1500
#define BAD									1250
#define VERYBAD								500
#define DISGUSTING							0

///////////////ITEM TIERS
#define TRASH_TIER_COST						4000
#define LOW_TIER_COST						9000
#define MEDIUM_TIER_COST					36000
#define HIGH_TIER_COST						72000

///////////////STAKLER_PDA
#define FEED_SOUND							1
#define FEED_IMAGES							2
#define RATING_IMAGES						4

#define LENTA_MESSAGE_COOLDOWN				450
#define LENTA_FACTION_MESSAGE_COOLDOWN		100
#define LEADER_INVITE_COOLDOWN				100

#define RATING_REMOVE_TIMER					18000

///////////////BLOWOUT
#define BLOWOUT_DURATION_STAGE_I			900
#define BLOWOUT_DURATION_STAGE_II			1220
#define BLOWOUT_DURATION_STAGE_III			1540

///////////////SIDORMAT
#define SHOW_FACTION_EQUIPMENT				1
#define BUY_STUFF							2
#define SELL_UNBUYABLE						4

///////////////COLOR MATRIXES
#define NIGHTVISION_MATRIX_I				/datum/client_colour/nvg

#define NIGHTVISION_MATRIX_II				/datum/client_colour/nvg2

///////////////SOUND CHANNELS
#define AMBIENT_MUSIC_CHANNEL				707
#define AMBIENT_ENVIRONMENT_CHANNEL			708
#define AMBIENT_BACKGROUND_CHANNEL			708
#define AMBIENT_PSY_CHANNEL					710
#define TURNTABLE_CHANNEL					711
#define AMBIENT_CAMPFIRE_CHANNEL			712

///////////////GAMEMODES
#define MONOLITH_REVENGE_HOLD_TIME			6000

///////////////MIND STATE
#define MENTAL_STABLE						0
#define MENTAL_MONOLITH						1
#define MENTAL_ZOMBIE						2

//////////////ANOMALIES


//HOLODEC
#define BIRTH_STAGE							0
#define MIDAGE_STAGE						1
#define DEATH_STAGE							2


//////////////wtf is this

#define GLOBAL_LIGHT_TURF_1         (1<<0)     //Sets any light emitted by this turf to GLOBAL_LIGHTING, isn't affected by other GLOBAL_LIGHTING lights

//////////////COLOURS
#define DEFAULT_COLOUR					list(\
										1, 0, 0,\
										0, 1, 0,\
										0, 0, 1\
										)

#define PSY_COLOUR						list(\
										1, 0, 0,\
										1, 0, 0,\
										1, 0, 0\
										)

#define PSY_MATRIX_MULTIPLICATION(A)	list(\
										1-(A*0.66), A*0.33, A*0.33,\
										A*0.33, 1-(A*0.66), A*0.33,\
										A*0.33, A*0.33, 1-(A*0.66)\
										)