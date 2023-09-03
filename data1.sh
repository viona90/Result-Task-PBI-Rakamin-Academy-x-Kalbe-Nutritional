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

