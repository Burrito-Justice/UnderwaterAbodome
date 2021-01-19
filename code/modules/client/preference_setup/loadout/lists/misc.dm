/datum/gear/cane
	display_name = "cane"
	path = /obj/item/weapon/cane

/datum/gear/union_card
	display_name = "union membership"
	path = /obj/item/weapon/card/union

/datum/gear/union_card/spawn_on_mob(var/mob/living/carbon/human/H, var/metadata)
	. = ..()
	if(.)
		var/obj/item/weapon/card/union/card = .
		card.signed_by = H.real_name

/datum/gear/dice
	display_name = "dice pack"
	path = /obj/item/weapon/storage/pill_bottle/dice

/datum/gear/dice/nerd
	display_name = "dice pack (gaming)"
	path = /obj/item/weapon/storage/pill_bottle/dice_nerd

/datum/gear/cards
	display_name = "deck of cards"
	path = /obj/item/weapon/deck/cards

/datum/gear/tarot
	display_name = "deck of tarot cards"
	path = /obj/item/weapon/deck/tarot

/datum/gear/fortune
	display_name = "deck of Europan fortune cards"
	path = /obj/item/weapon/deck/tarot/europan

/datum/gear/holder
	display_name = "card holder"
	path = /obj/item/weapon/storage/card

/datum/gear/cardemon_pack
	display_name = "Cardemon booster pack"
	path = /obj/item/weapon/pack/cardemon

/datum/gear/spaceball_pack
	display_name = "Spaceball booster pack"
	path = /obj/item/weapon/pack/spaceball

/datum/gear/flask
	display_name = "flask"
	path = /obj/item/weapon/reagent_containers/food/drinks/flask/barflask

/datum/gear/flask/New()
	..()
	gear_tweaks += new/datum/gear_tweak/reagents(lunchables_ethanol_reagents())

/datum/gear/vacflask
	display_name = "vacuum-flask"
	path = /obj/item/weapon/reagent_containers/food/drinks/flask/vacuumflask

/datum/gear/vacflask/New()
	..()
	gear_tweaks += new/datum/gear_tweak/reagents(lunchables_drink_reagents())

/datum/gear/coffeecup
	display_name = "coffee cup"
	path = /obj/item/weapon/reagent_containers/food/drinks/glass2/coffeecup
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/knives
	display_name = "knives selection"
	description = "A selection of knives."
	path = /obj/item/weapon/material/knife

/datum/gear/knives/New()
	..()
	var/knives = list()
	knives["Folding knife"] = /obj/item/weapon/material/knife/folding
	knives["peasant folding knife"] = /obj/item/weapon/material/knife/folding/wood
	knives["tactical folding knife"] = /obj/item/weapon/material/knife/folding/tacticool
	knives["utility knife"] = /obj/item/weapon/material/knife/utility
	knives["lightweight utility knife"] = /obj/item/weapon/material/knife/utility/lightweight
	gear_tweaks += new/datum/gear_tweak/path(knives)

/datum/gear/lunchbox
	display_name = "lunchbox"
	description = "A little lunchbox."
	cost = 2
	path = /obj/item/weapon/storage/lunchbox

/datum/gear/lunchbox/New()
	..()
	var/list/lunchboxes = list()
	for(var/lunchbox_type in typesof(/obj/item/weapon/storage/lunchbox))
		var/obj/item/weapon/storage/lunchbox/lunchbox = lunchbox_type
		if(!initial(lunchbox.filled))
			lunchboxes[initial(lunchbox.name)] = lunchbox_type
	gear_tweaks += new/datum/gear_tweak/path(lunchboxes)
	gear_tweaks += new/datum/gear_tweak/contents(lunchables_lunches(), lunchables_snacks(), lunchables_drinks())

/datum/gear/towel
	display_name = "towel"
	path = /obj/item/weapon/towel
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/plush_toy
	display_name = "plush toy"
	description = "A plush toy."
	path = /obj/item/toy/plushie

/datum/gear/plush_toy/New()
	..()
	var/plushes = list()
	plushes["diona nymph plush"] = /obj/item/toy/plushie/nymph
	plushes["mouse plush"] = /obj/item/toy/plushie/mouse
	plushes["kitten plush"] = /obj/item/toy/plushie/kitten
	plushes["lizard plush"] = /obj/item/toy/plushie/lizard
	plushes["spider plush"] = /obj/item/toy/plushie/spider
	plushes["farwa plush"] = /obj/item/toy/plushie/farwa
	gear_tweaks += new /datum/gear_tweak/path(plushes)

/datum/gear/workvisa
	display_name = "work visa"
	description = "A work visa issued by the Sol Central Government for the purpose of work."
	path = /obj/item/weapon/paper/workvisa

/datum/gear/travelvisa
	display_name = "travel visa"
	description = "A travel visa issued by the Sol Central Government for the purpose of recreation."
	path = /obj/item/weapon/paper/travelvisa

