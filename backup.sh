#!/bin/bash

# Define backup directory
backup_dir="/home/shared/Personal_Record_System/backups"

# Create a timestamp for the backup file name
timestamp=$(date +"%Y%m%d%H%M%S")

# Backup the personal record file
cp /home/shared/Personal_Record_System/credentials/records.txt "$backup_dir/personal_record_backup_$timestamp.txt"

echo "Backup completed. The backup file is stored in $backup_dir."
