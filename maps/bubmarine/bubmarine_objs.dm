//Wacky water effect thing
/obj/effect/fluid
	color = "#92d2f0"
	obj_flags = OBJ_FLAG_NOFALL

/obj/effect/fluid/on_update_icon()
	. = ..()
	fluid_amount > FLUID_OVER_MOB_HEAD ? (atom_flags |= ATOM_FLAG_CLIMBABLE) : (atom_flags &= ATOM_FLAG_CLIMBABLE)

/obj/effect/fluid_mapped
	color = "#92d2f0"

/obj/effect/flood
	color = "#92d2f0"
	atom_flags = ATOM_FLAG_NO_TEMP_CHANGE | ATOM_FLAG_CLIMBABLE
	obj_flags = OBJ_FLAG_NOFALL

//Quick weapon stuff
/obj/item/weapon/gun/launcher
	waterproof = 1

/obj/item/weapon/gun/magnetic
	waterproof = 1

/obj/item/weapon/gun/projectile
	waterproof = 1

//ID cards
/obj/item/weapon/card/id/bridge
	name = "identification card"
	desc = "A card issued to bridge staff."
	job_access_type = /datum/job/bridge
	detail_color = COLOR_BLUE_GRAY

//Hats
/obj/item/clothing/head/bub
	name = "utility cover"
	desc = "A navy blue utility cover, for when you're really at a loss as to what to wear to complete your drab sailor look."
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	icon_state = "navyutility"
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')

//Uniforms
/obj/item/clothing/under/bub
	name = "submarine utility uniform"
	desc = "A navy-colored utility uniform in the form of coveralls, typically seen amongst naval crews."
	icon = 'maps/torch/icons/obj/obj_under_solgov.dmi'
	item_icons = list(slot_w_uniform_str = 'maps/torch/icons/mob/onmob_under_solgov.dmi')
	icon_state = "navyutility"
	worn_state = "navyutility"
	starting_accessories = list(/obj/item/clothing/accessory/bub,/obj/item/clothing/accessory/patch)
	sprite_sheets = list(
		SPECIES_UNATHI = 'maps/bubmarine/icons/unathi.dmi'
		)

/obj/item/clothing/under/bub/com
	starting_accessories = list(/obj/item/clothing/accessory/bub/com,/obj/item/clothing/accessory/patch)

/obj/item/clothing/under/bub/sec
	starting_accessories = list(/obj/item/clothing/accessory/bub/sec,/obj/item/clothing/accessory/patch)

/obj/item/clothing/under/bub/med
	starting_accessories = list(/obj/item/clothing/accessory/bub/med,/obj/item/clothing/accessory/patch)

/obj/item/clothing/under/bub/eng
	starting_accessories = list(/obj/item/clothing/accessory/bub/eng,/obj/item/clothing/accessory/patch)

/obj/item/clothing/under/bub/xen
	starting_accessories = list(/obj/item/clothing/accessory/bub/xen,/obj/item/clothing/accessory/patch)

/obj/item/clothing/under/bub/sup
	starting_accessories = list(/obj/item/clothing/accessory/bub/sup,/obj/item/clothing/accessory/patch)

/obj/item/clothing/under/bub/xpd
	starting_accessories = list(/obj/item/clothing/accessory/bub/xpd,/obj/item/clothing/accessory/patch)

/obj/item/clothing/under/bub/srv
	starting_accessories = list(/obj/item/clothing/accessory/bub/srv,/obj/item/clothing/accessory/patch)

/obj/item/clothing/under/bub/alt
	name = "submarine utility fatigues"
	desc = "For when coveralls are somehow impractical, these fatigues are a good alternative."
	icon_state = "navycombat"
	worn_state = "navycombat"
	starting_accessories = list(/obj/item/clothing/accessory/bub/alt,/obj/item/clothing/accessory/patch)

/obj/item/clothing/under/bub/alt/com
	starting_accessories = list(/obj/item/clothing/accessory/bub/com/alt,/obj/item/clothing/accessory/patch)

/obj/item/clothing/under/bub/alt/sec
	starting_accessories = list(/obj/item/clothing/accessory/bub/sec/alt,/obj/item/clothing/accessory/patch)

/obj/item/clothing/under/bub/alt/med
	starting_accessories = list(/obj/item/clothing/accessory/bub/med/alt,/obj/item/clothing/accessory/patch)

/obj/item/clothing/under/bub/alt/eng
	starting_accessories = list(/obj/item/clothing/accessory/bub/eng/alt,/obj/item/clothing/accessory/patch)

