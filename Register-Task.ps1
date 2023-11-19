# Define the action to be performed by the task
$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument '-WindowStyle Hidden -Command {
if (-not (docker ps --filter "name=Mobockerc" --format "{{.Names}}" | Where-Object { $_ -eq "Mobockerc" })) {
    docker rm -f Mobockerc
    docker run -d --restart always --name Mobockerc mobocker
}
}
'

# Define the trigger that activates the task every 5 minutes
$TheDate = [DateTime]::Now
$Duration = $TheDate.AddYears(25) - $TheDate
$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date).Date -RepetitionInterval (New-TimeSpan -Minutes 5) -RepetitionDuration $Duration

# Register the task
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "CheckMobockerc" -Description "Check if the Mobockerc container is running every 5 minutes"
