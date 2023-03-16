#!/bin/bash

# Script: Ops 201 Class 06 Ops Challenge Solution
# Author:Ethan Brock
# Date of latest revision:13FEB2023
# Purpose: Search for File/Directory and creat if not found

# Main

types=("File" "Directory")

echo "Would you like to search for a File or Directory"
read type
    while [[ "${types[@]}" == "$type"  ]]; do
        if [[ $type == "File" ]]; then
            echo "What File would you like to search for?"
            read filename
                if [[ -f "$filename" ]]; then
                    echo "$filename exists."
                else 
                    echo "$filename does not exist, creating $filename now."
                    touch $filename
                    break
                fi
        elif [[ $type == "Directory" ]]; then
            echo "What Directory would you like to seach for?"
            read dirname
                if [[ -d "$dirname" ]]; then
                    echo "$dirname exists."
                else
                    echo "Directory does not exist, creating $dirname now"
                    mkdir $dirname
                    break
                fi
        fi
    done