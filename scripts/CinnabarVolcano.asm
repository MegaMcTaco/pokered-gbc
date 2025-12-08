CinnabarVolcano_Script:
	call EnableAutoTextBoxDrawing
	ld hl, CinnabarVolcanoTrainerHeaders
	ld de, CinnabarVolcano_ScriptPointers
	ld a, [wCinnabarVolcanoCurScript]
	call ExecuteCurMapScriptInTable
	ld [wCinnabarVolcanoCurScript], a
	ret

CinnabarVolcano_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_CINNABARVOLCANO_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_CINNABARVOLCANO_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_CINNABARVOLCANO_END_BATTLE

CinnabarVolcano_TextPointers:
	def_text_pointers
	dw_const CinnabarVolcanoMoltresText, TEXT_CINNABARVOLCANO_MOLTRES
	dw_const BoulderText,             	    TEXT_VOLCANO_BOULDER1	
	dw_const BoulderText,             	    TEXT_VOLCANO_BOULDER2	

CinnabarVolcanoTrainerHeaders:
	def_trainers
MoltresTrainerHeader:
	trainer EVENT_BEAT_MOLTRES, 0, MoltresBattleText, MoltresBattleText, MoltresBattleText
	db -1 ; end

CinnabarVolcanoMoltresText:
	text_asm
	ld hl, MoltresTrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

MoltresBattleText:
	text_far _MoltresBattleText
	text_asm
	ld a, MOLTRES
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd
