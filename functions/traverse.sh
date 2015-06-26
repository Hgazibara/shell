function up() {
    ! is_root && [[ $1 -gt 0 ]] && cd .. && up $(($1-1))
}

function upto() {
    pattern=$1
    ! is_root && ! $(contains ${PWD##*/} "$pattern") && cd .. && upto $pattern
}

function cm() {
    mkdir $1 && cd $1
}

function ct() {
    cd $(ls -d */ | head -n 1)
}

function cb() {
    cd $(ls -d */ | tail -n 1)
}