/obj/item/clothing/under/bub/alt/xen
	starting_accessories = list(/obj/item/clothing/accessory/bub/xen/alt,/obj/item/clothing/accessory/patch)

/obj/item/clothing/under/bub/alt/sup
	starting_accessories = list(/obj/item/clothing/accessory/bub/sup/alt,/obj/item/clothing/accessory/patch)

/obj/item/clothing/under/bub/alt/xpd
	starting_accessories = list(/obj/item/clothing/accessory/bub/xpd/alt,/obj/item/clothing/accessory/patch)

/obj/item/clothing/under/bub/alt/srv
	starting_accessories = list(/obj/item/clothing/accessory/bub/srv/alt,/obj/item/clothing/accessory/patch)

//Accessories
//Insignia
/obj/item/clothing/accessory/bub
	name = "department insignia"
	desc = "Insignia denoting assignment to a department. These appear blank."
	color = COLOR_WHITE
	icon = 'maps/torch/icons/obj/obj_accessories_solgov.dmi'
	icon_state = "dept_fleet"
	on_rolled = list("down" = "none", "rolled" = "dept_fleet_sleeves")
	slot = ACCESSORY_SLOT_DEPT
	removable = TRUE
	accessory_icons = list(slot_w_uniform_str = 'maps/torch/icons/mob/onmob_accessories_solgov.dmi', slot_wear_suit_str = 'maps/torch/icons/mob/onmob_accessories_solgov.dmi')
	w_class = ITEM_SIZE_TINY

/obj/item/clothing/accessory/bub/alt
	icon_state = "dept_exped"
	on_rolled = list("down" = "none", "rolled" = "dept_exped_sleeves")

/obj/item/clothing/accessory/bub/com
	desc = "Insignia denoting assignment to command. These are gold."
	color = "#e5ea4f"

/obj/item/clothing/accessory/bub/com/alt
	icon_state = "dept_exped"
	on_rolled = list("down" = "none", "rolled" = "dept_exped_sleeves")

/obj/item/clothing/accessory/bub/sec
	desc = "Insignia denoting assignment to security. These are blood red."
	color = "#820000"

/obj/item/clothing/accessory/bub/sec/alt
	icon_state = "dept_exped"
	on_rolled = list("down" = "none", "rolled" = "dept_exped_sleeves")

/obj/item/clothing/accessory/bub/med
	desc = "Insignia denoting assignment to medical. These are blue."
	color = "#4c9ce4"

/obj/item/clothing/accessory/bub/med/alt
	icon_state = "dept_exped"
	on_rolled = list("down" = "none", "rolled" = "dept_exped_sleeves")

/obj/item/clothing/accessory/bub/eng
	desc = "Insignia denoting assignment to engineering. These are orange."
	color = "#ff7f00"

/obj/item/clothing/accessory/bub/eng/alt
	icon_state = "dept_exped"
	on_rolled = list("down" = "none", "rolled" = "dept_exped_sleeves")

/obj/item/clothing/accessory/bub/xen
	desc = "Insignia denoting assignment to research. These are purple."
	color = "#68099e"

/obj/item/clothing/accessory/bub/xen/alt
	icon_state = "dept_exped"
	on_rolled = list("down" = "none", "rolled" = "dept_exped_sleeves")

/obj/item/clothing/accessory/bub/sup
	desc = "Insignia denoting assignment to cargo. These are brown."
	color = "#bb9042"

/obj/item/clothing/accessory/bub/sup/alt
	icon_state = "dept_exped"
	on_rolled = list("down" = "none", "rolled" = "dept_exped_sleeves")

/obj/item/clothing/accessory/bub/xpd
	desc = "Insignia denoting assignment to exploration. These are red."
	color = "#bf0000"

/obj/item/clothing/accessory/bub/xpd/alt
	icon_state = "dept_exped"
	on_rolled = list("down" = "none", "rolled" = "dept_exped_sleeves")

/obj/item/clothing/accessory/bub/srv
	desc = "Insignia denoting assignment to culinary service. These are green."
	color = "#6eaa2c"

/obj/item/clothing/accessory/bub/srv/alt
	icon_state = "dept_exped"
	on_rolled = list("down" = "none", "rolled" = "dept_exped_sleeves")

