Suspend						;Start suspended

F6 & F7::					;Pressing F6 and F7 together toggles suspension
	Suspend
	state := A_IsSuspended ? "off" : "on"
	SplashTextOn, 130, , AutoRun key: %state%
	SetTimer, off , 1600
return

Off:
	SplashTextOff
Return


F5::SendInput {w Down} 		;F5 presses down the w key
XButton2::SendInput, {F5} 	;Mouse button 4 calls F5
~s::SendInput {w Up} 		;s releases the w key, ~ prevents s input override


;Debugging:
/*
F6::
	wIsPressed := GetKeyState("w", P)
	MsgBox % wIsPressed
return
*/
