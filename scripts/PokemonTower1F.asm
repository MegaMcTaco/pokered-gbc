PokemonTower1F_Script:
	jp EnableAutoTextBoxDrawing

PokemonTower1F_TextPointers:
	def_text_pointers
	dw_const PokemonTower1FReceptionistText,    TEXT_POKEMONTOWER1F_RECEPTIONIST
	dw_const PokemonTower1FMrFujiText,  TEXT_POKEMONTOWER1F_MR_FUJI
;	dw_const PokemonTower1FMiddleAgedWomanText, TEXT_POKEMONTOWER1F_MIDDLE_AGED_WOMAN
	dw_const PokemonTower1FBaldingGuyText,      TEXT_POKEMONTOWER1F_BALDING_GUY
	dw_const PokemonTower1FGirlText,            TEXT_POKEMONTOWER1F_GIRL
;	dw_const PokemonTower1FChannelerText,       TEXT_POKEMONTOWER1F_CHANNELER

PokemonTower1FReceptionistText:
	text_far _PokemonTower1FReceptionistText
	text_end
	
PokemonTower1FMrFujiText:
	text_asm
	CheckEvent EVENT_GOT_POKE_FLUTE
	jr nz, .got_item
	ld hl, .IThinkThisMayHelpYourQuestText
	call PrintText
	lb bc, BIKE_VOUCHER, 1 ; POKE_FLUTE, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .ReceivedPokeFluteText
	call PrintText
	SetEvent EVENT_GOT_POKE_FLUTE
	jr .done
.bag_full
	ld hl, .PokeFluteNoRoomText
	call PrintText
	jr .done
.got_item
	ld hl, .HasMyFluteHelpedYouText
	call PrintText
.done
	jp TextScriptEnd	
	
.IThinkThisMayHelpYourQuestText:
	text_far _PokemonTower1FMrFujiIThinkThisMayHelpYourQuestText
	text_end

.ReceivedPokeFluteText:
	text_far _PokemonTower1FMrFujiReceivedPokeFluteText
	sound_get_key_item
	text_far _PokemonTower1FMrFujiPokeFluteExplanationText
	text_end

.PokeFluteNoRoomText:
	text_far _PokemonTower1FMrFujiPokeFluteNoRoomText
	text_end

.HasMyFluteHelpedYouText:
	text_far _PokemonTower1FMrFujiHasMyFluteHelpedYouText
	text_end	

;PokemonTower1FMiddleAgedWomanText:
;	text_far _PokemonTower1FMiddleAgedWomanText
;	text_end

PokemonTower1FBaldingGuyText:
	text_far _PokemonTower1FBaldingGuyText
	text_end

PokemonTower1FGirlText:
	text_far _PokemonTower1FGirlText
	text_end

;PokemonTower1FChannelerText:
;	text_far _PokemonTower1FChannelerText
;	text_end
