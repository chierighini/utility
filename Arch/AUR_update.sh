#!/bin/bash
for dir in ~/AUR/*/
do
    cd ${dir}
    dir=${dir%*/}
    echo "${dir##*/}"
    if  git pull | grep 'Already up to date'
    then
        echo OK
    else
        makepkg -si
    fi
done
