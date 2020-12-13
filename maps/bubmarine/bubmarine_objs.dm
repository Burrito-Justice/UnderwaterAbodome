//Wacky water effect thing
/obj/effect/fluid
	color = "#92d2f0"

/obj/effect/fluid_mapped
	color = "#92d2f0"

/obj/effect/flood
	color = "#92d2f0"

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