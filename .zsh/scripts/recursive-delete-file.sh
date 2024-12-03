#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <root-dir> <file-name>"
    exit 1
fi

ROOT_DIR=$1
FILE_NAME=$2

# Check if the root directory exists
if [ ! -d "$ROOT_DIR" ]; then
    echo "Error: Directory $ROOT_DIR does not exist."
    exit 1
fi

# Find and delete files with the given name
echo "Searching for files named '$FILE_NAME' in '$ROOT_DIR' and subdirectories..."
find "$ROOT_DIR" -type f -name "$FILE_NAME" -exec rm -v {} \;

echo "Deletion complete."

