//Grassy Plains - The basic of the basic
/obj/effect/overmap/visitable/sector/exoplanet/bub/plains
	name = "grassy plains biome"
	desc = "Biome with sparse biodiversity but rolling plains of seagrass."
	color = "#407c40"
	planetary_area = /area/exoplanet/bub_plains
	rock_colors = list(COLOR_ASTEROID_ROCK, COLOR_GRAY80, COLOR_BROWN)
	plant_colors = list("#0e1e14","#1a3e38","#5a7467","#9eab88","#6e7248","RANDOM")
	map_generators = list(/datum/random_map/noise/exoplanet/bub_plains)
	features_budget = 0

/obj/effect/overmap/visitable/sector/exoplanet/bub/plains/generate_map()
	if(prob(40))
		lightlevel = rand(1,3)/10
	..()

/obj/effect/overmap/visitable/sector/exoplanet/bub/plains/generate_habitability()
	return HABITABILITY_BAD

/obj/effect/overmap/visitable/sector/exoplanet/bub/plains/generate_atmosphere()
	..()
	if(atmosphere)
		atmosphere.temperature = T0C + 2
		atmosphere.adjust_multi(GAS_OXYGEN, MOLES_O2STANDARD * 4, GAS_NITROGEN, MOLES_N2STANDARD * 4)
		atmosphere.update_values()

/obj/effect/overmap/visitable/sector/exoplanet/bub/plains/get_surface_color()
	return grass_color

/*
/obj/effect/overmap/visitable/sector/exoplanet/grass/adapt_seed(var/datum/seed/S)
	..()
	var/carnivore_prob = rand(100)
	if(carnivore_prob < 30)
		S.set_trait(TRAIT_CARNIVOROUS,2)
		if(prob(75))
			S.get_trait(TRAIT_STINGS, 1)
	else if(carnivore_prob < 60)
		S.set_trait(TRAIT_CARNIVOROUS,1)
		if(prob(50))
			S.get_trait(TRAIT_STINGS)
	if(prob(15) || (S.get_trait(TRAIT_CARNIVOROUS) && prob(40)))
		S.set_trait(TRAIT_BIOLUM,1)
		S.set_trait(TRAIT_BIOLUM_COLOUR,get_random_colour(0,75,190))

	if(prob(30))
		S.set_trait(TRAIT_PARASITE,1)
	if(!S.get_trait(TRAIT_LARGE))
		var/vine_prob = rand(100)
		if(vine_prob < 15)
			S.set_trait(TRAIT_SPREAD,2)
		else if(vine_prob < 30)
			S.set_trait(TRAIT_SPREAD,1)
*/

/area/exoplanet/bub_plains
	base_turf = /turf/simulated/ocean/grass
	ambience = list('sound/effects/wind/wind_2_1.ogg','sound/effects/wind/wind_2_2.ogg','sound/effects/wind/wind_3_1.ogg','sound/effects/wind/wind_4_1.ogg','sound/ambience/eeriejungle2.ogg','sound/ambience/eeriejungle1.ogg')

/area/exoplanet/bub_plains/play_ambience(var/mob/living/L)
	..()
	if(!L.ear_deaf && L.client && !L.client.ambience_playing)
		L.client.ambience_playing = 1
		L.playsound_local(get_turf(L),sound('sound/ambience/jungle.ogg', repeat = 1, wait = 0, volume = 25, channel = GLOB.ambience_sound_channel))

/datum/random_map/noise/exoplanet/bub_plains
	descriptor = "grassy plains biome"
	smoothing_iterations = 2
	land_type = /turf/simulated/ocean/grass
	water_type = /turf/simulated/ocean
	water_level_min = 3
	water_level_max = 20

	flora_prob = 5
	//large_flora_prob = 30
	flora_diversity = 3
	/*
	fauna_types = list(/mob/living/simple_animal/yithian, /mob/living/simple_animal/tindalos, /mob/living/simple_animal/hostile/retaliate/jelly)
	megafauna_types = list(/mob/living/simple_animal/hostile/retaliate/parrot/space/megafauna, /mob/living/simple_animal/hostile/retaliate/goose/dire)
	*/
	fauna_types = list(/mob/living/simple_animal/aquatic/fish,/mob/living/simple_animal/aquatic/fish/grump,/mob/living/simple_animal/aquatic/fish/judge)