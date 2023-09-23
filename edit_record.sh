#!/bin/bash

# Define the file where records are stored
record_file="/home/shared/Personal_Record_System/credentials/records.txt"

# Prompt the user for the record to edit
echo "Enter the name of the record to edit:"
read -p "Name: " name_to_edit

# Check if the record exists
if grep -q "$name_to_edit" "$record_file"; then
    nano "$record_file"
    echo "Record updated successfully."
else
    echo "The Record not found...."
fi
