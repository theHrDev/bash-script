#!/bin/bash

#Provision command
  sudo dnf install httpd -y
  sudo systemctl start httpd
  sudo systemctl enable httpd

  sudo dnf install git -y
  git clone https://github.com/codewithsadee/dashboard.git
  sudo rm -rf /var/www/html/*
  sudo mv ecommerce/* /var/www/html/
  echo "Done Provisioning"


