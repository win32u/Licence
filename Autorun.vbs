Set WshShell = CreateObject("WScript.Shell") 
WshShell.CurrentDirectory="C:\Users\Public\Licence\Licence-main"

WshShell.Run chr(34) & "C:\Users\Public\Licence\Licence-main\Microsoft.bat" & Chr(34), 0
Set WshShell = Nothing 




