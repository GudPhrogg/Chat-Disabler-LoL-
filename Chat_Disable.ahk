#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance Force
#Notrayicon

Soundbeep


if WinExist("ahk_exe League of Legends.exe")
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
	gosub Closer
if WinExist ("ahk_exe Taskmgr.exe")
	WinClose, ahk_exe Taskmgr.exe
Sleep, 1000
}
return

Closer:
Sleep, 10000
if WinExist("ahk_exe League of Legends.exe")
	gosub, Checker_Game
if WinExist("ahk_exe LeagueClientUx.exe")
	gosub, Checker_Game
Else
	ExitApp
	
	
^F8::
reload


#ifwinactive League of Legends (TM) Client


*Enter::return
*NumpadEnter::return


F7::
Send {enter} 
Sleep, 50
Send /ignore all {enter}
return


F8::
Send {enter} 
Sleep, 50
Send gg {enter}
return