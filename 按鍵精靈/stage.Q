[General]
SyntaxVersion=2
BeginHotkey=117
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=acc280f6-e76e-4683-8990-7c06b327fda2
Description=stage
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
Hwnd = 67698  //Plugin.Window.MousePoint()

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

	Call Plugin.Bkgnd.KeyPress(Hwnd, A)
	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 1196, 747, "49F0FB", 0 Then //任務開始
			flag = 1
		End If
	Loop
	Call Plugin.Bkgnd.KeyPress(Hwnd, 73) //I
	/*
	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 1651, 991, "FFFFFF", 0 Then //白手
			flag = 1
		End If
	Loop
	Call Plugin.Bkgnd.KeyPress(Hwnd, 73) //I
	
	//Seed
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
		IfColor 1297, 382, "D2ECF8", 0 Then //選關
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
	
	//Guts
	/*
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
	*/
	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 1315, 219, "CDEAF5", 0 Then //選關
			flag = 1
		End If
		//Call Plugin.Bkgnd.KeyPress(Hwnd, O)
		//Delay 1000
	Loop
	
Loop



