[General]
SyntaxVersion=2
BeginHotkey=113
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=e0c22b7d-f584-483f-b59d-66a353d8ecfa
Description=tp
Enable=0
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
Hwnd = 525924  //Plugin.Window.MousePoint()

A = 65
B = 66
C = 67
D = 68
E = 69
F = 70
G = 71
H = 72
I = 73
J = 74
K = 75
L = 76
M = 77
N = 78
O = 79
P = 80
Q = 81
R = 82
S = 83
T = 84
U = 85
V = 86
W = 87
X = 88
Y = 89
Z = 90

i = 0
Do Until i = 20

	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 1453, 762, "00D3EF", 0 Then //任務開始
			flag = 1
		End If
		Call Plugin.Bkgnd.KeyPress(Hwnd, E)
		Delay 1000
	Loop
	Call Plugin.Bkgnd.KeyPress(Hwnd, 73) //I

	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 1652, 994, "FFFFFF", 0 Then //白手
			flag = 1
		End If
	Loop
	Call Plugin.Bkgnd.KeyPress(Hwnd, 73) //I

	j = 0
	Do Until j = 12
		Call Plugin.Bkgnd.KeyPress(Hwnd, 90) //Z
		Delay 100
		Call Plugin.Bkgnd.KeyPress(Hwnd, 88) //X
		Delay 100
		Call Plugin.Bkgnd.KeyPress(Hwnd, 67) //C
		Delay 100
		Call Plugin.Bkgnd.KeyPress(Hwnd, 86) //V
		Delay 100
		Call Plugin.Bkgnd.KeyPress(Hwnd, 66) //B
		Delay 100
		j = j + 1
	Loop

	Call Plugin.Bkgnd.KeyPress(Hwnd, 82) //R
	Call Plugin.Bkgnd.KeyPress(Hwnd, 82) //R

Loop



