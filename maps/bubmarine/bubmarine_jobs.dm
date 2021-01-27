//Assistant duderino
/datum/job/assistant
	title = "Crewman"
	alt_titles = list(	"Expeditionary Crewman"  = /decl/hierarchy/outfit/job/bub/assistant/xpd,
						"Medical Assistant"      = /decl/hierarchy/outfit/job/bub/assistant/med,
						"Engineering Apprentice" = /decl/hierarchy/outfit/job/bub/assistant/eng,
						"Research Assistant"     = /decl/hierarchy/outfit/job/bub/assistant/xen,
						"Off Duty"               = /decl/hierarchy/outfit/job/bub/assistant)
	outfit_type = /decl/hierarchy/outfit/job/bub/assistant
	supervisors = "whoever looks like they know what they are doing"
	hud_icon = "hudassistant"

//Command fellas
/datum/job/captain
	alt_titles = list("Expedition Leader")
	outfit_type = /decl/hierarchy/outfit/job/bub/command/captain
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_SCIENCE     = SKILL_ADEPT,
						SKILL_PILOT       = SKILL_ADEPT)
	max_skill = list(	SKILL_PILOT       = SKILL_MAX,
						SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30
	minimal_player_age = 0
	supervisors = "Zeng-Hu advisory HQ"
	hud_icon = "hudcommandingofficer"

/* maybe don't need two command dudes
/datum/job/hop
	title = "First Mate"
	alt_titles = list("Executive Officer")
	outfit_type = /decl/hierarchy/outfit/job/bub/command/hop
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_ADEPT,
						SKILL_COMPUTER    = SKILL_BASIC,
						SKILL_PILOT       = SKILL_BASIC)
	max_skill = list(	SKILL_PILOT       = SKILL_MAX,
						SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 30
	minimal_player_age = 0
*/

/datum/job/hos
	title = "Security Marshal"
	alt_titles = list("Expedition Security","Asset Protection Agent")
	outfit_type = /decl/hierarchy/outfit/job/bub/security
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_ADEPT,
						SKILL_EVA         = SKILL_BASIC,
						SKILL_COMBAT      = SKILL_BASIC,
						SKILL_WEAPONS     = SKILL_ADEPT,
						SKILL_FORENSICS   = SKILL_BASIC)

	max_skill = list(	SKILL_COMBAT      = SKILL_MAX,
						SKILL_WEAPONS     = SKILL_MAX,
						SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 28
	access = list(access_hos,access_security,access_armory,access_brig,access_medical,access_tox,access_mining,access_engine,access_kitchen)
	department = "Command"
	department_flag = COM
	selection_color = "#2f2f7f"
	supervisors = "the captain"
	hud_icon = "hudmasteratarms"
	total_positions = 2
	minimal_player_age = 0

/datum/job/bridge
	title = "Bridge Crew"
	alt_titles = list("Helmsman","Sonar Analyst")
	outfit_type = /decl/hierarchy/outfit/job/bub/command
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_SCIENCE     = SKILL_ADEPT,
						SKILL_PILOT       = SKILL_ADEPT)
	max_skill = list(	SKILL_PILOT       = SKILL_MAX,
						SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 20
	access = list(access_hop,access_bridge,access_medical,access_tox)
	total_positions = 2
	department = "Command"
	department_flag = COM
	selection_color = "#2f2f7f"
	supervisors = "the captain"
	hud_icon = "hudbridgeofficer"

//Engineering
/datum/job/engineer
	title = "Engineer"
	alt_titles = list("Mechanic","Electrician","Atmospheric Technician")
	outfit_type = /decl/hierarchy/outfit/job/bub/engineer
	min_skill = list(	SKILL_COMPUTER     = SKILL_BASIC,
						SKILL_EVA          = SKILL_BASIC,
						SKILL_CONSTRUCTION = SKILL_ADEPT,
						SKILL_ELECTRICAL   = SKILL_BASIC,
						SKILL_ATMOS        = SKILL_BASIC,
						SKILL_ENGINES      = SKILL_BASIC)
	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MAX,
						SKILL_ELECTRICAL   = SKILL_MAX,
						SKILL_ATMOS        = SKILL_MAX,
						SKILL_ENGINES      = SKILL_MAX)
	skill_points = 20
	access = list(access_engine,access_engine_equip,access_construction,access_atmospherics)
	total_positions = 4
	supervisors = "the captain"
	hud_icon = "hudengineer"

