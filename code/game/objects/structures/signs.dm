/obj/structure/sign
	icon = 'icons/obj/decals.dmi'
	anchored = 1
	opacity = 0
	density = 0
	layer = ABOVE_WINDOW_LAYER
	w_class = ITEM_SIZE_NORMAL

/obj/structure/sign/ex_act(severity)
	switch(severity)
		if(1.0)
			qdel(src)
			return
		if(2.0)
			qdel(src)
			return
		if(3.0)
			qdel(src)
			return
		else
	return

/obj/structure/sign/attackby(obj/item/tool as obj, mob/user as mob)	//deconstruction
	if(isScrewdriver(tool) && !istype(src, /obj/structure/sign/double))
		to_chat(user, "You unfasten the sign with your [tool.name].")
		unfasten()
	else ..()

/obj/structure/sign/proc/unfasten()
	var/obj/item/sign/S = new(src.loc)
	S.name = name
	S.desc = desc
	S.icon_state = icon_state
	//var/icon/I = icon('icons/obj/decals.dmi', icon_state)
	//S.icon = I.Scale(24, 24)
	S.sign_state = icon_state
	qdel(src)

/obj/item/sign
	name = "sign"
	desc = ""
	icon = 'icons/obj/decals.dmi'
	w_class = ITEM_SIZE_NORMAL		//big
	var/sign_state = ""

/obj/item/sign/attackby(obj/item/tool as obj, mob/user as mob)	//construction
	if(istype(tool, /obj/item/weapon/screwdriver) && isturf(user.loc))
		var/direction = input("In which direction?", "Select direction.") in list("North", "East", "South", "West", "Cancel")
		if(direction == "Cancel") return
		var/obj/structure/sign/S = new(user.loc)
		switch(direction)
			if("North")
				S.pixel_y = 32
			if("East")
				S.pixel_x = 32
			if("South")
				S.pixel_y = -32
			if("West")
				S.pixel_x = -32
			else return
		S.SetName(name)
		S.desc = desc
		S.icon_state = sign_state
		to_chat(user, "You fasten \the [S] with your [tool].")
		qdel(src)
	else ..()

/obj/structure/sign/double/map
	name = "map"
	desc = "A framed map."

/obj/structure/sign/double/map/New()
	..()
	desc = "A framed map of the [station_name()]."

/obj/structure/sign/double/map/left
	icon_state = "map-left"

/obj/structure/sign/double/map/right
	icon_state = "map-right"

/obj/structure/sign/monkey_painting
	name = "\improper Mr. Deempisi portrait"
	desc = "Under the painting a plaque reads: 'While the meat grinder may not have spared you, fear not. Not one part of you has gone to waste... You were delicious.'"
	icon_state = "monkey_painting"

/obj/structure/sign/warning
	name = "\improper WARNING"
	icon_state = "securearea"

/obj/structure/sign/warning/detailed
	icon_state = "securearea2"

/obj/structure/sign/warning/New()
	..()
	desc = "A warning sign which reads '[sanitize(name)]'."

/obj/structure/sign/thera
	icon_state = "thera"
	name = "\improper THERA SAFE ROOM"
	desc = "A detailed sign that reads 'Temporary Housing for Emergency, Radioactive, Atmospheric. This location is unsuitable for extended Habitation. Do not shelter here beyond immediate need.'"

/obj/structure/sign/warning/airlock
	name = "\improper EXTERNAL AIRLOCK"
	icon_state = "doors"

/obj/structure/sign/warning/biohazard
	name = "\improper BIOHAZARD"
	icon_state = "bio"

/obj/structure/sign/warning/bomb_range
	name = "\improper BOMB RANGE"
	icon_state = "blast"

/obj/structure/sign/warning/caution
	name = "\improper CAUTION"

/obj/structure/sign/warning/compressed_gas
	name = "\improper COMPRESSED GAS"
	icon_state = "hikpa"

/obj/structure/sign/warning/deathsposal
	name = "\improper DISPOSAL LEADS TO SPACE"
	icon_state = "deathsposal"

/obj/structure/sign/warning/docking_area
	name = "\improper KEEP CLEAR: DOCKING AREA"

/obj/structure/sign/warning/engineering_access
	name = "\improper ENGINEERING ACCESS"

/obj/structure/sign/warning/fall
	name = "\improper FALL HAZARD"
	icon_state = "falling"

