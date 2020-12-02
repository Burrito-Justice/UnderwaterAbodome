//Anything turf-related that needs to be tweaked for performance/aesthetic reasons goes here
/world
	turf = /turf/simulated/floor/bub/ocean/void

/turf/simulated/floor/bub/ocean
	icon = 'maps/bubmarine/icons/ocean_turf.dmi'
	temperature = T0C + 2
	initial_gas = list(GAS_OXYGEN = MOLES_O2STANDARD * 4, GAS_NITROGEN = MOLES_N2STANDARD * 4) //water pressure of 4 atmospheres (~404 kPa)

/turf/unsimulated/floor/bub/ocean
	temperature = T0C + 2
	initial_gas = list(GAS_OXYGEN = MOLES_O2STANDARD * 4, GAS_NITROGEN = MOLES_N2STANDARD * 4)

/turf/simulated/ocean/Initialize()
	. = ..()
	update_icon()

//Parallax and Skybox. This is the bottom-most ocean turf in most cases, but it gives the illusion that it goes deeper
/turf/simulated/floor/bub/ocean/void
	name = "open ocean"
	icon = 'icons/turf/space.dmi'
	icon_state = "white"
	flooded = TRUE
	plane = SPACE_PLANE
	z_eventually_space = TRUE

/turf/simulated/floor/bub/ocean/void/Initialize()
	. = ..()
	set_light(0.6, 1, 1, 3, "#c9eaff") //Open ocean will be very subtly lit up. Make sure the skybox is bright enough

//Actual turfs here, simulated variants
/turf/simulated/open/bub
	temperature = T0C + 2
	initial_gas = list(GAS_OXYGEN = MOLES_O2STANDARD * 4, GAS_NITROGEN = MOLES_N2STANDARD * 4)
	flooded = TRUE

/turf/simulated/open/bub/Initialize()
	. = ..()
	set_light(0.6, 1, 1, 3, "#c9eaff")

/turf/unsimulated/floor/bub/ocean/floor
	name = "ocean floor"
	desc = "The rocky floor of the Europan hydrography. It looks rather plain."
	icon_state = "seafloor"

/turf/unsimulated/floor/bub/ocean/grass
	name = "seagrass"
	desc = "Some rough tufts of Europan seagrass, waving and swaying with each passing current."
	icon_state = "grass-dark"


//Overmap Coziness
/turf/unsimulated/overmap
	icon = 'maps/bubmarine/icons/overmap.dmi'
	icon_state = "map"