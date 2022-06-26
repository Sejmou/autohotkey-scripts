;Stolen and adapted from https://superuser.com/a/1701856/1185399
;#SETUP START
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force
ListLines Off
SetBatchLines -1
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
#KeyHistory 0
#WinActivateForce

Process, Priority,, H

SetWinDelay -1
SetControlDelay -1

;include the library
#Include %A_WorkingDir%\VD.ahk\VD.ahk ; Make sure to specify correct folder where VD.ahk was cloned to (make sure you have run "git clone https://github.com/FuPeiJiang/VD.ahk" beforehand!)
VD.init() ;COMMENT OUT `static dummyStatic1 := VD.init()` if you don't want to init at start of script

;you should WinHide invisible programs that have a window.
WinHide, % "Malwarebytes Tray Application"
;#SETUP END

VD.createUntil(3) ;create until we have at least 3 VD

return

^#+Left::
  n := VD.getCurrentDesktopNum()
  if n = 1
  {
    Return
  }
  n -= 1
  VD.MoveWindowToDesktopNum("A",n), VD.goToDesktopNum(n)
Return

^#+Right::
  n := VD.getCurrentDesktopNum()
  if n = % VD.getCount()
  {
    Return
  }
  n += 1
  VD.MoveWindowToDesktopNum("A",n), VD.goToDesktopNum(n)
Return