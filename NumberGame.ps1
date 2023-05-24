$numberToGuess = 1..100 | Get-Random
do {
  [int]$UserGuess = Read-Host -Prompt "Please enter a number between 1 and 100"
  If ($UserGuess -lt $NumberToGuess) {Write-Host "Pick a higher number" }
  elseif ($UserGuess -gt $NumberToGuess) {Write-Host "Pick a lower number" }
  else {Write-Host "Congrats" }
} until ($NumberToGuess -eq $UserGuess)
