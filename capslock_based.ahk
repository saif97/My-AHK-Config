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
; SetTitleMatchMode 3  ; Exact matching to avoid confusing T/B with Tab/Backspann nn nnnnnnnnce.nnn
SetCapsLockState, alwaysoff
SetTitleMatchMode RegEx

RAlt & 2:: ExitApp,

Alt & Esc::Send !{F4}

; $RShift::
;     send, {ctrl down}{shift down}{AltDown}
;     KeyWait, RShifzzzzzzztzzzttz
;     send, {AltUp}{shift up}{ctrl up}RTCt
;     returnzz


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


capsLock::F15


capsLock & u::home
capsLock & d::shift
capsLock & f::ctrl
capsLock & o::end
capsLock & s:: Alt
capsLock & j:: left
capsLock & k:: down
capsLock & l:: right
capsLock & i:: up
capsLock & n::backSpace
capsLock & h::Del
capsLock & z::^z
capsLock & x::^x
capsLock & c::^c
capsLock & v::^v

capsLock & `;:: F13
capsLock & p:: ^F13
capsLock & t:: ^!F13

capsLock & Enter:: ^!+F13


#if GetKeyState("capsLock", "P")

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

Tab & n:: 1

#If Getkeystate("tab","p") ;if shift is held the following hotkey is active.


    ; f & n:: 1
    ; f & m:: 2
    ; f & ,:: 3
    ; f & j:: 4
    ; f & k:: 5
    ; f & l:: 6
    ; f & u:: 7
    ; f & i:: 8
    ; f & o:: 9
    ; f & Space:: 0
    ; f & h:: =
    ; f & y:: +
    ; f & b:: -

    ; d & `;:: `;
    ; d & '::'
    ; d & l::]
    ; d & k::[
    ; d & i::(
    ; d & o::)

    ; s & `;:: +`;
    ; s & ':: +'
    ; s & l::}
    ; s & k::{


return
; tttttttttttttt4812t12t12121248t4

#IfWinActive, Chrome
{

    capsLock & 1::MButton

    ; My mouses scrolling is abnormal so I've made ctrl + R mouse and drag scrollening :)
    capsLock & 9::send {Home} {shift down}{left}{left}{shift up}

}
#IfWinActive, Adobe XD CC
{
    ; !^RButton::MButton

    return
}