#!/bin/bash

# Specify the directory name
directory_name="system_data"

# Create the directory if it doesn't exist
if [ ! -d "$directory_name" ]; then
    mkdir "$directory_name"
    echo "Directory '$directory_name' created."
else
    echo "Directory '$directory_name' already exists."
fi

# Change into the directory
cd "$directory_name" || exit

# Gather system information and write to separate text files
uname -a > "uname_info.txt"
echo "System information saved to uname_info.txt."

df -h > "disk_space_info.txt"
echo "Disk space information saved to disk_space_info.txt."

free -mg > "memory_info.txt"
echo "Memory information saved to memory_info.txt."

nproc > "cpu_info.txt"
echo "Number of CPUs saved to cpu_info.txt."

# Execute additional commands and save output to text files
ls > "list_directory.txt"
echo "Contents of the directory saved to list_directory.txt."

pwd > "current_directory.txt"
echo "Current directory saved to current_directory.txt."

cd .. || exit
echo "Changed directory to parent directory."

cd "$directory_name" || exit

clear > "clear_output.txt"
echo "Terminal cleared, and output saved to clear_output.txt."

touch "new_file.txt"
echo "New file 'new_file.txt' created."

chmod +x "new_file.txt"
echo "Changed permissions of 'new_file.txt' to executable."

ls -ltr > "file_details.txt"
echo "File details saved to file_details.txt."

cat "new_file.txt" > "printed_file.txt"
echo "Contents of 'new_file.txt' printed to printed_file.txt."

rm -r "new_file.txt"
echo "Removed 'new_file.txt'."

# Display top command output
top -n 1 -b > "top_output.txt"
echo "Top command output saved to top_output.txt."

echo "Script execution complete."
