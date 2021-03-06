//Kelp forest - Hopefully this can be fleshed out more in the future.
/obj/effect/overmap/visitable/sector/exoplanet/bub_forest
	name = "kelp forest biome"
	desc = "A biome comprised almost exclusively of kelp. These ecosystems are usually rife with herbivores and capitalistic carnivores."
	color = "#00ff00"
	planetary_area = /area/exoplanet/bub_forest
	rock_colors = list(COLOR_ASTEROID_ROCK, COLOR_GRAY80, COLOR_BROWN)
	plant_colors = list("#0e1e14","#1a3e38","#5a7467","#9eab88","#6e7248","RANDOM")
	map_generators = list(/datum/random_map/noise/exoplanet/bub_forest)
	features_budget = 0

/obj/effect/overmap/visitable/sector/exoplanet/bub_forest/generate_map()
	if(prob(40))
		lightlevel = rand(1,3)/10
	..()

/obj/effect/overmap/visitable/sector/exoplanet/bub_forest/generate_habitability()
	return HABITABILITY_BAD

/obj/effect/overmap/visitable/sector/exoplanet/bub_forest/generate_atmosphere()
	..()
	if(atmosphere)
		atmosphere.temperature = T0C + 2
		atmosphere.adjust_multi(GAS_OXYGEN, MOLES_O2STANDARD * 4, GAS_NITROGEN, MOLES_N2STANDARD * 4)
		atmosphere.update_values()

/obj/effect/overmap/visitable/sector/exoplanet/bub_forest/get_surface_color()
	return grass_color

/area/exoplanet/bub_forest
	base_turf = /turf/simulated/ocean/grass
	ambience = list('maps/bubmarine/sounds/amb/ocean_ambi1.ogg','maps/bubmarine/sounds/amb/ocean_ambi2.ogg',
					'maps/bubmarine/sounds/amb/ocean_ambi3.ogg','maps/bubmarine/sounds/amb/ocean_ambi4.ogg')
	sound_env = UNDERWATER

/datum/random_map/noise/exoplanet/bub_forest
	descriptor = "kelp forest biome"
	smoothing_iterations = 2
	land_type = /turf/simulated/ocean/grass
	water_type = /turf/simulated/ocean/sand
	water_level_min = 1
	water_level_max = 2

	flora_prob = 3
	large_flora_prob = 0
	flora_diversity = 1
	megafauna_types = list(/mob/living/simple_animal/hostile/retaliate/batshark)
	fauna_types = list(/mob/living/simple_animal/aquatic/fish/grump,/mob/living/simple_animal/hostile/retaliate/aquatic/carp)

/datum/random_map/noise/exoplanet/bub_forest/get_additional_spawns(var/value, var/turf/T)
	..()
	if(is_edge_turf(T))
		return
	var/v = noise2value(value)
	if(v > 6)
		if(prob(60))
			new/obj/structure/flora/bub/kelp(T)