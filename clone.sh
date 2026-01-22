#!/bin/bash

sudo dnf install git -y
git clone https://github.com/Dev-Ruqoyah/hr-jobpoint.git

sudo dnf install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

sudo rm -rf /var/www/html/*
sudo mv hr-jobpoint/* /var/www/html/

echo "Successful"
