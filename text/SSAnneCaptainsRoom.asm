_SSAnneCaptainsRoomRubCaptainsBackText::
	text "CAPTAIN: Ooargh..."
	line "I feel hideous..."
	cont "Urrp! Seasick..."

	para "<PLAYER> rubbed"
	line "the CAPTAIN's"
	cont "back!"

	para "Rub-rub..."
	line "Rub-rub...@"
	text_end

_SSAnneCaptainsRoomCaptainIFeelMuchBetterText::
	text "CAPTAIN: Whew!"
	line "Thank you! I"
	cont "feel much better!"

	para "I know! You can"
	line "have this!"

	para "Teach it to your"
	line "#MON and SURF"
	cont "any time!"

;joenote - add hotkey info
	para "Press SELECT when"
	line "facing water to"
	cont "use it."
	prompt

_SSAnneCaptainsRoomCaptainReceivedHM01Text::
	text "<PLAYER> got"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_SSAnneCaptainsRoomCaptainNotSickAnymoreText::
	text "CAPTAIN: Whew!"

	para "Now that I'm not"
	line "sick any more, I"
	cont "guess it's time."
	done

_SSAnneCaptainsRoomCaptainHM01NoRoomText::
	text "Oh no! You have"
	line "no room for this!"
	done

_SSAnneCaptainsRoomTrashText::
	text "Yuck! Shouldn't"
	line "have looked!"
	done

_SSAnneCaptainsRoomSeasickBookText::
	text "How to Conquer"
	line "Seasickness..."
	cont "The CAPTAIN's"
	cont "reading this!"
	done
