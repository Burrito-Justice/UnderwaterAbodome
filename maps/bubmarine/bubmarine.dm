//Tick this file in the DME (and untick torch.dm if it happens to be selected) in order to use the submarine and its maps.

#if !defined(using_map_DATUM)
	//MAPS
	#include "bubmarine.dmm"//Z1, Z2
	#include "transit.dmm"//Z3, includes overmap in the bottom left occupying 27x27, though functionally 20x20
	//CODE
	#include "bubmarine_define.dm"
	#include "bubmarine_shuttles.dm"
	#include "bubmarine_jobs.dm"
	#include "bubmarine_data.dm"
	#include "bubmarine_areas.dm"
	#include "bubmarine_elevator.dm"
	#include "bubmarine_objs.dm"
	#include "bubmarine_turfs.dm"

	#define using_map_DATUM /datum/map/bubmarine

#elif !defined(MAP_OVERIDE)

	#warn A map has already been included, ignoring Bubmarine

#endif