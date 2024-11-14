#!/bin/bash
set -x

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
        sudo DEBIAN_FRONTEND=noninteractive apt-get install "$package" -y

        # Check if the installation was successful
        if dpkg -s "$package" &>/dev/null; then
            echo "$package installed successfully."
        else
            echo "There was an issue installing $package."
        fi
    fi
done

#uset frontend
unset DEBIAN_FRONTEND

# cd back into the home dir
cd ~

# create needed folders
echo "Creating directories in the home directory"
mkdir -p flexget tor tor/watch_1 tor/watch_2 .session download_1 download_2

echo "Insallation complete"
