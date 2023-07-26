#get-command *Organizational*
#get-help New-ADOrganizationalUnit -showwindow
New-ADOrganizationalUnit -name London -path 'dc=adatum,dc=com'
Get-ADOrganizationalUnit -filter *

#get-command *adgroup*
New-adgroup -Name 'London Admins' -GroupScope Global
New-ADUser -name 'ty carlson'
#Get-help Add-ADGroupMember -ShowWindow
#Get-ADGroup -filter*
#Get-ADUser -filter*
Add-ADGroupMember -Identity 'London Admins' -members 'ty carlson'

New-ADComputer -Name 'Lon-CL2'

#get-command *ADobject*
#get-help Move-AdObject
#Get-ADOrganizationalUnit -filter*  --to get distinguished name
Move-adobject -TargetPath 'OU=London,DC=Adatum,DC=com' -Identity 'CN=Ty Carlson,CN=Users,DC=Adatum,DC=com'

#Using variables to simplify
$objecttomove = get-adgroup -identity 'London Admins'
$tgtpath = Get-ADOrganizationalUnit -Filter {name -eq 'London'}
Move-ADObject -Identity $objecttomove.DistinguishedName -TargetPath $tgtpath.DistinguishedName

$objecttomove = get-adcomputer -identity 'Lon-cl2'
$tgtpath = Get-ADOrganizationalUnit -Filter {name -eq 'London'}
Move-ADObject -Identity $objecttomove.DistinguishedName -TargetPath $tgtpath.DistinguishedName

# to verify
Get-adobject -SearchBase $tgtpath.DistinguishedName -filter *