/obj/structure/sign/warning/fire
	name = "\improper DANGER: FIRE"
	icon_state = "fire"

/obj/structure/sign/warning/high_voltage
	name = "\improper HIGH VOLTAGE"
	icon_state = "shock"

/obj/structure/sign/warning/hot_exhaust
	name = "\improper HOT EXHAUST"
	icon_state = "fire"

/obj/structure/sign/warning/internals_required
	name = "\improper INTERNALS REQUIRED"

/obj/structure/sign/warning/lethal_turrets
	name = "\improper LETHAL TURRETS"
	icon_state = "turrets"

/obj/structure/sign/warning/lethal_turrets/New()
	..()
	desc += " Enter at own risk!"

/obj/structure/sign/warning/mail_delivery
	name = "\improper MAIL DELIVERY"
	icon_state = "mail"

/obj/structure/sign/warning/moving_parts
	name = "\improper MOVING PARTS"
	icon_state = "movingparts"

/obj/structure/sign/warning/nosmoking_1
	name = "\improper NO SMOKING"
	icon_state = "nosmoking"

/obj/structure/sign/warning/nosmoking_2
	name = "\improper NO SMOKING"
	icon_state = "nosmoking2"

/obj/structure/sign/warning/nosmoking_burned
	name = "\improper NO SMOKING"
	icon_state = "nosmoking2_b"

/obj/structure/sign/warning/nosmoking_burned/Initialize()
	. = ..()
	desc += " It looks charred."

/obj/structure/sign/warning/smoking
	name = "\improper SMOKING"
	icon_state = "smoking"

/obj/structure/sign/warning/smoking/Initialize()
	. = ..()
	desc += " Hell yeah."

/obj/structure/sign/warning/pods
	name = "\improper ESCAPE PODS"
	icon_state = "podsnorth"

/obj/structure/sign/warning/pods/south
	name = "\improper ESCAPE PODS"
	icon_state = "podssouth"

/obj/structure/sign/warning/pods/east
	name = "\improper ESCAPE PODS"
	icon_state = "podseast"

/obj/structure/sign/warning/pods/west
	name = "\improper ESCAPE PODS"
	icon_state = "podswest"

/obj/structure/sign/warning/radioactive
	name = "\improper RADIOACTIVE AREA"
	icon_state = "radiation"

/obj/structure/sign/warning/secure_area
	name = "\improper SECURE AREA"

/obj/structure/sign/warning/secure_area/armory
	name = "\improper ARMORY"
	icon_state = "armory"

/obj/structure/sign/warning/server_room
	name = "\improper SERVER ROOM"
	icon_state = "server"

/obj/structure/sign/warning/siphon_valve
	name = "\improper SIPHON VALVE"

/obj/structure/sign/warning/vacuum
	name = "\improper HARD VACUUM AHEAD"
	icon_state = "space"

/obj/structure/sign/warning/vent_port
	name = "\improper EJECTION/VENTING PORT"

/obj/structure/sign/redcross
	name = "medbay"
	desc = "The Intergalactic symbol of Medical institutions. You'll probably get help here."
	icon_state = "redcross"

/obj/structure/sign/greencross
	name = "medbay"
	desc = "The Intergalactic symbol of Medical institutions. You'll probably get help here."
	icon_state = "greencross"

/obj/structure/sign/bluecross_1
	name = "infirmary"
	desc = "The Intergalactic symbol of Medical institutions. You'll probably get help here."
	icon_state = "bluecross"

/obj/structure/sign/bluecross_2
	name = "infirmary"
	desc = "The Intergalactic symbol of Medical institutions. You'll probably get help here."
	icon_state = "bluecross2"

/obj/structure/sign/goldenplaque
	name = "The Most Robust Men Award for Robustness"
	desc = "To be Robust is not an action or a way of life, but a mental state. Only those with the force of Will strong enough to act during a crisis, saving friend from foe, are truly Robust. Stay Robust my friends."
	icon_state = "goldenplaque"

/obj/structure/sign/goldenplaque/security
	name = "motivational plaque"
	desc = "A plaque engraved with a generic motivational quote and picture. ' Greater love hath no man than this, that a man lay down his life for his friends. John 15:13 "

/obj/structure/sign/goldenplaque/medical
	name = "medical certificate"
	desc = "A picture next to a long winded description of medical certifications and degrees."

