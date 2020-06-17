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
