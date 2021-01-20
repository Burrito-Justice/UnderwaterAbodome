//Icy caves - home to cave crabs mostly, otherwise plain
/obj/effect/overmap/visitable/sector/exoplanet/bub_ice
	name = "icy caves biome"
	desc = "A tighter area of Europan hydrography, this area is notably colder due to a noted absence of warmer currents passing through, thus allowing the formation of ice."
	color = "#00ff00"
	planetary_area = /area/exoplanet/bub_ice
	rock_colors = list(COLOR_DIAMOND,COLOR_DARK_GUNMETAL,COLOR_PALE_BLUE_GRAY)
	plant_colors = list("#77eded","#74b0b0","#74a0b0","#3a94b5","#4592d9")
	map_generators = list(/datum/random_map/noise/exoplanet/bub_ice)
	features_budget = 0

/obj/effect/overmap/visitable/sector/exoplanet/bub_ice/generate_map()
	if(prob(40))
		lightlevel = rand(1,3)/10
	..()

/obj/effect/overmap/visitable/sector/exoplanet/bub_ice/generate_habitability()
	return HABITABILITY_BAD

/obj/effect/overmap/visitable/sector/exoplanet/bub_ice/generate_atmosphere()
	..()
	if(atmosphere)
		atmosphere.temperature = T0C + 2
		atmosphere.adjust_multi(GAS_OXYGEN, MOLES_O2STANDARD * 4, GAS_NITROGEN, MOLES_N2STANDARD * 4)
		atmosphere.update_values()

/obj/effect/overmap/visitable/sector/exoplanet/bub_ice/get_surface_color()
	return grass_color

/area/exoplanet/bub_ice
	base_turf = /turf/simulated/ocean/ice
	ambience = list('maps/bubmarine/sounds/amb/ocean_ambi1.ogg','maps/bubmarine/sounds/amb/ocean_ambi2.ogg',
					'maps/bubmarine/sounds/amb/ocean_ambi3.ogg','maps/bubmarine/sounds/amb/ocean_ambi4.ogg')
	sound_env = UNDERWATER

/datum/random_map/noise/exoplanet/bub_ice
	descriptor = "icy caves biome"
	smoothing_iterations = 2
	land_type = /turf/simulated/ocean/ice
	water_type = /turf/simulated/ocean/abyss
	water_level_min = 2
	water_level_max = 3

	flora_prob = 1
	large_flora_prob = 0
	flora_diversity = 2
	megafauna_types = list(/mob/living/simple_animal/hostile/retaliate/batshark)
	fauna_types = list(/mob/living/simple_animal/hostile/retaliate/cavecrab,/mob/living/simple_animal/jellyfish)

/datum/random_map/noise/exoplanet/bub_ice/get_additional_spawns(var/value, var/turf/T)
	..()
	if(is_edge_turf(T))
		return
	var/v = noise2value(value)
	if(v > 6)
		if(prob(30))
			new/obj/structure/flora/bub/kelp/icy(T)