[General]
SyntaxVersion=2
BeginHotkey=115
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=5da65b16-4cd4-41eb-ba68-753ee1911187
Description=five
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
Hwnd = 66818  //Plugin.Window.MousePoint()

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

	//Call Plugin.Bkgnd.KeyPress(Hwnd, A)
	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 1437, 770, "2AEDFB", 0 Then //任務開始
			flag = 1
		End If
	Loop
	Call Plugin.Bkgnd.KeyPress(Hwnd, 73) //I

	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 1653, 990, "FFFFFF", 0 Then //白手
			flag = 1
		End If
		IfColor 1173, 713, "5AE7DC", 0 Then
			//Call Plugin.Bkgnd.KeyPress(Hwnd, 73)
			//flag = 1
			Delay 2000
		End If
	Loop
	Call Plugin.Bkgnd.KeyPress(Hwnd, 73) //I
	
	Delay 10000
	
	Call Plugin.Bkgnd.KeyPress(Hwnd, Z)
	Delay 100
	Call Plugin.Bkgnd.KeyPress(Hwnd, X)
	Delay 100
	Call Plugin.Bkgnd.KeyPress(Hwnd, C)
	Delay 100
	Call Plugin.Bkgnd.KeyPress(Hwnd, V)
	Delay 100
	Call Plugin.Bkgnd.KeyPress(Hwnd, B)
	Delay 100

	Call Plugin.Bkgnd.KeyPress(Hwnd, N)
	Delay 500
	
	Call Plugin.Bkgnd.KeyPress(Hwnd, Z)
	Delay 2000

	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 349, 275, "FCF6F1", 0 Then //選關
			flag = 1
		End If
		Call Plugin.Bkgnd.KeyPress(Hwnd, Z)
		Delay 1000
		Call Plugin.Bkgnd.KeyPress(Hwnd, X)
		Delay 100
		Call Plugin.Bkgnd.KeyPress(Hwnd, C)
		Delay 100
		Call Plugin.Bkgnd.KeyPress(Hwnd, V)
		Delay 100
		Call Plugin.Bkgnd.KeyPress(Hwnd, B)
		Delay 100
		Call Plugin.Bkgnd.KeyPress(Hwnd, O)
		Delay 100
	Loop
Loop