/datum/gear/passport
	display_name = "passports selection"
	description = "A selection of passports."
	path = /obj/item/weapon/passport
	flags = GEAR_HAS_SUBTYPE_SELECTION
	custom_setup_proc = /obj/item/weapon/passport/proc/set_info

/datum/gear/mirror
	display_name = "handheld mirror"
	sort_category = "Cosmetics"
	path = /obj/item/weapon/mirror

/datum/gear/lipstick
	display_name = "lipstick selection"
	path = /obj/item/weapon/lipstick
	flags = GEAR_HAS_TYPE_SELECTION

/datum/gear/comb
	display_name = "plastic comb"
	path = /obj/item/weapon/haircomb
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/mask
	display_name = "sterile mask"
	path = /obj/item/clothing/mask/surgical
	cost = 2

/datum/gear/smokingpipe
	display_name = "pipe, smoking"
	path = /obj/item/clothing/mask/smokable/pipe

/datum/gear/cornpipe
	display_name = "pipe, corn"
	path = /obj/item/clothing/mask/smokable/pipe/cobpipe

/datum/gear/whalepipe
	display_name = "pipe, whalebone"
	path = /obj/item/clothing/mask/smokable/pipe/bonepipe

/datum/gear/matchbook
	display_name = "matchbook"
	path = /obj/item/weapon/storage/box/matches

/datum/gear/lighter
	display_name = "cheap lighter"
	path = /obj/item/weapon/flame/lighter

/datum/gear/lighter/New()
	..()
	var/colours = list()
	colours["random"] = /obj/item/weapon/flame/lighter/random
	colours["red"] = /obj/item/weapon/flame/lighter/red
	colours["yellow"] = /obj/item/weapon/flame/lighter/yellow
	colours["cyan"] = /obj/item/weapon/flame/lighter/cyan
	colours["green"] = /obj/item/weapon/flame/lighter/green
	colours["pink"] = /obj/item/weapon/flame/lighter/pink
	gear_tweaks += new/datum/gear_tweak/path(colours)

/datum/gear/zippo
	display_name = "zippo"
	path = /obj/item/weapon/flame/lighter/zippo

/datum/gear/zippo/New()
	..()
	var/colours = list()
	colours["random"] = /obj/item/weapon/flame/lighter/zippo/random
	colours["silver"] = /obj/item/weapon/flame/lighter/zippo
	colours["blackened"] = /obj/item/weapon/flame/lighter/zippo/black
	colours["gunmetal"] = /obj/item/weapon/flame/lighter/zippo/gunmetal
	colours["bronze"] = /obj/item/weapon/flame/lighter/zippo/bronze
	colours["pink"] = /obj/item/weapon/flame/lighter/zippo/pink
	gear_tweaks += new/datum/gear_tweak/path(colours)

/datum/gear/europan_zippo
	display_name = "zippo, Europan"
	path = /obj/item/weapon/flame/lighter/zippo/custom/europa

/datum/gear/ashtray
	display_name = "ashtray, plastic"
	path = /obj/item/weapon/material/ashtray/plastic

/datum/gear/cigscase
	display_name = "fancy cigarette case"
	path = /obj/item/weapon/storage/fancy/cigarettes/case
	cost = 2

/datum/gear/cigars
	display_name = "fancy cigar case"
	path = /obj/item/weapon/storage/fancy/cigar
	cost = 2

/datum/gear/cigar
	display_name = "fancy cigar"
	path = /obj/item/clothing/mask/smokable/cigarette/cigar

/datum/gear/cigar/New()
	..()
	var/cigar_type = list()
	cigar_type["premium"] = /obj/item/clothing/mask/smokable/cigarette/cigar
	cigar_type["Cohiba Robusto"] = /obj/item/clothing/mask/smokable/cigarette/cigar/cohiba
	gear_tweaks += new/datum/gear_tweak/path(cigar_type)

/datum/gear/ecig
	display_name = "electronic cigarette"
	path = /obj/item/clothing/mask/smokable/ecig/util

/datum/gear/ecig/deluxe
	display_name = "electronic cigarette, deluxe"
	path = /obj/item/clothing/mask/smokable/ecig/deluxe
	cost = 2

/datum/gear/bible
	display_name = "holy book"
	path = /obj/item/weapon/storage/bible
	cost = 2

/datum/gear/bible/New()
	..()
	var/books = list()
	books["bible (adjustable)"] = /obj/item/weapon/storage/bible
	books["Bible"] = /obj/item/weapon/storage/bible/bible
	books["Tanakh"] = /obj/item/weapon/storage/bible/tanakh
	books["Quran"] = /obj/item/weapon/storage/bible/quran
	books["Kitab-i-Aqdas"] = /obj/item/weapon/storage/bible/aqdas
	books["Kojiki"] = /obj/item/weapon/storage/bible/kojiki
	books["Guru Granth Sahib"] = /obj/item/weapon/storage/bible/guru
	gear_tweaks += new/datum/gear_tweak/path(books)

