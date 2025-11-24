Route23WildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 26, EKANS
ENDC
IF DEF(_BLUE)
	db 26, SANDSHREW
ENDC
	db 33, MANKEY
	db 26, SPEAROW
	db 38, FEAROW
	db 38, PRIMEAPE
	db 38, FEAROW
IF DEF(_RED)
	db 41, ARBOK
ENDC
IF DEF(_BLUE)
	db 41, SANDSLASH
ENDC
	db 43, DITTO
	db 41, SANDSLASH
	db 43, PRIMEAPE
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
