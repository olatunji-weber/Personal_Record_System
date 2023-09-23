#!/bin/bash

# Prompt the user for record data
echo "Enter new record data (e.g., Name, Address, Phone):"
read -p "Name: " name
read -p "Address: " address
read -p "Phone: " phone

# Define the file where records are stored
record_file="/home/shared/Personal_Record_System/credentials/records.txt"

# Store the record in the file by appending the new entry
echo "Name: $name, Address: $address, Phone: $phone" >> "$record_file"

echo "The New Record was added successfully."
