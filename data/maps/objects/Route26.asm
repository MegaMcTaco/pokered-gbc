	object_const_def
	const_export ROUTE26_TRAINER
	const_export ROUTE26_SUN_STONE

Route26_Object:
	db $2c ; border block

	def_warp_events
	warp_event  19,  4, ROUTE_22_GATE, 5
	warp_event  19,  5, ROUTE_22_GATE, 6
	
	def_bg_events
	bg_event 13, 63, TEXT_ROUTE26_SIGN

	def_object_events
	object_event 10, 40, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_ROUTE26_TRAINER, OPP_COMRADE, 15
	object_event 20, 14, SPRITE_POKE_BALL, STAY, NONE,  TEXT_ROUTE26_SUN_STONE, SUN_STONE

	def_warps_to ROUTE_26
