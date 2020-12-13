/datum/map/bubmarine
	default_assistant_title = "Crewman"
	allowed_jobs = list(/datum/job/captain,/datum/job/hop,/datum/job/bridge,
						/datum/job/engineer,/datum/job/doctor,/datum/job/scientist,
						/datum/job/qm,/datum/job/chef)

//Assistant duderino
/datum/job/assistant
	title = "Crewman"
	alt_titles = list(	"Junior Explorer" = /decl/hierarchy/outfit/job/bub/assistant/xpd,
						"Medical Intern" = /decl/hierarchy/outfit/job/bub/assistant/med,
						"Engineering Apprentice" = /decl/hierarchy/outfit/job/bub/assistant/eng,
						"Research Assistant" = /decl/hierarchy/outfit/job/bub/assistant/xen)
	outfit_type = /decl/hierarchy/outfit/job/bub/assistant


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

/datum/job/bridge
	title = "Bridge Crew"
	alt_titles = list("Helmsman","Acoustic Analyst")
	outfit_type = /decl/hierarchy/outfit/job/bub/command
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_SCIENCE     = SKILL_ADEPT,
						SKILL_PILOT       = SKILL_ADEPT)
	max_skill = list(	SKILL_PILOT       = SKILL_MAX,
						SKILL_SCIENCE     = SKILL_MAX)
	skill_points = 20
	total_positions = 2
	department = "Command"
	department_flag = "COM"
	selection_color = "#2f2f7f"
	supervisors = "the captain and/or the first mate"

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
	total_positions = 3

//Medical
/datum/job/doctor
	alt_titles = list("Surgeon")
	outfit_type = /decl/hierarchy/outfit/job/bub/medical
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_BASIC,
						SKILL_MEDICAL     = SKILL_EXPERT,
						SKILL_ANATOMY     = SKILL_EXPERT,
						SKILL_CHEMISTRY   = SKILL_BASIC)
	max_skill = list(	SKILL_MEDICAL     = SKILL_MAX,
						SKILL_ANATOMY     = SKILL_MAX,
						SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 20
	total_positions = 3

//Research
/datum/job/scientist
	title = "Xenobiologist"
	alt_titles = list("Xenoarcheologist","Marine Biologist")
	outfit_type = /decl/hierarchy/outfit/job/bub/research

//Cargo
/datum/job/qm
	alt_titles = list("Warehouse Manager")
	min_skill = list(	SKILL_BUREAUCRACY = SKILL_ADEPT,
						SKILL_FINANCE     = SKILL_BASIC,
						SKILL_HAULING     = SKILL_BASIC,
						SKILL_EVA         = SKILL_BASIC,
						SKILL_PILOT       = SKILL_BASIC)
	max_skill = list(	SKILL_PILOT       = SKILL_MAX)
	skill_points = 18

//Service
/datum/job/chef
	outfit_type = /decl/hierarchy/outfit/job/bub/service
	total_positions = 1

//Role removals
/datum/job/cmo
	total_positions = 0

/datum/job/rd
	total_positions = 0

/datum/job/hos
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

/datum/job/officer
	total_positions = 0

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

/datum/job/mining
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

/decl/hierarchy/outfit/job/bub/command/captain
	name = OUTFIT_JOB_NAME("Captain")

/decl/hierarchy/outfit/job/bub/command/hop
	name = OUTFIT_JOB_NAME("First Mate")

//Engineering
/decl/hierarchy/outfit/job/bub/engineer
	name = OUTFIT_JOB_NAME("Engineer")
	uniform = /obj/item/clothing/under/bub/eng

//Medical
/decl/hierarchy/outfit/job/bub/medical
	name = OUTFIT_JOB_NAME("Medical Doctor")
	uniform = /obj/item/clothing/under/bub/med

//Research
/decl/hierarchy/outfit/job/bub/research
	name = OUTFIT_JOB_NAME("Xenobiologist")
	uniform = /obj/item/clothing/under/bub/xen

//Cargo
/decl/hierarchy/outfit/job/bub/supply
	name = OUTFIT_JOB_NAME("Quartermaster")
	uniform = /obj/item/clothing/under/bub/sup

//Expedition
/decl/hierarchy/outfit/job/bub/expedition
	name = OUTFIT_JOB_NAME("Expeditionary Member")
	uniform = /obj/item/clothing/under/bub/xpd

//Service
/decl/hierarchy/outfit/job/bub/service
	name = OUTFIT_JOB_NAME("Submarine Service Member")
	uniform = /obj/item/clothing/under/bub/srv