Route2WildMons:
	def_grass_wildmons 25 ; encounter rate
	db  3, KINGDRA
	db  3, SLOWKING
	db  4, BELLOSSOM
	db  4, SKARMORY
	db  5, HERACROSS
IF DEF(_RED)
	db  3, WEEDLE
	db  2, RATTATA
	db  5, NIDORAN_M
	db  4, CATERPIE
	db  5, NIDORAN_F
ENDC
IF DEF(_BLUE)
	db  3, CATERPIE
	db  2, RATTATA
	db  5, RATTATA
	db  4, CATERPIE
	db  5, CATERPIE
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
