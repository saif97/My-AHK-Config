; | Alt      | `!`  |
; | -------- | ---- |
; | Ctrl     | `^`  |
; | Shift    | `+`  |
; | Win Logo | #    |

; ; is for commenting

; TODO: enable the ~ key.
; TODO: one keyshot to switch windows left or right.

#SingleInstance force
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
; SetTitleMatchMode 3  ; Exact matching to avoid confusing T/B with Tab/Backspace.
SetCapsLockState, alwaysoff
SetTitleMatchMode RegEx

RAlt & 3:: ExitApp,


Alt & Esc::Send !{F4}


RShift::
now := A_TickCount
while GetKeyState("RShift", "P")
	if (A_TickCount-now > 300)
	{
		Send {ShiftDown}
		KeyWait, RShift
		Send {ShiftUp}
		return
	}
Send {F1}
return

; Mapped to ESC in vim
CapsLock::F15


#inputlevel,2
$Space::
    SetMouseDelay -1
    Send {Blind}{F24 DownR}
    KeyWait, Space
    Send {Blind}{F24 up}
    ; MsgBox, %A_ThisHotkey%-%A_TimeSinceThisHotkey%
    if(A_ThisHotkey="$Space" and A_TimeSinceThisHotkey<225)
        Send {Blind}{Space DownR}
    return

#inputlevel,1


F24 & u::home
F24 & d::shift
F24 & f::ctrl
F24 & o::end
F24 & s:: Alt
F24 & j:: left
F24 & k:: down
F24 & l:: right
F24 & i:: up
F24 & n::backSpace
F24 & h::Del
F24 & z::^z
F24 & x::^x
F24 & c::^c
F24 & v::^v

F24 & `;:: F13
F24 & p:: ^F13
F24 & t:: ^!F13

F24 & Enter:: ^!+F13

; Indent and un-indent
F24 & r::tab
F24 & e::+tab

    ; Switch between workshops:
F24 & w:: #^right
F24 & q:: #^left

; Switch between tabs.
F24 & .:: Send {ctrl down}`t{ctrl up}
F24 & ,:: Send {ctrl down}{shift down}`t{shift up}{ctrl up}
F24 & /:: Send {ctrl down}w{ctrl up}
F24 & m:: Send {ctrl down}{shift down}t{shift up}{ctrl up}

; functionss
F24 & 1::F1
F24 & 2::F2
F24 & 3::F3
F24 & 4::F4
F24 & 5::F5
F24 & 6::F6
F24 & 7::F7
F24 & 8::F8
F24 & 9::F9
F24 & 0::F10
F24 & -::F11
F24 & =::F12
F24 & '::F13


#IfWinActive, Visual Studio Code
{
    ; capsLock & 1:: Send {AltDown}d{AltUp}}

    ; RShift:: F14

}

; fffeeefffffffffffffffneifneinenin}}{}eeee{}))eeeeeiiillionoeffffffffffffffffennffffeno {}fff{This is so cool)}fffeeefffffffffffffffneifneinenin}}{}){}){}){}){})}{)}ff
; If Getkeystate("e","p") ;if shift is held the following hotkey is active.

;     e & j::{
;     e & k::}
;     e & l::(
;     e & `;::)

;     ; d & `;:: `;
;     ; d & '::'
;     ; d & l::]
;     ; d & k::[
;     ; d & i::(
;     ; d & o::)

;     ; s & `;:: +`;
;     ; s & ':: +'
;     ; s & l::}
;     ; s & k::{

; return
