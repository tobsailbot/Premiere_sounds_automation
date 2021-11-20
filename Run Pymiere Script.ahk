#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; abrir consola y ejecutar script de python

^+k::

if WinExist("Pymiere Console")
{
    	WinActivate , Pymiere Console
	Send, python pymiere_pop_sounds.py
	Send, {Enter}
	WinMinimize, Pymiere Console
}
else
{
	Run, C:\PythonScripts\Pymiere Automation\Pymiere Console.lnk
    	WinWaitActive, Pymiere Console
	Send, python pymiere_pop_sounds.py
	Send, {Enter}
	WinMinimize, Pymiere Console
}