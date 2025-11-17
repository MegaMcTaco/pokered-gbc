;This was taken from Maize.
CheckDayNight::
; set carry flag if it's day
; Looks at total play time. Alternates between night and day.
	ld a, [wPlayTimeMinutes]
	cp 30
	ret