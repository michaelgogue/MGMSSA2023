# This script finds 'lara'
get-aduser -filter {samaccountname -eq 'lara'}
# to show processing time
measure-command -expression {get-aduser -filter {samaccountname -eq 'lara'} } | select-object milliseconds


# this script goes through all users then pulls 'lara'
get-aduser -filter * | where-object {$_.samaccountname -eq 'lara'}
# to show processing time
measure-command -expression {get-aduser -filter * | where-object {$_.samaccountname -eq 'lara'} } | select-object milliseconds


