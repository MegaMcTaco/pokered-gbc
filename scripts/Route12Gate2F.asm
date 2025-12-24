Route12Gate2F_Script:
	jp DisableAutoTextBoxDrawing

Route12Gate2F_TextPointers:
	def_text_pointers
	dw_const Route12Gate2FOaksAideText,        TEXT_ROUTE12GATE2F_OAKS_AIDE
	dw_const Route12Gate2FLeftBinocularsText,  TEXT_ROUTE12GATE2F_LEFT_BINOCULARS
	dw_const Route12Gate2FRightBinocularsText, TEXT_ROUTE12GATE2F_RIGHT_BINOCULARS

Route12Gate2FOaksAideText:
	text_asm
	CheckEvent EVENT_GOT_HM05, 1
	jr c, .got_item
	ld a, 10
	ldh [hOaksAideRequirement], a
	ld a, HM_FLASH ; was ITEMFINDER
	ldh [hOaksAideRewardItem], a
	ld [wd11e], a
	call GetItemName
	ld h, d
	ld l, e
	ld de, wOaksAideRewardItemName
	ld bc, ITEM_NAME_LENGTH
	call CopyData
	predef OaksAideScript
	ldh a, [hOaksAideResult]
	dec a ; OAKS_AIDE_GOT_ITEM?
	jr nz, .no_item
	SetEvent EVENT_GOT_HM05
.got_item
	ld hl, .FlashDescriptionText
	call PrintText
.no_item
	jp TextScriptEnd

.FlashDescriptionText:
	text_far _Route12Gate2FOaksAideFlashDescriptionText
	text_end

Route12Gate2FLeftBinocularsText:
	text_asm
	ld hl, .Text
	jp GateUpstairsScript_PrintIfFacingUp

.Text:
	text_far _Route12Gate2FLeftBinocularsText
	text_end

Route12Gate2FRightBinocularsText:
	text_asm
	ld hl, .Text
	jp GateUpstairsScript_PrintIfFacingUp

.Text:
	text_far _Route12Gate2FRightBinocularsText
	text_end

GateUpstairsScript_PrintIfFacingUp:
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_UP
	jr z, .up
	ld a, TRUE
	jr .done
.up
	call PrintText
	xor a
.done
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	jp TextScriptEnd
