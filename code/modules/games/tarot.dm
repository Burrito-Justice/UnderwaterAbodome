/* this is a playing card deck based off of the Rider-Waite Tarot Deck.
*/

/obj/item/weapon/deck/tarot
	name = "deck of tarot cards"
	desc = "For all your occult needs!"
	icon_state = "deck_tarot"
	var/major_icon = "tarot_major"
	var/list/major_names = list("Fool","Magician","High Priestess","Empress","Emperor","Hierophant","Lovers","Chariot","Strength","Hermit","Wheel of Fortune","Justice","Hanged Man","Death","Temperance","Devil","Tower","Star","Moon","Sun","Judgement","World")
	var/list/suits = list("wands","pentacles","cups","swords")
	var/list/values = list("ace","two","three","four","five","six","seven","eight","nine","ten","page","knight","queen","king")
	var/card_desc_major = "Some sort of major tarot card."
	var/card_desc_minor = "A Rider-Waite tarot card."

/obj/item/weapon/deck/tarot/New()
	..()

	var/datum/playingcard/P
	for(var/name in major_names)
		P = new()
		P.name = "[name]"
		P.card_icon = major_icon
		P.back_icon = "card_back_tarot"
		P.desc = card_desc_major
		cards += P
	for(var/suit in suits)
		for(var/number in values)
			P = new()
			P.name = "[number] of [suit]"
			P.card_icon = "tarot_[suit]"
			P.back_icon = "card_back_tarot"
			P.desc = card_desc_minor
			cards += P

/obj/item/weapon/deck/tarot/attack_self(var/mob/user as mob)
	var/list/newcards = list()
	while(cards.len)
		var/datum/playingcard/P = pick(cards)
		P.name = replacetext(P.name," reversed","")
		if(prob(50))
			P.name += " reversed"
		newcards += P
		cards -= P
	cards = newcards
	user.visible_message("\The [user] shuffles [src].")

/obj/item/weapon/deck/tarot/europan
	name = "deck of seafarer fortune cards"
	desc = "For communicating with the Fortunes. Commonly seen on Europan sea vessels."
	major_icon = "tarot_major_sea"
	major_names = list("Black Cat", "Red Sky", "Albatross", "Great Crab", "Kraken", "Bone Whale", "Eel", "Deep", "Oracle", "Voice")
	suits = list("keys", "barrels", "songs", "drinks")
	values = list("absence", "chaos", "fortune")
	card_desc_major = "A major Fortune card from a seafarer fortune deck."
	card_desc_minor = "A seafarer fortune card."