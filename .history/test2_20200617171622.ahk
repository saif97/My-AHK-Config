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

;  with 3 pressed
key=3
#inputlevel,2
$key::
    SetMouseDelay -1
    Send {Blind}{F24 DownR}
    KeyWait, key
    Send {Blind}{F24 up}
    ; MsgBox, %A_ThisHotkey%-%A_TimeSinceThisHotkey%
    if(A_ThisHotkey="$key" and A_TimeSinceThisHotkey<200)
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

; 123456789mnnin123456789so this is saif mohamad Hakeam and this is my 100's script that dons' make sence so why my ip is 192.168.2.