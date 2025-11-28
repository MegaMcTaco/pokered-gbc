Route6Gate_Script:
	jp EnableAutoTextBoxDrawing

Route6Gate_TextPointers:
	def_text_pointers
	dw_const Route6GateGuardText, TEXT_ROUTE6GATE_GUARD

Route6GateGuardText:
	text_far _Route6GateGuardText
	text_end
