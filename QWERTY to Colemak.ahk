

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
; SetCapsLockState, alwaysoff
SetTitleMatchMode RegEx



RAlt & 1:: Suspend

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

; Tab::F14


#inputlevel,2
$3::
    SetMouseDelay -1
    Send {Blind}{F24 DownR}
    KeyWait, 3
    Send {Blind}{F24 up}
    ; MsgBox, %A_ThisHotkey%-%A_TimeSinceThisHotkey%
    if(A_ThisHotkey="$3" and A_TimeSinceThisHotkey<200)
        ; Send {Blind}{3 DownR}
    return

$2::
    SetMouseDelay -1
    Send {Blind}{F23 DownR}
    KeyWait, 2
    Send {Blind}{F23 up}
    ; MsgBox, %A_ThisHotkey%-%A_TimeSinceThisHotkey%
    if(A_ThisHotkey="$2" and A_TimeSinceThisHotkey<200)
        ; Send {Blind}{2 DownR}
    return


; $RShift::
;     SetMouseDelay -1
;     Send {Blind}{Ctrl DownR} {Alt DownR}
;     KeyWait, RShift
;     Send {Blind}{Ctrl up} {Alt up}
;     ; MsgBox, %A_ThisHotkey%-%A_TimeSinceThisHotkey%
;     if(A_ThisHotkey="$RShift" and A_TimeSinceThisHotkey<200)
;         Send {Blind}{F11 DownR}
;     return

RShift::F11

#inputlevel,1
F24 & n:: 1
F24 & m:: 2
F24 & ,:: 3
F24 & j:: 4
F24 & k:: 5
F24 & l:: 6
F24 & u:: 7
F24 & i:: 8
F24 & o:: 9
F24 & Space:: 0
F24 & p:: +
F24 & `;:: -
F24 & /:: =
F24 & h:: *


F23 & n::)
F23 & m::]
F23 & ,::}
F23 & j::(
F23 & k::[
F23 & l::{
F23 & u::!
F23 & i::@
F23 & o::$
F23 & Space::_
F23 & p::Send `%
F23 & `;::&
F23 & /::#

; To force my self to learn the new way of typing numbers & symboyls I'll disable number row entiely
1::
; 2::
; 3::
4::
5::
6::
7::
8::
9::

; $Ctrl::#