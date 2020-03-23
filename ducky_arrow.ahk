#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

RAlt::
    If (A_PriorKey = "RAlt")
   	    Send, {LEFT}
return
>!Del:: Send {RAlt Down}{Del}{RAlt Up}

RWin::
    If (A_PriorKey = "RWin")
   	    Send, {DOWN}
return
>#Del:: Send {RWin Down}{Del}{RWin Up}

RControl::
    If (A_PriorKey = "RControl")
   	    Send, {RIGHT}
return
>^Del:: Send {Control Down}{Del}{COntrol Up}

RShift Up::
    If (A_PriorKey = "RShift") ;  If RShift was pressed alone
   	 Send, {Up} ; up arrow
return
>+Del:: Send {Shift Down}{Del}{Shift Up} ; >+ means RShift

