//Welcome to area hell
/datum/map/bubmarine
	base_floor_type = /turf/simulated/floor/reinforced/bubflood
	base_floor_area = /area/bub/ray

/area/bub
	icon = 'icons/turf/areas.dmi'
	ambience = list('maps/bubmarine/sounds/amb/sub_ambi1.ogg','maps/bubmarine/sounds/amb/sub_ambi2.ogg',
					'maps/bubmarine/sounds/amb/sub_ambi3.ogg','maps/bubmarine/sounds/amb/sub_ambi4.ogg',
					'maps/bubmarine/sounds/amb/sub_ambi5.ogg','maps/bubmarine/sounds/amb/sub_ambi6.ogg',
					'maps/bubmarine/sounds/amb/sub_ambi7.ogg','maps/bubmarine/sounds/amb/sub_ambi8.ogg')

/area/space
	ambience = list('maps/bubmarine/sounds/amb/ocean_ambi1.ogg','maps/bubmarine/sounds/amb/ocean_ambi2.ogg',
					'maps/bubmarine/sounds/amb/ocean_ambi3.ogg','maps/bubmarine/sounds/amb/ocean_ambi4.ogg')
	has_gravity = 1

//___STINGRAY AREAS___
/area/bub/ray/exterior
	name = "EVA - Open Waters; Upper Level"
	area_flags = AREA_FLAG_EXTERNAL
	base_turf = /turf/simulated/open/bub
	sound_env = UNDERWATER
	ambience = list('maps/bubmarine/sounds/amb/ocean_ambi1.ogg','maps/bubmarine/sounds/amb/ocean_ambi2.ogg',
					'maps/bubmarine/sounds/amb/ocean_ambi3.ogg','maps/bubmarine/sounds/amb/ocean_ambi4.ogg')

/area/bub/ray/exterior/lower
	name = "EVA - Open Waters; Lower Level"
	base_turf = /turf/simulated/ocean/void

//General halls and spaces
/area/bub/ray/gen
	name = "GEN - Starboard Hallway"
	icon_state = "hallS"
	sound_env = HALLWAY

/area/bub/ray/gen/port
	name = "GEN - Port Hallway"
	icon_state = "hallP"

/area/bub/ray/gen/storage
	name = "GEN - Tool Storage"
	icon_state = "auxstorage"

/area/bub/ray/gen/lower
	name = "GEN - Lower Primary Hallway"
	icon_state = "hallC1"

/area/bub/ray/gen/hangar
	name = "GEN - Hangar"
	icon_state = "hangar"
	sound_env = HANGAR

/area/bub/ray/gen/hangar/net
	name = "GEN - Network Processing Center"
	icon_state = "auxstorage"

/area/bub/ray/gen/hangar/storage
	name = "GEN - Hangar Secondary Storage"
	icon_state = "auxstorage"

/area/bub/ray/gen/eva
	name = "GEN - EVA Equipment"
	icon_state = "eva"

//Service
/area/bub/ray/srv
	name = "SRV - Messhall"
	icon_state = "cafeteria"
	sound_env = STONEROOM

/area/bub/ray/srv/kitchen
	name = "SRV - Kitchen"
	icon_state = "kitchen"
	req_access = list(access_kitchen)

/area/bub/ray/srv/kitchen/botany
	name = "SRV - Botany"
	icon_state = "hydro"

/area/bub/ray/srv/dorms
	name = "SRV - Dorms"
	icon_state = "Sleep"
	sound_env = LIVINGROOM

/area/bub/ray/srv/dorms/shower
	name = "SRV - Head"
	icon_state = "toilet"
	sound_env = BATHROOM

/area/bub/ray/srv/office
	name = "SRV - General Office"
	icon_state = "library"
	sound_env = SMALL_SOFTFLOOR

//Maintenance
/area/bub/ray/maint
	name = "MNT - Aft Observation Bubble"
	icon_state = "observatory"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	sound_env = TUNNEL_ENCLOSED

/area/bub/ray/maint/fstarb
	name = "MNT - Upper Fore Starboard Maintenance"
	icon_state = "fsmaint"

/area/bub/ray/maint/fstarb/lower
	name = "MNT - Lower Fore Starboard Maintenance"

/area/bub/ray/maint/fport
	name = "MNT - Upper Fore Port Maintenance"
	icon_state = "fpmaint"

/area/bub/ray/maint/fport/lower
	name = "MNT - Lower Fore Port Maintenance"

/area/bub/ray/maint/astarb
	name = "MNT - Upper Aft Starboard Maintenance"
	icon_state = "asmaint"

/area/bub/ray/maint/astarb/lower
	name = "MNT - Lower Aft Starboard Maintenance"

/area/bub/ray/maint/aport
	name = "MNT - Upper Aft Port Maintenance"
	icon_state = "apmaint"

/area/bub/ray/maint/aport/lower
	name = "MNT - Lower Aft Port Maintenance"

/area/bub/ray/maint/astarb/lower/ballast
	name = "MNT - Starboardside Ballast"
	icon_state = "green"

/area/bub/ray/maint/aport/lower/ballast
	name = "MNT - Portside Ballast"
	icon_state = "green"

/area/bub/ray/maint/aft
	name = "MNT - Lower Aft Maintenance"
	icon_state = "amaint"

//Command
/area/bub/ray/com
	name = "COM - Upper Bridge"
	icon_state = "bridge"
	sound_env = AUDITORIUM

/area/bub/ray/com/lower
	name = "COM - Lower Bridge"

/area/bub/ray/com/captain
	name = "COM - Captain's Quarters"
	icon_state = "heads_cap"
	req_access = list(access_captain)
	sound_env = ROOM

