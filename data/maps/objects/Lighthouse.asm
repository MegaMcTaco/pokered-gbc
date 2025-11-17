Lighthouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  7,  7, ROUTE_25, 2
	
	def_bg_events
	bg_event  1,  2, TEXT_LIGHTHOUSE_BINOCULARS_LEFT
	bg_event  6,  2, TEXT_LIGHTHOUSE_BINOCULARS_RIGHT
	
	def_object_events
	object_event  4,  4, SPRITE_GIRL, STAY, LEFT, TEXT_LIGHTHOUSE_TRADE ; ideally a comment telling you it's your trader

	def_warps_to LIGHTHOUSE