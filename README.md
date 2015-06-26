# About

Simple utility bash functions and aliases to help in everyday work.

# Setup

All functions and aliases are setup by a loading script `load.sh`. A variable `SHELL_UTILS` needs to be exported and must point to a location containing all files. Set `SHELL_UTILS` to the location of the repository and source `load.sh` in your bash configuration file.

    SHELL_UTILS="/path/to/the/repo"
    . "$SHELL_UTILS"/load.sh

The contents of the folders are included in the following order:

 1. utils
 2. functions
 3. aliases
