Lighthouse_Script:
	jp DisableAutoTextBoxDrawing

Lighthouse_TextPointers:
	def_text_pointers
	dw_const LighthouseTrade, TEXT_LIGHTHOUSE_TRADE
	dw_const LighthouseBinocularsLeftText, TEXT_LIGHTHOUSE_BINOCULARS_LEFT
	dw_const LighthouseBinocularsRightText, TEXT_LIGHTHOUSE_BINOCULARS_RIGHT	

LighthouseTrade:
	text_asm
	ld a, TRADE_FOR_TIFA
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd

LighthouseBinocularsLeftText:
	text_asm
	ld hl, .Text
	call PrintText
	ld a, DRAGONITE
	call DisplayPokedex
	jp TextScriptEnd
	
.Text:
	text_far _LighthouseBinocularsLeftText
	text_end

LighthouseBinocularsRightText:
	text_asm
	ld hl, .Text
	jp GateUpstairsScript_PrintIfFacingUp

.Text:
	text_far _LighthouseBinocularsRightText
	text_end
	
