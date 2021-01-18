//EXTREMELY WACKY STUFF
/datum/spawnpoint/dorms
	display_name = "Dorms"
	msg = "has awoken from their sleep."

/datum/spawnpoint/dorms/New()
	..()
	turfs = GLOB.latejoin

//PORTED FROM NEBULA
// For checking if we have a specific state, for inventory icons and nonhumanoid species.
// Cached cause asking icons is expensive
var/list/icon_state_cache = list()
/proc/check_state_in_icon(var/checkstate, var/checkicon)
	if(!checkstate || !istext(checkstate) || !isicon(checkicon))
		return FALSE
	var/list/check = global.icon_state_cache[checkicon]
	if(!check)
		check = list()
		for(var/istate in icon_states(checkicon))
			check[istate] = TRUE
		global.icon_state_cache[checkicon] = check
	. = check[checkstate]

#define EXT_LAYER_CONSTANT     0.001
#define EXT_EDGE_OCEAN         (10 * EXT_LAYER_CONSTANT)
#define EXT_EDGE_SEAFLOOR      (11 * EXT_LAYER_CONSTANT)
#define EXT_EDGE_VOLCANIC      (12 * EXT_LAYER_CONSTANT)
#define EXT_EDGE_DIRT          (20 * EXT_LAYER_CONSTANT)
#define EXT_EDGE_BARREN        (21 * EXT_LAYER_CONSTANT)
#define EXT_EDGE_MUD           (21 * EXT_LAYER_CONSTANT)
#define EXT_EDGE_MUD_DARK      (22 * EXT_LAYER_CONSTANT)
#define EXT_EDGE_SAND          (30 * EXT_LAYER_CONSTANT)
#define EXT_EDGE_CHLORINE_SAND (31 * EXT_LAYER_CONSTANT)
#define EXT_EDGE_WATER         (40 * EXT_LAYER_CONSTANT)
#define EXT_EDGE_GRASS         (51 * EXT_LAYER_CONSTANT)
#define EXT_EDGE_GRASS_WILD    (52 * EXT_LAYER_CONSTANT)
#define EXT_EDGE_SNOW          (60 * EXT_LAYER_CONSTANT)