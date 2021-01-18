/datum/gear/accessory/patch
	display_name = "shoulder patch selection"
	description = "A selection of shoulder patches representing different factions. You should pick one!"
	path = /obj/item/clothing/accessory
	cost = 0

/datum/gear/accessory/patch/New()
	..()
	var/subpatches = list()
	subpatches["Zeng-Hu patch"]          = /obj/item/clothing/accessory/patch/zh
	subpatches["Einstein Engines patch"] = /obj/item/clothing/accessory/patch/ee
	subpatches["Sol Alliance patch"]     = /obj/item/clothing/accessory/patch/sol
	subpatches["Idris Incorporated patch"] = /obj/item/clothing/accessory/patch/id
	gear_tweaks += new/datum/gear_tweak/path(subpatches)

/datum/gear/suit/navywinter
	display_name = "winter coat, navy"
	description = "Your regular poofy winter coat, just in navy colors and with gray fur."
	path = /obj/item/clothing/suit/storage/hooded/wintercoat/bub
	cost = 1

/datum/gear/head/navyhat
	display_name = "utility cover"
	description = "For when you're really at a loss as to what to wear to complete your drab sailor look."
	path = /obj/item/clothing/head/bub
	cost = 0

/datum/gear/uniform/fatigues
	display_name = "alternative submarine uniform selection"
	description = "An alternative selection of default navy uniform. Please pick the one corresponding to your \
	department. This won't work if you're Unathi!"
	path = /obj/item/clothing/under/bub/alt
	cost = 0

/datum/gear/uniform/fatigues/New()
	..()
	var/fatigues = list()
	fatigues["Assistant fatigues"]   = /obj/item/clothing/under/bub/alt
	fatigues["Command fatigues"]     = /obj/item/clothing/under/bub/alt/com
	fatigues["Security fatigues"]    = /obj/item/clothing/under/bub/alt/sec
	fatigues["Medical fatigues"]     = /obj/item/clothing/under/bub/alt/med
	fatigues["Engineering fatigues"] = /obj/item/clothing/under/bub/alt/eng
	fatigues["Research fatigues"]    = /obj/item/clothing/under/bub/alt/xen
	fatigues["Supply fatigues"]      = /obj/item/clothing/under/bub/alt/sup
	fatigues["Expedition fatigues"]  = /obj/item/clothing/under/bub/alt/xpd
	fatigues["Service fatigues"]     = /obj/item/clothing/under/bub/alt/srv
	gear_tweaks += new/datum/gear_tweak/path(fatigues)