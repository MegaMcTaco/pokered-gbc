Route6Gate_Script:
	call EnableAutoTextBoxDrawing
	ld a, [wRoute6GateCurScript]
	ld hl, Route6Gate_ScriptPointers
	jp CallFunctionInTable

Route6Gate_ScriptPointers:
	def_script_pointers
	dw_const Route6GateDefaultScript,      SCRIPT_ROUTE6GATE_DEFAULT
	dw_const Route6GatePlayerMovingScript, SCRIPT_ROUTE6GATE_PLAYER_MOVING

Route6GateMovePlayerUpScript:
	ld a, D_UP
	ld [wSimulatedJoypadStatesEnd], a
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	jp StartSimulatingJoypadStates

Route6GateDefaultScript:
	ld a, [wd728]
	bit 6, a
	ret nz
	ld hl, .PlayerInCoordsArray
	call ArePlayerCoordsInArray
	ret nc
	ld a, PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	xor a
	ldh [hJoyHeld], a
	farcall RemoveGuardDrink
	ldh a, [hItemToRemoveID]
	and a
	jr nz, .have_drink
	ld a, TEXT_ROUTE6GATE_GUARD_GEE_IM_THIRSTY
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	call Route6GateMovePlayerUpScript
	ld a, SCRIPT_ROUTE6GATE_PLAYER_MOVING
	ld [wRoute6GateCurScript], a
	ret
.have_drink
	ld a, TEXT_ROUTE6GATE_GUARD_GIVE_DRINK
	ldh [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld hl, wd728
	set 6, [hl]
	ret

.PlayerInCoordsArray:
	dbmapcoord  3,  2
	dbmapcoord  4,  2
	db -1 ; end

Route6GatePlayerMovingScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	xor a
	ld [wJoyIgnore], a
	ld [wRoute6GateCurScript], a
	ret

Route6Gate_TextPointers:
	def_text_pointers
	dw_const SaffronGateGuardText,             TEXT_ROUTE6GATE_GUARD
	dw_const SaffronGateGuardGeeImThirstyText, TEXT_ROUTE6GATE_GUARD_GEE_IM_THIRSTY
	dw_const SaffronGateGuardGiveDrinkText,    TEXT_ROUTE6GATE_GUARD_GIVE_DRINK

SaffronGateGuardText:
	text_asm
	ld a, [wd728]
	bit 6, a
	jr nz, .thanks_for_drink
	farcall RemoveGuardDrink
	ldh a, [hItemToRemoveID]
	and a
	jr nz, .have_drink
	ld hl, SaffronGateGuardGeeImThirstyText
	call PrintText
	call Route6GateMovePlayerUpScript
	ld a, SCRIPT_ROUTE6GATE_PLAYER_MOVING
	ld [wRoute6GateCurScript], a
	jp TextScriptEnd

.have_drink
	ld hl, SaffronGateGuardGiveDrinkText
	call PrintText
	ld hl, wd728
	set 6, [hl]
	jp TextScriptEnd

.thanks_for_drink
	ld hl, SaffronGateGuardThanksForTheDrinkText
	call PrintText
	jp TextScriptEnd

SaffronGateGuardGeeImThirstyText:
	text_far _SaffronGateGuardGeeImThirstyText
	text_end

SaffronGateGuardGiveDrinkText:
	text_far _SaffronGateGuardImParchedText
	text_far _SaffronGateGuardYouCanGoOnThroughText
	text_end

SaffronGateGuardThanksForTheDrinkText:
	text_far _SaffronGateGuardThanksForTheDrinkText
	text_end