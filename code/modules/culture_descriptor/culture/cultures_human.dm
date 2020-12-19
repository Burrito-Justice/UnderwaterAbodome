/decl/cultural_info/culture/generic
	name = CULTURE_OTHER
	description = "You are from one of the many small, relatively unknown cultures scattered across the galaxy."

/decl/cultural_info/culture/human
	name = CULTURE_HUMAN
	description = "You are from one of various planetary cultures of humankind."
	language = LANGUAGE_SOL
	secondary_langs = list(
		LANGUAGE_SOL,
		LANGUAGE_TCB,
		LANGUAGE_TRADE,
		LANGUAGE_FREE,
		LANGUAGE_SIGN
	)

//S O L  A L L I A N C E
/decl/cultural_info/culture/human/sol
	name = CULTURE_HUMAN_JUPITER
	description = "You grew up on Jupiter, either in one of its floating cities or, more likely, on one of its moons. You probably know all about Jovian life: the gas giant is deadly to everything \
	around it, the moons are creepy, and Europa stands to be even creepier according to the tall tales of many a sailor. Perhaps you're a sailor yourself, or you were just around to service the \
	tourism industry. Either way, you're locked up in a plasteel coffin several leagues beneath the icy crust now."
	economic_power = 1

/decl/cultural_info/culture/human/sol/earth
	name = CULTURE_HUMAN_EARTH
	description = "You are from Earth, home of humanity. Earth culture is much as it has been for centuries, with the old nation states, while no longer politically important, still \
	culturally significant to many humans across the galaxy, as all trace their roots to somewhere on the planet. While not as geographically diverse as they were in the past, most \
	countries have at least two arcologies which make up much of the population, with the remaining humans living in small villages or from one of the many nature preserve communes. \
	The long recovery period of Earth has resulted in much of the population being environmentally aware and heavily conservationist, eager to avoid past mistakes. Most Earthers are \
	a content folk who see themselves as close to nature and keepers of the heritage of humanity."
	economic_power = 1.1

/decl/cultural_info/culture/human/sol/luna
	name = CULTURE_HUMAN_LUNA
	description = "You're pretty much a snob. Probably. Idk I didn't read Luna lore that much."
	economic_power = 1.3

/decl/cultural_info/culture/human/sol/cytherian
	name = CULTURE_HUMAN_VENUSIAN
	description = "You live in floating cities which is pretty cool I guess."
	economic_power = 1.4

/decl/cultural_info/culture/human/sol/jintarian
	name = CULTURE_HUMAN_VENUSLOW
	description = "You don't live in floating cities which isn't very cool I guess."
	economic_power = 0.9

/decl/cultural_info/culture/human/sol/mars
	name = CULTURE_HUMAN_MARTIAN
	description = "While some may say you're not too far from home, you're certainly in foreign lands... or waters, perhaps."

/decl/cultural_info/culture/human/sol/ceres
	name = CULTURE_HUMAN_BELTER
	description = "You are from Ceres. The people of Ceres and the wider asteroid belt are colloquially known as 'Belters.' Traditionally a people rooted in the mining industry, \
	the belters of today are primarily engaged in the mechanical services, engineering, shipbuilding and maintenance industries. Belters are quite varied, and something of a melting \
	pot owing to the sheer number of transient workers, hauler crews and government and corporate employees basing themselves around the great shipyards of Ceres. This has led to belter \
	culture being mainly about embracing change, new people and new experiences, as well as a sense of pride in their work, as the reputation of Ceres shipbuilding is widely known across \
	human space."
	economic_power = 1

/decl/cultural_info/culture/human/sol/silversun
	name = CULTURE_HUMAN_SILVER
	description = "Fun in the sun amirite?"
	economic_power = 1.1

/decl/cultural_info/culture/human/sol/nhp
	name = CULTURE_HUMAN_NHP
	description = "Cough cough asthma noises."
	economic_power = 0.9

//E R I D A N I  F E D E R A T I O N
/decl/cultural_info/culture/human/eri
	name = CULTURE_HUMAN_ERIDANI
	description = "Filthy corpo rat."
	economic_power = 1.2
	additional_langs = list(LANGUAGE_TRADE)

//R E P U B L I C  O F  B I E S E L
/decl/cultural_info/culture/human/rob
	name = CULTURE_HUMAN_CETI
	description = "You're from Tau Ceti so no one likes you lol."
	economic_power = 0.7
	additional_langs = list(LANGUAGE_TCB)

/decl/cultural_info/culture/human/rob/gibson
	name = CULTURE_HUMAN_GIBSON
	description = "You probably talk like you're from Brooklyn."

/decl/cultural_info/culture/human/rob/mictlan
	name = CULTURE_HUMAN_MICTLAN
	description = "Filthy tree hugger. Also you're probably used to Sol life."
	economic_power = 0.8

//C O A L I T I O N  O F  C O L O N I E S
/decl/cultural_info/culture/human/xan
	name = CULTURE_HUMAN_XANU
	description = "You're a yeehaw guy. Yeehaw."
	economic_power = 0.7
	additional_langs = list(LANGUAGE_FREE)

//R E P U B L I C  O F  E L Y R A
/decl/cultural_info/culture/human/ely
	name = CULTURE_HUMAN_ELYRAN
	description = "Feels good to have phoron lmao suck it Sol."
	economic_power = 0.8

