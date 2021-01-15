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
//Most cultural descriptions courtesy of Schwann
//S O L  A L L I A N C E
/decl/cultural_info/culture/human/sol
	name = CULTURE_HUMAN_EUROPA
	description = "You grew up on Europa, in the inky blackness below the ice that permanently covers the planet's surface. You know the Europan Sea better than almost any other member of the \
	crew, and you may hold some local superstitions that your fellow crew view as odd. Most Europans have some degree of experience with travelling in submarines, and are not strangers to the \
	cramped spaces found in Europa's underwater domes and submarines."
	economic_power = 1

/decl/cultural_info/culture/human/sol/jupiter
	name = CULTURE_HUMAN_JUPITER
	description = "You grew up on Jupiter, either in one of its floating cities or, more likely, on one of its moons. You probably know all about Jovian life: the gas giant is deadly to everything \
	around it, the moons are creepy, and Europa stands to be even creepier according to the tall tales of many a sailor. You aren't considered striclty Europan, but you have a better understanding of \
	what goes on there than most. Either way, you're locked up in a plasteel coffin several leagues beneath the icy crust now."

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
	description = "As a Lunarian (or Lunan) you are the best of the best of the Sol System, and the Alliance more generally. You are prim, proper, and (perhaps most importantly) the \
	old money of humanity even whilst you are stuck beneath the ice of Europa. Compared to your colleagues in this submarine you are composed and elegant in all you do, the epitome of \
	a true scion of Earth's only moon."
	economic_power = 5

/decl/cultural_info/culture/human/sol/cytherian
	name = CULTURE_HUMAN_VENUSIAN
	description = "Cytherians are some of the richest people in the Sol System and are responsible for much of the Alliance's entertainment industry. While the Lunans may act like they \
	are the best in the Sol System you're the real deal - the common Solarian's rich friend rather than the haughty Lunan old money. While Europa is somewhat dingy that just means that \
	you'll have to spice it up somehow - and that shouldn't be too hard, you're a Cytherian after all!"
	economic_power = 3.5

/decl/cultural_info/culture/human/sol/jintarian
	name = CULTURE_HUMAN_VENUSLOW
	description = "Life on the Venusian surface is difficult at the best of times, and most Jintarians are generally involved in manufacturing jobs or resource extraction from the \
	Venusian surface. This has led to a longstanding sense of resentment towards their party-loving Cytherian counterparts, which often come off as hedonistic and lazy to Jintarians."
	economic_power = 0.8

/decl/cultural_info/culture/human/sol/mars
	name = CULTURE_HUMAN_MARTIAN
	description = "Mars is not, exactly, what one would consider a functional planet anymore. Most Martians found off of the planet are now expatriates or refugees, neither of which \
	have a home to return to any longer."
	economic_power = 0.3

/*
/decl/cultural_info/culture/human/sol/ceres
	name = CULTURE_HUMAN_BELTER
	description = "You are from Ceres. The people of Ceres and the wider asteroid belt are colloquially known as 'Belters.' Traditionally a people rooted in the mining industry, \
	the belters of today are primarily engaged in the mechanical services, engineering, shipbuilding and maintenance industries. Belters are quite varied, and something of a melting \
	pot owing to the sheer number of transient workers, hauler crews and government and corporate employees basing themselves around the great shipyards of Ceres. This has led to belter \
	culture being mainly about embracing change, new people and new experiences, as well as a sense of pride in their work, as the reputation of Ceres shipbuilding is widely known across \
	human space."
	economic_power = 1
*/
/decl/cultural_info/culture/human/sol/silversun
	name = CULTURE_HUMAN_SILVER
	description = "Silversun remains the most beloved tourist destination despite ongoing crises throughout the Orion Spur. Silversun is divided into two major cultural groups: \
	the Originals, which are the original settlers of the planet before Idris Incorporated, and the Expatriates, later settlers which tend to be affiliated with Idris Incorporated - \
	the planet's largest employer in the present day."
	economic_power = 2

