#!/bin/bash

# Define the file where records are stored
record_file="/home/shared/Personal_Record_System/credentials/records.txt"

# Prompt the user for a search keyword
echo "Enter the search keyword:"
read keyword

# Search for records containing the keyword
grep -i "$keyword" "$record_file"