/datum/gear/swiss
	display_name = "multi-tool"
	path = /obj/item/weapon/material/knife/folding/swiss
	cost = 4
	flags = GEAR_HAS_COLOR_SELECTION


/datum/gear/cross
	display_name = "cross"
	path = /obj/item/weapon/material/cross
	cost = 2

/datum/gear/cross/New()
	..()
	var/crosstype = list()
	crosstype["cross, wood"] = /obj/item/weapon/material/cross/wood
	crosstype["cross, silver"] = /obj/item/weapon/material/cross/silver
	crosstype["cross, gold"] = /obj/item/weapon/material/cross/gold
	gear_tweaks += new/datum/gear_tweak/path(crosstype)

/datum/gear/coin
	display_name = "coin"
	path = /obj/item/weapon/material/coin
	cost = 2

/datum/gear/coin/New()
	..()
	var/cointype = list()
	cointype["coin, gold"] = /obj/item/weapon/material/coin/gold
	cointype["coin, silver"] = /obj/item/weapon/material/coin/silver
	cointype["coin, iron"] = /obj/item/weapon/material/coin/iron
	cointype["coin, diamond"] = /obj/item/weapon/material/coin/diamond
	cointype["coin, uranium"] = /obj/item/weapon/material/coin/uranium
	cointype["coin, phoron"] = /obj/item/weapon/material/coin/phoron
	cointype["coin, platinum"] = /obj/item/weapon/material/coin/platinum
	gear_tweaks += new/datum/gear_tweak/path(cointype)

/datum/gear/banner
	display_name = "banner selection"
	path = /obj/item/flag

/datum/gear/banner/New()
	..()
	var/banners = list()
	banners["banner, SolGov"] = /obj/item/flag/sol
	banners["banner, Dominia"] = /obj/item/flag/dominia
	banners["banner, Elyra"] = /obj/item/flag/elyra
	banners["banner, Hegemony"] = /obj/item/flag/hegemony
	banners["banner, Jargon"] = /obj/item/flag/jargon
	banners["banner, NanoTrasen"] = /obj/item/flag/nanotrasen
	banners["banner, Eridani Fed"] = /obj/item/flag/eridani
	banners["banner, Sedantis"] = /obj/item/flag/vaurca
	banners["banner, People's Republic of Adhomai"] = /obj/item/flag/pra
	banners["banner, Democratic People's Republic of Adhomai"] = /obj/item/flag/dpra
	banners["banner, New Kingdom of Adhomai"] = /obj/item/flag/nka
	banners["banner, Republic of Biesel"] = /obj/item/flag/biesel
	banners["banner, Dominian Diona"] = /obj/item/flag/diona
	banners["banner, Trinary Perfection"] = /obj/item/flag/trinaryperfection
	banners["banner, Hephaestus Industries"] = /obj/item/flag/heph
	banners["banner, Idris Incorporated"] = /obj/item/flag/idris
	banners["banner, Zenghu Pharmaceuticals"] = /obj/item/flag/zenghu
	banners["banner, Zavodskoi Interstellar"] = /obj/item/flag/zavodskoi
	banners["banner, Coalition of Colonies"] = /obj/item/flag/coalition
	gear_tweaks += new/datum/gear_tweak/path(banners)

/datum/gear/flag
	display_name = "flag selection"
	cost = 2
	path = /obj/item/flag

/datum/gear/flag/New()
	..()
	var/flags = list()
	flags["flag, SolGov"] = /obj/item/flag/sol/l
	flags["flag, Dominia"] = /obj/item/flag/dominia/l
	flags["flag, Elyra"] = /obj/item/flag/elyra/l
	flags["flag, Hegemony"] = /obj/item/flag/hegemony/l
	flags["flag, Jargon"] = /obj/item/flag/jargon/l
	flags["flag, NanoTrasen"] = /obj/item/flag/nanotrasen/l
	flags["flag, Eridani Fed"] = /obj/item/flag/eridani/l
	flags["flag, Sedantis"] = /obj/item/flag/vaurca/l
	flags["flag, People's Republic of Adhomai"] = /obj/item/flag/pra/l
	flags["flag, Democratic People's Republic of Adhomai"] = /obj/item/flag/dpra/l
	flags["flag, New Kingdom of Adhomai"] = /obj/item/flag/nka/l
	flags["flag, Republic of Biesel"] = /obj/item/flag/biesel/l
	flags["flag, Trinary Perfection"] = /obj/item/flag/trinaryperfection/l
	flags["flag, Hephaestus Industries"] = /obj/item/flag/heph/l
	flags["flag, Idris Incorporated"] = /obj/item/flag/idris/l
	flags["flag, Zeng-Hu Pharmaceuticals"] = /obj/item/flag/zenghu/l
	flags["flag, Zavodskoi Interstellar"] = /obj/item/flag/zavodskoi/l
	flags["flag, Coalition of Colonies"] = /obj/item/flag/coalition/l
	gear_tweaks += new/datum/gear_tweak/path(flags)

