//E M P I R E  O F  D O M I N I A
/decl/cultural_info/culture/human/dom
	name = CULTURE_HUMAN_DOMINIAN
	description = "Filthy dominians get out."
	economic_power = 1
	additional_langs = list(LANGUAGE_FREE)

/*
/decl/cultural_info/culture/human/ceti
	name = CULTURE_HUMAN_CETI
	description = "You are from Ceti Epsilon, the technical hub of the SCG. As a Cetite you are no stranger to the cutting edge of technology present in Sol space. \
	Putting education and the latest tech at the forefront of their priorities the people of Ceti are some of the brightest or tech savvy around. \
	This has afforded those from the system or planet a reputation as being a cut above the rest in technical matters, with those who attended the Ceti Institute of Technology \
	being considered some of the best qualified technical specialists in humanity. Recently there has been a rising transhumanist element in Ceti society resulting in a large \
	cybernetics culture; it is not uncommon to see many Cetites sporting some chrome."
	economic_power = 1.1

/decl/cultural_info/culture/human/spacer_core
	name = CULTURE_HUMAN_SPACER
	description = "You are from the void between worlds, though close to home. You are from one of the myriad space stations, orbital platforms, long haul freighters, \
	gateway installations or other facilities that occupy the vastness of space. Spacers near the core worlds are accustomed to life in the fast lane, constantly moving between \
	places, meeting a myriad of people and experiencing many of the cultures and worlds close to humanity's home. As such, Spacers of the core systems tend to be busy, sociable and \
	mobile, rarely satisfied with settled life. They almost universally know how to live and work in the void and take to such jobs more readily than their planet-bound counterparts."
	economic_power = 1
	language = LANGUAGE_SPACER

/decl/cultural_info/culture/human/spacer_frontier
	name = CULTURE_HUMAN_SPAFRO
	description =  "You are from the void between worlds, though you are in the distant, vast frontier of SCG space and beyond. Out here things like national identity and culture mean less; \
	those who live so far from anything only look to their close family and friends rather than any larger group. Raised on one of the long haul freighters that move between frontier worlds delivering \
	vital goods, a lonely outpost on the edge of a dreary backwater, such people are raised in small, confined environments with few others, and tend to be most familiar with older, reliable but outdated \
	technology. An independent sort, people on the frontier are more likely to be isolationist and self-driven."
	economic_power = 0.9
	language = LANGUAGE_SPACER

/decl/cultural_info/culture/human/confederate
	name = CULTURE_HUMAN_CONFED
	description = "You are from Terra (not Earth), in the Gilgamesh system. The capital world of the Gilgamesh Colonial Confederation, your people embody what it means to be a part of the GCC. \
	Unfortunately, the years since the war have not been easy on Terra and the long period of economic recovery has not made life easy. The people of Terra are typically employed \
	in the military, industrial, government or service sectors, with an emphasis being placed on military service. Terrans today are generally poor, bitter and a somewhat broken people angry and \
	resentful about their loss in the Gaia Conflict. An upbringing on Terra emphasises an odd mix of service to the state, liberalism and militarism."
	language = LANGUAGE_HUMAN_RUSSIAN
	economic_power = 0.9
*/

/decl/cultural_info/culture/human/other
	name = CULTURE_HUMAN_OTHER
	description = "Some people are from places no one has ever heard of or places too wild and fantastical to make it into Encyclopedia Galactica. You are one of these."
	economic_power = 1
	secondary_langs = list (LANGUAGE_HUMAN_EURO,
		LANGUAGE_HUMAN_CHINESE,
		LANGUAGE_HUMAN_ARABIC,
		LANGUAGE_HUMAN_INDIAN,
		LANGUAGE_HUMAN_IBERIAN,
		LANGUAGE_HUMAN_RUSSIAN,
		LANGUAGE_SPACER,
		LANGUAGE_GUTTER,
		LANGUAGE_SIGN)

/decl/cultural_info/culture/human/vatgrown
	name = CULTURE_HUMAN_VATGROWN
	description = "You were grown in a vat, either as clone or as a gene-adapt, and your outlook diverges from baseline humanity accordingly."

/decl/cultural_info/culture/human/vatgrown/sanitize_name(name)
	return sanitizeName(name, allow_numbers=TRUE)

/decl/cultural_info/culture/human/vatgrown/get_random_name(gender)
	// #defines so it's easier to read what's actually being generated
	#define LTR ascii2text(rand(65,90)) // A-Z
	#define NUM ascii2text(rand(48,57)) // 0-9
	#define FIRST capitalize(pick(gender == FEMALE ? GLOB.first_names_female : GLOB.first_names_male))
	#define NAME capitalize(pick(gender == FEMALE ? GLOB.first_names_female : GLOB.first_names_male)) + " " + capitalize(pick(GLOB.last_names))
	switch(rand(1,4))
		if(1) return NAME
		if(2) return "[LTR][LTR]-[FIRST]"
		if(3) return "[FIRST]-[NUM][NUM][NUM]"
		if(4) return "[LTR][LTR]-[NUM][NUM][NUM]"
	. = 1 // Never executed, works around http://www.byond.com/forum/?post=2072419
	#undef LTR
	#undef NUM
	#undef FIRST
	#undef NAME
