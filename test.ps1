Get-Volume
Get-Volume | Select-Object -Property DriveLetter,size,@{n='PercentUsed';e={($_.SizeRemaining / $_.Size) * 100}}
#2 is my attempt
Get-Volume | Select-Object -Property DriveLetter,@{n='PercentUsed';e={($_.size - $_.SizeRemaining) / $_.size * 100}}

get-command *date*
get-date