//Medical
/datum/job/doctor
	alt_titles = list("Physician","Surgeon")
	outfit_type = /decl/hierarchy/outfit/job/bub/medical
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_MEDICAL     = SKILL_EXPERT,
						SKILL_ANATOMY     = SKILL_EXPERT,
						SKILL_CHEMISTRY   = SKILL_BASIC)
	max_skill = list(	SKILL_MEDICAL     = SKILL_MAX,
						SKILL_ANATOMY     = SKILL_MAX,
						SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 20
	access = list(access_medical,access_medical_equip,access_surgery,access_chemistry)
	total_positions = 3
	supervisors = "the captain"
	hud_icon = "hudphysician"

//Research
/datum/job/scientist
	title = "Xenobiologist"
	alt_titles = list("Xenoarcheologist","Marine Biologist")
	outfit_type = /decl/hierarchy/outfit/job/bub/research
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_CHEMISTRY   = SKILL_ADEPT,
						SKILL_SCIENCE     = SKILL_ADEPT)
	max_skill = list(	SKILL_SCIENCE     = SKILL_MAX,
						SKILL_CHEMISTRY   = SKILL_MAX)
	access = list(access_tox,access_xenoarch,access_xenobiology,access_tox_storage)
	supervisors = "the captain"
	total_positions = 3
	hud_icon = "hudscientist"

//Cargo
/datum/job/qm
	alt_titles = list("Warehouse Manager")
	outfit_type = /decl/hierarchy/outfit/job/bub/supply
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_ADEPT,
						SKILL_FINANCE     = SKILL_BASIC,
						SKILL_HAULING     = SKILL_BASIC,
						SKILL_EVA         = SKILL_BASIC,
						SKILL_PILOT       = SKILL_BASIC)
	max_skill = list(	SKILL_PILOT       = SKILL_MAX)
	skill_points = 18
	access = list(access_qm,access_mining)
	supervisors = "the captain"
	hud_icon = "huddecktechnician"

/datum/job/mining
	title = "Aqua Miner"
	outfit_type = /decl/hierarchy/outfit/job/bub/supply
	alt_titles = list("Resource Acquisition Specialist")
	min_skill = list(	SKILL_HAULING = SKILL_BASIC,
						SKILL_EVA     = SKILL_BASIC)
	max_skill = list(	SKILL_PILOT   = SKILL_MAX)
	skill_points = 18
	access = list(access_mining)
	supervisors = "the quartermaster or captain"
	total_positions = 3
	hud_icon = "hudprospector"

//Service
/datum/job/chef
	alt_titles = list("Cook","Messhall Crew","Bartender")
	outfit_type = /decl/hierarchy/outfit/job/bub/service
	access = list(access_kitchen)
	total_positions = 2
	hud_icon = "hudcook"

//Role removals
/datum/job/cmo
	total_positions = 0

/datum/job/rd
	total_positions = 0

/datum/job/hop
	total_positions = 0

/datum/job/chief_engineer
	total_positions = 0

/datum/job/ai
	total_positions = 0

/datum/job/cyborg
	total_positions = 0

/datum/job/warden
	total_positions = 0

/datum/job/detective
	total_positions = 0
/*
/datum/job/officer
	total_positions = 0
*/
/datum/job/Paramedic
	total_positions = 0

/datum/job/chemist
	total_positions = 0

/datum/job/psychiatrist
	total_positions = 0

/datum/job/cargo_tech
	total_positions = 0

/datum/job/bartender
	total_positions = 0

/datum/job/xenobiologist
	total_positions = 0

/datum/job/roboticist
	total_positions = 0

/datum/job/chaplain
	total_positions = 0

/datum/job/hydro
	total_positions = 0

/datum/job/janitor
	total_positions = 0

/datum/job/librarian
	total_positions = 0

//Decls
/decl/hierarchy/outfit/job/bub
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = null

