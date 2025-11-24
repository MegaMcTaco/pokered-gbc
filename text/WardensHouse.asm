_WardensHouseWardenGibberish1Text::
	text "WARDEN: Welcome"
	line "to my home!"

	para "I am the warden"
	line "of the Safari"
	cont "Zone!"
	done

_WardensHouseWardenGibberish2Text::
	text "I say, do you"
	line "have want to"
	cont "trade items?"
	done

_WardensHouseWardenGibberish3Text::
	text "I'll give you a"
	line "HM for METAL"
	cont "COAT!"
	done

_WardensHouseWardenGaveTheGoldTeethText::
	text "<PLAYER> gave the"
	line "METAL COAT to the"
	cont "WARDEN!@"
	text_end

_WardensHouseWardenTeethPoppedInHisTeethText::
	text_start

	para "Thanks! This is"
	line "for my Scyther!"
	prompt

_WardensHouseWardenThanksText::
	text "Now I can evolve"
	line "my Scyther into"
	cont "Scizor! How"
	cont "incredible!"

	para "As promised,"
	line "here is the HM"
	cont "I promised to"
	cont "trade you."
	prompt

_WardensHouseWardenReceivedHM04Text::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_WardensHouseWardenHM04ExplanationText::
	text "WARDEN: HM04"
	line "teaches STRENGTH!"

	para "It lets #MON"
	line "move boulders"
	cont "when you're out-"
	cont "side of battle."

;joenote - add hotkey info
	para "Press SELECT when"
	line "facing a boulder"
	cont "to activate it."

	para "Oh yes, did you"
	line "find SECRET HOUSE"
	cont "in SAFARI ZONE?"

	para "If you do, you"
	line "win an HM!"

	para "I hear it's the"
	line "rare SURF HM."
	done

_WardensHouseWardenHM04NoRoomText::
	text "Your pack is"
	line "stuffed full!"
	done

_WardensHouseDisplayPhotosAndFossilsText::
	text "#MON photos"
	line "and fossils."
	done

_WardensHouseDisplayMerchandiseText::
	text "Old #MON"
	line "merchandise."
	done
