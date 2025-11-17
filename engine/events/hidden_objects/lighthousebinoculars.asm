LighthouseBinoculars:
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_UP
	ret nz
	call EnableAutoTextBoxDrawing
	tx_pre NewIslandBinocularsLeftText
	ld a, DRAGONITE
	ld [wcf91], a
	jp DisplayMonFrontSpriteInBox

LighthouseBinocularsText::
	text_far _LighthouseBinocularsLeftText
	text_end
