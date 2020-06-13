;created by Nibiria for the /r/MechanicalKeyboards subreddit
;thanks to /u/radiantcabbage for the many many corrections along the way

#NoEnv
#Warn
SendMode Input
SetWorkingDir %A_ScriptDir%

;define boolean for arrows
arrowbind := false


RShift::
now := A_TickCount
while GetKeyState("RShift", "P")
	if (A_TickCount-now > 300)
	{
        
		KeyWait, RShift
		return
	}
Send {F1}
return