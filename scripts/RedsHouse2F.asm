RedsHouse2F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, RedsHouse2F_ScriptPointers
	ld a, [wRedsHouse2FCurScript]
	jp CallFunctionInTable

RedsHouse2F_ScriptPointers:
	def_script_pointers
	dw_const RedsHouse2FDefaultScript, SCRIPT_REDSHOUSE2F_DEFAULT
	dw_const RedsHouse2FNoopScript,    SCRIPT_REDSHOUSE2F_NOOP

RedsHouse2FDefaultScript:
	xor a
	ldh [hJoyHeld], a
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a
	ld a, SCRIPT_REDSHOUSE2F_NOOP
	ld [wRedsHouse2FCurScript], a
	ret

RedsHouse2FNoopScript:
	ret

RedsHouse2F_TextPointers:
	def_text_pointers
	dw_const RedsHouse2FPokemonText, TEXT_REDSHOUSE2F_POKEMON

	text_end ; unused

RedsHouse2FPokemonText:
	text_asm
	lb bc, MEWTWO, 100
	call GivePokemon
	ld hl, .MartSampleText
	call PrintText
	jp TextScriptEnd

.MartSampleText
	text_far _Route1Youngster1MartSampleText
	text_end
