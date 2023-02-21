# Script: Ops 201 Class 11 Ops Challenge Solution
# Author:Ethan Brock
# Date of latest revision:20FEB2023
# Purpose: AUtomate Windows 10 configuration.

# Main

Function Get-IP {
    ipconfig /all > network_report.txt
    Select-String -Path .\*.txt -Pattern "IPv4"
}

Get-IP

$var=1
if ($var)
{
    Remove-Item 'C:\Windows\System32\network_report.txt'
}
# End