//Shoulder patches
/obj/item/clothing/accessory/patch
	name = "Stingray mission patch"
	desc = "A patch representing the ZRS Stingray and its mission. \"Swim the seas 'til the sun shines through the leagues of ice.\""
	icon = 'maps/bubmarine/icons/accessories.dmi'
	icon_state = "ray"
	slot = ACCESSORY_SLOT_INSIGNIA
	accessory_icons = list(slot_w_uniform_str = 'maps/bubmarine/icons/accessories_onmob.dmi', slot_wear_suit_str = 'maps/bubmarine/icons/accessories_onmob.dmi')
	on_rolled = list("down" = "none")

/obj/item/clothing/accessory/patch/zh
	name = "Zeng-Hu Pharm. patch"
	desc = "A patch denoting which government/corporate entity you represent. This one is obviously the logo of Zeng-Hu. \"To building a brighter future.\""
	icon_state = "zh"

/obj/item/clothing/accessory/patch/ee
	name = "Einstein Engines patch"
	desc = "A patch denoting which government/corporate entity you represent. This one has two Es, representing Einstein Engines. \"Lead by our history, leading our future.\""
	icon_state = "ee"

/obj/item/clothing/accessory/patch/sol
	name = "Sol Alliance patch"
	desc = "A patch denoting which government/corporate entity you represent. This one has a sun over a blue and white flag, representing the Sol Alliance. \"Our Solarian Sovereignty, undisputed; \
	Our vision, transcendent.\""
	icon_state = "sol"

/obj/item/clothing/accessory/patch/id
	name = "Idris Incorporated patch"
	desc = "A patch denoting which government/corporate entity you represent. This one has Idris Incorporated's distinctive teal logo. \"Astronomical Figures. Unlimited Power.\""
	icon_state = "id"

//Suits and stuff
/obj/item/clothing/suit/storage/hooded/wintercoat/bub
	name = "navy winter coat"
	icon = 'maps/torch/icons/obj/obj_suit_solgov.dmi'
	icon_state = "coatfl"
	item_icons = list(slot_wear_suit_str = 'maps/torch/icons/mob/onmob_suit_solgov.dmi')
	armor = list(
		melee = ARMOR_MELEE_SMALL,
		bullet = ARMOR_BALLISTIC_MINOR,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_MINOR
		)
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA)

/obj/item/clothing/head/helmet/space/void/bub
	name = "pressure suit helmet"
	desc = "A large rounded helmet that probably belongs on a pressure suit. Compared to a space suit, the helmet alone looks like a tank."
	icon_state = "divinghelmet"
	item_state = "divinghelmet"
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	species_restricted = list(SPECIES_SKRELL,SPECIES_HUMAN,SPECIES_IPC,SPECIES_UNATHI)
	light_overlay = "helmet_light_dual"

/obj/item/clothing/suit/space/void/bub
	name = "pressure suit"
	desc = "A bulky suit to be sure, these things are built to allow you to dive to extremely deep points in the Earth's oceans. In other words, it keeps you from being crushed."
	icon_state = "divingsuit"
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	species_restricted = list(SPECIES_SKRELL,SPECIES_HUMAN,SPECIES_IPC,SPECIES_UNATHI)

/obj/item/clothing/suit/space/void/bub/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 2

/obj/item/clothing/suit/space/void/bub/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/bub
	boots = /obj/item/clothing/shoes/magboots

/obj/item/clothing/head/helmet/space/void/engineering/alt/bub
	name = "engineering pressure suit helmet"
	desc = "A very bulky looking helmet designed to be mounted on a pressure suit. It has lil' cooling fans in there!"
	icon_state = "divinghelmet_in"
	item_state = "divinghelmet_in"
	species_restricted = list(SPECIES_SKRELL,SPECIES_HUMAN,SPECIES_IPC,SPECIES_UNATHI)

/obj/item/clothing/suit/space/void/engineering/alt/bub
	name = "enginering pressure suit"
	desc = "A very bulky, almost mean-looking pressure suit built to withstand the crushing depths of the Earth's ocean and more. Europa's waters are no match."
	icon_state = "divingsuit_in"
	species_restricted = list(SPECIES_SKRELL,SPECIES_HUMAN,SPECIES_IPC,SPECIES_UNATHI)

/obj/item/clothing/suit/space/void/engineering/alt/bub/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 2

/obj/item/clothing/suit/space/void/engineering/alt/bub/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/engineering/alt/bub
	boots = /obj/item/clothing/shoes/magboots

