TradeMons:
; entries correspond to TRADE_FOR_* constants
	table_width 3 + NAME_LENGTH, TradeMons
	; give mon, get mon, dialog id, nickname
	; The two instances of TRADE_DIALOGSET_EVOLUTION are a leftover
	; from the Japanese Blue trades, which used species that evolve.
	; Japanese Red and Green used TRADE_DIALOGSET_CASUAL, and had
	; the same species as English Red and Blue.
	db HAUNTER,   KADABRA,   TRADE_DIALOGSET_CASUAL,    "LENIN@@@@@@"
	db ABRA,      MR_MIME,   TRADE_DIALOGSET_CASUAL,    "STALIN@@@@@"
	db BUTTERFREE, BEEDRILL,  TRADE_DIALOGSET_HAPPY,    "FANON@@@@@@" ; unused
	db PONYTA,     SEEL,      TRADE_DIALOGSET_CASUAL,   "MAO@@@@@@@@"
	db GRAVELER,   MACHOKE,   TRADE_DIALOGSET_HAPPY,    "MARX@@@@@@@"
	db KADABRA,    HAUNTER,   TRADE_DIALOGSET_CASUAL,   "ENGELS@@@@@"
	db POLIWHIRL, JYNX,      TRADE_DIALOGSET_EVOLUTION, "SANKARA@@@@"
	db RAICHU,    LICKITUNG, TRADE_DIALOGSET_EVOLUTION, "CHE@@@@@@@@"
	db SPEAROW,   FARFETCHD, TRADE_DIALOGSET_HAPPY,     "FIDEL@@@@@@"
	db MACHOKE,   GRAVELER,  TRADE_DIALOGSET_HAPPY,     "TITO@@@@@@@"
	db GOLDUCK,   DRATINI,   TRADE_DIALOGSET_HAPPY,     "FRED@@@@@@@"
	assert_table_length NUM_NPC_TRADES
