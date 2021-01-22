//Anything turf-related that needs to be tweaked for performance/aesthetic reasons goes here
/world
	turf = /turf/simulated/ocean/void

/turf/unsimulated/floor/bub/ocean
	temperature = T0C + 2
	initial_gas = list(GAS_OXYGEN = MOLES_O2STANDARD * 4, GAS_NITROGEN = MOLES_N2STANDARD * 4)

/turf/simulated/ocean
	temperature = T0C + 2
	initial_gas = list(GAS_OXYGEN = MOLES_O2STANDARD * 4, GAS_NITROGEN = MOLES_N2STANDARD * 4)
	var/icon_edge_layer = EXT_EDGE_SEAFLOOR
	var/icon_has_corners = FALSE
	var/icon_edge_states

/turf/simulated/ocean/Initialize()
	. = ..()
	update_icon()

//PORTED FROM NEBULA - ADAPTED TO EUROPA
/turf/simulated/ocean/on_update_icon(var/update_neighbors)
	..() // Recalc AO and flooding overlay.
	cut_overlays()
	if(LAZYLEN(decals))
		add_overlay(decals)

	if(icon_edge_layer < 0)
		return

	var/neighbors = 0
	for(var/direction in GLOB.cardinal)
		var/turf/simulated/ocean/turf_to_check = get_step(src,direction)
		if(!turf_to_check || turf_to_check.density)
			continue
		if(istype(turf_to_check, type))
			neighbors |= direction
			continue
		if(!istype(turf_to_check) || icon_edge_layer > turf_to_check.icon_edge_layer)
			var/image/I = image(icon, "edge[direction][icon_edge_states > 0 ? rand(0, icon_edge_states) : ""]")
			I.layer = layer + icon_edge_layer
			switch(direction)
				if(NORTH)
					I.pixel_y += world.icon_size
				if(SOUTH)
					I.pixel_y -= world.icon_size
				if(EAST)
					I.pixel_x += world.icon_size
				if(WEST)
					I.pixel_x -= world.icon_size
			add_overlay(I)
		if(update_neighbors)
			turf_to_check.update_icon()

	if(icon_has_corners)
		for(var/direction in GLOB.cornerdirs)
			var/turf/simulated/ocean/turf_to_check = get_step(src,direction)
			if(!isturf(turf_to_check) || turf_to_check.density || istype(turf_to_check, type))
				continue

			if(!istype(turf_to_check) || icon_edge_layer > turf_to_check.icon_edge_layer)
				var/draw_state
				var/res = (neighbors & direction)
				if(res == 0)
					draw_state = "edge[direction]"
				else if(res == direction)
					draw_state = "corner[direction]"
				if(draw_state && check_state_in_icon(draw_state, icon))
					var/image/I = image(icon, draw_state)
					I.layer = layer + icon_edge_layer
					if(direction & NORTH)
						I.pixel_y += world.icon_size
					else if(direction & SOUTH)
						I.pixel_y -= world.icon_size
					if(direction & EAST)
						I.pixel_x += world.icon_size
					else if(direction & WEST)
						I.pixel_x -= world.icon_size
					add_overlay(I)

	if(update_neighbors)
		for(var/direction in GLOB.cornerdirs)
			var/turf/turf_to_check = get_step(src,direction)
			turf_to_check?.update_icon()

//Parallax and Skybox. This is the bottom-most ocean turf in most cases, but it gives the illusion that it goes deeper
/turf/simulated/ocean/void
	name = "open ocean"
	desc = "Wide open ocean, as far as the eye can see. From your perspective it's hard to say whether or not there's even a floor to these waters."
	icon = 'icons/turf/space.dmi'
	icon_state = "white"
	flooded = TRUE
	plane = SPACE_PLANE
	z_eventually_space = TRUE
	icon_edge_layer = EXT_EDGE_OCEAN

/turf/simulated/ocean/void/add_decal()
	return 0

/turf/simulated/ocean/void/Initialize()
	. = ..()
	set_light(0.6, 1, 1, 3, "#c9eaff") //Open ocean will be very subtly lit up. Make sure the skybox is bright enough
	update_icon()

/datum/controller/subsystem/skybox
	skybox_icon = 'maps/bubmarine/icons/skybox.dmi'
	background_icon = "skybox2"
	use_stars = FALSE
	use_overmap_details = TRUE

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

/turf/simulated/ocean/grass
	name = "seagrass"
	desc = "Some rough tufts of Europan seagrass."
	icon_state = "grass-dark"
	icon_edge_layer = EXT_EDGE_SAND
	icon_has_corners = FALSE

/turf/simulated/ocean/grass/alt
	icon = 'maps/bubmarine/icons/ocean_turfs/grass_light.dmi'
	icon_state = "0"
	icon_edge_layer = EXT_EDGE_SAND
	icon_has_corners = FALSE

/turf/simulated/ocean/sand
	name = "sand"
	desc = "Sand on the seafloor, ever present. It looks especially sandy."
	icon = 'icons/turf/desert.dmi'
	icon_state = "desert"
	icon_edge_layer = EXT_EDGE_GRASS
	icon_has_corners = TRUE

/turf/simulated/ocean/sand/Initialize()
	. = ..()
	icon_state = "desert[pick("","0","1","2","3")]"

/turf/simulated/ocean/ice
	name = "ice"
	desc = "A thick layer of salty ice coating some surface."
	icon = 'icons/turf/snow.dmi'
	icon_state = "ice"
	icon_edge_layer = EXT_EDGE_SEAFLOOR
	icon_has_corners = FALSE

/turf/simulated/ocean/abyss
	icon = 'maps/bubmarine/icons/ocean_turfs/mud_light.dmi'
	icon_state = "0"
	icon_edge_layer = EXT_EDGE_MUD
	icon_has_corners = TRUE

/turf/simulated/ocean/mud
	name = "deep mud"
	desc = "Some oddly loamy mush at the bottom of the sea."
	icon = 'maps/bubmarine/icons/ocean_turfs/mud_dark.dmi'
	icon_state = "0"
	icon_edge_layer = EXT_EDGE_MUD_DARK
	icon_has_corners = TRUE

//Overmap Coziness
/turf/unsimulated/map
	icon = 'maps/bubmarine/icons/overmap.dmi'
	icon_state = "map"
	flooded = TRUE

/turf/unsimulated/map/Initialize()
	. = ..()
	update_icon()