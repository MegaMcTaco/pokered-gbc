_ChampionsRoomRivalIntroText::
	text "RED: ...!"
	done

_RivalDefeatedText::
	text "..."
	prompt

_RivalVictoryText::
	text "..."
	prompt

_ChampionsRoomRivalAfterBattleText::
	text "..."
	done

_ChampionsRoomOakText::
	text "OAK: <PLAYER>!"
	done

_ChampionsRoomOakCongratulatesPlayerText::
	text "OAK: So, you won!"
	line "Congratulations!"
	cont "You're the new"
	cont "#MON LEAGUE"
	cont "champion!"

	para "You've learned so"
	line "much since you"
	cont "first left with"
	cont "@"
	text_ram wcd6d
	text "!"

	done

_ChampionsRoomOakDisappointedWithRivalText::
	text "OAK: RED! I'm"
	line "surprised!"

	para "That was a"
	line "tough battle!"
	cont "<PLAYER> has"
	cont "been helping"
	cont "advance the"


	para "#DEX research"
	line "project, like"
	cont "you and my"
	cont "Grand son"

	para "Speaking of..."
	line "What is my"
	cont "Grand son BLUE"
	cont "up to these days?"

	para "He never calls."
	line "So typical."
	done

_ChampionsRoomOakComeWithMeText::
	text "OAK: <PLAYER>!"

	para "You understand"
	line "that your victory"
	cont "was not just your"
	cont "own doing!"

	para "The bond you share"
	line "with your #MON"
	cont "is marvelous!"

	para "<PLAYER>!"
	line "Come with me!"
	done
