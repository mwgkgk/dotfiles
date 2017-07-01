#!/bin/bash

_nfs_share() {
    echo "hello from $1"
}

if [ $# -eq 0 ]; then
    _nfs_share "$(pwd)"
elif [ $# -ge 1 ]; then
    _nfs_share "$@"
else 
    exit
fi
