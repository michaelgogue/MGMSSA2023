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
 
  Param ([string]$InitialString) #(parameter set andd created variable "$InitialString" as a string)

  [string]$RevCaseString = '' #(set "$revcasestring" as a string)

  0..($InitialString.length - 1) | ForEach-Object {
    if ($InitialString[$_].ToString().ToUpper() -ceq $InitialString[$_].ToString()) {$RevCaseString += $InitialString[$_].ToString().ToLower()}
    else {$RevCaseString += $InitialString[$_].ToString().ToUpper()}
  }
  return $RevCaseString
}
ReverseCase -InitialString "tHISiSAsTRING"



function reversecase {
    param ([string]$initialstring)
    [string]$revcasestring = ''

