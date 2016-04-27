#!/bin/bash

file_list=$1
out_dir=$2

if [! -d $out_dir ]; then
    echo "out directory doesn't exist; creating...";
    mkdir $out_dir;
    else
        echo "out directory exists; adding to directory"
fi

while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "copying $line to $out_dir" ;
    cp $line $out_dir/. ;
done < "$1"

echo "done";