/obj/structure/sign/kiddieplaque
	name = "\improper AI developers plaque"
	desc = "An extremely long list of names and job titles and a picture of the design team responsible for building this AI Core."
	icon_state = "kiddieplaque"

/obj/structure/sign/atmosplaque
	name = "\improper engineering memorial plaque"
	desc = "This plaque memorializes those engineers and technicians who made the ultimate sacrifice to save their vessel and its crew."
	icon_state = "atmosplaque"

/obj/structure/sign/emergonly
	name = "\improper EMERGENCY ONLY"
	desc = "A warning sign which reads 'EMERGENCY ONLY!'."
	icon_state = "emerg"

/obj/structure/sign/noidle
	name = "\improper NO IDLING"
	desc = "A warning sign which reads 'NO IDLING!'."
	icon_state = "noidle"

/obj/structure/sign/double/maltesefalcon	//The sign is 64x32, so it needs two tiles. ;3
	name = "The Maltese Falcon"
	desc = "The Maltese Falcon, Space Bar and Grill."

/obj/structure/sign/double/maltesefalcon/left
	icon_state = "maltesefalcon-left"

/obj/structure/sign/double/maltesefalcon/right
	icon_state = "maltesefalcon-right"

/obj/structure/sign/warning/science
	name = "\improper SCIENCE!"
	icon_state = "science"

/obj/structure/sign/warning/science/anomalous_materials
	name = "\improper ANOMALOUS MATERIALS"

/obj/structure/sign/warning/science/mass_spectrometry
	name = "\improper MASS SPECTROMETRY"

/obj/structure/sign/science_1
	name = "\improper RESEARCH WING"
	desc = "A sign labelling the research wing."
	icon_state = "science"

/obj/structure/sign/science_2
	name = "\improper RESEARCH"
	desc = "A sign labelling an area where research is performed."
	icon_state = "science2"

/obj/structure/sign/xenobio_1
	name = "\improper XENOBIOLOGY"
	desc = "A sign labelling an area as a place where xenobiological entites are researched."
	icon_state = "xenobio"

/obj/structure/sign/xenobio_2
	name = "\improper XENOBIOLOGY"
	desc = "A sign labelling an area as a place where xenobiological entites are researched."
	icon_state = "xenobio2"

/obj/structure/sign/xenobio_3
	name = "\improper XENOBIOLOGY"
	desc = "A sign labelling an area as a place where xenobiological entites are researched."
	icon_state = "xenobio3"

/obj/structure/sign/xenobio_4
	name = "\improper XENOBIOLOGY"
	desc = "A sign labelling an area as a place where xenobiological entites are researched."
	icon_state = "xenobio4"

/obj/structure/sign/xenoarch
	name = "\improper XENOARCHAEOLOGY"
	desc = "A sign labelling an area as a place where xenoarchaeological finds are researched."
	icon_state = "xenobio4"

/obj/structure/sign/chemistry
	name = "\improper CHEMISTRY"
	desc = "A sign labelling an area containing chemical equipment."
	icon_state = "chemistry"

/obj/structure/sign/xenoflora
	name = "\improper XENOFLORA"
	desc = "A sign labelling an area as a place where xenobiological plants are researched."
	icon_state = "hydro4"

/obj/structure/sign/botany
	name = "\improper BOTANY"
	desc = "A warning sign which reads 'BOTANY!'."
	icon_state = "hydro3"

/obj/structure/sign/hydro
	name = "\improper HYDROPONICS"
	desc = "A sign labelling an area as a place where plants are grown."
	icon_state = "hydro"

/obj/structure/sign/hydrostorage
	name = "\improper HYDROPONICS STORAGE"
	desc = "A sign labelling an area as a place where plant growing supplies are kept."
	icon_state = "hydro3"

/obj/structure/sign/directions
	name = "direction sign"
	desc = "A direction sign, claiming to know the way."
	icon_state = "direction"

/obj/structure/sign/directions/New()
	..()
	desc = "A direction sign, pointing out which way \the [src] is."

/obj/structure/sign/directions/science
	name = "\improper Research Division"
	icon_state = "direction_sci"

/obj/structure/sign/directions/engineering
	name = "\improper Engineering Bay"
	icon_state = "direction_eng"

/obj/structure/sign/directions/security
	name = "\improper Security Wing"
	icon_state = "direction_sec"

