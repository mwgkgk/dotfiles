#!/bin/bash

if [ $# -eq 0 ]; then
    echo $(basename $0) $(pwd)
elif [ $# -ge 1 ]; then
    for arg in "$@"; do
        echo $(basename $0) $arg
    done
else 
    exit
fi
