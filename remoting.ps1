# One to One remoting
Enter-PSSession -ComputerName lon-svr1
Enter-PSSession -ComputerName lon-dc1
Get-ComputerInfo
Exit-PSSession

# One to many remoting
invoke-command -ComputerName lon-dc1,lon-svr1 -ScriptBlock {
  get-service -Name Spooler
}
Exit-PSSession

# NOTE: Throttling (limints to 32 machines at once (can be changed with the throttle limit parameter))

#misc
Get-Service -Name spooler | gm
invoke-command -ComputerName lon-dc1,lon-svr1 -ScriptBlock {get-service -Name Spooler} | gm

Exit-PSSession


