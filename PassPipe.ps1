Get-Service | Stop-Service -WhatIf


# always by value first / 
Get-Service | Get-Member -MemberType Properties # The Type name is ServiceController (i.e the object name)
Get-help -Full Stop-Service # find if accept pipeline input "true" (i.e -inputobject (servicecontroller (value)), -name (string (value)))

# by property name
Get-Service | Stop-Process -WhatIf
get-help -full stop-process # -id (interger), -name (string)
Get-service | Get-member -MemberType Properties # name (string)
# line 9 - 10 failes because the service name and stop process name 

Get-ADComputer -Filter *
Get-ADComputer -Filter * | Get-service -Name Spooler
# error occurs on line 15
Get-help -Full Get-Service # -name can accept string

Get-ADComputer -Filter * | Get-CimInstance -classname Win32_Service 
Get-help -Full Get-CimInstance # -Computername can accept string Bypropertyname, -filter [string], -namespace [string], -property [string], -query  [string]
Get-ADComputer -Filter * | Get-Member -MemberType Properties
# none match which is why the pipeline failed

Get-ADComputer -Filter * | 
  Select-Object @{n='ComputerName';e={$_.Name}} | 
  Get-Ciminstance -classname Win32_Service 

  Get-Ciminstance -classname Win32_Service -ComputerName(Get-ADComputer -Filter *).name