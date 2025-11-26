SouthCeladon_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SouthCeladonTrainerHeaders
	ld de, SouthCeladon_ScriptPointers
	ld a, [wSouthCeladonCurScript]
	call ExecuteCurMapScriptInTable
	ld [wSouthCeladonCurScript], a
	ret

SouthCeladon_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_SOUTHCELADON_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_SOUTHCELADON_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_SOUTHCELADON_END_BATTLE

SouthCeladon_TextPointers:
	def_text_pointers
	dw_const BeachBeautyText, TEXT_BEACH_BEAUTY
	dw_const SouthCeladonLaprasText, TEXT_SOUTHCELADON_LAPRAS
	dw_const CeladonBeachSignText, TEXT_CELADON_BEACH_SIGN

SouthCeladonTrainerHeaders:
	def_trainers
SouthCeladonTrainerHeader:	
	trainer EVENT_BEAT_BEACH_BEAUTY, 2, BeachBeautyBattleText, BeachBeautyEndBattleText, BeachBeautyAfterBattleText
	LaprasTrainerHeader:
	trainer EVENT_BEAT_LAPRAS, 0, LaprasBattleText, LaprasBattleText, LaprasBattleText
	db -1 ; end

BeachBeautyText:
	text_asm
	ld hl, SouthCeladonTrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

BeachBeautyBattleText:
	text_far _BeachBeautyBattleText
	text_end

BeachBeautyEndBattleText:
	text_far _BeachBeautyEndBattleText
	text_end

BeachBeautyAfterBattleText:
	text_far _BeachBeautyAfterBattleText
	text_end	
	
SouthCeladonLaprasText:
	text_asm
	ld hl, LaprasTrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

LaprasBattleText:
	text_far _LaprasBattleText
	text_asm
	ld a, LAPRAS
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd	

CeladonBeachSignText:
	text_far _CeladonBeachSignText
	text_end
	
	