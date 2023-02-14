#!/bin/bash

# Script: Ops 201 Class 0 Ops Challenge Solution
# Author:Ethan Brock
# Date of latest revision:14FEB2023
# Purpose: Print relevant information

# Main

echo Computer Name
sudo lshw | grep "ubuntuserver"

echo CPU
sudo lshw | grep -A 6 "*-cpu" | grep -v "capabilities:"

echo RAM
sudo lshw | grep -A 3 "*-memory"

echo Display Adapter
sudo lshw | grep -A 12 "*-display" | grep -v "logical name" | grep -v "version"

echo Network Adapter 
sudo lshw | grep -A 15 "*-network"

# End