Route7Gate_Script:
	jp EnableAutoTextBoxDrawing

Route7Gate_TextPointers:
	def_text_pointers
	dw_const Route7GateGuardText, TEXT_ROUTE7GATE_GUARD

Route7GateGuardText:
	text_far _Route7GateGuardText
	text_end
