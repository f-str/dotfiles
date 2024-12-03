#!/bin/sh

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_dir> <output_file>"
    exit 1
fi

# Combine all the small CSVs to one big one -> all have the same header
# Directory to search for CSV files (including all subdirectories)
input_dir=$1

output_file=$2

# Check if the output file already exists
if [ -f "$output_file" ]; then
  echo "The output file $output_file already exists. Please delete or move the file."
  exit 1
fi

# Find the first CSV file to extract the header
first_csv=$(find "$input_dir" -type f -name "*.csv" | head -n 1)

if [ -z "$first_csv" ]; then
  echo "No CSV files found in the directory."
  exit 1
fi

# Write the header from the first CSV file to the output file
head -n 1 "$first_csv" > "$output_file"

# Find all CSV files and append them to the output file (excluding their headers)
find "$input_dir" -type f -name "*.csv" | while read -r csv_file; do
  tail -n +2 "$csv_file" >> "$output_file"
done

echo "CSV files merged into $output_file"

