#!/bin/bash

# Get the username of the current user
USER=$(whoami)

# Define the function to add to the .bashrc
tar_function="function tar() {
    if [[ \"\$1\" == \"-xvf\" && -n \"\$2\" ]]; then
        local filename=\"\$2\"
        local size=\$(tar -tvf \"\$filename\" | awk '{s+=\$3} END {print s}')
        pv -s \$size \"\$filename\" | command tar -xvf - -C \$(pwd)
    else
        command tar \"\$@\"
    fi
}"

# Append the function to the user's .bashrc
echo "$tar_function" >> /home/$USER/.bashrc

# Feedback to the user
echo "The tar function has been added to your .bashrc file."