/obj/item/clothing/head/helmet/space/void/medical/alt/bub
	name = "streamlined medical pressure suit helmet"
	desc = "Your typical pressure suit helmet, except it's in white and has foregone the reinforcements typically seen on these sorts of helmets."
	icon_state = "divinghelmet_med"
	item_state = "divinghelmet_med"
	light_overlay = "helmet_light_dual"
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE
	species_restricted = list(SPECIES_SKRELL,SPECIES_HUMAN,SPECIES_IPC,SPECIES_UNATHI)

/obj/item/clothing/suit/space/void/medical/alt/bub
	name = "streamlined medical pressure suit"
	icon_state = "divingsuit_med"
	desc = "A flashier pressure suit sporting blue medical crosses for easier identification. It looks a bit lighter than most pressure suits."
	allowed = list(/obj/item/device/flashlight,/obj/item/weapon/tank,/obj/item/device/suit_cooling_unit,/obj/item/weapon/storage/firstaid,/obj/item/device/scanner/health,/obj/item/stack/medical)
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE
	species_restricted = list(SPECIES_SKRELL,SPECIES_HUMAN,SPECIES_IPC,SPECIES_UNATHI)

/obj/item/clothing/suit/space/void/medical/alt/bub/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 1

/obj/item/clothing/suit/space/void/medical/alt/bub/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/medical/alt/bub
	boots = /obj/item/clothing/shoes/magboots

//Gloves
/obj/item/clothing/gloves/thick/duty/bub
	name = "solgov duty gloves parent object"
	desc = "You should never see this."
	item_icons = list(slot_gloves_str = 'maps/torch/icons/mob/onmob_hands_solgov.dmi')
	icon = 'maps/torch/icons/obj/obj_hands_solgov.dmi'

/obj/item/clothing/gloves/thick/duty/bub/eng
	name = "engineering duty gloves"
	desc = "These black duty gloves are made from durable synthetic materials, and have an orange accent."
	icon_state = "duty_gloves_eng"
	item_state = "duty_gloves_eng"

/obj/item/clothing/gloves/thick/duty/bub/cmd
	name = "command duty gloves"
	desc = "These black duty gloves are made from durable synthetic materials, and have a gold accent."
	icon_state = "duty_gloves_cmd"
	item_state = "duty_gloves_cmd"

/obj/item/clothing/gloves/thick/duty/bub/sci
	name = "exploration duty gloves"
	desc = "These black duty gloves are made from durable synthetic materials, and have a purple accent."
	icon_state = "duty_gloves_exp"
	item_state = "duty_gloves_exp"

/obj/item/clothing/gloves/thick/duty/bub/med
	name = "medical duty gloves"
	desc = "These black duty gloves are made from durable synthetic materials, and have a blue accent."
	icon_state = "duty_gloves_med"
	item_state = "duty_gloves_med"

/obj/item/clothing/gloves/thick/duty/bub/sec
	name = "security duty gloves"
	desc = "These black duty gloves are made from durable synthetic materials, and have a red accent."
	icon_state = "duty_gloves_sec"
	item_state = "duty_gloves_sec"

/obj/item/clothing/gloves/thick/duty/bub/sup
	name = "supply duty gloves"
	desc = "These black duty gloves are made from durable synthetic materials, and have a brown accent."
	icon_state = "duty_gloves_sup"
	item_state = "duty_gloves_sup"

//Lockers and trash
/obj/structure/closet/secure_closet/captains/bub
	name = "captain's locker"
	req_access = list(access_captain)
	closet_appearance = /decl/closet_appearance/secure_closet/command

/obj/structure/closet/secure_closet/captains/bub/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/captain, /obj/item/weapon/storage/backpack/satchel/cap)),
		new/datum/atom_creator/simple(/obj/item/weapon/storage/backpack/dufflebag/captain, 50),
		/obj/item/weapon/gun/energy/gun,
		/obj/item/clothing/suit/captunic,
		/obj/item/clothing/suit/captunic/capjacket,
		/obj/item/clothing/suit/storage/hooded/wintercoat/bub,
		/obj/item/clothing/head/caphat/cap,
		/obj/item/clothing/gloves/captain,
		/obj/item/clothing/gloves/thick/duty/bub/cmd,
		/obj/item/clothing/under/captainformal,
		/obj/item/clothing/accessory/armband/bluegold,
		/obj/item/weapon/melee/telebaton,
		/obj/item/clothing/suit/armor/pcarrier/navy,
		/obj/item/clothing/accessory/armorplate/medium,
		/obj/item/clothing/head/helmet
	)

/obj/structure/closet/secure_closet/hos/bub
	name = "security marshal's locker"
	req_access = list(access_hos)
	closet_appearance = /decl/closet_appearance/secure_closet/security/hos

