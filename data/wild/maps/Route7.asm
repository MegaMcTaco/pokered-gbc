Route7WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 19, RATTATA
IF DEF(_RED)
	db 19, BELLSPROUT
	db 17, MEOWTH
	db 22, PIDGEOTTO
	db 22, SPEAROW
	db 18, MANKEY
	db 18, RATTATA
	db 20, RATICATE ; Snubbull eventually 
	db 28, PRIMEAPE ; Murkrow eventually
	db 28, PERSIAN
ENDC
IF DEF(_BLUE)
	db 19, BELLSPROUT
	db 17, MEOWTH
	db 22, BELLSPROUT
	db 22, PIDGEY
	db 18, MEOWTH
	db 18, VULPIX
	db 20, VULPIX
	db 19, MEOWTH
	db 20, MEOWTH
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
