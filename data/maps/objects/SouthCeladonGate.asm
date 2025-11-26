	object_const_def

SouthCeladonGate_Object:
	db $a ; border block

	def_warp_events
	warp_event  5,  0, CELADON_CITY, 14
	warp_event  5,  0, CELADON_CITY, 15
	warp_event  4,  7, SOUTH_CELADON, 1
	warp_event  5,  7, SOUTH_CELADON, 1

	def_bg_events

	def_object_events


	def_warps_to SOUTH_CELADON_GATE
