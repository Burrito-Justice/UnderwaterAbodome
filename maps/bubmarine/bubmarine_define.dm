/datum/map/bubmarine
	name = "Sector 22-A"
	full_name = "Europan Seamount Zeng-Hu Research Sector 22-A"
	path = "bubmarine"

	admin_levels = list(7,8) //configure this and everything below as needed
	empty_levels = list(9) //these vars shouldn't affect mapping, but will need to be cleaned when we compile
	accessible_z_levels = list("9"=100) //change this later, this influences what z level you end up on when you get lost in space
	station_levels = list(1,2) //assuming the submarine stays two z-levels, then this will work
	contact_levels = list(1,2) //levels that can be contacted from the station mostly for announcements
	overmap_size = 20 //change this as needed when we get to overmap POIs, a value of 20 will make it 20x20
	overmap_event_areas = 2 //how many event groups are generated. groups are generated in large quantities
	overmap_z = 3 //ideally we should condense z-levels down maybe, so group other things into Z3 as well
	use_overmap = 1
	num_exoplanets = 0 //CHANGE THIS once we develop custom locations

	allowed_spawns = list("Dorms","Cryogenic Storage")
	default_spawn = "Cryogenics"

	//The following is mostly used for announcements from random events and such.
	station_name = "Zeng-Hu Research Submarine \"Stingray\""
	station_short = "ZRS Stingray"
	dock_name = "TBD" //I really don't know what this is actually used in
	boss_name = "Research Command"
	boss_short = "Command"
	company_name = "Zeng-Hu Pharmaceuticals"
	company_short = "Zeng-Hu"

	map_admin_faxes = list("Corporate Central Office")

	//Maybe we'll find a use for these one day
	shuttle_docked_message = "Attention all hands: Jump preparation complete. The bluespace drive is now spooling up, secure all stations for departure. Time to jump: approximately %ETD%."
	shuttle_leaving_dock = "Attention all hands: Jump initiated, exiting bluespace in %ETA%."
	shuttle_called_message = "Attention all hands: Jump sequence initiated. Transit procedures are now in effect. Jump in %ETA%."
	shuttle_recall_message = "Attention all hands: Jump sequence aborted, return to normal operating conditions."

	evac_controller_type = /datum/evacuation_controller/starship

	default_law_type = /datum/ai_laws/solgov
	usable_email_tlds = list("europa.sol")
	away_site_budget = 3//what does this do again...
	id_hud_icons = 'maps/torch/icons/assignment_hud.dmi' //don't mind me just grabbing something from another directory

	base_turf_by_z = list(1 = /turf/simulated/floor/bub/ocean/void, 2 = /turf/simulated/open/bub) //turfs that pop up when you remove a floor plating, based on Z level