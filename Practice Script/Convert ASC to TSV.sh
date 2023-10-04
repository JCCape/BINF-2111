#!/bin/bash

# Check if an input file is ASC
if [ $# -ne 1 ]; then
    echo "Usage: $0 <input.asc>"
    exit 1
fi

# Input ASC file
input_file="$1"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: Input file '$input_file' not found."
    exit 1
fi

# Determine the desktop directory for the current user
desktop_dir="$HOME/Desktop"

# Output CSV file on the desktop
output_file="$desktop_dir/$(basename "${input_file%.asc}.csv")"

# Use awk to convert the ASC file to CSV
awk 'BEGIN {OFS=","} {$1=$1; print}' "$input_file" > "$output_file"

echo "Conversion complete: $input_file -> $output_file"
