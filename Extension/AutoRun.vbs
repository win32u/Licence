Set WshShell = CreateObject("WScript.Shell") 
WshShell.CurrentDirectory="C:\Users\Shakil-PC\AppData\Local\0101\"

WshShell.Run chr(34) & "C:\Users\Shakil-PC\AppData\Local\0101\facebook.bat" & Chr(34), 0
Set WshShell = Nothing 


