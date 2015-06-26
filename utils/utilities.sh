function is_root() {
    [[ $PWD = "/" ]]
}

function contains() {
    [[ "$1" = *"$2"* ]]
}
