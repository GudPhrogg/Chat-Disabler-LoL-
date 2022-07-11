#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance Force
#NoTrayIcon

Soundbeep

if WinExist("ahk_exe League of Legends.exe") or WinExist("ahk_exe LeagueClientUx.exe") or WinExist(ahk_exe RiotClientUx.exe)
	gosub Checker_Game
else
	WinWait, ahk_exe LeagueClientUx.exe,,30
if not WinExist("ahk_exe LeagueClientUx.exe")
	ExitApp
else
	Gosub Checker_Game
return

	
Checker_Game:
loop
{
if not WinExist("ahk_exe League of Legends.exe")
{
	Sleep, 20000
	if WinExist("ahk_exe League of Legends.exe") or WinExist("ahk_exe LeagueClientUx.exe") or WinExist(ahk_exe RiotClientUx.exe)
		continue
	Else
	{
		WinGet, Blitz, ProcessName, ahk_exe Blitz.exe
		Sleep, 2000
		Process, Close, %Blitz%
		WinWaitClose, ahk_exe Blitz.exe,,5
		ExitApp
	}
}
if WinExist("ahk_exe Taskmgr.exe")
	WinClose, ahk_exe Taskmgr.exe
Sleep, 7000
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

