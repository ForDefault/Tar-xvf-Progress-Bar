#!/bin/bash

# Function to check if 'pv' is installed
check_pv_installed() {
    if ! command -v pv &> /dev/null; then
        echo "The 'pv' command is not installed. Please install it to use this script."
        # You could also add an automatic installation prompt here
        # read -p "Would you like to install pv now? (y/n): " install_choice
        # if [[ "$install_choice" == "y" ]]; then
        #     sudo apt-get install pv
        # else
        #     echo "Exiting script."
        #     exit 1
        # fi
        exit 1
    fi
}

# Check if 'pv' is installed
check_pv_installed

# Check if 'tar' is in the .bashrc file
if grep -q 'tar' ~/.bashrc; then
    # If 'tar' is found, prompt the user
    echo "'tar' found in .bashrc. Choose an option:"
    echo "1. Show all lines containing 'tar'"
    echo "2. Cancel"
    read -p "Enter your choice (1 or 2): " user_choice

    case $user_choice in
        1)
            # Show all lines containing 'tar'
            echo "Displaying lines containing 'tar' in .bashrc:"
            grep 'tar' ~/.bashrc
            ;;
        2)
            # Cancel and exit the script
            echo "Operation cancelled."
            ;;
        *)
            # Handle invalid input
            echo "Invalid option. Exiting."
            ;;
    esac
else
    # If 'tar' is not found, display a message
    echo "'tar' not found in .bashrc."
fi
