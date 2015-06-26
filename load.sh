function load() {
    for file in $(find $1 -type f)
    do
        . "$file"
    done
}

load "$SHELL_UTILS"/utils
load "$SHELL_UTILS"/functions
load "$SHELL_UTILS"/aliases
