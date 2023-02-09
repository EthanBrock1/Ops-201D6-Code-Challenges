#!/bin/bash

# Script: Ops 201 Class 03 Ops Challenge Solution
# Author:Ethan Brock
# Date of latest revision:08FEB2023
# Purpose: Print login history of Users on this Computer


# Main
show_login_history() {
    local username=$1
    local num_logins=${2:-10}

    last -n 200 $num_logins -x $username
}
# End