	object_const_def
	const_export CINNABARVOLCANO_MOLTRES
	const_export VOLCANO_BOULDER1	
	const_export VOLCANO_BOULDER2
	
CinnabarVolcano_Object:
	db $2c ; border block

	def_warp_events
	warp_event 14, 23, LAST_MAP, 3
	warp_event 15, 23, LAST_MAP, 3
	
	def_bg_events

	def_object_events
	object_event 15,  5, SPRITE_BIRD, STAY, UP, TEXT_CINNABARVOLCANO_MOLTRES, MOLTRES, 50
 	object_event 14, 16, SPRITE_BOULDER, STAY, BOULDER_MOVEMENT_BYTE_2, TEXT_VOLCANO_BOULDER1	
	object_event 15, 16, SPRITE_BOULDER, STAY, BOULDER_MOVEMENT_BYTE_2, TEXT_VOLCANO_BOULDER2		

	def_warps_to CINNABAR_VOLCANO