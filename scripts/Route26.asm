Route26_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route26TrainerHeaders
	ld de, Route26_ScriptPointers
	ld a, [wRoute26CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute26CurScript], a
	ret

Route26_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE26_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE26_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE26_END_BATTLE

Route26_TextPointers:
	def_text_pointers
	dw_const Route26TrainerText, 				   TEXT_ROUTE26_TRAINER
	dw_const PickUpItemText,                       TEXT_ROUTE26_SUN_STONE
	dw_const Route26SignText, 					   TEXT_ROUTE26_SIGN
	
Route26TrainerHeaders:
	def_trainers
Route26TrainerHeader:	
	trainer EVENT_BEAT_ROUTE26_TRAINER, 2, Route26TrainerBattleText, Route26TrainerEndBattleText, Route26TrainerAfterBattleText	

Route26TrainerText:
	text_asm
	ld hl, Route26TrainerHeader
	call TalkToTrainer
	jp TextScriptEnd

Route26TrainerBattleText:
	text_far _Route26TrainerBattleText
	text_end

Route26TrainerEndBattleText:
	text_far _Route26TrainerEndBattleText
	text_end

Route26TrainerAfterBattleText:
	text_far _Route26TrainerAfterBattleText
	text_end	

Route26SignText:
	text_far _Route26SignText
	text_end