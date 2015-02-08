# About

Some simple utility bash scripts to help in everyday work.

## up.sh

Allows users to go up n levels in directory structure instead of repeating command `cd ..` multiple times. Instead, write `up n`, where n is a number of times you want to go up.

## upto.sh

Makes it possible to go up in the directory structure until directory name matches the specified pattern (substring). For example, if you're in a folder `/home/user/some/deep/nesting/levels` and you want to get to the folder `/home/user/some`, writing `upto some` or, for example, `upto so` would lead to the wanted directory.
