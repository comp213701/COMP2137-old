#!/bin/bash

# Display a menu that lets the user choose whether to list files, change directory, or list all files
# do what the user wanted

cmdname="$(basename $0)"
# echo "You ran $cmdname"

# echo "the first thing after the command is '$1'"
# echo "the second thing after the command is '$2'"
# echo "the third thing after the command is '$3'"

# [ "$1" = "-v" ] && verbose=yes

while [ $# -gt 0 ]; do
    # process the command line
    if [ "$1" = "-v" ]; then   
        verbose=yes
    fi
    shift
done

cat <<EOF

How can I help you?

1 - list the files in the current directory
2 - change directory
3 - list all the files in the current directory

EOF

read -p "Enter your choice [1-3]: " userchoice

[ -n "$verbose" ] && echo You chose $userchoice

if [ "$userchoice" -eq 1 ]; then
    # do choice one stuff
    [ -n "$verbose" ] && echo doing choice 1
    ls
elif [ "$userchoice" -eq 2 ]; then
    #do choice 2 stuff
    [ -n "$verbose" ] && echo doing choice 2
    read -p "Where to? " dir
    cd "$dir"
elif [ "$userchoice" -eq 3 ]; then
    #do choice 3 stuff
    [ -n "$verbose" ] && echo doing choice 3
    ls -a
fi

case "$userchoice" in
    1 )
        ls
        ;;
    2 )
        read -p "Where to? " dir
        cd "$dir"
        ;;
    3 )
        ls -a
        ;;
    * )
        echo "Must enter 1, 2, or 3"
        ;;
esac
