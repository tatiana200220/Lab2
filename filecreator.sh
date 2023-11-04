#!/bin/bash

file_name="Tania"
last_file=$(ls -1 | grep -E "^$file_name[0-9]+$" | sed "s/$file_name//g" | sort -r -n | head -n 1)

if [ -z "$last_file" ]; then
    start_number=1
else
    last_number=${last_file#"${file_name}"}
    start_number=$((last_number + 1))
fi

for ((i = start_number; i <= start_number + 24; i++)); do
    touch "$file_name$i"
done
