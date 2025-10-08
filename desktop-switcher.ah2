
;#SETUP START
#SingleInstance force
ListLines 0
SendMode "Input"
SetWorkingDir A_ScriptDir
KeyHistory 0
#WinActivateForce

ProcessSetPriority "H"

SetWinDelay -1
SetControlDelay -1


;include the library
#Include %A_LineFile%\..\..\VD.ahk\VD.ah2

;#SETUP END

VD.createUntil(3) ;create until we have at least 3 VD

return


; Ctrl+Alt+arrow
^!Right::VD.goToRelativeDesktopNum(+1)
^!Left::VD.goToRelativeDesktopNum(-1)

; Move current window
CapsLock & Right::VD.MoveWindowToRelativeDesktopNum("A", 1).follow()
CapsLock & Left::VD.MoveWindowToRelativeDesktopNum("A", -1).follow()