SilphCoElevator_Object:
	db $f ; border block

	def_warp_events

	def_bg_events
	bg_event  3,  0, TEXT_SILPHCOELEVATOR_ELEVATOR

	def_object_events

	def_warps_to SILPH_CO_ELEVATOR
