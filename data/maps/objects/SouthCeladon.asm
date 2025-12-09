	object_const_def
	const_export SOUTHCELADON_BEAUTY
	const_export SOUTHCELADON_LAPRAS
	const_export SOUTHCELADON_HP_UP
	const_export SOUTHCELADON_WATER_STONE

SouthCeladon_Object:
	db $43 ; border block

	def_warp_events
	warp_event  7,  5, SOUTH_CELADON_GATE, 3
	warp_event  7,  5, SOUTH_CELADON_GATE, 4
	
	def_bg_events
	bg_event  25,  27, TEXT_CELADON_BEACH_SIGN

	def_object_events
	object_event 11, 20, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_BEACH_BEAUTY, OPP_COMRADE, 14
	object_event 27, 40, SPRITE_LAPRAS, STAY, LEFT, TEXT_SOUTHCELADON_LAPRAS, LAPRAS, 30
	object_event  6, 26, SPRITE_POKE_BALL, STAY, NONE, TEXT_SOUTHCELADON_HP_UP, KINGS_ROCK ; edited
	object_event 21, 19, SPRITE_POKE_BALL, STAY, NONE, TEXT_SOUTHCELADON_WATER_STONE, WATER_STONE


	def_warps_to SOUTH_CELADON
