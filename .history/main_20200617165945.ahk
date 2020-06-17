; | Alt      | `!`  |
; | -------- | ---- |
; | Ctrl     | `^`  |
; | Shift    | `+`  |
; | Win Logo | #    |

; ; is for commentingnnnnnn

; TODO: enable the ~ key.
; TODO: one keyshot to switch windows left or right.nnnnnnnn nnnkkkkkkkkkkkkkk  kkkkkk

#SingleInstance force
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
; SetTitleMatchMode 3  ; Exact matching to avoid confusing T/B with Tab/Backspace.
SetCapsLockState, alwaysoff
SetTitleMatchMode RegEx

Run, QWERTY to Colemak.ahk

RAlt & 2:: Run, spacebar_based.ahk
RAlt & 3:: Run, capslock_based.ahk

#inputlevel,2
$Space::
    SetMouseDelay -1
    Send {Blind}{F24 DownR}
    KeyWait, Space
    Send {Blind}{F24 up}
    ; MsgBox, %A_ThisHotkey%-%A_TimeSinceThisHotkey%
    if(A_ThisHotkey="$Space" and A_TimeSinceThisHotkey<200)
        Send {Blind}{Space DownR}
    return

#inputlevel,1
F24 & i::Up
F24 & k::Down
F24 & j::Left
F24 & l::Right
F24 & u::Home
F24 & o::End
F24 & n::PgUp
F24 & m::PgDn

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
F24 & -::F112
F24 & Enter::^Enter


; #If Getkeystate("3","p") ;if shift is held the following hotkey is active.

;     3 & m:: 1
;     3 & ,:: 2
;     3 & .:: 3
;     3 & j:: 4
;     3 & k:: 5
;     3 & l:: 6
;     3 & u:: 7
;     3 & i:: 8
;     3 & o:: 9
;     3 & Space:: 0
;     3 & h:: =
;     3 & y:: +
;     3 & b:: -

; return
