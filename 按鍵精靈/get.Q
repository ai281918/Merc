[General]
SyntaxVersion=2
BeginHotkey=116
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=f50780d0-b028-4e4b-827c-d2401e14d2ea
Description=get
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
Hwnd = 198082  //Plugin.Window.MousePoint()

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

Do
	Call Plugin.Bkgnd.KeyPress(Hwnd, L)
	
	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 1168, 822, "CCCFD2", 0 Then
			flag = 1
		End If
	Loop
	Call Plugin.Bkgnd.KeyPress(Hwnd, 73) //I
	
	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 899, 796, "34CAB3", 0 Then
			flag = 1
		End If
	Loop
	Call Plugin.Bkgnd.KeyPress(Hwnd, 79) //O
	
	Delay 600
Loop
