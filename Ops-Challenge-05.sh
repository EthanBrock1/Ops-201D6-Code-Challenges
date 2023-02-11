#!/bin/bash

# Script: Ops 201 Class 05 Ops Challenge Solution
# Author:Ethan Brock
# Date of latest revision:10FEB2023
# Purpose: Kill PID

# Main

ps aux

echo "Would you like to kill a PID number? [yes/no]"
read kill_option

while [[ $kill_option == "yes" ]]
do
    ps aux
    echo "Please enter PID number to kill."
    read input_var
    echo "killing PID $input_var."
    kill -9 $input_var
    echo "PID $input_var killed."
    echo "Would you like to kill another?"
    read kill_option
done

echo "Goodbye"

# End