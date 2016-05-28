#!/usr/bin/env bash
    # dependencies: git
usage="
SYNOPSIS:
    $(basename "$0") list_git_repo

DESCRIPTION
    Recursively display the git status of a list of git repositories

ARGUMENTS:
    list_git_repo           text file listing teh path of th egit repo to
                            be checked"


if [ -z $1 ]; then
    echo "ERROR: missing list file argument"
    echo "$usage"
    exit
elif [ ! -f $1 ]; then
    echo "ERROR: file '$1' does not exist"
    echo "$usage"
    exit
elif [ $# -gt 1 ]; then
    echo "ERROR: too many arguments"
    echo "$usage"
    exit
fi


while read l; do 
    l=${l%*.git}
    echo "### Check Git status of $l"
    cd $l
    git status
    echo ""
done < $1
