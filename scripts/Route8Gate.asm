Route8Gate_Script:
	jp EnableAutoTextBoxDrawing

Route8Gate_TextPointers:
	def_text_pointers
	dw_const Route8GateGuardText, TEXT_ROUTE8GATE_GUARD

Route8GateGuardText:
	text_far _Route8GateGuardText
	text_end
