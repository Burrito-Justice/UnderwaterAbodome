//Wacky water effect thing
/obj/effect/fluid
	color = "#92d2f0"

/obj/effect/fluid_mapped
	color = "#92d2f0"

/obj/effect/flood
	color = "#92d2f0"

//ID cards
/obj/item/weapon/card/id/bridge
	name = "identification card"
	desc = "A card issued to bridge staff."
	job_access_type = /datum/job/bridge
	detail_color = COLOR_BLUE_GRAY

//Uniforms
/obj/item/clothing/under/bub
	name = "submarine utility uniform"
	desc = "A navy-colored utility uniform in the form of coveralls, typically seen amongst naval crews."
	icon = 'maps/torch/icons/obj/obj_under_solgov.dmi'
	item_icons = list(slot_w_uniform_str = 'maps/torch/icons/mob/onmob_under_solgov.dmi')
	icon_state = "navyutility"
	worn_state = "navyutility"
	starting_accessories = list(/obj/item/clothing/accessory/bub)

/obj/item/clothing/under/bub/com
	starting_accessories = list(/obj/item/clothing/accessory/bub/com)

/obj/item/clothing/under/bub/sec
	starting_accessories = list(/obj/item/clothing/accessory/bub/sec)

/obj/item/clothing/under/bub/med
	starting_accessories = list(/obj/item/clothing/accessory/bub/med)

/obj/item/clothing/under/bub/eng
	starting_accessories = list(/obj/item/clothing/accessory/bub/eng)

/obj/item/clothing/under/bub/xen
	starting_accessories = list(/obj/item/clothing/accessory/bub/xen)

/obj/item/clothing/under/bub/sup
	starting_accessories = list(/obj/item/clothing/accessory/bub/sup)

/obj/item/clothing/under/bub/xpd
	starting_accessories = list(/obj/item/clothing/accessory/bub/xpd)

/obj/item/clothing/under/bub/srv
	starting_accessories = list(/obj/item/clothing/accessory/bub/srv)

//Accessories
/obj/item/clothing/accessory/bub
	name = "department insignia"
	desc = "Insignia denoting assignment to a department. These appear blank."
	color = COLOR_WHITE
	icon = 'maps/torch/icons/obj/obj_accessories_solgov.dmi'
	icon_state = "dept_fleet"
	on_rolled = list("down" = "none", "rolled" = "dept_fleet_sleeves")
	slot = ACCESSORY_SLOT_DEPT
	removable = FALSE
	accessory_icons = list(slot_w_uniform_str = 'maps/torch/icons/mob/onmob_accessories_solgov.dmi', slot_wear_suit_str = 'maps/torch/icons/mob/onmob_accessories_solgov.dmi')

/obj/item/clothing/accessory/bub/com
	desc = "Insignia denoting assignment to a department. These are gold."
	color = "#e5ea4f"

/obj/item/clothing/accessory/bub/sec
	desc = "Insignia denoting assignment to a department. These are blood red."
	color = "#820000"

/obj/item/clothing/accessory/bub/med
	desc = "Insignia denoting assignment to a department. These are blue."
	color = "#4c9ce4"

/obj/item/clothing/accessory/bub/eng
	desc = "Insignia denoting assignment to a department. These are orange."
	color = "#ff7f00"

/obj/item/clothing/accessory/bub/xen
	desc = "Insignia denoting assignment to a department. These are purple."
	color = "#68099e"

/obj/item/clothing/accessory/bub/sup
	desc = "Insignia denoting assignment to a department. These are brown."
	color = "#bb9042"

/obj/item/clothing/accessory/bub/xpd
	desc = "Insignia denoting assignment to a department. These are red."
	color = "#bf0000"

/obj/item/clothing/accessory/bub/srv
	desc = "Insignia denoting assignment to a department. These are green."
	color = "#6eaa2c"

//Suits
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
		/obj/item/device/radio/off,
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
		/obj/item/clothing/mask/gas,
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
		/obj/item/clothing/mask/gas,
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

//Submarine propeller stuff
/obj/machinery/ion_engine
	name = "submarine screw"
	desc = "Your typical massive propeller that you'd usually see on something like a boat."
	icon = 'maps/bubmarine/icons/propellers.dmi'
	icon_state = "sub_screw"

/obj/machinery/ion_engine/large
	icon = 'maps/bubmarine/icons/big_propellers.dmi'
	icon_state = "bigsub_screw"

/obj/structure/shuttle/engine/heater/sub
	icon = 'maps/bubmarine/icons/propellers.dmi'
	icon_state = "subheater"

/obj/structure/shuttle/engine/heater/sub/large
	icon = 'maps/bubmarine/icons/big_propellers.dmi'
	icon_state = "bigsubheater"