	object_const_def
	const_export ROUTE_26_SUN_STONE

Route26_Object:
	db $2c ; border block

	def_warp_events
	warp_event  19,  4, ROUTE_22_GATE, 5
	warp_event  19,  5, ROUTE_22_GATE, 6
	
	def_bg_events

	def_object_events
	object_event 20, 14, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROUTE_26_SUN_STONE, SUN_STONE

	def_warps_to ROUTE_26
