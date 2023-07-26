invoke-command -computername lon-svr1 -ScriptBlock {Get-WindowsFeature | select-object name, installstate}
invoke-command -computername lon-svr1 -ScriptBlock {Get-WindowsFeature} | select-object name, installstate

invoke-command -computername lon-svr1 -ScriptBlock {Install-WindowsFeature -Name 'web-server'} 



$DC1Session = New-PSSession -ComputerName lon-dc1
Import-Module -prefix DC1 -name SmbShare -pssession $DC1Session
Get-DC1SmbShare

Get-smbshare

# for one off commands
Enter-PSSession -computername lon-dc1
HOSTNAME
ipconfig

Exit-PSSession

