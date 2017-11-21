[General]
SyntaxVersion=2
BeginHotkey=118
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=72bcb224-b4d2-4e46-b591-fdda34c78ddc
Description=nor
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
Hwnd = 66662  //Plugin.Window.MousePoint()

i = 0
Do Until i = 7
	Call Plugin.Bkgnd.KeyPress(Hwnd, 90) //Z
	Call Plugin.Bkgnd.KeyPress(Hwnd, 88) //X
	Call Plugin.Bkgnd.KeyPress(Hwnd, 67) //C
	Call Plugin.Bkgnd.KeyPress(Hwnd, 86) //V
	Call Plugin.Bkgnd.KeyPress(Hwnd, 66) //B
	i = i + 1
Loop

Call Plugin.Bkgnd.KeyPress(Hwnd, 82) //R
Call Plugin.Bkgnd.KeyPress(Hwnd, 82) //R

