#!/bin/bash

# Script: Ops 201 Class 04 Ops Challenge Solution
# Author:Ethan Brock
# Date of latest revision:09FEB2023
# Purpose: Create 4 directories with a new file in each

# Main

# Create four directories using the script.

 mkdir dir1 dir2 dir3 dir4

# Load each directory path into an array.

path_array=("./dir1/" "./dir2/" "./dir3/" "./dir4/")


# create a new .txt file within each directory 
# by referencing the directory with array indices, not the 
# literal directory path.

touch "${path_array[0]}file1.txt"
touch "${path_array[1]}file2.txt"
touch "${path_array[2]}file3.txt"
touch "${path_array[3]}file4.txt"

# End