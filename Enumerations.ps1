get-service | ForEach-Object {
  '' , $_.Name + 'is the name of the service'
  '' , $_.Status + 'is the status of ' + $_.Name
  "----------------------------"
}

1..10 | Foreach-object {Get-Random -SetSeed $_}

