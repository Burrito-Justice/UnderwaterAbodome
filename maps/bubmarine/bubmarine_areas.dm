//Welcome to area hell
/datum/map/bubmarine
	base_floor_type = /turf/simulated/floor/reinforced/bubflood
	base_floor_area = /area/bub/ray

/area/bub
	icon = 'icons/turf/areas.dmi'

//___STINGRAY AREAS___
/area/bub/ray/exterior
	name = "EVA - Open Waters; Upper Level"
	area_flags = AREA_FLAG_EXTERNAL
	base_turf = /turf/simulated/open/bub

/area/bub/ray/exterior/lower
	name = "EVA - Open Waters; Lower Level"
	base_turf = /turf/simulated/ocean/void

//General halls and spaces
/area/bub/ray/gen
	name = "GEN - Starboard Hallway"
	icon_state = "hallS"

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

/area/bub/ray/gen/hangar/storage
	name = "GEN - Hangar Primary Storage"
	icon_state = "auxstorage"

/area/bub/ray/gen/hangar/storage2
	name = "GEN - Hangar Secondary Storage"
	icon_state = "auxstorage"

/area/bub/ray/gen/eva
	name = "GEN - EVA Equipment"
	icon_state = "eva"

//Service
/area/bub/ray/srv
	name = "SRV - Messhall"
	icon_state = "cafeteria"

/area/bub/ray/srv/kitchen
	name = "SRV - Kitchen"
	icon_state = "kitchen"

/area/bub/ray/srv/kitchen/botany
	name = "SRV - Botany"
	icon_state = "hydro"

/area/bub/ray/srv/dorms
	name = "SRV - Dorms"
	icon_state = "Sleep"

/area/bub/ray/srv/dorms/shower
	name = "SRV - Head"
	icon_state = "toilet"

/area/bub/ray/srv/office
	name = "SRV - General Office"
	icon_state = "library"

//Maintenance
/area/bub/ray/maint
	name = "MNT - Aft Observation Bubble"
	icon_state = "observatory"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

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

/area/bub/ray/com/lower
	name = "COM - Lower Bridge"

/area/bub/ray/com/captain
	name = "COM - Captain's Quarters"
	icon_state = "heads_cap"

/area/bub/ray/com/hop
	name = "COM - First Mate's Quarters"
	icon_state = "heads_hop"

//Engineering
/area/bub/ray/eng
	name = "ENG - Engineering Foyer"
	icon_state = "engineering"

/area/bub/ray/eng/locker
	name = "ENG - Locker Room"
	icon_state = "engineering_locker"

/area/bub/ray/eng/storage
	name = "ENG - Hard Storage and SMES"
	icon_state = "engineering_storage"

/area/bub/ray/eng/engine
	name = "ENG - Reactor Room"
	icon_state = "engine"

/area/bub/ray/eng/prop
	name = "ENG - Propulsion Room"
	icon_state = "thruster"

/area/bub/ray/eng/atmos
	name = "ENG - Atmospherics Processing"
	icon_state = "atmos"

//Medical
/area/bub/ray/med
	name = "MED - General Treatment Area"
	icon_state = "medbay"

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

//___BELUGA AREAS___
/area/bub/bel
	name = "XPD - Beluga Expeditionary Submarine"
	icon_state = "shuttle"

/area/bub/bel/med
	name = "XPD - Beluga Medical Area"
	icon_state = "medbay4"

/area/bub/bel/pilot
	name = "XPD - Beluga Piloting Area"
	icon_state = "shuttlegrn"

//___ELEVATORS___