/area/bub/ray/com/hos
	name = "COM - Security Marshall's Brig"
	icon_state = "heads_hos"
	req_access = list(access_hos)
	sound_env = BATHROOM

//Engineering
/area/bub/ray/eng
	name = "ENG - Engineering Foyer"
	icon_state = "engineering"
	req_access = list(access_engine)
	sound_env = HANGAR

/area/bub/ray/eng/locker
	name = "ENG - Locker Room"
	icon_state = "engineering_locker"
	sound_env = BATHROOM

/area/bub/ray/eng/storage
	name = "ENG - Hard Storage and SMES"
	icon_state = "engineering_storage"
	sound_env = BATHROOM

/area/bub/ray/eng/engine
	name = "ENG - Reactor Room"
	icon_state = "engine"

/area/bub/ray/eng/prop
	name = "ENG - Propulsion Room"
	icon_state = "thruster"

/area/bub/ray/eng/atmos
	name = "ENG - Atmospherics Processing"
	icon_state = "atmos"

/area/bub/ray/eng/work
	name = "ENG - Workshop"
	icon_state = "construction"

/area/bub/ray/eng/work/secure
	name = "ENG - Secure Storage"
	icon_state = "primarystorage"
	req_access = list(access_construction)
//Medical
/area/bub/ray/med
	name = "MED - General Treatment Area"
	icon_state = "medbay"
	req_access = list(access_medical)
	sound_env = BATHROOM

/area/bub/ray/med/exam
	name = "MED - Examination Room"
	icon_state = "medbay2"

/area/bub/ray/med/surgery
	name = "MED - Surgical Theatre"
	icon_state = "surgery"

/area/bub/ray/med/lower
	name = "MED - Pharmacy and Equipment"
	icon_state = "medbay3"

/area/bub/ray/med/locker
	name = "MED - Subacute Ward and Locker Room"
	icon_state = "locker"

//Research and Xenobiology
/area/bub/ray/xen
	name = "XEN - Research and Xenobiology"
	icon_state = "xeno_lab"
	req_access = list(access_tox)
	sound_env = UNDERWATER

/area/bub/ray/xen/process
	name = "XEN - Gas Processing Suite"
	icon_state = "toxtest"

/area/bub/ray/xen/lower
	name = "XEN - Lower Research Study"
	icon_state = "chem"

//Supply
/area/bub/ray/sup
	name = "SUP - Quartermaster's Office"
	icon_state = "quartoffice"
	req_access = list(access_qm)
	sound_env = TUNNEL_ENCLOSED

/area/bub/ray/sup/starb1
	name = "SUP - Primary Starboard Warehouse"
	icon_state = "quartstorage"

/area/bub/ray/sup/starb2
	name = "SUP - Secondary Starboard Warehouse"
	icon_state = "quartsorting"

/area/bub/ray/sup/port1
	name = "SUP - Primary Port Warehouse"
	icon_state = "quartstorage"

/area/bub/ray/sup/port2
	name = "SUP - Secondary Port Warehouse"
	icon_state = "quartsorting"

/area/bub/ray/sup/mining
	name = "SUP - Mining"
	icon_state = "mining"
	req_access = list(access_mining)
	sound_env = HANGAR

//___BELUGA AREAS___
/area/bub/bel
	name = "XPD - Beluga Expeditionary Submarine"
	icon_state = "shuttle"
	forced_ambience = list('maps/bubmarine/sounds/amb/subamb_beluga.ogg')
	ambience = list()
	sound_env = ROOM

/area/bub/bel/med
	name = "XPD - Beluga Medical Area"
	icon_state = "medbay4"

/area/bub/bel/pilot
	name = "XPD - Beluga Piloting Area"
	icon_state = "shuttlegrn"

//___ELEVATORS___
/area/turbolift/ray_ground
	name = "lift (bottom deck)"
	lift_floor_label = "Bottom Deck"
	lift_floor_name = "Hangar Deck"
	lift_announce_str = "Arriving at Hangar Deck: Hangar, Atmospherics, EVA, Supply."
	base_turf = /turf/simulated/floor/plating

/area/turbolift/ray_ground_med
	name = "lift (bottom deck, med)"
	lift_floor_label = "Lwr Med"
	lift_floor_name = "Lower Medical"
	lift_announce_str = "Arriving at Lower Medical: Chemistry, Morgue, Equipment."
	base_turf = /turf/simulated/floor/plating

/area/turbolift/ray_ground_xen
	name = "lift (bottom deck, xen)"
	lift_floor_label = "Lwr Res"
	lift_floor_name = "Lower Research"
	lift_announce_str = "Arriving at Lower Research: Research Chemistry, Aquarium Observation."
	base_turf = /turf/simulated/floor/plating

/area/turbolift/ray_above
	name = "lift (top deck)"
	lift_floor_label = "Top Deck"
	lift_floor_name = "Operations Deck"
	lift_announce_str = "Arriving at Operations Deck: Bridge, Medical, Xenobiology, Messhall, Engineering."

/area/turbolift/ray_above_med
	name = "lift (top deck, med)"
	lift_floor_label = "Top Med"
	lift_floor_name = "Upper Medical"
	lift_announce_str = "Arriving at Upper Medical: Lobby, GTR, Exam, Surgery."

/area/turbolift/ray_above_xen
	name = "lift (top deck, xen)"
	lift_floor_label = "Top Res"
	lift_floor_name = "Upper Research"
	lift_announce_str = "Arriving at Upper Research: Aquarium Access, Gas Mix Suite."