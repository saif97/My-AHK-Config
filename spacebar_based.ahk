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

CapsLock::F15

space::Send {space}

space & 1::Send {space}

space & u::home
space & d::shift
space & f::ctrl
space & o::end
space & s:: Alt
space & j:: left
space & k:: down
space & l:: right
space & i:: up
space & n::backSpace
space & h::Del
space & z::^z
space & x::^x
space & c::^c
space & v::^v

space & `;:: F13
space & p:: ^F13
space & t:: ^!F13

space & Enter:: ^!+F13

#if GetKeyState("space", "P")

    ; Indent and un-indent
    r::tab
    e::+tab

        ; Switch between workshops:
    w:: #^right
    q:: #^left

    ; Switch between tabs.
    .:: Send {ctrl down}`t{ctrl up}
    ,:: Send {ctrl down}{shift down}`t{shift up}{ctrl up}
    /:: Send {ctrl down}w{ctrl up}
    m:: Send {ctrl down}{shift down}t{shift up}{ctrl up}

    ; functionss
    1::F1
    2::F2
    3::F3
    4::F4
    5::F5
    6::F6
    7::F7
    8::F8
    9::F9
    0::F10
    -::F11
    =::F12
    '::F13

return


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