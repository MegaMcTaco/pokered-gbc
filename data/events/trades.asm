TradeMons:
; entries correspond to TRADE_FOR_* constants
	table_width 3 + NAME_LENGTH, TradeMons
	; give mon, get mon, dialog id, nickname
	; The two instances of TRADE_DIALOGSET_EVOLUTION are a leftover
	; from the Japanese Blue trades, which used species that evolve.
	; Japanese Red and Green used TRADE_DIALOGSET_CASUAL, and had
	; the same species as English Red and Blue.
	db HAUNTER,   KADABRA,   TRADE_DIALOGSET_CASUAL,    "LENIN@@@@@@" ; Route 11 - Alakazam Trade Evolution
	db GRAVELER,  MACHOKE,   TRADE_DIALOGSET_CASUAL,    "STALIN@@@@@" ; Route 2 - Machamp Trade Evolution
	db BUTTERFREE, BEEDRILL,  TRADE_DIALOGSET_HAPPY,    "FANON@@@@@@" ; Pewter Museum - Aerodactyl for Skarmory
	db PONYTA,     SEEL,      TRADE_DIALOGSET_CASUAL,   "MAO@@@@@@@@" ; Cinnabar Island - Cubone for Larvitar 
	db ABRA,       MR_MIME,   TRADE_DIALOGSET_HAPPY,    "MARX@@@@@@@" ; Vermillion City - Squirtle for Totodile
	db KADABRA,    HAUNTER,   TRADE_DIALOGSET_CASUAL,   "ENGELS@@@@@" ; Route 18 - Gengar Trade Evolution
	db POLIWHIRL, JYNX,      TRADE_DIALOGSET_EVOLUTION, "SANKARA@@@@" ; Cerulean City - Bulbasaur for Chikorita
	db RAICHU,    LICKITUNG, TRADE_DIALOGSET_EVOLUTION, "CHE@@@@@@@@" ; Cinnabar Island - Charmander for Cyndaquil
 	db SPEAROW,   FARFETCHD, TRADE_DIALOGSET_HAPPY,     "FIDEL@@@@@@" ; Cinnabar Island - Pikachu for Marill
	db MACHOKE,   GRAVELER,  TRADE_DIALOGSET_HAPPY,     "TITO@@@@@@@" ; Route 5 - Golem Trade Evoution
	db DRATINI,   JYNX,      TRADE_DIALOGSET_HAPPY,     "FRED@@@@@@@" ; Lighthouse - Dratini for Jynx?
	assert_table_length NUM_NPC_TRADES
