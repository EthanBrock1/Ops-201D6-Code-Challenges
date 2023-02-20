# Script: Ops 201 Class 11 Ops Challenge Solution
# Author:Ethan Brock
# Date of latest revision:20FEB2023
# Purpose: AUtomate Windows 10 configuration.

# Main

# Enable File and Printer Sharing

Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True 

# Allow ICMP traffic

netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol="icmpv4:8,any" dir=in action=allow

# Enable Remote management

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
Set-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\" -Name “UserAuthentication” -Value 1
Enable-NetFirewallRule -DisplayGroup “Remote Desktop”

# Remove bloatware

iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

# Enable Hyper-V

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Disable SMBv1, an insecure protocol

Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force

# End