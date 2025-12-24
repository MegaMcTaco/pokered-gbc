Route11Gate2F_Script:
	jp DisableAutoTextBoxDrawing

Route11Gate2F_TextPointers:
	def_text_pointers
	dw_const Route11Gate2FYoungsterText,       TEXT_ROUTE11GATE2F_YOUNGSTER
	dw_const Route11Gate2FBrunetteGirlText,    TEXT_ROUTE11GATE2F_BRUNETTE_GIRL
	dw_const Route11Gate2FLeftBinocularsText,  TEXT_ROUTE11GATE2F_LEFT_BINOCULARS
	dw_const Route11Gate2FRightBinocularsText, TEXT_ROUTE11GATE2F_RIGHT_BINOCULARS

Route11Gate2FYoungsterText:
	text_asm
	xor a ; TRADE_FOR_TERRY
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
Route11Gate2FScriptEnd:
	jp TextScriptEnd

Route11Gate2FBrunetteGirlText:
	text_asm
	CheckEvent EVENT_GOT_TM39, 1
	jr c, .got_item
	ld hl, .YouCanHaveThisText
	call PrintText
	lb bc, TM_SWIFT, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .ReceivedTM39Text
	call PrintText
	SetEvent EVENT_GOT_TM39
	jr .done
.bag_full
	ld hl, .TM39NoRoomText
	call PrintText
	jr .done
.got_item
	ld hl, .TM39ExplanationText
	call PrintText
.done
	jp TextScriptEnd

.YouCanHaveThisText:
	text_far _Route11Gate2FBrunetteGirlYouCanHaveThisText
	text_end

.ReceivedTM39Text:
	text_far _Route11Gate2FBrunetteGirlReceivedTM39Text
	sound_get_item_1
	text_end

.TM39ExplanationText:
	text_far _Route11Gate2FBrunetteGirlTM39ExplanationText
	text_end

.TM39NoRoomText:
	text_far _Route11Gate2FBrunetteGirlTM39NoRoomText
	text_end

Route11Gate2FLeftBinocularsText:
	text_asm
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_UP
	jp nz, GateUpstairsScript_PrintIfFacingUp
	CheckEvent EVENT_BEAT_ROUTE12_SNORLAX
	ld hl, .SnorlaxText
	jr z, .print
	ld hl, .NoSnorlaxText
.print
	call PrintText
	jp TextScriptEnd

.SnorlaxText:
	text_far _Route11Gate2FLeftBinocularsSnorlaxText
	text_end

.NoSnorlaxText:
	text_far _Route11Gate2FLeftBinocularsNoSnorlaxText
	text_end

Route11Gate2FRightBinocularsText:
	text_asm
	ld hl, .Text
	jp GateUpstairsScript_PrintIfFacingUp

.Text:
	text_far _Route11Gate2FRightBinocularsText
	text_end