/obj/structure/closet/secure_closet/hos/bub/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/security, /obj/item/weapon/storage/backpack/satchel/sec)),
		/obj/item/clothing/head/HoS,
		/obj/item/clothing/head/beret/sec/navy/hos,
		/obj/item/clothing/glasses/sunglasses/sechud,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/clothing/glasses/hud/security,
		/obj/item/clothing/mask/gas/half,
		/obj/item/clothing/suit/armor/hos/jensen,
		/obj/item/clothing/suit/armor/hos,
		/obj/item/clothing/suit/storage/hooded/wintercoat/bub,
		/obj/item/clothing/under/rank/head_of_security/jensen,
		/obj/item/clothing/under/rank/head_of_security/corp,
		/obj/item/clothing/accessory/storage/holster/waist,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/clothing/accessory/armband,
		/obj/item/clothing/gloves/thick/duty/bub/sec,
		/obj/item/weapon/storage/belt/holster/security,
		/obj/item/device/flash,
		/obj/item/weapon/melee/baton/loaded,
		/obj/item/weapon/melee/telebaton,
		/obj/item/device/holowarrant,
		/obj/item/taperoll/police,
		/obj/item/weapon/shield/riot,
		/obj/item/weapon/reagent_containers/spray/pepper,
		/obj/item/weapon/gun/energy/gun/secure/preauthorized,
		/obj/item/clothing/head/helmet,
		/obj/item/clothing/accessory/armor/helmcover/navy,
		/obj/item/clothing/suit/armor/pcarrier/navy,
		/obj/item/clothing/accessory/armorplate/medium,
		/obj/item/clothing/accessory/armguards/navy,
		/obj/item/clothing/accessory/legguards/navy,
		/obj/item/clothing/accessory/storage/pouches/navy
	)

/obj/structure/closet/secure_closet/medical3
	name = "medical doctor's locker"
	req_access = list(access_medical_equip)
	closet_appearance = /decl/closet_appearance/secure_closet/medical/alt

/obj/structure/closet/secure_closet/medical3/bub/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/medic, /obj/item/weapon/storage/backpack/satchel/med)),
		new/datum/atom_creator/simple(/obj/item/weapon/storage/backpack/dufflebag/med, 50),
		/obj/item/clothing/under/rank/medical,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/suit/storage/hooded/wintercoat/bub,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/clothing/gloves/thick/duty/bub/med,
		/obj/item/clothing/shoes/white,
		/obj/item/taperoll/medical,
		/obj/item/weapon/storage/belt/medical,
		/obj/item/clothing/accessory/stethoscope,
		/obj/item/clothing/accessory/armband/medblue,
		RANDOM_SCRUBS,
		RANDOM_SCRUBS
	)

/obj/structure/closet/secure_closet/paramedic
	name = "paramedic locker"
	desc = "Supplies for a first responder."
	closet_appearance = /decl/closet_appearance/secure_closet/medical
	req_access = list(access_medical_equip)

/obj/structure/closet/secure_closet/paramedic/bub/WillContain()
	return list(
		/obj/item/weapon/storage/box/autoinjectors,
		/obj/item/weapon/storage/box/syringes,
		/obj/item/weapon/reagent_containers/glass/bottle/inaprovaline,
		/obj/item/weapon/reagent_containers/glass/bottle/antitoxin,
		/obj/item/weapon/storage/belt/medical/emt,
		/obj/item/clothing/mask/gas/half,
		/obj/item/clothing/suit/storage/toggle/fr_jacket,
		/obj/item/clothing/suit/storage/hooded/wintercoat/bub,
		/obj/item/clothing/gloves/thick/duty/bub/med,
		/obj/item/device/flashlight,
		/obj/item/weapon/tank/emergency/oxygen/engi,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/device/scanner/health,
		/obj/random/medical,
		/obj/item/weapon/crowbar,
		/obj/item/weapon/extinguisher/mini,
		/obj/item/weapon/storage/box/freezer,
		/obj/item/clothing/accessory/storage/white_vest,
		/obj/item/clothing/accessory/stethoscope,
		/obj/item/clothing/accessory/armband/medblue
	)

/obj/structure/closet/secure_closet/engineering_personal/bub
	name = "engineer's locker"
	req_access = list(access_engine_equip)
	closet_appearance = /decl/closet_appearance/secure_closet/engineering

