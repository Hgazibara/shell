#!/bin/bash

# "Installation"
# 
# Add '. pathToTheScript' to your .bashrc file. This step is needed to make
# sure the script can make directory changes to the shell process.
#
# Usage
#
# Use it to go up n directories, e.g. write 'up 2' instead of 'cd ../..'.

function up() {
    ! is_root && [[ $1 -gt 0 ]] && cd .. && up $(($1-1))
}

function is_root() {
    [[ $PWD = "/" ]]
}
