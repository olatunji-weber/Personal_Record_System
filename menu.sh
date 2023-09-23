#!/bin/bash

while true; do
    clear
    echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    echo "@@@@@@@@@@@@@@@@@@                                              @@@@@@@@@@@@@@@@@@"
    echo "@@@@@@@@@@@@@@@@@@     Personal Record Management System Menu   @@@@@@@@@@@@@@@@@@"
    echo "@@@@@@@@@@@@@@@@@@                                              @@@@@@@@@@@@@@@@@@"
    echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    echo "@@@@@@@@@@@@@@@@@@                                              @@@@@@@@@@@@@@@@@@"
    echo "@@@@@@@@@@@@@@@@@@     N - Create New Record                    @@@@@@@@@@@@@@@@@@"
    echo "@@@@@@@@@@@@@@@@@@     E - Edit Existing Records                @@@@@@@@@@@@@@@@@@"
    echo "@@@@@@@@@@@@@@@@@@     S - Search Records                       @@@@@@@@@@@@@@@@@@"
    echo "@@@@@@@@@@@@@@@@@@     G - Generate Report                      @@@@@@@@@@@@@@@@@@"
    echo "@@@@@@@@@@@@@@@@@@                                              @@@@@@@@@@@@@@@@@@"
    echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    echo "                                                                                  "

    read -p "Enter your choice: " choice

    case "$choice" in
        N|n)
            # Add a new record
            source add_record.sh
            read -n 1 -s -r -p "Press any key to continue..."
            ;;
        E|e)
            # Edit existing records
            echo "Enter the record to edit:"
            source edit_record.sh
            #read record_name
            #nano "$record_name"
            ;;
        S|s)
            # Search for specific records
            echo "Enter your search keyword:"
            read keyword
            # Call the search_records.sh file here
            source search_records.sh
            ;;
        G|g)
            # Generate report
            source backup.sh
            echo "Report generated."
            read -n 1 -s -r -p "Press any key to continue..."
            ;;
        Q|q)
            echo "Exiting the menu."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            read -n 1 -s -r -p "Press any key to continue..."
            ;;
    esac
done
