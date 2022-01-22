;sc07B=無変換 vimバインド
sc07B & h::Send,{Blind}{Left}
sc07B & j::Send,{Blind}{Down}
sc07B & k::Send,{Blind}{Up}
sc07B & l::Send,{Blind}{Right}

;無変換 u, m : home, end
;sc07B & u::Send,{Blind}{Home}
;sc07B & m::Send,{Blind}{End}

;無変換+r Alt F4 
sc07B & r::Send,!{F4}

;無変換+マウスホイール AltTab
sc07B & WheelDown:: AltTab
sc07B & WheelUp:: ShiftAltTab 

;無変換+n/p AltTab/ShiftAltTab
sc07B & n:: AltTab
sc07B & p:: ShiftAltTab 

;無変換+a ESC
sc07B & a::Send,{Blind}{Esc}

;変換キーでE/J変換、
sc079::Send,{sc029}

;scroll lock -> play/pause
ScrollLock::Send,{Media_Play_Pause}
PrintScreen::Send,{Media_Prev}
Pause::Send,{Media_Next}

;無変換+tでタイムスタンプ挿入
sc07B & t::
FormatTime,TimeString,,yyMMdd
Send,%TimeString%_
Return

;無変換+dでディスプレイ消灯
sc07B & d::
SendMessage, 0x112, 0xF170, 2,, Program Manager
Return
;ctrl+shift+alt+dでディスプレイ消灯（マクロパッド）
!+^d::
SendMessage, 0x112, 0xF170, 2,, Program Manager
Return

;無変換+f F11
sc07B & f::Send,{F11}
