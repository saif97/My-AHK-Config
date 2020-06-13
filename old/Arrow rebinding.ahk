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
; SetTitleMatchMode 3  ; Exact matching to avoid confusing T/B with Tab/Backspace.vvvvvvvv
SetCapsLockState, alwaysoff
SetTitleMatchMode RegEx


; 9 :: SendInput, {Enter}
'::
    Suspend, off
    return

~capsLock::
    Suspend, on
    return


f::ctrl
d::shift
s:: Alt
j:: left
k:: down
l:: right
i:: up
u::home
o::end
n::backSpace
h::Del
p::PgUp
SC027::PgDn
; Indent and un-indent
r::tab
e::+tab
; Copy cut Past
c::^c
v::^v
x::^x
z::^z

; Switch between workshops:
w:: #^right
q:: #^left

; Switch between tabs.
.:: Send {ctrl down}`t{ctrl up}
,:: Send {ctrl down}{shift down}`t{shift up}{ctrl up}
/:: Send {ctrl down}w{ctrl up}

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

a:: capsLock

n & q::F23 ; intell; run
n & w::F22 ; intell; stop
n & e::F21 ; intell; streach left
n & r::F20  ; intell; streach right
n & t::^+!F20  ; intell; maximize window size

n & a::^F23 ; intell; debug
n & s::^F22 ; intell; history
n & d::^F21 ; intell; AceJump mode
n & f::^F20 ; intell; recent files
n & g:: ; intell; recent files and enter
        send {CtrlDown}{F20}{CtrlUp}}
        sleep, 100
        send {Enter}

n & z::^+F23 ; intell; projecg
n & x::^+F22 ; intell; run
n & c::^+F21 ; intell; hide all side windows
n & v::Esc ; intell; intellj's return focus to editor not working

m & q::F19 ; intell; creat new
m & w::F18 ; intell; extend selection
m & e::F17 ; intell; toggle comment
m & r::F16 ; intell;  fold

m & a::^F19 ; auto arrange code
m & s::^F18 ; intell; settings
m & d::^F17 ; intell; go to definition
m & f::^F16 ; intell; unfold

m & z::^+F19 ; intell; show todo window
m & x::^+F18 ; intell; show debug window
m & c::^+F17 ; intell; show folder in explorar
m & v::^+F16 ; intellj; generate

o & r:: F15 ; intellj; rename refactor


u & q::^+n ; new folder
u & a::^n ; new window
u & w::^w ; close window / progpram

; u & s::#left ; pan left
; u & f::#right ; pan right
; u & e::#up ; pan up
; u & d::#down ; pan down


; o & s::WinActivate, Samsung Flow
; o & a::WinActivate, IntelliJ IDEA
; o & e::WinActivate, Emulator
; o & t::WinActivate, Visual Studio Cod
; o & c::WinActivate, Chrome
; o & d::WinActivate, DataGrip
; o & x::WinActivate, Adobe XD
#If Getkeystate("'","p") ;if shift is held the following hotkey is active.

return
