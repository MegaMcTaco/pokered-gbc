	object_const_def
	const_export CINNABARVOLCANO_MOLTRES

CinnabarVolcano_Object:
	db $2c ; border block

	def_warp_events
	warp_event 14, 23, LAST_MAP, 3
	warp_event 15, 23, LAST_MAP, 3
	
	def_bg_events

	def_object_events
	object_event 15,  5, SPRITE_BIRD, STAY, UP, TEXT_CINNABARVOLCANO_MOLTRES, MOLTRES, 50

	def_warps_to CINNABAR_VOLCANO