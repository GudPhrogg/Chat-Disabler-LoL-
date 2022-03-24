#Singleinstance Force
#NoTrayIcon

WinWait, ahk_exe LeagueClientUx.exe,,30
Sleep, 1000

if WinExist ("League of Legends (TM) Client")
	gosub Checker_Loop
if WinExist("ahk_exe LeagueClientUx.exe")
{
	gosub Checker_Loop
}
Else
{
	ExitApp
}


Checker_Loop:
SoundBeep
loop
{
if not WinExist("ahk_exe LeagueClientUx.exe")
	gosub Closer
if WinExist ("ahk_exe Taskmgr.exe")
	WinClose, ahk_exe Taskmgr.exe
Sleep, 1000
}
return


Closer:
if WinExist ("League of Legends (TM) Client")
	WinWait, ahk_exe LeagueClientUx.exe
if WinExist, ("ahk_exe LeagueClientUx.exe")
	gosub Checker_Loop
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