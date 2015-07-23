Set UAC = CreateObject("Shell.Application") 
UAC.ShellExecute "taskkill_blackcipher.cmd", "", "", "runas", 1 
