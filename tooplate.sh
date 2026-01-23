#!/bin/bash

sudo dnf install wget -y
wget https://www.tooplate.com/zip-templates/2099_scenic.zip

sudo dnf install unzip -y
unzip 2099_scenic.zip -d template

sudo rm -rf /var/www/html/*
sudo mv template/* /var/www/html

echo "Successful"