/obj/structure/closet/secure_closet/engineering_personal/bub/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/clothing/accessory/storage/brown_vest = 70, /obj/item/clothing/accessory/storage/webbing = 30)),
		new/datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/industrial, /obj/item/weapon/storage/backpack/satchel/eng)),
		new/datum/atom_creator/simple(/obj/item/weapon/storage/backpack/dufflebag/eng, 50),
		/obj/item/weapon/storage/toolbox/mechanical,
		/obj/item/clothing/suit/storage/hazardvest,
		/obj/item/clothing/mask/gas/radical,
		/obj/item/clothing/gloves/thick/duty/bub/eng,
		/obj/item/taperoll/engineering,
		/obj/item/clothing/accessory/armband/engine
	)

/obj/structure/closet/secure_closet/atmos_personal/bub
	name = "atmos technician's locker"
	req_access = list(access_atmospherics)
	closet_appearance = /decl/closet_appearance/secure_closet/engineering/atmos

/obj/structure/closet/secure_closet/atmos_personal/bub/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/clothing/accessory/storage/brown_vest = 70, /obj/item/clothing/accessory/storage/webbing = 30)),
		new/datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/industrial, /obj/item/weapon/storage/backpack/satchel/eng)),
		new/datum/atom_creator/simple(/obj/item/weapon/storage/backpack/dufflebag/eng, 50),
		/obj/item/clothing/suit/fire/firefighter,
		/obj/item/device/flashlight,
		/obj/item/weapon/extinguisher,
		/obj/item/clothing/suit/storage/hazardvest,
		/obj/item/clothing/mask/gas/radical,
		/obj/item/clothing/gloves/thick/duty/bub/eng,
		/obj/item/taperoll/atmos,
		/obj/item/clothing/accessory/armband/engine
	)

/obj/structure/closet/secure_closet/engineering_electrical/bub
	name = "electrical supplies"
	req_access = list(access_engine_equip)
	closet_appearance = /decl/closet_appearance/secure_closet/engineering/electrical

/obj/structure/closet/secure_closet/engineering_electrical/bub/WillContain()
	return list(
		/obj/item/clothing/gloves/insulated = 3,
		/obj/item/weapon/storage/toolbox/electrical = 3,
		/obj/item/weapon/module/power_control = 3,
		/obj/item/device/multitool = 3
	)

/obj/structure/closet/secure_closet/bridge
	name = "bridge crew locker"
	req_access = list(access_hop)
	closet_appearance = /decl/closet_appearance/secure_closet/command/hop

/obj/structure/closet/secure_closet/bridge/WillContain()
	return list(
		/obj/item/weapon/pen,
		/obj/item/device/tape/random,
		/obj/item/device/taperecorder,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/weapon/material/clipboard,
		/obj/item/weapon/folder/blue,
		/obj/item/weapon/storage/belt/general,
		/obj/item/clothing/gloves/thick/duty/bub/cmd,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/dufflebag, /obj/item/weapon/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/device/flashlight, /obj/item/device/flashlight/flare, /obj/item/device/flashlight/flare/glowstick/random))
	)

/obj/structure/closet/secure_closet/xenobio/bub
	name = "xenobiologist's locker"
	req_access = list(access_xenobiology)
	closet_appearance = /decl/closet_appearance/secure_closet/expedition/science

/obj/structure/closet/secure_closet/xenobio/bub/WillContain()
	return list(
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/messenger/tox, /obj/item/weapon/storage/backpack/satchel/tox)),
		/obj/item/clothing/under/rank/scientist,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/shoes/white,
		/obj/item/device/scanner/xenobio,
		/obj/item/clothing/mask/gas/radical,
		/obj/item/clothing/gloves/latex,
		/obj/item/weapon/material/clipboard,
		/obj/item/weapon/storage/belt/general
	)

/obj/structure/closet/secure_closet/quartermaster/bub
	name = "quartermaster's locker"
	req_access = list(access_qm)
	closet_appearance = /decl/closet_appearance/secure_closet/cargo/qm

/obj/structure/closet/secure_closet/quartermaster/bub/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack = 75,  /obj/item/weapon/storage/backpack/satchel/grey = 25)),
		new/datum/atom_creator/simple(/obj/item/weapon/storage/backpack/dufflebag, 25),
		/obj/item/clothing/under/rank/cargotech,
		/obj/item/clothing/shoes/brown,
		/obj/item/clothing/gloves/thick/duty/bub/sup,
		/obj/item/clothing/suit/fire/firefighter,
		/obj/item/weapon/tank/emergency/oxygen,
		/obj/item/clothing/mask/gas/radical,
		/obj/item/clothing/head/soft,
	)

