# process that have a cpu greater than 2

Get-Command *proc*

Get-Process | where-object {$_.CPU -gt 2}

# list services that do not have more than 1 dependentservices, and show name and dependent service
get-service | select-object -property Dependentservices | where-object {$_.DependentServices -gt 1}
#line 8 is my test
get-service | 
  where-object {$_.DependentServices.Count -le 1} |
  select-object -property name,DependentServices
# 10-12 is correct way

get-service | get-member *
get-service | select-object *

get-process | get-member *
get-process | select-object *
