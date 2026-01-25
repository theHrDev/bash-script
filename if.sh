#!/bin/bash

read -p "Enter the package you want to install: " package

sudo dnf install "$package" -y > /dev/null

if [ $? -eq 0 ]; then
    echo "$package installed successfully"
    sudo systemctl start "$package"
    sudo systemctl enable "$package"
    echo "$package successfully started"

else
    echo "Unable to install $package"
fi
