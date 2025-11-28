Route5Gate_Script:
	jp EnableAutoTextBoxDrawing

Route5Gate_TextPointers:
	def_text_pointers
	dw_const Route5GateGuardText, TEXT_ROUTE5GATE_GUARD

Route5GateGuardText:
	text_far _Route5GateGuardText
	text_end
