CeruleanCave1FWildMons:
	def_grass_wildmons 10 ; encounter rate
	db 46, GOLBAT
	db 46, HYPNO
	db 46, MAGNETON
	db 49, ARBOK
	db 49, SANDSLASH
IF DEF(_RED)
	db 52, LICKITUNG
ENDC
IF DEF(_BLUE)
	db 52, SANDSLASH
ENDC
	db 49, KADABRA
	db 52, NIDOKING
	db 53, RAICHU
	db 53, SNORLAX
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
