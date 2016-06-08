#!/usr/bin/env bash
    # dependencies: git
usage="
SYNOPSIS:
    $(basename "$0") list_git_repo

DESCRIPTION
    Check differences between local repositories and default remotes.
    For each local repo, the script first 'git fetch' from the default remote
    (therefore it is necessary that it has been defined previously) and 
    then check discrepancies using by 'git status'.
    The list of local repos is given by the file 'list_git_repo'.

ARGUMENTS:
    list_git_repo           text file listing the path of the git repositories"


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
    echo "#### Check differences with default remote for repo '$l' ####"
    cd $l
    git fetch
    git status
    echo "##################################"
    echo ""
    echo ""
done < $1
