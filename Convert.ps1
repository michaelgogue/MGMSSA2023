get-service | 
  where-object {$_.name -like 'a*'} | 
  Select-object -property status, DisplayName |
  ConvertTo-Csv -NoTypeInformation |
  out-file -FilePath e:\services.csv
# csv or json or html

get-service | 
  where-object {$_.name -like 'a*'} | 
  Select-object -property status, DisplayName |
  ConvertTo-html -NoTypeInformation |
  out-file -FilePath e:\services.html
# html example with adding css
# $CSS @'

#'@

# the "'@" allows all content (pasted css style (i.e tables) from web (w3schools.com)) to be associated with the CSS variable
# must add "head $CSS after the "convertto-HTML line on line 11 (i.e Convertto-Html Head $CSS)"

get-service | 
  where-object {$_.name -like 'a*'} | 
  Select-object -property status, DisplayName |
  export-clixml -Path e:\services.xml
# export example for xml

Get-Service -name s* | 
  out-gridview -OutputMode Multiple -Title 'Choose some services to be stopped' | 
  stop-service -WhatIf
# when using stop-services ALWAYS use "-Whatif" so it doesnt actually stop services running / Can use Single vs multiple on line 27

