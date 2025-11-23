db DEX_LEAFEON ; pokedex id

	db  130,  65,  60,  65, 110

	db GRASS, GRASS; species type
	db 45 ; catch rate
	db 196 ; base exp yield

IF GEN_2_GRAPHICS
	INCBIN "gfx/pokemon/gsfront/leafeon.pic", 0, 1 ; sprite dimensions
ELSE
	INCBIN "gfx/pokemon/front/leafeon.pic", 0, 1 ; sprite dimensions
ENDC
	dw LeafeonPicFront, LeafeonPicBack
; attacks known at lvl 0
	db TACKLE, SAND_ATTACK, QUICK_ATTACK, RAZOR_LEAF ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   DIG,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      SWIFT,         REST,         SUBSTITUTE,   \
	     CUT
	; end
	
	db BANK(LeafeonPicFront)
