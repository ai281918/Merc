[General]
SyntaxVersion=2
BeginHotkey=114
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=32e84727-a249-411b-8aaf-2806b6152233
Description=scout
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
Hwnd = 788042  //Plugin.Window.MousePoint()

Do
	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 1554, 708, "00CEED", 0 Then //X10
			flag = 1
		End If
	Loop
	Call Plugin.Bkgnd.KeyPress(Hwnd, 76) //L

	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 1209, 778, "35CCB5", 0 Then //мO
			flag = 1
		End If
	Loop
	Call Plugin.Bkgnd.KeyPress(Hwnd, 73) //I

	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 1742, 618, "70766E", 0 Then //йт
			flag = 1
		End If
	Loop
	Call Plugin.Bkgnd.KeyPress(Hwnd, 72) //H

	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 1676, 919, "7CCCC4", 0 Then //SKIP
			flag = 1
		End If
	Loop
	Call Plugin.Bkgnd.KeyPress(Hwnd, 68) //D

	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 273, 76, "CCE5EF", 0 Then //кЁж^
			flag = 1
		End If
	Loop
	Call Plugin.Bkgnd.KeyPress(Hwnd, 77) //M


Loop
