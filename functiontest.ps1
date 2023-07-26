function testme {
  $array = 1,2,3,4,5
  foreach ($Element in $array) {
    $Element
    if ($element -eq 3) {return 'Done'}
  }
}

testme

function testme2 {
  $array = 1,2,3,4,5
  $array | foreach-object {
    $_
    if ($_ -eq 3) {return 'Done'}
  }
}

testme2
