@echo off
if not "%1" == "" cd %1
PIEFree.exe -"gamepad_kill.pie" /run
start /LOW /B PIEFree.exe -"gamepad_windows.pie" /tray