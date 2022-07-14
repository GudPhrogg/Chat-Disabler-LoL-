#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance Force
Soundbeep

if winexist("League of Legends (TM) Client")
{
	Menu, Tray, NoIcon
	gosub Checker_Game
}
else
	WinWait, League of Legends (TM) Client

Menu, Tray, NoIcon

Checker_Game:
loop
{
if not WinExist("League of Legends (TM) Client")
{
	Sleep, 20000
	if WinExist("League of Legends (TM) Client") or WinExist("League of Legends") or WinExist("Riot Client Main")
		continue
	Else
	{
		Soundbeep, 200
		ExitApp
	}
}
if WinExist("Task Manager")
	WinClose, Task Manager
Sleep, 1000
}
return
	
^F7::
reload


#ifwinactive League of Legends (TM) Client


*Enter::return
*NumpadEnter::return

F7::
Send {enter} 
Sleep, 50
Send /ignore all {enter}
return

