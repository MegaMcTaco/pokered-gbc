Route26_Object:
	db $2c ; border block

	def_warp_events
	warp_event  19,  4, ROUTE_22_GATE, 5
	warp_event  19,  5, ROUTE_22_GATE, 6
	
	def_bg_events

	def_object_events

	def_warps_to ROUTE_26
