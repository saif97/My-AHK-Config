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

$j::
    startTime := A_TickCount ;record the time the key was pressed
    KeyWait, j, U ;wait for the key to be released
    keypressDuration := A_TickCount-startTime ;calculate the duration the key was pressed down
    if (keypressDuration > 200) ;if the key was pressed down for more than 200ms send >
    {
        j & q::F23 ; intell; run 
        j & w::F22 ; intell; stop
        j & e::F21 ; intell; streach left 
        j & r::F20  ; intell; streach right 

        j & a::^F23 ; intell; debug
        j & s::^F22 ; intell; history
        j & d::^F21 ; intell; AceJump mode 
        j & f::^F20 ; intell; recent files 

        j & z::^+F23 ; intell; projecg 
        j & x::^+F22 ; intell; run 
        j & c::^+F21 ; intell; hide all side windows 
        j & v::Esc ; intell; intellj's return focus to editor not working 
    }
    else ;if the key was pressed down for less than 200ms send j
    {
         Send n
    }
return

$k::
    startTime := A_TickCount ;record the time the key was pressedv
    KeyWait, k, U ;wait for the key to be released
    keypressDuration := A_TickCount-startTime ;calculate the duration the key was pressed down
    if (keypressDuration > 200) ;if the key was pressed down for more than 200ms send >
    {
        k & q::F19
        k & w::F18 
        k & e::F17 
        k & r::F16 ; intell;  fold 

        k & a::^F19 
        k & s::^F18 ; intell; settings
        k & d::^F17 ; intell; go to definition
        k & f::^F16 ; intell; unfold

        k & z::^+F19 ; intell; show todo window
        k & x::^+F18
        k & c::^+F17 
        k & v::^+F16  
    }
    else ;if the key was pressed down for less than 200ms send j
    {
         Send e
    }
return

$p::
    startTime := A_TickCount ;record the time the key was pressed
    KeyWait, p, U ;wait for the key to be released
    keypressDuration := A_TickCount-startTime ;calculate the duration the key was pressed down
    if (keypressDuration > 200) ;if the key was pressed down for more than 200ms send >
    {
        p & s::WinActivate, Samsung Flow
        p & a::WinActivate, IntelliJ IDEA
        p & e::WinActivate, Emulator
        p & t::WinActivate, Visual Studio Cod
        p & c::WinActivate, Chrome
        p & d::WinActivate, DataGrip
        p & x::WinActivate, Adobe XD
    }
    else ;if the key was pressed down for less than 200ms send j
    {
         Send `;
    }
return

capsLock & f::ctrl
capsLock & d::shift
capsLock & s:: Alt
capsLock & j:: left
capsLock & k:: down
capsLock & l:: right
capsLock & i:: up

capsLock & u::home
capsLock & o::end
capsLock & n::backSpace
capsLock & h::Del
capsLock & p::PgUp
capsLock & SC027::PgDn

; Indent and un-indent
capsLock & r::tab
capsLock & e::+tab

Alt & Esc::Send !{F4}

#IfWinActive, Chrome
{
    capsLock & m:: Send {ctrl down}{shift down}t{shift up}{ctrl up}
    capsLock & 1::MButton

    ; My mouses scrolling is abnormal so I've made ctrl + R mouse and drag scrolling :) 
    
    
    return
}

#IfWinActive, Visual Studio Code
{
    ; capsLock & 1:: Send {AltDown}d{AltUp}}
    return
}

#IfWinActive, Adobe XD CC
{
    !^RButton::MButton

    return
}

#If Getkeystate("capsLock","p") ;if shift is held the following hotkey is active.
    
    v & 9::Media_Prev
    v & 0::Media_Next
    v & -:: SoundSet, -5
    v & =:: SoundSet, +5
    v & 8::Media_Play_Pause   
        
    ; Switch between tabs.
    .:: Send {ctrl down}`t{ctrl up}
    ,:: Send {ctrl down}{shift down}`t{shift up}{ctrl up}
    /:: Send {ctrl down}w{ctrl up}
    a:: capsLock

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

     ; Switch between workshops:
    w:: #^right
    q:: #^left

    ; save and load the file. 
    v & r::
        Send, ^s ; To save a changed script
        Sleep, 300 ; give it time to save the script
        Reload
        #SingleInstance Force
        #installKeybdHook
        #Persistent
        Menu, Tray, Icon , Shell32.dll, 25, 1
        ; TrayTip, AutoHotKey, Started, 1
        SoundBeep, 1000, 150
    Return
return
