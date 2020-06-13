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

; #Include, QWERTY to Colemak.ahk
; #Include, vscode.ahk
; #Include, Arrow rebinding.

RAlt & 2:: Suspend, Off
RAlt & 3:: Suspend, On

Alt & Esc::Send !{F4}

$RShift::
    send, {ctrl down}{shift down}{AltDown}
    KeyWait, RShift
    send, {AltUp}{shift up}{ctrl up}
    return

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

; #IfWinActive, Chrome
; {

;     capsLock & 1::MButton

;     ; My mouses scrolling is abnormal so I've made ctrl + R mouse and drag scrolling :)


;     return
; }

#IfWinActive, Visual Studio Code
{
    ; capsLock & 1:: Send {AltDown}d{AltUp}}

    ; RShift:: F14



}

#IfWinActive, Adobe XD CC
{
    !^RButton::MButton

    return
}