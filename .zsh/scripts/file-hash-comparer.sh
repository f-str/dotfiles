#!/bin/bash

# Check if two arguments (file paths) are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <file1> <file2>"
    exit 1
fi

# Assign input arguments to variables
file1=$1
file2=$2

# Check if files exist
if [ ! -f "$file1" ]; then
    echo "Error: File '$file1' does not exist."
    exit 2
fi

if [ ! -f "$file2" ]; then
    echo "Error: File '$file2' does not exist."
    exit 2
fi

# Compute hashes
hash1=$(shasum -a 256 "$file1" | awk '{print $1}')
hash2=$(shasum -a 256 "$file2" | awk '{print $1}')

# Compare hashes
if [ "$hash1" == "$hash2" ]; then
    echo "The files are identical (hashes match)."
else
    echo "The files are different (hashes do not match)."
fi

