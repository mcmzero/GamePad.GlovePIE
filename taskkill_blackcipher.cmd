@echo off
NET SESSION >nul 2>&1 && goto noUAC
set CMDUAC=%tmp%\GlovePIE_cmdUAC.vbs
set n=%0 %*
set n=%n:"=" ^& Chr(34) ^& "%
if not exist %CMDUAC% echo Set objShell = CreateObject("Shell.Application")>%CMDUAC% && echo objShell.ShellExecute "cmd.exe", "/c start " ^& Chr(34) ^& "." ^& Chr(34) ^& " /d " ^& Chr(34) ^& "%CD%" ^& Chr(34) ^& " cmd /c %n%", "", "runas", ^1>>%CMDUAC%
echo Not Admin, Attempting to elevate...
cscript "%CMDUAC%" //Nologo
::del %CMDUAC%
exit /b
:noUAC

@taskkill /f /im Blackcipher.aes