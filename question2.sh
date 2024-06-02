#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

DIRECTORY="$1"

if [ ! -d "$DIRECTORY" ] || [ ! -r "$DIRECTORY" ]; then
    echo "Error: Directory does not exist or is not readable."
    exit 1
fi

file_types=()

while IFS= read -r -d '' file; do
    extension="${file##*.}"
    if [ "$file" != "$extension" ]; then
        found=false
        for ((i = 0; i < ${#file_types[@]}; i++)); do
            if [ "${file_types[$i]}" = "$extension" ]; then
                found=true
                break
            fi
        done
        if [ "$found" = false ]; then
            file_types+=("$extension")
        fi
    fi
done < <(find "$DIRECTORY" -type f -print0)

for ext in "${file_types[@]}"; do
    count=$(find "$DIRECTORY" -type f -name "*.$ext" | wc -l)
    echo "$ext: $count"
done | sort

exit 0