/obj/item/weapon/storage/box/insignia
	name = "box of insignias"
	desc = "Crewman looking for a change of pace? Rip his colors off and give him some new ones!"
	max_storage_space = 54
	startswith = list(
		/obj/item/clothing/accessory/bub = 3,
		/obj/item/clothing/accessory/bub/alt = 3,
		/obj/item/clothing/accessory/bub/com = 3,
		/obj/item/clothing/accessory/bub/com/alt = 3,
		/obj/item/clothing/accessory/bub/sec = 3,
		/obj/item/clothing/accessory/bub/sec/alt = 3,
		/obj/item/clothing/accessory/bub/med = 3,
		/obj/item/clothing/accessory/bub/med/alt = 3,
		/obj/item/clothing/accessory/bub/eng = 3,
		/obj/item/clothing/accessory/bub/eng/alt = 3,
		/obj/item/clothing/accessory/bub/xen = 3,
		/obj/item/clothing/accessory/bub/xen/alt = 3,
		/obj/item/clothing/accessory/bub/sup = 3,
		/obj/item/clothing/accessory/bub/sup/alt = 3,
		/obj/item/clothing/accessory/bub/xpd = 3,
		/obj/item/clothing/accessory/bub/xpd/alt = 3,
		/obj/item/clothing/accessory/bub/srv = 3,
		/obj/item/clothing/accessory/bub/srv/alt = 3
		)

/obj/machinery/suit_storage_unit/engineering/alt/bub
	name = "Engineering Pressure Suit Storage Unit"
	suit= /obj/item/clothing/suit/space/void/engineering/alt/bub
	helmet = /obj/item/clothing/head/helmet/space/void/engineering/alt/bub
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/weapon/tank/oxygen
	mask = /obj/item/clothing/mask/breath/scba
	req_access = list(access_construction)
	islocked = 1

/obj/machinery/suit_storage_unit/medical/alt/bub
	name = "Medical Pressure Suit Storage Unit"
	suit= /obj/item/clothing/suit/space/void/medical/alt/bub
	helmet = /obj/item/clothing/head/helmet/space/void/medical/alt/bub
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/weapon/tank/oxygen
	mask = /obj/item/clothing/mask/breath/scba
	req_access = list(access_medical)
	islocked = 1

/obj/machinery/suit_storage_unit/bub
	name = "Pressure Suit Storage Unit"
	suit= /obj/item/clothing/suit/space/void/bub
	helmet = /obj/item/clothing/head/helmet/space/void/bub
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/weapon/tank/oxygen
	mask = /obj/item/clothing/mask/breath/scba
	islocked = 0

//Submarine propeller stuff
/obj/machinery/ion_engine/bub
	name = "submarine screw"
	desc = "Your typical massive propeller that you'd usually see on something like a boat."
	icon = 'maps/bubmarine/icons/propellers.dmi'
	icon_state = "sub_screw"
	density = 1
	on = 0

/obj/machinery/ion_engine/bub/update_icon()
	if(!on)
		icon_state = "sub_screw_off"
	else
		icon_state = "sub_screw[on ? "" : "_off"]"

/obj/machinery/ion_engine/bub/Initialize()
	. = ..()
	update_icon()

/obj/machinery/ion_engine/bub/Bumped(mob/living/M)
	if(istype(M))
		if(on == 1)
			M.take_organ_damage(rand(40,80))
			playsound(src, 'sound/weapons/bladeslice.ogg', 50, 1)
	..()

/obj/machinery/ion_engine/bub/large
	icon = 'maps/bubmarine/icons/big_propellers.dmi'
	icon_state = "sub_screw"
	generated_thrust = 25
	burn_cost = 50000
	idle_power_usage = 30000

/obj/machinery/ion_engine/bub/large/Bumped(mob/living/M)
	if(istype(M))
		if(on == 1)
			M.gib()
	..()

/obj/structure/shuttle/engine/heater/bub
	icon = 'maps/bubmarine/icons/propellers.dmi'
	icon_state = "subheater"

/obj/structure/shuttle/engine/heater/bub/large
	icon = 'maps/bubmarine/icons/big_propellers.dmi'
	icon_state = "bigsubheater"

/obj/structure/engine
	name = "propulsion system"
	desc = "An absolutely colossal propulsion unit, which takes power from the engine to turn the shaft to spin the screws so that the sub can move."
	icon = 'maps/bubmarine/icons/engine_96x.dmi'
	icon_state = "engine_unit"
	anchored = 1
	density = 1

