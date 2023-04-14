#/bin/bash

while getopts t:c:f: flag
do
    case "${flag}" in
        t) target=${OPTARG};;
        c) content=${OPTARG};;
        f) file=${OPTARG};;
    esac
done

NEW="$(grep "$target.*]" $file | sed 's/]$//')"

sed -i "s/$target.*]/$NEW, \"$content\"]/" $file
