//Barren sands - nearly a deadzone for life
/obj/effect/overmap/visitable/sector/exoplanet/bub_sand
	name = "sandy plains biome"
	desc = "A biome that is notably active in flora and fauna, though only barely. These sandy plains are usually the in-betweens for biomes with greater ecological sustainability."
	color = "#e8e082"
	planetary_area = /area/exoplanet/bub_sand
	rock_colors = list(COLOR_ASTEROID_ROCK, COLOR_GRAY80, COLOR_BROWN)
	plant_colors = list("#0e1e14","#1a3e38","#5a7467","#9eab88","#6e7248","RANDOM")
	map_generators = list(/datum/random_map/noise/exoplanet/bub_sand)
	features_budget = 0

/obj/effect/overmap/visitable/sector/exoplanet/bub_sand/generate_map()
	if(prob(40))
		lightlevel = rand(1,3)/10
	..()

/obj/effect/overmap/visitable/sector/exoplanet/bub_sand/generate_habitability()
	return HABITABILITY_BAD

/obj/effect/overmap/visitable/sector/exoplanet/bub_sand/generate_atmosphere()
	..()
	if(atmosphere)
		atmosphere.temperature = T0C + 2
		atmosphere.adjust_multi(GAS_OXYGEN, MOLES_O2STANDARD * 4, GAS_NITROGEN, MOLES_N2STANDARD * 4)
		atmosphere.update_values()

/obj/effect/overmap/visitable/sector/exoplanet/bub_sand/get_surface_color()
	return grass_color

/area/exoplanet/bub_sand
	base_turf = /turf/simulated/ocean/sand
	ambience = list('maps/bubmarine/sounds/amb/ocean_ambi1.ogg','maps/bubmarine/sounds/amb/ocean_ambi2.ogg',
					'maps/bubmarine/sounds/amb/ocean_ambi3.ogg','maps/bubmarine/sounds/amb/ocean_ambi4.ogg')
	sound_env = UNDERWATER

/datum/random_map/noise/exoplanet/bub_sand
	descriptor = "sandy plains biome"
	smoothing_iterations = 2
	land_type = /turf/simulated/ocean/sand
	water_type = /turf/simulated/ocean
	water_level_min = 3
	water_level_max = 6

	flora_prob = 1
	large_flora_prob = 0
	flora_diversity = 2
	megafauna_types = list()
	fauna_types = list(/mob/living/simple_animal/aquatic/fish/judge,/mob/living/simple_animal/hostile/retaliate/aquatic/carp)

/datum/random_map/noise/exoplanet/bub_sand/get_additional_spawns(var/value, var/turf/T)
	..()
	if(is_edge_turf(T))
		return
	var/v = noise2value(value)
	if(v > 6)
		if(prob(30))
			pick(new/obj/structure/flora/bub/teal(T),new/obj/structure/flora/bub/red(T))