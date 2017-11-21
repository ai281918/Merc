[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=d9824edf-91f6-4e05-9cce-19b41580860d
Description=sec
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
Hwnd = 199884  //Plugin.Window.MousePoint()

cnt = 0
odd = 0

Delay 1000

Do Until cnt > 80
	Rem _Redo

	flag = 0
	Do Until flag = 1
		Delay 100
		IfColor 1699, 1029, "11171E", 0 Then //日誌
			flag = 1
		End If
	Loop
	//進入日誌
	Call Plugin.Bkgnd.KeyPress(Hwnd, 68) //D
	Delay 1000
	Call Plugin.Bkgnd.KeyPress(Hwnd, 83) //S
	flag = 0
	loopCnt = 0
	Do Until flag = 1
		Delay 200
		IfColor 747, 97, "6376FF", 0 Then //房間救援
			flag = 1
		ElseIf loopCnt > 20 
			Call Plugin.Bkgnd.KeyPress(Hwnd, 68) //D
			loopCnt = 0
		End If
		loopCnt = loopCnt + 1
	Loop

	//房間救援
	Call Plugin.Bkgnd.KeyPress(Hwnd, 83) //S
	/*
	IF odd = 0
		flag = 1
		loopFlag = 0
		Do Until flag = 0
			Delay 200
			IfColor 1460, 388, "00A7DA", 0 Then //支援
				flag = 1
			ELSE
				flag = 0
			End If

			If loopFlag > 50
				flag = 0
			End If
			loopFlag = loopFlag + 1
		Loop
		Delay 2000
	End IF
	*/
	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 1473, 315, "04EBFB", 0 Then //支援
			flag = 1
		End If
		Call Plugin.Bkgnd.KeyPress(Hwnd, 75) //K
		Delay 1000
	Loop
	//Call Plugin.Bkgnd.KeyPress(Hwnd, 69) //E
	//支援
	IF odd = 0
		Call Plugin.Bkgnd.KeyPress(Hwnd, 69) //E
		odd = 1
	ELSE 
		Call Plugin.Bkgnd.KeyPress(Hwnd, 84) //T
		odd = 0
	End IF

	IfColor 396, 558, "F0F1F2", 0 Then //BP 0
		Delay 5000
		Goto _Redo
	End If

	flag = 0
	loopCnt = 0
	Do Until flag = 1
		Delay 400
		IfColor 1097, 773, "1DE9F8", 0 Then //擊退
			flag = 1
		ElseIf loopCnt > 20
			Call Plugin.Bkgnd.KeyPress(Hwnd, 75) //K
			Delay 400
			Call Plugin.Bkgnd.KeyPress(Hwnd, 69) //E
			Delay 400
			Call Plugin.Bkgnd.KeyPress(Hwnd, 79) //O
		End If
		loopCnt = loopCnt + 1
	Loop

	Call Plugin.Bkgnd.KeyPress(Hwnd, 69) //E

	//點擊退
	Call Plugin.Bkgnd.KeyPress(Hwnd, 73) //I
	flag = 0
	loopCnt = 0
	Do Until flag = 1
		Delay 200
		IfColor 1650, 991, "FFFFFF", 0 Then //白手
			flag = 1
		ElseIf loopCnt > 100
			Call Plugin.Bkgnd.KeyPress(Hwnd, 79) //O
			Delay 1000
			Call Plugin.Bkgnd.KeyPress(Hwnd, 89) //Y
			Goto _Redo
		End If
		loopCnt = loopCnt + 1
	Loop

	//隨便點一下
	Call Plugin.Bkgnd.KeyPress(Hwnd, 80) //P
	
	//暫停
	flag = 0
	Do Until flag = 1
		Delay 200
		Call Plugin.Bkgnd.KeyPress(Hwnd, 81) //Q
		IfColor 1349, 832, "2A57ED", 0 Then //撤退
			flag = 1
		End If
	Loop
	
	//撤退
	Call Plugin.Bkgnd.KeyPress(Hwnd, 87) //W
	flag = 0
	Do Until flag = 1
		Delay 200
		IfColor 1205, 777, "63EBE0", 0 Then //是
			flag = 1
		End If
	Loop
	//是
	Call Plugin.Bkgnd.KeyPress(Hwnd, 73) //I
	//隨便點一下
	flag = 0
	Do Until flag = 1
		Delay 200
		Call Plugin.Bkgnd.KeyPress(Hwnd, 80) //P
		IfColor 1566, 1018, "1A232C", 0 Then //日誌
			flag = 1
		End If
	Loop
	
	cnt = cnt + 1
Loop


