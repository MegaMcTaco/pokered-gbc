Route8WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 18, RATTATA
IF DEF(_RED)
	db 18, MANKEY
	db 17, EKANS
	db 16, JIGGLYPUFF
	db 20, PIDGEOTTO
	db 20, GASTLY
	db 19, EKANS ; make Hoothoot eventually
	db 17, SANDSHREW
	db 15, ABRA
	db 18, MEOWTH
ENDC
IF DEF(_BLUE)
	db 18, MEOWTH
	db 17, SANDSHREW
	db 16, VULPIX
	db 20, PIDGEY
	db 20, MEOWTH
	db 19, SANDSHREW
	db 17, VULPIX
	db 15, VULPIX
	db 18, VULPIX
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