//Assistant
/decl/hierarchy/outfit/job/bub/assistant
	name = OUTFIT_JOB_NAME("Crewman Assistant")
	uniform = /obj/item/clothing/under/bub

/decl/hierarchy/outfit/job/bub/assistant/xpd
	name = OUTFIT_JOB_NAME("Expeditionary Crewman")
	uniform = /obj/item/clothing/under/bub/xpd

/decl/hierarchy/outfit/job/bub/assistant/med
	name = OUTFIT_JOB_NAME("Medical Intern")
	uniform = /obj/item/clothing/under/bub/med

/decl/hierarchy/outfit/job/bub/assistant/eng
	name = OUTFIT_JOB_NAME("Engineering Apprentice")
	uniform = /obj/item/clothing/under/bub/eng

/decl/hierarchy/outfit/job/bub/assistant/xen
	name = OUTFIT_JOB_NAME("Research Assistant")
	uniform = /obj/item/clothing/under/bub/xen

//Command
/decl/hierarchy/outfit/job/bub/command
	name = OUTFIT_JOB_NAME("Bridge Crewman")
	uniform = /obj/item/clothing/under/bub/com
	id_types = list(/obj/item/weapon/card/id/bridge)
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher

/decl/hierarchy/outfit/job/bub/command/captain
	name = OUTFIT_JOB_NAME("Captain")
	id_types = list(/obj/item/weapon/card/id/gold)
	pda_type = /obj/item/modular_computer/pda/captain

/decl/hierarchy/outfit/job/bub/command/captain/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack]      = /obj/item/weapon/storage/backpack/captain
	backpack_overrides[/decl/backpack_outfit/satchel]       = /obj/item/weapon/storage/backpack/satchel/cap
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/weapon/storage/backpack/messenger/com

/*
/decl/hierarchy/outfit/job/bub/command/hop
	name = OUTFIT_JOB_NAME("First Mate")
*/

/decl/hierarchy/outfit/job/bub/security
	name = OUTFIT_JOB_NAME("Security Marshal")
	uniform = /obj/item/clothing/under/bub/sec
	id_types = list(/obj/item/weapon/card/id/security/head)
	pda_type = /obj/item/modular_computer/pda/heads/hos

/decl/hierarchy/outfit/job/bub/security/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

//Engineering
/decl/hierarchy/outfit/job/bub/engineer
	name = OUTFIT_JOB_NAME("Engineer")
	uniform = /obj/item/clothing/under/bub/eng
	id_types = list(/obj/item/weapon/card/id/engineering)
	pda_type = /obj/item/modular_computer/pda/engineering

/decl/hierarchy/outfit/job/bub/engineer/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

//Medical
/decl/hierarchy/outfit/job/bub/medical
	name = OUTFIT_JOB_NAME("Medical Doctor")
	uniform = /obj/item/clothing/under/bub/med
	id_types = list(/obj/item/weapon/card/id/medical)
	pda_type = /obj/item/modular_computer/pda/medical

/decl/hierarchy/outfit/job/bub/medical/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

//Research
/decl/hierarchy/outfit/job/bub/research
	name = OUTFIT_JOB_NAME("Xenobiologist")
	uniform = /obj/item/clothing/under/bub/xen
	id_types = list(/obj/item/weapon/card/id/science)
	pda_type = /obj/item/modular_computer/pda/science

/decl/hierarchy/outfit/job/bub/research/New()
	..()
	BACKPACK_OVERRIDE_RESEARCH

//Cargo
/decl/hierarchy/outfit/job/bub/supply
	name = OUTFIT_JOB_NAME("Quartermaster")
	uniform = /obj/item/clothing/under/bub/sup
	id_types = list(/obj/item/weapon/card/id/cargo/head)
	pda_type = /obj/item/modular_computer/pda/cargo

//Expedition
/decl/hierarchy/outfit/job/bub/expedition
	name = OUTFIT_JOB_NAME("Expeditionary Member")
	uniform = /obj/item/clothing/under/bub/xpd

//Service
/decl/hierarchy/outfit/job/bub/service
	name = OUTFIT_JOB_NAME("Submarine Service Member")
	uniform = /obj/item/clothing/under/bub/srv
	id_types = list(/obj/item/weapon/card/id/civilian/chef)