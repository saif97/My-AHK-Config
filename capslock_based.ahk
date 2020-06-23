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
; SetCapsLockState, alwaysoff
SetTitleMatchMode RegEx

RAlt & 2:: ExitApp,

Alt & Esc::Send !{F4}

; $RShift::
;     send, {ctrl down}{shift down}{AltDown}
;     KeyWait, RShifzzzzzzztzzzttz
;     send, {AltUp}{shift up}{ctrl up}RTCt
;     returnzz


; RShift::
; now := A_TickCount
; while GetKeyState("RShift", "P")
; 	if (A_TickCount-now > 300)
; 	{
; 		Send {ShiftDown}
; 		KeyWait, RShift
; 		Send {ShiftUp}
; 		return
; 	}
; Send {F1}
; return


Tab::tab



Tab & u::home
Tab & q::shift
Tab & w::ctrl
Tab & o::end
Tab & s:: Alt
Tab & j:: left
Tab & k:: down
Tab & l:: right
Tab & i:: up
Tab & n::backSpace
Tab & h::Del
Tab & z::^z
Tab & x::^x
Tab & c::^c
Tab & v::^v

Tab & `;:: F13
Tab & p:: ^F13
Tab & t:: ^!F13

Tab & Enter:: ^!+F13


#if GetKeyState("Tab", "P")

    ; Indent and un-indent
    r::tab
    e::+tab

    ; Switch between workshops:
    ]:: #^right
    [:: #^left

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

#IfWinActive, Chrome
{
    Tab & 1::MButton

    ; My mouses scrolling is abnormal so I've made ctrl + R mouse and drag scrollening :)
    capsLock & 9::send {Home} {shift down}{left}{left}{shift up}

}
#IfWinActive, Adobe XD CC
{
    ; !^RButton::MButton

    return
}