[General]
SyntaxVersion=2
BeginHotkey=119
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=6bbf5d11-55ce-4f23-bb90-a23003413744
Description=mons
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
Hwnd = 66596  //Plugin.Window.MousePoint()

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
sp = False
Call Plugin.Bkgnd.KeyPress(Hwnd, A)
Do Until i = -1
	Call Plugin.Bkgnd.KeyPress(Hwnd, A)
	If sp = True
		Call Plugin.Bkgnd.KeyPress(Hwnd, A)
		sp = False
	Else 
		/*flag = 0
		Do Until flag = 1
			Delay 200
			IfColor 1641, 534, "DBEEF6", 0 Then //任務開始
				flag = 1
			End If
		Loop
		*/
		Call Plugin.Bkgnd.KeyPress(Hwnd, S)
		sp = True
	End If
	
	Delay 5000
Loop



