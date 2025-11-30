Route7_Script:
	jp EnableAutoTextBoxDrawing

Route7_TextPointers:
	def_text_pointers
	dw_const Route7GuardText, TEXT_ROUTE7_GUARD
	dw_const Route7UndergroundPathSignText, TEXT_ROUTE7_UNDERGROUND_PATH_SIGN

Route7GuardText:
	text_far _Route7GuardText
	text_end

Route7UndergroundPathSignText:
	text_far _Route7UndergroundPathSignText
	text_end
