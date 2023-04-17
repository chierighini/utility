#/bin/bash

while getopts t:c:f: flag
do
    case "${flag}" in
        t) target=${OPTARG};;
        c) content=${OPTARG};;
        f) file=${OPTARG};;
    esac
done

NEW="$(grep "$target.*]" $file | sed -e 's/^ *//')"
NEW2=${NEW::-1}

sed -i "s/$target.*]/$NEW, \"$content\"]/" $file
