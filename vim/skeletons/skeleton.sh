#!/bin/bash

if [ $# -eq 0 ]; then
    echo $(basename $0)
elif [ $# -gt 1 ]; then
    echo $(basename $0)
else 
    exit
fi
