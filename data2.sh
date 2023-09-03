#!/bin/bash
shell wsl --install

# Define variables
path="/Users/Viona/data1"
name_of_directory="data1"
# Check if the directory exists
if [ -d "$path/$name_of_directory" ]; then 
    Echo “There is data1 Directory Exists!”
else 
    Echo “data1 Directory Not Exists!” 

     # Create the directory if it doesn't exist
    mkdir -p "$path/$data1"
    echo "$data1 Directory Created!"
fi

# Check if the source file exists
if [ -f "$source_dir/$filename_excel" ]; then
    # Copy the file from source to target
    cp "$source_dir/$filename_excel" "$target_dir/$filename_excel"
    
    # Check if the copy was successful
    if [ $? -eq 0 ]; then
        echo "File Moved Successfully" > "$target_dir/log.txt"
    else
        echo "File Move Failed" > "$target_dir/log.txt"
    fi
else
    echo "Source File $filename_excel Not Found"
fi