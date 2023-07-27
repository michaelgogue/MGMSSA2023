#1 Using pipelines

#Q1.1 Write a pipeline that 
    #displays all running services and show the following properties 
    #sorted by the StartType and then by Name
    #Properties to show Status, StartType, Name, DisplayName

Get-service | select-object -Property *
Get-service | select-object -Property status, starttype, name, displayname

Get-service | where-object {$_.status -eq 'running'} | 
    sort-object -Property starttype, name | 
    select-object -Property status, startype, name, displayname


#Q1.2 Write a pipeline that will 
    #show the some properties of the BIOS information using a CimInstance command
    #Show the following properties: BIOSVersion,ReleaseDate

get-command *ciminstance*
get-help Get-ciminstance -showwindow
get-cimclass *bios*

Get-CimInstance -ClassName win32_bios | select-object -property biosversion, releasedate | format-list


#Q1.3 Write a pipeline that shows the 
    #four most recent System event log entries and 
    #only shows the following
    #The EventID and how long ago the entries were geneated in minutes

get-command *event*
get-help get-eventlog -showwindow
Get-eventlog -LogName System | gm | more


#myattempt - Get-eventlog -LogName System -newest 4 | select-object -property eventid, timegenerated, 
            # @{n='minutes';e={$timewritten - $timegenerated / 60}}


Get-eventlog -LogName System -newest 4 |
select-object -property eventid, timegenerated, 
    @{n='minutes';e={((Get-Date) - $_.timegenerated).minutes}}

#NOTE: TO BREAK DOWN A DATE INTO HOURS,MINUTES AND SECONDS USE THE FOLLOWING format: @{n='minutes'; e={((GET-DATE) - $_.timegenerated).minutes}} 

#Misc--------------------------

get-help get-process -showwindow
get-process | gm

Get-help get-service -showwindow
get-service | gm

get-module
get-module -ListAvailable | Format-list name, path
get-module -ListAvailable | Format-table name, path

#--------------------------------------

#Q4.3 What command would you use to install the module "SubnetTools" from the PowerShell Gallery

get-command *module*
get-help install-module -showwindow
get-module -ListAvailable | Format-table name
get-help import-module -showwindow
find-module -name subnettools

install-module -Name subnettools
get-module -listavailable

