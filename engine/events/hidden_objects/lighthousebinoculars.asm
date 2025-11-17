LighthouseBinocularsLeftText:
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_UP
	ret nz
	call EnableAutoTextBoxDrawing
	tx_pre LighthouseBinocularsLeftText
	ld a, DRAGONITE
	ld [wcf91], a
	jp DisplayMonFrontSpriteInBox

LighthouseBinocularsLeftText::
	text_far _LighthouseBinocularsLeftText
	text_end
