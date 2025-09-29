
;#SETUP START
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
ListLines Off
SetBatchLines -1
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#KeyHistory 0
#WinActivateForce

Process, Priority,, H

SetWinDelay -1
SetControlDelay -1

;include the library
#Include %A_LineFile%\..\VD.ahk

;#SETUP END

VD.createUntil(3) ;create until we have at least 3 VD

return


; Ctrl+Alt+arrow
^!Right::VD.goToRelativeDesktopNum(+1)
^!Left::VD.goToRelativeDesktopNum(-1)

; Move current window
CapsLock & Right::VD.MoveWindowToRelativeDesktopNum("A", 1).follow()
CapsLock & Left::VD.MoveWindowToRelativeDesktopNum("A", -1).follow()