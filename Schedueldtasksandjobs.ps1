$sjopt = New-ScheduledJobOption -RunElevated -HideInTaskScheduler
$sjtrig = New-JobTrigger -Once -At (Get-Date).AddMinutes(1)
Register-ScheduledJob -Name MikeSJ -ScriptBlock {'hello'} -Trigger $sjtrig -ScheduledJobOption $sjopt
Get-Job

Get-job -IncludeChildJob

Receive-Job -Id 1 -keep


#recording session 27 July @ 07:28


