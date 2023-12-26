#!/bin/bash

# Specify the directory name
directory_name="example_directory"

# Create the directory if it doesn't exist
if [ ! -d "$directory_name" ]; then
    mkdir "$directory_name"
    echo "Directory '$directory_name' created."
else
    echo "Directory '$directory_name' already exists."
fi

# Change into the directory
cd "$directory_name" || exit

# Loop to create 15 files and write example data
for i in {1..15}; do
    filename="file_$i.txt"
    echo "This is example data for file $i." > "$filename"
    echo "File '$filename' created with example data."
done

echo "Script execution complete."
