#inputlevel,2
$3::
    SetMouseDelay -1
    Send {Blind}{F24 DownR}
    KeyWait, 3
    Send {Blind}{F24 up}
    ; MsgBox, %A_ThisHotkey%-%A_TimeSinceThisHotkey%
    if(A_ThisHotkey="$3" and A_TimeSinceThisHotkey<200)
        Send {Blind}{3 DownR}
    return

#inputlevel,1
F24 & m:: 1
F24 & ,:: 2
F24 & .:: 3
F24 & j:: 4
F24 & k:: 5
F24 & l:: 6
F24 & u:: 7
F24 & i:: 8
F24 & o:: 9
F24 & Space:: 0
F24 & h:: =
F24 & y:: +
F24 & b:: -

; 123456789