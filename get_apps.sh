#!/bin/bash

# Define the list of packages to install
packages=("python3" "screen" "python3-virtualenv" "python3-pip" "rtorrent" "emacs")

# Update the package list
echo "Updating package list..."
sudo apt update

# Install each package if not already installed
for package in "${packages[@]}"; do
    if dpkg -s "$package" &>/dev/null; then
        echo "$package is already installed."
    else
        echo "Installing $package..."
        sudo apt install "$package" -y

        # Check if the installation was successful
        if dpkg -s "$package" &>/dev/null; then
            echo "$package installed successfully."
        else
            echo "There was an issue installing $package."
        fi
    fi
done
