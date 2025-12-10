_WardensHouseWardenGibberish1Text::
	text "WARDEN: Welcome"
	line "to my home!"

	para "Do you have"
	line "a DRAGON SCALE"
	cont "by any chance?"
	done

_WardensHouseWardenGibberish2Text::
	text "I'm looking for"
	line "one to evolve"
	cont "my SEADRA with."
	done

_WardensHouseWardenGibberish3Text::
	text "I'll give you a"
	line "# FLUTE for"
	cont "a DRAGON SCALE."
	done

_WardensHouseWardenGaveTheGoldTeethText::
	text "<PLAYER> gave"
	line "a DRAGON SCALE to"
	cont "the WARDEN!@"
	text_end

_WardensHouseWardenTeethPoppedInHisTeethText::
	text_start

	para "Thanks! Now,"
	line "as promised."
	prompt

_WardensHouseWardenThanksText::
	text "This is a #"
	line "FLUTE. Once"
	cont "played, it will"
	cont "wake up any"
	cont "sleeping #MON"

	para "I hear all paths"
	line "to VERMILION"
	cont "CITY are blocked"
	cont "by SNORLAX!"
	prompt

_WardensHouseWardenReceivedHM04Text::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_WardensHouseWardenHM04ExplanationText::
	text "Maybe you can"
	line "use the #"
	cont "FLUTE to wake"
	cont "them up?"
	done

;	para "It lets #MON"
;	line "move boulders"
;	cont "when you're out-"
;	cont "side of battle."

;joenote - add hotkey info
;	para "Press SELECT when"
;	line "facing a boulder"
;	cont "to activate it."

;	para "Oh yes, did you"
;	line "find SECRET HOUSE"
;	cont "in SAFARI ZONE?"

;	para "If you do, you"
;	line "win an HM!"
;
;	para "I hear it's the"
;	line "rare SURF HM."
;	done

_WardensHouseWardenHM04NoRoomText::
	text "Your pack is"
	line "stuffed full!"
	done

_WardensHouseDisplayPhotosAndFossilsText::
	text "A photo of"
	line "Comrade Stalin."
	done

_WardensHouseDisplayMerchandiseText::
	text "Old #MON"
	line "merchandise."
	done
