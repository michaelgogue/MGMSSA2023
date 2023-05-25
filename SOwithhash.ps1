Get-Volume
Get-Volume | Select-object -Property DriveLetter,Size,SizeRemaining
Get-Volume | Select-object -Property DriveLetter,Size,SizeRemaining,@{n='SizeUsed';e={$_.Size - $_.SizeRemaining}}
