#1 Testing the use of methods
#Q1.1 Create a function that takes a string as a parameter and reverses the case, 
    #upper case changed to lower case and lower case changed to upper case


function ReverseCase {
  Param ([string]$InitialString)
  [string]$RevCaseString = ''
  0..($InitialString.length - 1) | ForEach-Object {
    if ($InitialString[$_].ToString().ToUpper() -ceq $InitialString[$_].ToString()) {$RevCaseString += $InitialString[$_].ToString().ToLower()}
    else {$RevCaseString += $InitialString[$_].ToString().ToUpper()}
  }
  return $RevCaseString
}
ReverseCase -InitialString "tHISiSAsTRING"




function ReverseCase { #(set "reversecase" as the name of the function)
 
  Param ([string]$InitialString) #(parameter set and created variable "$InitialString" as a string)

  [string]$RevCaseString = '' #(set "$revcasestring" as a string)

  0..($InitialString.length - 1) | ForEach-Object {
    if ($InitialString[$_].ToString().ToUpper() -ceq $InitialString[$_].ToString()) {$RevCaseString += $InitialString[$_].ToString().ToLower()}
    else {$RevCaseString += $InitialString[$_].ToString().ToUpper()}
  }
  return $RevCaseString
}
ReverseCase -InitialString "tHISiSAsTRING"



#Q1.2 Create a function that takes a three word sentence as a string parameter
    #and only return th middle word
    #For this challenge use the methods .IndexOf() to find the location of the spaces and .Substring() to extract the middle word

function retmid {
    param ([string]$threewords = 'My three words')
    $separator = " "
    $threewords.Split($separator)
    $index = $threewords.IndexOf(' ')
    foreach ($separator in $threewords) {
    $word
    if ($word -eq 'take apple today') {return 'done'}
    }
}
retmid     

function retmid {
    param ([string]$threewords = 'My three words')
    $separator = " "
    $threewords.Split($separator)
    $index1 = $threewords.IndexOf('$separator')
    $INDEX2 = $threewords.IndexOf($separator - ' ') + 1
    $index3 = $threewords.indexof(' ')

    return $threewords.Substring($index2)
}
retmid  



function retmid {
    param ([string]$threewords = 'My three words')
    $index1 = $threewords.IndexOf(' ')
    $INDEX2 = $threewords.IndexOf(' ')
    $index3 = $threewords.indexof(' ')
    return $threewords.Substring(' ')
}
retmid

#Correct way

function Find-MiddleWord {
  Param ([string]$Sentence = 'Three Blind Mice' )
    
  $IndexMidWord = $Sentence.IndexOf(' ') + 1
  $IndexEndMidWord = $Sentence.IndexOf(' ',$IndexMidWord)
  $WordLength = $IndexEndMidWord - $IndexMidWord
  $MiddleWord = $Sentence.Substring($IndexMidWord,$WordLength)
  Return $MiddleWord
}
Find-MiddleWord -Sentence "Three Blind Mice"





#Q2.1 Create a function that calculates your age in days

function ageindays {    
    param ()
    do {
    [int]$DOB = Read-Host -Prompt "Enter your DOB"

    }
    
}

#CORRECT WAY
function Get-AgeInDays {
  Param ([datetime]$DateOfBirth)
  $Now = Get-Date
  $Age = $Now - $DateOfBirth
  return $Age.days / 365
}

Get-AgeInDays -DateOfBirth "15-sep-1980"