/obj/structure/sign/directions/medical
	name = "\improper Medical Bay"
	icon_state = "direction_med"

/obj/structure/sign/directions/evac
	name = "\improper Evacuation Wing"
	icon_state = "direction_evac"

/obj/structure/sign/directions/bridge
	name = "\improper Bridge"
	icon_state = "direction_bridge"

/obj/structure/sign/directions/supply
	name = "\improper Supply Office"
	icon_state = "direction_supply"

/obj/structure/sign/directions/infirmary
	name = "\improper Infirmary"
	icon_state = "direction_infirm"

/obj/structure/sign/directions/examroom
	name = "\improper Exam Room"
	icon_state = "examroom"

/obj/structure/sign/directions/infm
	name = "\improper Infirmary"
	icon_state = "infm"

/obj/structure/sign/directions/med
	name = "\improper Medbay"
	icon_state = "med"

/obj/structure/sign/deck/bridge
	name = "\improper Bridge Deck"
	icon_state = "deck-b"

/obj/structure/sign/deck/first
	name = "\improper First Deck"
	icon_state = "deck-1"

/obj/structure/sign/deck/second
	name = "\improper Second Deck"
	icon_state = "deck-2"

/obj/structure/sign/deck/third
	name = "\improper Third Deck"
	icon_state = "deck-3"

/obj/structure/sign/deck/fourth
	name = "\improper Fourth Deck"
	icon_state = "deck-4"

/obj/structure/sign/deck/fifth
	name = "\improper Fifth Deck"
	icon_state = "deck-5"

/obj/item/sign/medipolma
	name = "medical diploma"
	desc = "A fancy print laminated paper that certifies that its bearer is indeed a Doctor of Medicine, graduated from a medical school in one of fringe systems. You don't recognize the name though, and half of latin words they used do not actually exist."
	icon = 'icons/obj/decals.dmi'
	icon_state = "goldenplaque"
	sign_state = "goldenplaque"
	var/claimant

/obj/item/sign/medipolma/attack_self(mob/user)
	if(!claimant)
		to_chat(user, "<span class='notice'>You fill in your name in the blanks with a permanent marker.</span>")
		claimant = user.real_name
	..()

/obj/item/sign/medipolma/examine(mob/user)
	. = ..()
	if(claimant)
		to_chat(user,"This one belongs to Dr.[claimant], MD.")
	else
		to_chat(user,"The name is left blank for some reason.")

//flags
/obj/item/flag
	name = "boxed flag"
	desc = "A flag neatly folded into a wooden container."
	icon = 'icons/obj/decals.dmi'
	icon_state = "flag_boxed"
	var/flag_path
	var/flag_size = 0

/obj/item/flag/afterattack(var/atom/A, var/mob/user, var/adjacent, var/clickparams)
	if (!adjacent)
		return

	if((!iswall(A) && !istype(A, /obj/structure/window)) || !isturf(user.loc))
		to_chat(user, SPAN_WARNING("You can't place this here!"))
		return

	var/placement_dir = get_dir(user, A)
	if (!(placement_dir in GLOB.cardinal))
		to_chat(user, SPAN_WARNING("You must stand directly in front of the location you wish to place that on."))
		return

	var/obj/structure/sign/flag/P = new(user.loc)

	switch(placement_dir)
		if(NORTH)
			P.pixel_y = 32
		if(SOUTH)
			P.pixel_y = -32
		if(EAST)
			P.pixel_x = 32
		if(WEST)
			P.pixel_x = -32

	P.dir = placement_dir
	if(flag_size)
		P.icon_state = "[flag_path]_l"
		var/obj/structure/sign/flag/P2 = new(user.loc)
		P2.icon_state = "[flag_path]_r"
		P2.dir = P.dir
		switch(P2.dir)
			if(NORTH)
				P2.pixel_y = P.pixel_y
				P2.pixel_x = 32
			if(SOUTH)
				P2.pixel_y = P.pixel_y
				P2.pixel_x = 32
			if(EAST)
				P2.pixel_x = P.pixel_x
				P2.pixel_y = -32
			if(WEST)
				P2.pixel_x = P.pixel_x
				P2.pixel_y = 32
		P2.name = name
		P2.desc = desc
	else
		P.icon_state = "[flag_path]"
	P.name = name
	P.desc = desc
	qdel(src)


