	object_const_def
	const_export ROUTE12GATE2F_OAKS_AIDE

Route12Gate2F_Object:
	db $a ; border block

	def_warp_events
	warp_event  7,  7, ROUTE_12_GATE_1F, 5

	def_bg_events
	bg_event  1,  2, TEXT_ROUTE12GATE2F_LEFT_BINOCULARS
	bg_event  6,  2, TEXT_ROUTE12GATE2F_RIGHT_BINOCULARS

	def_object_events
	object_event  3,  4, SPRITE_SCIENTIST, STAY, NONE, TEXT_ROUTE12GATE2F_OAKS_AIDE

	def_warps_to ROUTE_12_GATE_2F
