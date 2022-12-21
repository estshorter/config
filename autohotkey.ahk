#Requires AutoHotkey v2.0

sc07B & j::Send "{Blind}{Down}"
sc07B & k::Send "{Blind}{Up}"
sc07B & l::Send "{Blind}{Right}"

;無変換 u, m : home, end
sc07B & u::Send "{Blind}{Home}"
sc07B & m::Send "{Blind}{End}"

;無変換+d Alt F4 
sc07B & d::Send "!{F4}"

;無変換+n/p AltTab/ShiftAltTab
sc07B & n:: AltTab
sc07B & p:: ShiftAltTab 

;無変換+o -> ctrl shift space : orchis起動
sc07B & q::Send "^!{Space}"
sc07B & o::Send "^!{Space}"

;無変換+w -> スタートメニュー
sc07B & w::Send "^{Esc}"

;無変換+a ESC
sc07B & a::Send "{Blind}{Esc}"

;変換キーでE/J変換、
sc079::Send "{sc029}"

;無変換+f F11
sc07B & f::Send "{F11}"

;無変換+tでタイムスタンプ挿入
sc07B & t::Send FormatTime(,"yyMMdd_")

;無変換+Spaceで power toys run
sc07B & Space::Send "!{Space}"

;無変換+マウスホイール AltTab
sc07B & WheelDown:: AltTab
sc07B & WheelUp:: ShiftAltTab 

;scroll lock -> play/pause
ScrollLock::Send "{Media_Play_Pause}"
;PrintScreen::Send "{Media_Prev}"
;Pause::Send "{Media_Next}"

;Printscreenでalways on top (powertoys必須)
PrintScreen::#^t

;Pauseでディスプレイ消灯
Pause::Run "C:\Users\estshorter\src\display-off\x64\Release\display-off.exe"
