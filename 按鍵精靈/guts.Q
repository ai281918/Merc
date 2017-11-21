[General]
SyntaxVersion=2
BeginHotkey=120
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=99671145-23dc-470e-92f1-d83743ff15c2
Description=guts
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
Hwnd = 590784  //Plugin.Window.MousePoint()

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

Do Until i = - 1 
	Call Plugin.Bkgnd.KeyPress(Hwnd, A)
	If sp = True
		
		flag = 0
		Do Until flag = 1
			Delay 200
			IfColor 1608, 298, "D9EFFA", 0 Then
				flag = 1
			End If
		Loop
		Call Plugin.Bkgnd.KeyPress(Hwnd, J)
		
		sp = False
	Else 
		flag = 0
		cnt = 0
		Do Until flag = 1
			Delay 200
			IfColor 1598, 499, "E6F6FD", 0 Then
				flag = 1
			ElseIf cnt > 10 Then
				Call Plugin.Bkgnd.KeyPress(Hwnd, D)
				
				flag_t = 0
				Do Until flag_t = 1
					Delay 200
					IfColor 1437, 474, "76CCFF", 0 Then
						flag_t = 1
					End If
				Loop
				cnt = 0
				Call Plugin.Bkgnd.KeyPress(Hwnd, F)
			End If
			cnt = cnt + 1
		Loop
		
		Call Plugin.Bkgnd.KeyPress(Hwnd, S)
		//sp = True
	End If
	
	Delay 500
Loop

