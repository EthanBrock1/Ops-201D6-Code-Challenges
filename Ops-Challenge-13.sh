#!/bin/bash

# Script: Ops 201 Class 13 Ops Challenge Solution
# Author:Ethan Brock
# Date of latest revision:22FEB2023
# Purpose: Run whois

# Main

File="Info_On_${dom}.txt"

#Functions
Get_Info () {
    whois $dom
    dig $dom
    host $dom
    nslookup $dom
}

echo "Enter domain to search"
read dom
Get_Info > "Info_On_"$dom".txt"
Open File

#End