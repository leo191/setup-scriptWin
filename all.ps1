#$setup=Start-Process "C:\\Users\SubhadipB\Downloads\wrar550.exe" -ArgumentList "/s" -Wait



$fireurl = "https://dl1.filehippo.com/d2eb3c42137a408489cd2981ea3d34b0/Firefox%20Setup%2058.0b13.exe?ttl=1515515050&token=566d4c5007704826fd2f761750b0dbeb"
#$mobaxtremurl = "https://dl2.filehippo.com/a9f29291254c47a4aaf6dbf61485a7bf/MobaXterm_Installer_v10.5.zip?ttl=1515515395&token=b202a7c6ca8e281524a45e9eefb2bfb5"
$keypassurl = "https://excellmedia.dl.sourceforge.net/project/keepass/KeePass%202.x/2.37/KeePass-2.37-Setup.exe"

$outputfire = "$pwd\Softs\Firefox.exe"
$outputmoba = "$pwd\Softs\moba.exe"
$outputkeypass = "$pwd\Softs\keypass.exe"
$start_time = Get-Date

$wc = New-Object System.Net.WebClient

$wc.DownloadFile($keypassurl, $outputkeypass)

#OR
(New-Object System.Net.WebClient).DownloadFile($keypassurl, $outputkeypass)

Write-Output "Time taken for keypass: $((Get-Date).Subtract($start_time).Seconds) second(s)"




$keypass= Start-Process "$outputkeypass" -ArgumentList "/VERYSILENT" -Wait
if( $keypass.ExitCode -eq 0)
{
write-host "keypass installed susccessfully"
}





<#$wc.DownloadFile($fireurl, $outputfire)

#OR
(New-Object System.Net.WebClient).DownloadFile($fireurl, $outputfire)

Write-Output "Time taken for keypass: $((Get-Date).Subtract($start_time).Seconds) second(s)"




$fire=Start-Process "$outputfire" -ArgumentList "-ms" -Wait
if( $fire.ExitCode -eq 0)
{
write-host "firefox installed susccessfully"
}

#>
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$Home\Desktop\Mobaex.lnk")
$Shortcut.TargetPath = "$pwd\Softs\.exe"
$Shortcut.Save()

write-host "mobaxterm installed susccessfully"







<#$st = Start-Process "$Dest\keypass.exe" -ArgumentList "/VERYSILENT" -Wait
if ( $st.ExitCode -eq 0){
    Write-Host "Done"
    }
 #>