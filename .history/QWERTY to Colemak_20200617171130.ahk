

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
; SetTitleMatchMode 3  ; Exact matching to avoid confusing T/B with Tab/Backspace .nknknk
SetCapsLockState, alwaysoff
SetTitleMatchMode RegEx

; capsLock & RWin:: Suspend, ninokkkkkkkkkkmbbbbbbbbbbbbbbbbbbbbbbvbstttttttfbbkkkkmmmnnnnnnnnnnnnnnnnffnnnttt1ttttt1nnin'

RAlt & 1:: Suspend



; nei,m.nulyneim,.neiluyntneoi m,.neiluyjjlkjm,.jkiou
; If ( GetKeyboardLayout("A") = 1252) ; 4105 = 0x1009 https://msdn.microsoft.com/en-us/library/aa912040
; {
;     e::f
;     r::p
;     t::g
;     y::j
;     u::l
;     i::u
;     o::y
;     p::`;
;     s::r
;     d::s
;     f::t
;     g::d
;     j::n
;     k::e
;     l::i
;     n::k
;     `;::o
; }

; GetKeyboardLayout(ByRef window)
; {
;     return DllCall("GetKeyboardLayout", "UInt", DllCall("GetWindowThreadProcessId", "Int", WinExist(window), "Int", 0), "UShort")
; }
; ; o
; ;;;;