Get-Service
Get-Service | Where-Object {$_.status -eq 'Running'}

Get-Service | Where-Object {$_.Name -eq 'spooler'}

Get-Service -name spooler

1 -and 1
1 -and 0
1 -or 0
0 -or 0
1 -or 1

Get-Service | Where-Object {$_.status -eq 'Running' -and $_.Name -like "a*"}
Get-Service | Where-Object {$_.status -eq 'Running' -or $_.Name -like "a*"}
# use of and/or

Get-Service | Where-Object {$_.status -eq 'Running' -and $_.Name -like "a??????"}
# use of * and ? - "* = all characters", "? = number of characters based on number of question marks"

'21:09' -match '^\d\d\:\d\d$'
'21' -match '^0[0-9]|1[0-9]|2[0-3]'

1,2,3,4,5 -contains 5
1,2,3,4,5 -contains 9
4 -in 2,3,4,5,6

Get-ADUser -filter *

$users = Get-ADUser -Filter *
$users.givenname -contains 'Mike'
$users.givenname -contains 'Lara'

get-service | where-object -FilterScript { $PSItem.Status -eq 'Running' }

Get-Service | Where-Object {$_.Name.length -gt 8}

Get-ChildItem