/obj/structure/sign/flag/attack_hand(mob/user as mob)

	if(alert("Do you want to rip \the [src] from its place?","You think...","Yes","No") == "Yes")

		if(!do_after(user, 2 SECONDS, src))
			return 0

		visible_message(SPAN_WARNING("\The [user] rips \the [src] in a single, decisive motion!" ))
		playsound(src.loc, 'sound/items/poster_ripped.ogg', 100, 1)
		icon_state = "poster_ripped"
		name = "ripped poster"
		desc = "You can't make out anything from the flag's original print. It's ruined."
		add_fingerprint(user)

/obj/structure/sign/flag/attackby(obj/item/W, mob/user)
	if(isflamesource(W) || is_hot(W))

		visible_message(SPAN_WARNING("\The [user] starts to burn \the [src] down!"))

		if(!do_after(user, 2 SECONDS, src))
			return 0
		visible_message(SPAN_WARNING("\The [user] burns \the [src] down!"))
		playsound(src.loc, 'sound/items/zippo_open.ogg', 100, 1)
		new /obj/effect/decal/cleanable/ash(src.loc)

		qdel(src)
		return
	..()

/obj/structure/sign/flag/blank
	name = "blank banner"
	desc = "A blank blue flag."
	icon_state = "flag"

/obj/structure/sign/flag/blank/left
	icon_state = "flag_l"

/obj/structure/sign/flag/blank/right
	icon_state = "flag_r"

/obj/structure/sign/flag/sol
	name = "Sol Alliance flag"
	desc = "The bright blue flag of the Alliance of Sovereign Solarian Nations."
	icon_state = "solgov"

/obj/structure/sign/flag/sol/left
	icon_state = "solgov_l"

/obj/structure/sign/flag/sol/right
	icon_state = "solgov_r"

/obj/item/flag/sol
	name = "Sol Alliance flag"
	desc = "The bright blue flag of the Alliance of Sovereign Solarian Nations."
	flag_path = "solgov"

/obj/item/flag/sol/l
	flag_size = 1

/obj/structure/sign/flag/dominia
	name = "Dominian Empire flag"
	desc = "The Imperial Standard of Emperor Boleslaw Keeser of Dominia."
	icon_state = "dominia"

/obj/structure/sign/flag/dominia/left
	icon_state = "dominia_l"

/obj/structure/sign/flag/dominia/right
	icon_state = "dominia_r"

/obj/item/flag/dominia
	name = "Dominian Empire flag"
	desc = "The Imperial Standard of Emperor Boleslaw Keeser of Dominia."
	flag_path = "dominia"

/obj/item/flag/dominia/l
	flag_size = 1

/obj/structure/sign/flag/elyra
	name = "Elyran flag"
	desc = "The hopeful colors of the Serene Republic of Elyra."
	icon_state = "elyra"

/obj/structure/sign/flag/elyra/left
	icon_state = "elyra_l"

/obj/structure/sign/flag/elyra/right
	icon_state = "elyra_r"

/obj/item/flag/elyra
	name = "Elyran flag"
	desc = "The hopeful colors of the Serene Republic of Elyra."
	flag_path = "elyra"

/obj/item/flag/elyra/l
	flag_size = 1

/obj/structure/sign/flag/hegemony
	name = "Hegemony flag"
	desc = "The feudal standard of the Izweski Hegemony."
	icon_state = "izweski"

/obj/structure/sign/flag/hegemony/left
	icon_state = "izweski_l"

/obj/structure/sign/flag/hegemony/right
	icon_state = "izweski_r"

/obj/item/flag/hegemony
	name = "Hegemony flag"
	desc = "The feudal standard of the Izweski Hegemony."
	flag_path = "izweski"

/obj/item/flag/hegemony/l
	flag_size = 1

/obj/structure/sign/flag/jargon
	name = "Jargon Federation flag"
	desc = "The insignia of the Jargon Federation."
	icon_state = "jargon"

/obj/structure/sign/flag/jargon/left
	icon_state = "jargon_l"

/obj/structure/sign/flag/jargon/right
	icon_state = "jargon_r"

/obj/item/flag/jargon
	name = "Jargon Federation flag"
	desc = "The insignia of the Jargon Federation"
	flag_path = "jargon"

/obj/item/flag/jargon/l
	flag_size = 1

