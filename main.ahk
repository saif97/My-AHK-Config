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

RShift::F11

CapsLock::
    SetMouseDelay -1
    Send {Blind}{Ctrl DownR}
    KeyWait, CapsLock
    Send {Blind}{Ctrl up}
    ; MsgBox, %A_ThisHotkey%-%A_TimeSinceThisHotkey%
    if(A_ThisHotkey="CapsLock" and A_TimeSinceThisHotkey<200)
        Send {Blind}{F15 DownR}
    return