/obj/structure/engine/axle
	name = "propulsion shaft"
	desc = "A large, spinning shaft that is most likely turning the crews on the outside of the sub."
	icon = 'maps/bubmarine/icons/engine.dmi'
	icon_state = "engine_axle"

//SMES
/obj/machinery/power/smes/buildable/prop
	uncreated_component_parts = list(
		/obj/item/weapon/stock_parts/smes_coil/super_io = 2,
		)

/obj/machinery/power/smes/buildable/engine
	uncreated_component_parts = list(
		/obj/item/weapon/stock_parts/smes_coil/super_io = 2,
		/obj/item/weapon/stock_parts/smes_coil = 1,
		)

obj/machinery/power/smes/buildable/engine/Initialize()
	. = ..()
	charge = capacity
	input_attempt = TRUE
	output_attempt = TRUE

/obj/machinery/power/smes/buildable/main
	uncreated_component_parts = list(
		/obj/item/weapon/stock_parts/smes_coil = 4,
		)

obj/machinery/power/smes/buildable/main/Initialize()
	. = ..()
	charge = capacity
	input_attempt = TRUE
	output_attempt = TRUE
	input_level = input_level_max
	output_level = output_level_max

//Flora maybe??? Oh god these sprites
/obj/structure/flora/bub
	name = "seaweed"
	desc = "If you're reading this then I forgot to populate the desc var on a plant lol please ahelp this."
	icon = 'maps/bubmarine/icons/flora.dmi'

/obj/structure/flora/bub/violet
	name = "violet shrub"
	desc = "A short shrub with violet, feather-like foilage. It looks like it'd be soft to touch."
	icon_state = "violet"

/obj/structure/flora/bub/teal
	name = "teal tendrils"
	desc = "A cluster of odd-looking tendrils that shift from purple to teal, oddly enough."
	icon_state = "teal"

/obj/structure/flora/bub/red
	name = "red reeds"
	desc = "A set of bright red and orange reeds, looking quite stick-y and brittle."
	icon_state = "red"

/obj/structure/flora/bub/red/Initialize()
	. = ..()
	pixel_x = rand(-12,12)
	pixel_y = rand(-12,12)

/obj/structure/flora/bub/purple
	name = "purple nettle"
	desc = "A large nettle of sorts that looks like a large leaf of some kind."
	icon_state = "purple"

/obj/structure/flora/bub/maroon
	name = "maroon tubes"
	desc = "Large reed-like tubes protrude from the floor. It's possible it's a sponge of some kind."
	icon_state = "maroon"

/obj/structure/flora/bub/cyan
	name = "cyan groundcover"
	desc = "Some rather sharp looking petals and bloomage are scattered about the floor. Don't get poked!"
	icon_state = "cyan"

/obj/structure/flora/bub/yellow
	name = "yellow stalks"
	desc = "A set of wiggly yellow stocks flows back and forth here."
	icon_state = "yellow"

//Kelp and other 32x64 stuff (maybe)
/obj/structure/flora/bub/kelp
	name = "kelp"
	desc = "A lone stalk of tall kelp, waving and swaying in the ocean current."
	icon = 'maps/bubmarine/icons/flora_64x.dmi'
	icon_state = "kelp"
	layer = MOB_LAYER + 0.1
	color = "#8fdb48"

/obj/structure/flora/bub/kelp/Initialize()
	. = ..()
	icon_state = pick("kelp","kelp2")
	pixel_x = rand(-24,24)
	pixel_y = rand(-24,24)
	color = pick("#8fdb48","#72a83e","#4ed126","#98b514","#c26936")

/obj/structure/flora/bub/kelp/icy
	name = "ice kelp"
	desc = "A blue-looking strand of kelp, rooted harshly into the floor."

/obj/structure/flora/bub/kelp/icy/Initialize()
	. = ..()
	icon_state = pick("kelp","kelp2")
	pixel_x = rand(-24,24)
	pixel_y = rand(-24,24)
	color = pick("#77eded","#74b0b0","#74a0b0","#3a94b5","#4592d9")

/obj/effect/floor_decal/stairs
	name = "stairs decal"
	icon = 'maps/bubmarine/icons/stairs.dmi'
	icon_state = "stage_stairs"

/obj/effect/floor_decal/stairs/top
	icon_state = "ramptop"

/obj/effect/floor_decal/stairs/bottom
	icon_state = "rampbottom"