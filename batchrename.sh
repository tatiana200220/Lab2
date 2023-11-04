#!/bin/bash

directory=$1
original_extension=$2
new_extension=$3

for file in $directory/*.$original_extension; do
    new_file="${file%.$original_extension}.$new_extension"
    mv "$file" "$new_file"
    echo "Переіменовую $file на $new_file"
done
