#Requires -Version 3
$envPath   = "$PSScriptRoot\..\config\meeting.env"
Get-Content $envPath | ForEach-Object {
    if ($_ -match '^\s*([^#=]+)=(.*)$') { Set-Variable -Name $Matches[1] -Value $Matches[2] }
}
$uri = "zoommtg://zoom.us/join?action=join&confno=$MEETING_ID&pwd=$PASSCODE"
Start-Process $uri

