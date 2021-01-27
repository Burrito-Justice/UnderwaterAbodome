/obj/item/weapon/passport
	name = "passport"
	icon = 'icons/obj/passport.dmi'
	icon_state = "passport"
	force = 0.5
	w_class = ITEM_SIZE_SMALL
	attack_verb = list("whipped")
	hitsound = 'sound/weapons/towelwhip.ogg'
	desc = "A passport. Its origin seems unknown."
	var/info
	var/fingerprint

/obj/item/weapon/passport/Initialize()
	. = ..()
	icon_state = "passport[pick("","_scg","_scg2","_iccg","_iccg2","_eor")]"

/obj/item/weapon/passport/proc/set_info(mob/living/carbon/human/H)
	if(!istype(H))
		return
	var/decl/cultural_info/culture = H.get_cultural_value(TAG_HOMEWORLD)
	var/pob = culture ? culture.name : "Unset"
	if(H.dna)
		fingerprint = md5(H.dna.uni_identity)
	else
		fingerprint = "N/A"
	info = "\icon[src] [src]:\nName: [H.real_name]\nSpecies: [H.get_species()]\nGender: [gender2text(H.gender)]\nAge: [H.age]\nPlace of Birth: [pob]\nFingerprint: [fingerprint]"

/obj/item/weapon/passport/attack_self(mob/user as mob)
	user.visible_message(
		SPAN_ITALIC("[user] opens and checks [src]."),
		SPAN_ITALIC("You open [src] and check for some main information."),
		SPAN_ITALIC("You hear the faint rustle of pages."),
		5
	)
	to_chat(user, info || SPAN_WARNING("[src] is completely blank!"))

/obj/item/weapon/passport/earth
	name = "\improper Earth passport"
	desc = "A passport from Earth, the garden planet within Sol Alliance space."

/obj/item/weapon/passport/venus
	name = "\improper Venusian passport"
	desc = "A passport from Venus, the luxurious acidic jewel within Sol Alliance space."

/obj/item/weapon/passport/luna
	name = "\improper Luna passport"
	desc = "A passport from Luna, the white pearl within Sol Alliance space."

/obj/item/weapon/passport/mars
	name = "\improper Martian passport"
	desc = "A passport from Mars, the coarse ruby within Sol Alliance space."

/obj/item/weapon/passport/silver
	name = "\improper Silversun passport"
	desc = "A passport from Silversun, the Idris investment within Sol Alliance space."

/obj/item/weapon/passport/nhp
	name = "\improper New Hai Phong passport"
	desc = "A passport from New Hai Pong, the ebony gem within Sol Alliance space."

/obj/item/weapon/passport/eri
	name = "\improper Eridani Federation passport"
	desc = "A passport from the Eridani Federation."

/obj/item/weapon/passport/rob
	name = "\improper Republic of Biesel passport"
	desc = "A passport from the Republic of Biesel."

/obj/item/weapon/passport/xan
	name = "\improper Coalition of Colonies passport"
	desc = "A passport from the Coalition of Colonies."

/obj/item/weapon/passport/ely
	name = "\improper Republic of Elyra passport"
	desc = "A passport from the Republic of Elyra."

/obj/item/weapon/passport/dom
	name = "\improper Empire of Dominia passport"
	desc = "A passport from the Empire of Dominia."