/obj/structure/sign/flag/nanotrasen
	name = "NanoTrasen Corporation flag"
	desc = "The logo of NanoTrasen on a flag."
	icon_state = "nanotrasen"

/obj/structure/sign/flag/nanotrasen/left
	icon_state = "nanotrasen_l"

/obj/structure/sign/flag/nanotrasen/right
	icon_state = "nanotrasen_r"

/obj/item/flag/nanotrasen
	name = "NanoTrasen Corporation flag"
	desc = "The logo of NanoTrasen on a flag."
	flag_path = "nanotrasen"

/obj/item/flag/nanotrasen/l
	flag_size = 1

/obj/structure/sign/flag/eridani
	name = "Eridani Corporate Federation flag"
	desc = "The logo of the Eridani Corporate Federation on a flag."
	icon_state = "eridani"

/obj/structure/sign/flag/eridani/left
	icon_state = "eridani_l"

/obj/structure/sign/flag/eridani/right
	icon_state = "eridani_r"

/obj/item/flag/eridani
	name = "Eridani Corporate Federation flag"
	desc = "The logo of the Eridani Corporate Federation on a flag."
	flag_path = "eridani"

/obj/item/flag/eridani/l
	flag_size = 1

/obj/structure/sign/flag/coalition
	name = "Coalition of Colonies flag"
	desc = "The flag of the diverse Coalition of Colonies."
	icon_state = "coalition"

/obj/structure/sign/flag/coalition/left
	icon_state = "coalition_l"

/obj/structure/sign/flag/coalition/right
	icon_state = "coalition_r"

/obj/item/flag/coalition
	name = "Coalition of Colonies flag"
	desc = "The flag of the diverse Coalition of Colonies."
	flag_path = "coalition"

/obj/item/flag/coalition/l
	flag_size = 1

/obj/structure/sign/flag/vaurca
	name = "Sedantis flag"
	desc = "The emblem of Sedantis on a flag, emblematic of Vaurca longing."
	icon_state = "sedantis"

/obj/structure/sign/flag/vaurca/left
	icon_state = "sedantis_l"

/obj/structure/sign/flag/vaurca/right
	icon_state = "sedantis_r"

/obj/item/flag/vaurca
	name = "Sedantis flag"
	desc = "The emblem of Sedantis on a flag, emblematic of Vaurca longing."
	flag_path = "sedantis"

/obj/item/flag/vaurca/l
	flag_size = 1

/obj/structure/sign/flag/america
	name = "Old World flag"
	desc = "The banner of an ancient nation, its glory old."
	icon_state = "oldglory"

/obj/structure/sign/flag/america/left
	icon_state = "oldglory_l"

/obj/structure/sign/flag/america/right
	icon_state = "oldglory_r"

/obj/item/flag/america
	name = "Old World flag"
	desc = "The banner of an ancient nation, its glory old."
	flag_path = "oldglory"

/obj/item/flag/america/l
	flag_size = 1

/obj/item/flag/dpra
	name = "Democratic People's Republic of Adhomai flag"
	desc = "The black flag of the Democratic People's Republic of Adhomai."
	flag_path = "dpra"

/obj/item/flag/dpra/l
	flag_size = 1

/obj/structure/sign/flag/dpra
	name = "Democratic People's Republic of Adhomai flag"
	desc = "The black flag of the Democratic People's Republic of Adhomai."
	icon_state = "dpra"

/obj/structure/sign/flag/dpra/left
	icon_state = "dpra_l"

/obj/structure/sign/flag/dpra/right
	icon_state = "dpra_r"

/obj/item/flag/pra
	name = "People's Republic of Adhomai flag"
	desc = "The tajaran flag of the People's Republic of Adhomai."
	flag_path = "pra"

/obj/item/flag/pra/l
	flag_size = 1

/obj/structure/sign/flag/pra
	name = "People's Republic of Adhomai flag"
	desc = "The tajaran flag of the People's Republic of Adhomai."
	icon_state = "pra"

/obj/structure/sign/flag/pra/left
	icon_state = "pra_l"

/obj/structure/sign/flag/pra/right
	icon_state = "pra_r"

/obj/item/flag/nka
	name = "New Kingdom of Adhomai flag"
	desc = "The blue flag of the New Kingdom of Adhomai."
	flag_path = "nka"

/obj/item/flag/nka/l
	flag_size = 1

