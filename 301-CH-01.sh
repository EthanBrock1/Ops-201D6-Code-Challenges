#!/bin/bash

# Script:         Ops 301 Ops Chall 02
# Author:          Ethan Brock
# Purpose:        Append, date and time to syslog
# Why:            Time stamping is a critical step in automating log generation.


# copy to current working directory 
cp /var/log/syslog ./
# append date and time to file name
filename="syslog"
# gets date and time
datetime=$(date +"%Y%m%d_%H%M%S")
new_filename="${filename}_${datetime}"

 cp "$filename" "$new_filename"
 # delete original file
rm "syslog"

# End