/decl/cultural_info/culture/human/sol/nhp
	name = CULTURE_HUMAN_NHP
	description = "New Hai Phong is regarded as the industrial heartland of the Solarian Alliance, and is dominated by Hephaestus Industries. While they often suffer from respiratory \
	complications due to Hai's industrial pollution and constant sandstorms, Hai Phongese Solarians are often employed on Europa's submarines due to their smaller and thinner statures."
	economic_power = 0.9

//E R I D A N I  F E D E R A T I O N
/decl/cultural_info/culture/human/eri
	name = CULTURE_HUMAN_ERIDANI
	description = "Eridanian Corporates, or Suits, are often found in the employ of Zeng-Hu Pharmaceuticals throughout the Solarian Alliance and broader Orion Spur. While Zeng Hu's \
	Europan facilities are hardly a blue sky posting, a proactive employee goes where they are told to go by their esteemed colleagues. Keep your chin up and push the needle."
	economic_power = 2.2
	additional_langs = list(LANGUAGE_TRADE)

//R E P U B L I C  O F  B I E S E L
/decl/cultural_info/culture/human/rob
	name = CULTURE_HUMAN_CETI
	description = "As a refugee from the corporate-controlled Republic of Biesel, you are not - by any means - the richest or most liked of the Alliance's residents. \
	You've come a long way from NanoTrasen's statelet to the inky depths of Europa, and have no intention of going back to Biesel - even if it's bigger now."
	economic_power = 0.9
	additional_langs = list(LANGUAGE_TCB)

/*
/decl/cultural_info/culture/human/rob/gibson
	name = CULTURE_HUMAN_GIBSON
	description = "You probably talk like you're from Brooklyn."
*/
/decl/cultural_info/culture/human/rob/mictlan
	name = CULTURE_HUMAN_MICTLAN
	description = "Mictlan was never the best of Sol's member states, even before it defected to the Republic of Biesel. You opted not to follow a lot of your fellow \
	Mictlaners to the Republic of Biesel, and remain in the Alliance. For the time being, at least."
	economic_power = 0.7

//C O A L I T I O N  O F  C O L O N I E S
/decl/cultural_info/culture/human/xan
	name = CULTURE_HUMAN_XANU
	description = "The Coalition of Colonies represents a very, very broad set of peoples and backgrounds - from Vysokans best at home on the open plains to Himeans \
	used to working underground. While it is often rare for a Coalition citizen to be found this far into the Solarian Alliance, corporations hire all types - \
	including those from as far afield as Xanu Prime and other Coalition planets."
	economic_power = 1
	additional_langs = list(LANGUAGE_FREE)

//R E P U B L I C  O F  E L Y R A
/decl/cultural_info/culture/human/ely
	name = CULTURE_HUMAN_ELYRAN
	description = "The Serene Republic of Elyra is easily the richest, most prosperous human state in the Orion Spur. So why are you on Europa and working in \
	a submarine? The thrill of adventure, perhaps?"
	economic_power = 2.5

//E M P I R E  O F  D O M I N I A
/decl/cultural_info/culture/human/dom
	name = CULTURE_HUMAN_DOMINIAN
	description = "The nobility of the Empire of Dominia has a mixed reputation abroad. While they are often viewed as imperialists by the Coalition and an \
	amusing second-rate power by the Alliance, the fact remains that they are a fairly wealthy and well-educated people. Geneboosted nobles should perhaps \
	not find employment inside a submarine."
	economic_power = 2
	additional_langs = list(LANGUAGE_TRADE)

/decl/cultural_info/culture/human/dom/com
	name = CULTURE_HUMAN_DOMCOM
	description = "Dominian commoners are a very, very diverse group of people ranging from rebellious Fisanduhians, Imperial commoners, and colonial Ma'zals. \
	Most of them, Fisanduhians aside, are saddled by the Mo'ri'zal blood debt - the Empire's favoured form of taxation."
	economic_power = 1

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
