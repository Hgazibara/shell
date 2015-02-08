#!/bin/bash

# "Installation"
# 
# Add '. pathToTheScript' to your .bashrc file. This step is needed to make
# sure the script can make directory changes to the shell process.
#
# Usage
#
# Use it to go up in the directory structure until current path ends with
# specific folder. For example, if you're located in directory
# '/home/user/data/some/deep/nesting', write 'upto user' to get to the folder
# '/home/user'.
# The script accepts any substring, so you can write 'upto us' and get the same
# result as in the previous example.

function upto() {
    pattern=$1
    ! is_root && ! $(contains ${PWD##*/} "$pattern") && cd .. && upto $pattern
}

function contains() {
    [[ "$1" = *"$2"* ]]
}

function is_root() {
    [[ $PWD = "/" ]]
}
