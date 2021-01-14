//THE MAIN SUBMARINE
/obj/effect/overmap/visitable/ship/ray
	name = "ZRS Stingray"
	desc = "Acoustic analysis reveals that this is a Mantaray class research submarine, commissioned by Zeng-Hu Pharmaceuticals."
	vessel_mass = 50000
	max_speed = 1/(1 SECONDS)
	burn_delay = 0.5 SECONDS
	fore_dir = WEST
	vessel_size = SHIP_SIZE_LARGE

	initial_restricted_waypoints = list(
										"Beluga" = list("nav_raydock_beluga")
										)
	//initial_generic_waypoints = list() - fill this in later
	var/THEMAP

/obj/effect/overmap/visitable/ship/ray/Initialize()
	. = ..()
	THEMAP = GLOB.using_map

//THE DEPLOYABLE SUBMARINE
/obj/effect/overmap/visitable/ship/landable/beluga
	name = "ZRS Beluga"
	desc = "Acoustic analysis reveals that this is a Dwarf Whale class expeditionary craft, commissioned by Zeng-Hu Pharmaceuticals."
	shuttle = "Beluga"
	vessel_mass = 20000
	max_speed = 1/(1 SECONDS)
	burn_delay = 0.5 SECONDS
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_SMALL

/datum/shuttle/autodock/overmap/beluga
	name = "Beluga"
	move_time = 60
	shuttle_area = list(/area/bub/bel,/area/bub/bel/med,/area/bub/bel/pilot)
	landmark_transition = "nav_transit_beluga"
	current_location = "nav_raydock_beluga"
	dock_target = "nav_raydock_beluga"
	range = 1
	logging_home_tag = "nav_raydock_beluga"
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/machinery/computer/shuttle_control/explore/beluga
	name = "beluga control console"
	shuttle_tag = "Beluga"

/obj/effect/shuttle_landmark/bub/beluga
	name = "Stingray - Beluga Dock"
	landmark_tag = "nav_raydock_beluga"
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/bub/beluga/transit
	name = "Open Waters"
	landmark_tag = "nav_transit_beluga"
	base_turf = /turf/simulated/ocean/void