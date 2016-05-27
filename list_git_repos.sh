#!/usr/bin/bash

usage="
SYNOPSIS:
    $(basename "$0") dir

DESCRIPTION
    Recursively lists all git repositories from a given directory

ARGUMENTS:
    dir         directory where to list git repos"

if [ -z $1 ]; then
    echo "ERROR: missing directory argument"
    echo "$usage"
    exit
elif [ $# -gt 1 ]; then
    echo "ERROR: too many arguments"
    echo "$usage"
    exit
fi

find $1 -type d -name "*.git" -exec dirname {} \; 
