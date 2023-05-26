Get-command *resolve*


get-command *adapter*
get-help set-netadapter -ShowWindow

get-command *scheduledtask*
get-help enable-scheduledtask -ShowWindow

get-command -verb Block #can use get-command *block* to find command as well
get-help block-smbshareaccess -showwindow

get-command -verb clear # OR  get-command *key word* to find command / OR get-command -name *key word* / OR Get-command -Module BranchCache
get-help clear-bccache -showwindow
get-command -name *cache*
get-command -module branchcache # use get-module -listavailable to see modules installed
get-module -listavailable

get-command *firewall*
get-help get-netfirewallrule -showwindow
get-netfirewallrule -enabled True

get-command *IPaddress*
get-help get-netipaddress -showwindow
get-netipaddress

get-command -verb suspend
get-help suspend-printjob -showwindow
