//B A T S H A R K
/mob/living/simple_animal/hostile/retaliate/batshark
	name = "batshark"
	desc = "A disturbing sight to be sure, this shark-like creature has a massive mouth and no eyes. The sounds it makes are unsettling, to say the least."
	icon = 'maps/bubmarine/icons/mob/batshark.dmi'
	icon_state = "batshark"
	icon_living = "batshark"
	icon_dead = "batshark_dead"
	emote_hear = list("screeches","wails","roars")
	faction = "batshark"
	mob_size = MOB_LARGE
	maxHealth = 40
	health = 40
	harm_intent_damage = 3
	melee_damage_lower = 10
	melee_damage_upper = 13
	melee_damage_flags = DAM_SHARP

	meat_type = /obj/item/weapon/reagent_containers/food/snacks/fish/shark
	meat_amount = 3
	bone_amount = 5
	skin_amount = 5
	bone_material = MATERIAL_BONE_FISH
	skin_material = MATERIAL_SKIN_FISH

//G R E A T E R  E U R O P A N  C A V E  C R A B
/mob/living/simple_animal/hostile/retaliate/cavecrab
	name = "greater cave crab"
	desc = "A rather tall crab, and a common sight. Huge beady eyes penetrate the soul, and the sounds its legs make against metal is unnerving."
	icon = 'maps/bubmarine/icons/mob/cavecrab.dmi'
	icon_state = "cavecrab"
	icon_living = "cavecrab"
	icon_dead = "cavecrab_dead"
	emote_hear = list("clicks","crackles","gurgles")
	emote_see = list("clicks its claws","snaps at something")
	faction = "crab"
	mob_size = MOB_LARGE
	maxHealth = 30
	health = 30
	harm_intent_damage = 1
	melee_damage_lower = 8
	melee_damage_upper = 10
	melee_damage_flags = DAM_EDGE
	natural_armor = list(
		melee = ARMOR_MELEE_RESISTANT
		)

	meat_type = /obj/item/weapon/reagent_containers/food/snacks/fish
	meat_amount = 2
	bone_amount = 0
	skin_amount = 0
	bone_material = MATERIAL_BONE_FISH
	skin_material = MATERIAL_SKIN_FISH

//E U R O P A N  J E L L Y F I S H
/mob/living/simple_animal/jellyfish
	name = "europan jellyfish"
	desc = "A jellyfish. It's wide and its tendrils look at least a little concerning. More worryingly, though, is that this looks like the least threatening thing on Europa."
	icon = 'maps/bubmarine/icons/mob/jellyfish.dmi'
	icon_state = "jelly"
	icon_living = "jelly"
	icon_dead = "jelly_dead"
	emote_see = list("bloops","blups","bobs")
	mob_size = MOB_MEDIUM
	maxHealth = 5
	health = 5
	harm_intent_damage = 3

/mob/living/simple_animal/jellyfish/Initialize()
	. = ..()
	color = pick("#ff675c","#ff9036","#e4ff36","#3dff5a","#3ddbff","#843dff")

//S Q U I D
/mob/living/simple_animal/hostile/retaliate/jelly/squid
	name = "brutallix massacresquid"
	desc = "Its pink appearance easily betrays its name, though don't be fooled: this has razor sharp teeth and, oddly enough, razors on the ends of its tendrils."
	icon = 'maps/bubmarine/icons/mob/squid.dmi'
	icon_state = "squid"
	icon_living = "squid"
	icon_dead = "squid_dead"
	emote_see = list("blips","squiks")
	mob_size = MOB_SMALL
	maxHealth = 20
	health = 20
	harm_intent_damage = 5
	melee_damage_lower = 4
	melee_damage_upper = 8
	melee_damage_flags = DAM_SHARP

	meat_type = /obj/item/weapon/reagent_containers/food/snacks/fish/octopus
	meat_amount = 2
	bone_amount = 0
	skin_amount = 3
	bone_material = MATERIAL_BONE_FISH
	skin_material = MATERIAL_SKIN_FISH