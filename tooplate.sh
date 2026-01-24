#!/bin/bash

sudo dnf install wget -y
wget https://www.tooplate.com/zip-templates/2099_scenic.zip

sudo dnf install unzip -y
unzip 2099_scenic.zip -d template


sudo rm -rf /var/www/html/*

sudo dnf install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

sudo mv template/2099_scenic/* /var/www/html

echo "Successful"



