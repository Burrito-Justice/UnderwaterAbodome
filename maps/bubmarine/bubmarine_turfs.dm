//Anything turf-related that needs to be tweaked for performance/aesthetic reasons goes here
/world
	turf = /turf/simulated/ocean/void

/turf/unsimulated/floor/bub/ocean
	temperature = T0C + 2
	initial_gas = list(GAS_OXYGEN = MOLES_O2STANDARD * 4, GAS_NITROGEN = MOLES_N2STANDARD * 4)

/turf/simulated/ocean
	temperature = T0C + 2
	initial_gas = list(GAS_OXYGEN = MOLES_O2STANDARD * 4, GAS_NITROGEN = MOLES_N2STANDARD * 4)

/turf/simulated/ocean/Initialize()
	. = ..()
	update_icon()

//Parallax and Skybox. This is the bottom-most ocean turf in most cases, but it gives the illusion that it goes deeper
/turf/simulated/ocean/void
	name = "open ocean"
	icon = 'icons/turf/space.dmi'
	icon_state = "white"
	flooded = TRUE
	plane = SPACE_PLANE
	z_eventually_space = TRUE

/turf/simulated/ocean/void/add_decal()
	return 0

/turf/simulated/ocean/void/Initialize()
	. = ..()
	set_light(0.6, 1, 1, 3, "#c9eaff") //Open ocean will be very subtly lit up. Make sure the skybox is bright enough
	update_icon()

//Actual turfs here, simulated variants
/turf/simulated/open/bub
	temperature = T0C + 2
	initial_gas = list(GAS_OXYGEN = MOLES_O2STANDARD * 4, GAS_NITROGEN = MOLES_N2STANDARD * 4)
	flooded = TRUE

/turf/simulated/open/bub/Initialize()
	. = ..()
	set_light(0.6, 1, 1, 3, "#c9eaff")
	update_icon()

/turf/unsimulated/floor/bub/ocean/floor
	name = "ocean floor"
	desc = "The rocky floor of the Europan hydrography. It looks rather plain."
	icon_state = "seafloor"

/turf/unsimulated/floor/bub/ocean/grass
	name = "seagrass"
	desc = "Some rough tufts of Europan seagrass, waving and swaying with each passing current."
	icon_state = "grass-dark"

//Submarine turf stuff
/turf/simulated/floor/reinforced/bubflood
	flooded = 1
	temperature = T0C + 2
	initial_gas = list(GAS_OXYGEN = MOLES_O2STANDARD * 4, GAS_NITROGEN = MOLES_N2STANDARD * 4)

/turf/simulated/floor/reinforced/bubflood/Initialize()
	. = ..()
	set_light(0.6, 1, 1, 3, "#c9eaff")
	update_icon()

/turf/simulated/floor/plating/bubflood
	flooded = 1
	temperature = T0C + 2
	initial_gas = list(GAS_OXYGEN = MOLES_O2STANDARD * 4, GAS_NITROGEN = MOLES_N2STANDARD * 4)

/turf/simulated/floor/plating/bubflood/Initialize()
	. = ..()
	set_light(0.6, 1, 1, 3, "#c9eaff")
	update_icon()

/turf/simulated/ocean/grass //this is for the aquarium in research
	name = "seagrass"
	desc = "Some rough tufts of Europan seagrass."
	icon_state = "grass-dark"

//Overmap Coziness
/turf/unsimulated/overmap
	icon = 'maps/bubmarine/icons/overmap.dmi'
	icon_state = "map"