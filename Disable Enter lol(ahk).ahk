#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance Force
#Notrayicon

Soundbeep

if WinExist("League of Legends (TM) Client") or WinExist("League of Legends") or WinExist("Riot Client Main")
	gosub Checker_Game
else
	WinWait, "League of Legends",,30
if not WinExist("League of Legends")
{
	Soundbeep, 200
	ExitApp
}
else
	Gosub Checker_Game
return

	
Checker_Game:
loop
{
if not WinExist("League of Legends (TM) Client")
{
	Sleep, 10000
	if WinExist("League of Legends (TM) Client") or WinExist("League of Legends") or WinExist("Riot Client Main")
		continue
	Else
	{
		Soundbeep, 200
		ExitApp
	}
}
if WinExist("Task Manager")
{
	WinGet,TM,PID,Task Manager
	Process, Close, %TM%
}
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

