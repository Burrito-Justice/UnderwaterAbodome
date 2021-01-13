/datum/gear/accessory/patch
	display_name = "shoulder patch selection"
	description = "A selection of shoulder patches representing different factions. You should pick one!"
	path = /obj/item/clothing/accessory
	cost = 1

/datum/gear/accessory/patch/New()
	..()
	var/subpatches = list()
	subpatches["Zeng-Hu patch"] = /obj/item/clothing/accessory/patch/zh
	subpatches["Einstein Engines patch"] = /obj/item/clothing/accessory/patch/ee
	subpatches["Sol Alliance patch"] = /obj/item/clothing/accessory/patch/sol
	gear_tweaks += new/datum/gear_tweak/path(subpatches)

/datum/gear/suit/navywinter
	display_name = "winter coat, navy"
	description = "Your regular poofy winter coat, just in navy colors and with gray fur."
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/bub
	cost = 1