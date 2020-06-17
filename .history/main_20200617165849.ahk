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