/obj/structure/sign/flag/nka
	name = "New Kingdom of Adhomai flag"
	desc = "The blue flag of the New Kingdom of Adhomai."
	icon_state = "nka"

/obj/structure/sign/flag/nka/left
	icon_state = "nka_l"

/obj/structure/sign/flag/nka/right
	icon_state = "nka_r"

/obj/item/flag/heph
	name = "Hephaestus Industries flag"
	desc = "The logo of Hephaestus Industries on a flag."
	flag_path = "heph"

/obj/item/flag/heph/l
	flag_size = 1

/obj/structure/sign/flag/heph
	name = "Hephaestus Industries flag"
	desc = "The logo of Hephaestus Industries on a flag."
	icon_state = "heph"

/obj/structure/sign/flag/heph/left
	icon_state = "heph_l"

/obj/structure/sign/flag/heph/right
	icon_state = "heph_r"

/obj/item/flag/zenghu
	name = "Zeng-Hu Pharmaceuticals flag"
	desc = "The logo of Zeng-Hu Pharmaceuticals on a flag."
	flag_path = "zenghu"

/obj/item/flag/zenghu/l
	flag_size = 1

/obj/structure/sign/flag/zenghu
	name = "Zeng-Hu Pharmaceuticals flag"
	desc = "The logo of Zeng-Hu Pharmaceuticals on a flag."
	icon_state = "zenghu"

/obj/structure/sign/flag/zenghu/left
	icon_state = "zenghu_l"

/obj/structure/sign/flag/zenghu/right
	icon_state = "zenghu_r"

/obj/structure/sign/flag/zavodskoi
	name = "Zavodskoi Interstellar flag"
	desc = "The logo of Zavodskoi Interstellar on a flag."
	icon_state = "zavodskoi"

/obj/structure/sign/flag/zavodskoi/left
	icon_state = "zavodskoi_l"

/obj/structure/sign/flag/zavodskoi/right
	icon_state = "zavodskoi_r"

/obj/item/flag/zavodskoi
	name = "Zavodskoi Interstellar flag"
	desc = "The logo of Zavodskoi Interstellar on a flag."
	flag_path = "zavodskoi"

/obj/item/flag/zavodskoi/l
	flag_size = 1

/obj/structure/sign/flag/idris
	name = "Idris Incorporated flag"
	desc = "The logo of Idris Incorporated on a flag."
	icon_state = "idris"

/obj/structure/sign/flag/idris/left
	icon_state = "idris_l"

/obj/structure/sign/flag/idris/right
	icon_state = "idris_r"

/obj/item/flag/idris
	name = "Idris Incorporated flag"
	desc = "The logo of Idris Incorporated on a flag."
	flag_path = "idris"

/obj/item/flag/idris/l
	flag_size = 1

/obj/structure/sign/flag/trinaryperfection
	name = "Trinary Perfection flag"
	desc = "The flag of the Trinary Perfection."
	icon_state = "trinaryperfection"

/obj/structure/sign/flag/trinaryperfection/left
	icon_state = "trinaryperfection_l"


/obj/structure/sign/flag/trinaryperfection/right
	icon_state = "trinaryperfection_r"

/obj/item/flag/trinaryperfection
	name = "Trinary Perfection flag"
	desc = "The flag of the Trinary Perfection."
	flag_path = "trinaryperfection"

/obj/item/flag/trinaryperfection/l
	flag_size = 1

/obj/item/flag/diona
	name = "Imperial Diona standard"
	desc = "A green Dominian standard which represents the dionae within the Empire."
	flag_path = "diona"

/obj/structure/sign/flag/diona
	name = "Imperial Diona standard"
	desc = "A green Dominian standard which represents the dionae within the Empire."
	icon_state = "diona"


/obj/structure/sign/flag/biesel
	name = "Republic of Biesel flag"
	desc = "The colours and symbols of the Republic of Biesel."
	icon_state = "biesel"

/obj/structure/sign/flag/biesel/left
	icon_state = "biesel_l"

/obj/structure/sign/flag/biesel/right
	icon_state = "biesel_r"

/obj/item/flag/biesel
	name = "Republic of Biesel flag"
	desc = "The flag representing the Republic of Biesel."
	flag_path = "biesel"

/obj/item/flag/biesel/l
	name = "Large Republic of Biesel flag"
	flag_size = 1