

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


If ( GetKeyboardLayout("A") = 1252) ; 4105 = 0x1009 https://msdn.microsoft.com/en-us/library/aa912040
{
    e::f
    r::p
    t::g
    y::j
    u::l
    i::u
    o::y
    p::`;
    s::r
    d::s
    f::t
    g::d
    j::n
    k::e
    l::i
    n::k
    `;::o
}

GetKeyboardLayout(ByRef window)
{
    return DllCall("GetKeyboardLayout", "UInt", DllCall("GetWindowThreadProcessId", "Int", WinExist(window), "Int", 0), "UShort")
}



; neiluy333333333333333333333333333m,nei33333333333m.m333333333333333333333m,.