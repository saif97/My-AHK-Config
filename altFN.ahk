RAlt & 2:: Reload,
RAlt & 0::ExitApp,
; tab::return


;SpaceFnthis this is what I call the best            way of doing things this is what I call the best way of doing things in s is a test of what I can do inFhld ld this is waht I call the best shit
#inputlevel,2
$LAlt::
    SetMouseDelay -1
    Send {Blind}{F22 DownR}
    KeyWait, LAlt
    Send {Blind}{F22 up}
    ; MsgBox, %A_ThisHotkey%-%A_TimeSinceThisHotkey%
    if(A_ThisHotkey="$LAlt" and A_TimeSinceThisHotkey<200)
        Send {Blind}{Space DownR}
    return

#inputlevel,1
F22 & i::Up
F22 & k::Down
F22 & j::Left
F22 & l::Right

F22 & u::Home
F22 & o::End

F22 & d::shift
F22 & f::ctrl
F22 & s::Alt

F22 & n::backSpace
F22 & h::Del

F22 & z::^z
F22 & x::^x
F22 & c::^c
F22 & v::^v

F22 & `;:: F13
F22 & p:: ^F13
F22 & t:: ^!F13

F22 & Enter:: ^!+F13

F22 & Tab::!Tab

; Indent and un-indent
r::tab
e::+tab

; Switch between workshops:
w:: #^right
q:: #^left

m:: Send {ctrl down}{shift down}t{shift up}{ctrl up}    
; Switch between tabs.
.:: Send {ctrl down}`t{ctrl up}
,:: Send {ctrl down}{shift down}`t{shift up}{ctrl up}
/:: Send {ctrl down}w{ctrl up}
;
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



#IfWinActive, Chrome
{
    F22 & 1::MButton

    ; My mouses scrolling is abnormal so I've made ctrl + R mouse and drag scrollening :)
    F22 & 9::send {Home} {shift down}{left}{left}{shift up}

}
#IfWinActive, Adobe XD CC
{
    ; !^RButton::MButton

    return
}