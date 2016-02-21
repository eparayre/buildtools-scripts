#!/bin/bash

if [[ ! -d "$3" ]]; then
    echo -en "\n"
    echo [ git clone ]
    echo -en "\n"

    echo "branch     :" $1
    echo "repository :" $2
    echo -en "\n"

    git clone --recursive -b $1 --single-branch $2 $3
fi
