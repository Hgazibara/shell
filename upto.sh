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
# The script does not work for partial matches, so you can't write 'upto us'
# in the previous example as it would put you in the top-level parent directory.

function upto() {
    pattern=$1
    ! is_root && ! $(endswith $(pwd) "$pattern") && cd .. && upto $pattern
}

function endswith() {
    [[ "$1" = *"$2" ]]
}

function is_root() {
    [[ $(pwd) = "/" ]]
}
