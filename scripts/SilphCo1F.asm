SilphCo1F_Script:
	jp EnableAutoTextBoxDrawing

SilphCo1F_TextPointers:
	def_text_pointers
	dw_const SilphCo1FLinkReceptionistText, TEXT_SILPHCO1F_LINK_RECEPTIONIST
	dw_const SilphCo1FGuardText, TEXT_SILPHCO1F_GUARD
	dw_const SilphCo1FGuard2Text, TEXT_SILPHCO1F_GUARD2

SilphCo1FLinkReceptionistText:
	text_far _SilphCo1FLinkReceptionistText
	text_end

SilphCo1FGuardText:
	text_far _SilphCo1FGuardText
	text_end
	
SilphCo1FGuard2Text:
	text_far _SilphCo1FGuardText
	text_end	