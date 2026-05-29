#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Event
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay, 50, 50
SetMouseDelay -1
SetBatchLines -1

F3::
Macro1:
Loop
{
    ; Attiva la finestra di Dark Souls 3
    WinActivate, ahk_exe DarkSoulsIII.exe
    Sleep, 333
    
    Loop, 10
    {
	Send, r
	Sleep, 100
	Send, {Down}
	Sleep, 100
	Send, e  
        Sleep, 25000
	Send, {w Down}
	Send, {Space Down}
	Sleep, 1000
	DllCall("mouse_event", "UInt", 0x0001, "Int", 15, "Int", 0, "UInt", 0, "UPtr", 0)
	Sleep, 6000
	Send, {Space Up}
	Send, q
	Send, {d Down}
	Sleep, 400
	Send, {Space Down}
	Sleep, 50
	Send, {Space Up}
	Send, {d Up}
	Sleep, 1050
	Send, {w Up}
	Send, {LButton Down}
	Sleep, 50
	Send, {LButton Up}
	Sleep, 1000
	Send, {LButton Down}
	Sleep, 50
	Send, {LButton Up}
	Sleep, 1000
	Send, {LButton Down}
	Sleep, 50
	Send, {LButton Up}
	Sleep, 2000
	Send, {w Down}
	Sleep, 100
	Send, {w up}
	Send, e
	Sleep, 100
	Send, e
	Sleep, 800
    }
    
    ; Riattiva la finestra per sicurezza alla fine del ciclo
    WinActivate, ahk_exe DarkSoulsIII.exe
}
Return

F8::
Reload
Return