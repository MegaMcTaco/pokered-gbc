CeruleanCaveB1FWildMons:
	def_grass_wildmons 25 ; encounter rate
	db 55, KABUTO
	db 55, OMANYTE
	db 55, HAUNTER
	db 64, CHANSEY
	db 64, RAICHU
	db 64, DITTO
IF DEF(_RED)
	db 57, ARBOK
ENDC
IF DEF(_BLUE)
	db 57, SANDSLASH
ENDC
	db 65, OMASTAR
	db 63, KABUTOPS
	db 67, AERODACTYL
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
