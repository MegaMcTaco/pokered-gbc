_PokemonTower1FReceptionistText::
	text "Welcome! This"
	line "used to be"
	cont "#MON TOWER." 
	
	para "It is now under"
	line "construction"
	cont "and will soon"
	cont "re-open as"
	cont "KANTO's RADIO"
	cont "TOWER."	
	done
	
_PokemonTower1FMrFujiIThinkThisMayHelpYourQuestText::
	text "MR.FUJI: Ahh!"

	para "You must be"
	line "<PLAYER>! Prof."
	cont "OAK has told me"
	cont "about you."
	
	para "I'm overseeing"
	line "the development"
	cont "of the KANTO"
	cont "RADIO TOWER,"
	cont "and making sure"
	cont "dead #MON are"
	cont "appropriately"
	cont "relocated to"
	cont "the HOUSE OF"
	cont "MEMORIES being"
	cont "built."

	para "I think this may"
	line "help you with"
	cont "your travels."
	prompt

_PokemonTower1FMrFujiReceivedPokeFluteText::
	text "<PLAYER> received"
	line "a @"
	text_ram wStringBuffer
	text "!@"
	text_end

_PokemonTower1FMrFujiPokeFluteExplanationText::
	text_start
	
	para "You'll get"
	line "around much"
	cont "faster with a"
	cont "BICYCLE!"

_PokemonTower1FMrFujiPokeFluteNoRoomText::
	text "You must make"
	line "room for this!"
	done

_PokemonTower1FMrFujiHasMyFluteHelpedYouText::
	text "MR.FUJI: Have"
	line "you exchanged"
	cont "the bike voucher"
	cont "for a BICYCLE in"
	cont "CERULEAN CITY yet?"
	done	

;_PokemonTower1FMiddleAgedWomanText::
;	text "Did you come to"
;	line "pay respects?"
;	cont "Bless you!"
;	done

_PokemonTower1FBaldingGuyText::
	text "I hope KANTO"
	line "RADIO will be"
	cont "as good as"
	cont "GOLDENROD RADIO"
	cont "in JOHTO."
	done

_PokemonTower1FGirlText::
	text "We are waiting"
	line "for equipment"
	cont "and supplies"
	cont "to arrive."
	done

;_PokemonTower1FChannelerText::
;	text "I am a CHANNELER!"
;	line "There are spirits"
;	cont "up to mischief!"
;	done
