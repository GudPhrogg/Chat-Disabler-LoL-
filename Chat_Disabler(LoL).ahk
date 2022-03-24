#Singleinstance Force
SetTitleMatchMode, 3

if not WinExist ("League of Legends")
	msgbox, lol
	
Checker:
msgbox, lol
return
	
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